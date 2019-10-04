import { Injectable } from '@nestjs/common';
import { Biography } from './biography.interface';
import { TranslationService } from '../translation/translation.service';
import { HOBBIES } from '../shared/constants/hobbies';
import { DISLIKES } from '../shared/constants/dislikes';

@Injectable()
export class BiographyService {

  constructor(private translationService: TranslationService) {}

  public getBio(): Biography {
    const hobbies = this.getHobbies();
    const dislikes = this.getDislikes();
    const text = this.getBioText(hobbies, dislikes);
    return {
      hobbies,
      dislikes,
      text,
    };
  }

  private getHobbies(): string[] {
    const hobbies: string[] = [];
    const count = this.getRandomBoundedInteger(7);
    const indices = this.getRandomBoundedIndices(HOBBIES, count);
    for (const index of indices) {
      hobbies.push(HOBBIES[index]);
    }
    return hobbies;
  }

  private getDislikes(): string[] {
    const dislikes: string[] = [];
    const count = this.getRandomBoundedInteger(7);
    const indices = this.getRandomBoundedIndices(DISLIKES, count);
    for (const index of indices) {
      dislikes.push(DISLIKES[index]);
    }
    return dislikes;
  }

  private getBioText(hobbies: string[], dislikes: string[]): string {
    const bioText = `${this.getHobbiesString(hobbies)} ${this.getDislikesString(dislikes)}`;
    return this.translateText(bioText);
  }

  private translateText(text: string): string {
    return this.translationService.translate(text);
  }

  private getHobbiesString(hobbies: string[]): string {
    return this.getDescribedListSentence('I enjoy', hobbies);
  }

  private getDislikesString(dislikes: string[]): string {
    return this.getDescribedListSentence('I\'m really not a fan of', dislikes, 'or');
  }

  private getDescribedListSentence(description: string, list: string[], joiner = 'and'): string {
    let returnSentence = description;
    for (let i = 0; i < list.length; i++) {
      const lastIteration = i === list.length - 1;
      const firstIteration = i === 0;
      returnSentence += `${firstIteration ? '' : ','}${!firstIteration && lastIteration ? ' ' + joiner : ''} ${list[i]}`;
    }
    returnSentence += '.';
    return returnSentence;
  }

  /**
   * Given a target array and count of indices to return, returns a _non-duplicated_ array of random indices.
   * @param targetObject target array
   * @param count defaults to 1
   */
  private getRandomBoundedIndices(targetObject: any[], count = 1): number[] {
    const indices = new Set<number>();
    while (indices.size < count) {
      const nextOption = Math.floor(Math.random() * targetObject.length);
      indices.add(nextOption);
    }
    return [...indices];
  }

  private getRandomBoundedInteger(upperBound: number): number {
    return Math.floor(Math.random() * upperBound) || 1;
  }

}

import { Injectable } from '@nestjs/common';
import { DoggoTranslator, LANGUAGE_TOKENS_ENUM } from '@tabuckner/doggo-translator-ts';

/**
 * Singleton By Default
 * Read More: https://docs.nestjs.com/fundamentals/injection-scopes
 */
@Injectable()
export class TranslationService {
  private translator: DoggoTranslator;

  constructor() {
    this.translator = new DoggoTranslator({ languageToken: LANGUAGE_TOKENS_ENUM.english });
  }

  public translate(text: string): string {
    return this.translator.translateSentence(text);
  }
}

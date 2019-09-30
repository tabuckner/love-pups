# Love Pups Backend
Backend for Love Pups project.

## API
### Random Pup Endpoint
In order to create each pup card that can be swiped we will need an Endpoint that will return a dog image and dog biography.

#### Dog Entity
Our Dog entity will likely grow overtime but to start we need the following at a minimum:
```json
{
  "id": "string",
  "name": "string",
  "breed": "string", // NOTE: Might be more than a string
  "age": "number",
  "gender": "male|female|non-binary",
  "bio": {
    "hobbies": [
      "string",
      "..."
    ],
    "dislikes": [
      "string",
      "..."
    ],
    "text": "string"
  }
}
```

#### 3P APIs
##### Dog API
The Dog api is a free image API that can offer random dog images with minimal breed information, or images for specific breeds/sub-breeds.

To start, we can use the [random image endpoint](https://dog.ceo/dog-api/documentation/random) and parse the URL returned in the message to get the breed information:

URL: `https://dog.ceo/api/breeds/image/random`
Response:
```json
{
  "message": "https://images.dog.ceo/breeds/spaniel-welsh/n02102177_3374.jpg",
  "status": "success"
}
```

##### The Dog API
We can use this API to get information on specific dog breeds to help build out the Dog Entity.

URL: `https://api.thedogapi.com/v1/breeds/search?q=keeshond`
Response:
```json
[
  {
    "bred_for": "Barge watchdog",
    "breed_group": "Non-Sporting",
    "height": {
      "imperial": "17 - 18",
      "metric": "43 - 46"
    },
    "id": 142,
    "life_span": "12 - 15 years",
    "name": "Keeshond",
    "temperament": "Agile, Obedient, Playful, Quick, Sturdy, Bright",
    "weight": {
      "imperial": "35 - 45",
      "metric": "16 - 20"
    }
  }
]
````

#### Proprietary APIs
##### Biography API
We need a way of creating a unique(-ish) biography that is 

### Persistence Layer

### Users
* We will allow anonymous users to have access to a 'rate limited' usage of the app
* We want to encourage users to eventually provide email address etc
* We want the user's 'history' to be made available to them at that time, including everything that happened while they were anonymous
* This means that we will want to track how the user responded to each 'dog' and the 'dog' object itself
  * There is the potential for this to persist each 'dog' object and reuse between users
  * This means that we can create a fictional dog entity and eventually present that entity's stats (likes dislikes etc) to anyone we want
* Maybe we want authenticated users to select a breed preference?
  * Does this limit our data-set? (probably)

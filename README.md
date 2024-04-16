
# ChiPlanner 🗒️

Chi Planner is an innovative application designed to simplify event planning for users around Chicago. The app populates detailed information about various places of interest in the Chicago area, empowering users to plan their events effectively. Users can set a time interval for their visit, allowing them to organize their schedules efficiently.


# Repository Content

This repository consists of an API to interact with a database. It provides endpoints to retrieve data from the database, create new plans, list existing plans, and delete plans and planners.

## API Reference

#### Get all places

```http
  GET /
```
#### Get the list of plans

```http
  GET /plans
```
#### Create a new plan
```http
  POST /plans
```
| Parameter | Type     |
| :-------- | :------- |
| `place_id`      | `Integer` |
| `start_time`      | `String` |
| `end_time`      | `String` |

#### Delete plan
```http
  Delete /plans/{plan_id}
```
| Parameter | Type     |
| :-------- | :------- |
| `plan_id`      | `Integer` |

## Usage

This API is designed to be consumed by a mobile app built with Flutter. The Flutter app interacts with the API endpoints

## Built With

Flutter and Ruby on Rails with MySQL

## Demo
[Drive](https://drive.google.com/file/d/1VqP4LGd9kisSBqyU5LbvWhBgF0pAzEXn/view?usp=sharing)

## Screenshots:
![PlacesList](https://github.com/vishnu32510/chi-scartlet-hacks/assets/76788079/7c425a36-6492-452e-8971-b26c10f26b8c)
![PlaceDetails](https://github.com/vishnu32510/chi-scartlet-hacks/assets/76788079/a00b1388-3b5b-42fc-9d1b-c9eb6279ac4d)
![MyPlans](https://github.com/vishnu32510/chi-scartlet-hacks/assets/76788079/71ab5597-62c9-4bdc-b0cd-1da2da20e307)


## Authors

•⁠  ⁠*Noviya* - Ruby Developer - [Noviya](https://github.com/noviya23)
•⁠  ⁠*Vishnu Priyan* - Mobile Application Developer - [Vishnu Priyan](https://github.com/vishnu32510)


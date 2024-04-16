
# ChiPlanner

Chi Planner is an innovative application designed to simplify event planning for users around Chicago. The app populates detailed information about various places of interest in the Chicago area, empowering users to plan their events effectively. Users can set a time interval for their visit, allowing them to organize their schedules efficiently.



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



## Authors

- [@vishnu32510](https://github.com/vishnu32510)


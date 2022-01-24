Welcome to your new dbt project!

### Background and User requirements
In a bid to capture trending and popular questions which are left unanswered on the Stackoverflow platform; use the public data available on google bigquery. The approach would be to create a data model from the fact table available in Bigquery, we will use this to create a report showing these target questions. The impact of this report for the product team would be a unified view showing details of popular questions with low response rate.

### Assumptions from Analysis
In order to gain an understanding of how this business problem would be solved (finding out trending and popular questions with low response or answer rate), data profiling and analysis would be performed to understand the dataset and the different columns in this dataset. The following assumptions would guide the implementation of this data model:

The most popular topics would be titles that have views greater than a threshold selected. This threshold is the average number of views per post in the dataset
They will have engagement even after 60 days of created
A question would be considered to have zero answer_count
Any question that has no accepted_answer_id would be considered as unanswered 


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

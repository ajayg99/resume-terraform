import boto3
def lambda_handler(event, context):
	dynamodb = boto3.resource('dynamodb')
	table = dynamodb.Table('resume')
	response = table.update_item(
	Key={
	'id': '1'
	},
	UpdateExpression='SET viewcount = viewcount + :val',
	ExpressionAttributeValues={
	':val': 1
	},
	ReturnValues='UPDATED_NEW'
	)
	views = response['Attributes']['viewcount']
	return views

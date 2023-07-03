import boto3

dynamodb = boto3.client('dynamodb')

def lambda_handler(event, context):
    response = dynamodb.update_item(
        TableName='resume',
        Key={
            'id': {'S': '1'}
        },
        UpdateExpression='SET viewcount = viewcount + :val',
        ExpressionAttributeValues={
            ':val': {'N': '1'}
        },
        ReturnValues='UPDATED_NEW'
    )
    views = response['Attributes']['viewcount']['N']
    return views

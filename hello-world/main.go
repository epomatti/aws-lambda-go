package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
)

func handler(event events.SQSEvent) (events.SQSEventResponse, error) {
	fmt.Println("Event...")
	fmt.Println(event)
	return events.SQSEventResponse{}, nil
}

func main() {
	lambda.Start(handler)
}

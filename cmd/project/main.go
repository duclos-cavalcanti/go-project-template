package main

import(
    "fmt"
    
	project "github.com/albertwidi/go-project-example/cmd/project/greetings"

)

func main() {
    message := greetings.Hello("Gladys")

	fmt.Println("Hello, World!")
    fmt.Println(message)
}

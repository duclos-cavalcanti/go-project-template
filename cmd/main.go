package main

import(
    "fmt"

	"github.com/duclos-cavalcanti/go-project-template/cmd/hello"
	"github.com/duclos-cavalcanti/go-project-template/cmd/greetings"
)

func main() {
    message := greetings.Hello("Gladys")

    fmt.Println(message)
    hello.helloWorld()
}

package main

import(
    "fmt"

	"github.com/duclos-cavalcanti/go-project-template/cmd/project/hello"
	"github.com/duclos-cavalcanti/go-project-template/cmd/project/greetings"
)

func main() {
    message := greetings.Hello("Gladys")

    fmt.Println(message)
    hello.helloWorld()
}

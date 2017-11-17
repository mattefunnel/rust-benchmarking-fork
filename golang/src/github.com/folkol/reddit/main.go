package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
    "errors"
)

type Item struct {
	Title string
	URL   string
    Comments int `json:"num_comments"`
}

func (i Item) String() string {
    var com string
    switch(i.Comments) {
    case 0:
        com = ""
    case 1:
        com = " (1 comment)"
    default:
        com = fmt.Sprintf(" (%d comments)", i.Comments)
    }
    return fmt.Sprintf("%s %s%s", i.Title, i.URL, com)
}

type Response struct {
	Data struct {
		Children []struct {
			Data Item
		}
	}
}

var client = &http.Client{}
func Get(reddit string) ([]Item, error) {
	url := fmt.Sprintf("http://reddit.com/r/%s.json", reddit)
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
        return nil, err
	}
	req.Header.Add("User-Agent", "folkol.com google tutorial bot")
	resp, err := client.Do(req)
    defer resp.Body.Close()
	if resp.StatusCode != http.StatusOK {
        return nil, errors.New(resp.Status)
	}
	r := new(Response)
	err = json.NewDecoder(resp.Body).Decode(r)
	if err != nil {
        return nil, err
	}
    items := make([]Item, len(r.Data.Children))
	for i, child := range r.Data.Children {
        items[i] = child.Data
    }
    return items, nil
}

func main() {
    items, err := Get("golang")
    if err != nil {
        log.Fatal(err)
    }
    for _, item := range items {
        fmt.Println(item)
    }
}


package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func migratoryBirds(arr []int32) int32 {
	// Write your code here

	// saya membuat map untuk menyimpan data burung dan jumlahnya
	birds := map[int]int{}

	// saya melakukan perulangan untuk menghitung jumlah burung yang sama
	for _, v := range arr {
		var _, isExist = birds[int(v)]
		if isExist {
			birds[int(v)]++ // jika burung sudah ada maka jumlahnya akan bertambah
		} else {
			birds[int(v)] = 1 // jika burung belum ada maka jumlahnya akan di set 1
		}
	}

	// Jujur saya bingung, mungkin ada solusi lain yang lebih baik
	key := 0
	value := 0

	for i, v := range birds {
		if v > value {
			key = i
			value = v
		}
	}

	return int32(key)

}

func main() {
	reader := bufio.NewReaderSize(os.Stdin, 16*1024*1024)

	stdout, err := os.Create(os.Getenv("OUTPUT_PATH"))
	checkError(err)

	defer stdout.Close()

	writer := bufio.NewWriterSize(stdout, 16*1024*1024)

	arrCount, err := strconv.ParseInt(strings.TrimSpace(readLine(reader)), 10, 64)
	checkError(err)

	arrTemp := strings.Split(strings.TrimSpace(readLine(reader)), " ")

	var arr []int32

	for i := 0; i < int(arrCount); i++ {
		arrItemTemp, err := strconv.ParseInt(arrTemp[i], 10, 64)
		checkError(err)
		arrItem := int32(arrItemTemp)
		arr = append(arr, arrItem)
	}

	result := migratoryBirds(arr)

	fmt.Fprintf(writer, "%d\n", result)

	writer.Flush()
}

func readLine(reader *bufio.Reader) string {
	str, _, err := reader.ReadLine()
	if err == io.EOF {
		return ""
	}

	return strings.TrimRight(string(str), "\r\n")
}

func checkError(err error) {
	if err != nil {
		panic(err)
	}
}

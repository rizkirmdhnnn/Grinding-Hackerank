package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"
)

// Complete the catAndMouse function below.
func catAndMouse(x int32, y int32, z int32) string {

	// Kita mengecek selisih antara kucing A dan tikus
	// Karna bisa saja selisihnya negatif, maka kita menggunakan math.Abs agar selisihnya selalu positif

	// Jika selisih antara kucing A dan tikus lebih besar dari selisih antara kucing B dan tikus
	if math.Abs(float64(z-y)) > math.Abs(float64(z-x)) {
		return "Cat A"
	}

	// Jika selisih antara kucing B dan tikus lebih besar dari selisih antara kucing A dan tikus
	if math.Abs(float64(z-x)) > math.Abs(float64(z-y)) {
		return "Cat B"
	}

	// Jika kedua selisih sama
	return "Mouse C"
}

func main() {
	reader := bufio.NewReaderSize(os.Stdin, 1024*1024)

	stdout, err := os.Create(os.Getenv("OUTPUT_PATH"))
	checkError(err)

	defer stdout.Close()

	writer := bufio.NewWriterSize(stdout, 1024*1024)

	qTemp, err := strconv.ParseInt(readLine(reader), 10, 64)
	checkError(err)
	q := int32(qTemp)

	for qItr := 0; qItr < int(q); qItr++ {
		xyz := strings.Split(readLine(reader), " ")

		xTemp, err := strconv.ParseInt(xyz[0], 10, 64)
		checkError(err)
		x := int32(xTemp)

		yTemp, err := strconv.ParseInt(xyz[1], 10, 64)
		checkError(err)
		y := int32(yTemp)

		zTemp, err := strconv.ParseInt(xyz[2], 10, 64)
		checkError(err)
		z := int32(zTemp)

		result := catAndMouse(x, y, z)

		fmt.Fprintf(writer, "%s\n", result)
	}

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

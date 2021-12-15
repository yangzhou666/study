module github.com/yangzhou666/study

go 1.16

replace (
	github.com/yangzhou666/study/internal => ./study/internal
	github.com/yangzhou666/study/pkg => ./study/pkg
)

require (
	github.com/jinzhu/now v1.1.4 // indirect
	gorm.io/driver/mysql v1.2.1 // indirect
	gorm.io/gorm v1.22.4 // indirect
)

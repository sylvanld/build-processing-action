tag:=v1

update:
	git add .
	git commit -m "Debuging..."
	git tag -d $(tag) || echo "Tag does not exists"
	git push --delete origin $(tag) || echo "Not tag to push"
	git tag -m "new debuging version of $(tag)" $(tag)
	git push --follow-tags

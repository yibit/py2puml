NAME = .

py2puml:
	py2puml.py py2puml py2puml "skin rose" yibit > py2puml.puml
	plantuml -DPLANTUML_LIMIT_SIZE=81290 -tpng py2puml.puml

# pylint
pyreverse:
	pyreverse py2puml
	dot -Tpng classes.dot -o classes.png
	dot -Tpng packages.dot -o packages.png

.PHONY: py2puml

clean:
	rm -f *.~

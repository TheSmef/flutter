# Практическая работы №1
## Тема: Работа с основными виджетами
#### Цель работы: закрепление изученного материала по виджетам посредством создания 3-ёх макетов
#### Ход работы:
1) 1-ый макет

![image](https://user-images.githubusercontent.com/92712495/191460386-1fa478e6-68a5-4dc0-bf1a-3e4d91df0a25.png)

2) 2-ой макет

![image](https://user-images.githubusercontent.com/92712495/191460511-3ae55721-d6e8-4ac2-8d46-0989b1ce4897.png)

#### Чтобы реализовать данный макет, в основе своей, использовались элементы Row и Column (для размещения объектов) и элемент Padding для создания отступов между объектами. 
####Для реализации картинок они были загружены в созданную директорию images, а после объявлены в pubspec.yaml как ассеты.
Для реализации рамок макета все элементы, для которых необходимо было сделать рамки были помещены в контейнеры, в которых в свою очередь при помощи соответствующего класса были настроены рамки.
####Для реализации иконок использовался виджет Icon.
####Для реализации горизонтального и вертикального скроллинга в вёрстке использовался виджет SingleChildScrollView.
####Для реализации верхней панели использовался виджет AppBar, внутри которого были размещены Text и Icon для реализации верхней панели
####Единственной проблемой, которая возникала при создании макета была проблема, связанная с неопределённостью размеров 4-ёх нижних элементов, так как они расположены в двух Row и одном Column. Пришлось задавать им значения размера полностью.  


3) 3-ий макет

![image](https://user-images.githubusercontent.com/92712495/191460991-a897762e-e284-4c27-8eab-7d19b3f5a1f4.png)

#### Вывод: были созданы 3 макета из 5 предоставленных, были закреплены знания полученные о виджетах.

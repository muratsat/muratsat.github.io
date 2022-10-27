# How to create SSH key and use it in github/gitlab

1. Open terminal and enter command 
```
ssh-keygen
```
![image](https://user-images.githubusercontent.com/51270744/198275036-67198b34-a59a-4d62-8040-5fcff2cc5593.png)


2. Copy the contents of file `.ssh/id_rsa.pub` 

3. Open gitlab, click profile icon in the top right corner and proceed to preferences

![image](https://user-images.githubusercontent.com/51270744/198275278-e84408c9-3663-4858-811b-54ffb403bbc2.png)


4. Go to `SSH Keys` menu on the side bar

![image](https://user-images.githubusercontent.com/51270744/198275558-3b3a4d98-7648-4dd8-b634-d2cb63f10cad.png)

5. Paste your public key and click **add**

![image](https://user-images.githubusercontent.com/51270744/198275741-558c3f4e-fd7f-4fe3-bfe4-ede6fccdeeea.png)


����   2�
 � � �	 � �	 � �
 � �
 � �	 � �	 M � �
 M � _ � � � � �
 � � � �
  � �
  � �
  �
 � � � �
  � �
 M �
 � �	 M �
 � � �
 M �
 � �
 � � �
 $ � � � �
 M � � � � �
 � � � �
 M �
 � � � � 

 M
 M	
 �

 �
 
 M
 �
 M
 J
 �
 M �
 � 
 �!"#$%&#
 �' �()
 �*
 � �+
 �,
 a- �	 �./01
 �23
 �45678
 o �
9:;<=
>?
>@       
ABC
>DEFG	HIJKL
M �NO
 PQRSTU appName Ljava/lang/String; totalQueryNr I 	rm_Global !Ldubna/walt/util/ResourceManager; ignoreModules <init> ()V Code LineNumberTable LocalVariableTable this Ldubna/walt/BasicServlet; init  (Ljavax/servlet/ServletConfig;)V co Ljavax/servlet/ServletContext; e Ljava/lang/Exception; cl Ljava/lang/Class; pv  Ldubna/walt/util/ParamValidator; config Ljavax/servlet/ServletConfig; 	className StackMapTableV 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setPaths myPath t i 
customInit destroy key keys [Ljava/lang/String; � obtainResourceManager #()Ldubna/walt/util/ResourceManager; doPost R(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V req 'Ljavax/servlet/http/HttpServletRequest; res (Ljavax/servlet/http/HttpServletResponse;W doGet reset 
logRequest *(Ljavax/servlet/http/HttpServletRequest;)V c ip s mem newQueryLabel ()Ljava/lang/String; <clinit> 
SourceFile BasicServlet.java � � Basic Servlet � � � � � � � � � �X � ServletConfigYZ[\ ServletContext ServletContextName]^ � � � java/lang/Exception java/lang/StringBuilder !!!!!_` & Init - could not get ResourceManager!a �bc javax/servlet/ServletException Could not get ResourceManager. �d ApplicationNameefghi �j � ParamValidatorClassNameeklmnop dubna/walt/util/ParamValidator �q ParamValidator ( Init - could not create ParamValidator  ! NULL will be passed.rs UserValidatorClassName UserValidator dubna/walt/util/UserValidator ' Init - could not create UserValidator  � � !--------------------------- INIT   - OK! tduv /wf \xyz AppRoot{| logPath  e} WEB-INF/~�� 
TomcatRoot CfgRootPath WEB-INF/classes/configs/ CfgRootPath: %--------------------------- DESTROY: _� A�� dbUtil���� dubna/walt/util/DBUtil� � � � dubna/walt/util/ResourceManager def � � XMLHttpRequest X-Requested-With��f�� utf8�d clientEncoding Cp1251� � ��f yes javax/servlet/ServletConfig dubna/walt/Query � � �� � � ,� � 159.93.�� ~�� EXT  
***   [ java/util/Date��� ]  ;  ; total=������a� MB,free=�� MB� � GET��� GET: c= ; query=� ��  length=�h_�  c=   a,empty,css/tree,doc/event_cnt,doc/setParam,adm/showLog_noDB,doc/getBcInfo,free/checkSession_noDB, dubna/walt/BasicServlet javax/servlet/http/HttpServlet java/lang/String java/io/IOException servlet 	setObject '(Ljava/lang/String;Ljava/lang/Object;)V getServletContext  ()Ljavax/servlet/ServletContext; javax/servlet/ServletContext getServletContextName append -(Ljava/lang/String;)Ljava/lang/StringBuilder; toString log *(Ljava/lang/String;Ljava/lang/Throwable;)V (Ljava/lang/String;)V 	getString &(Ljava/lang/String;)Ljava/lang/String; length ()I rFile toUpperCase '(Ljava/lang/String;Z)Ljava/lang/String; java/lang/Class forName %(Ljava/lang/String;)Ljava/lang/Class; newInstance ()Ljava/lang/Object; $(Ldubna/walt/util/ResourceManager;)V logException *(Ljava/lang/String;Ljava/lang/Exception;)V println getServletConfig ()Ljavax/servlet/ServletConfig; getRealPath dubna/walt/util/StrUtil replaceInString J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; setParam ((Ljava/lang/String;Ljava/lang/String;Z)V 9(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String; 	substring (II)Ljava/lang/String; lastIndexOf (Ljava/lang/String;)I -(Ljava/lang/Object;)Ljava/lang/StringBuilder; getKeys '(Ljava/lang/String;)[Ljava/lang/String; contains (Ljava/lang/CharSequence;)Z 	getObject &(Ljava/lang/String;)Ljava/lang/Object; close %javax/servlet/http/HttpServletRequest 	getHeader equals (Ljava/lang/Object;)Z setCharacterEncoding &javax/servlet/http/HttpServletResponse getParameter �(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ldubna/walt/util/ResourceManager;Ljava/lang/String;Ljavax/servlet/http/HttpServlet;)V getRemoteHost indexOf replace D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String; dubna/walt/util/Fmt fullDateStr $(Ljava/util/Date;)Ljava/lang/String; java/lang/Runtime 
getRuntime ()Ljava/lang/Runtime; totalMemory ()J java/lang/Long (J)Ljava/lang/String; 
freeMemory 	getMethod java/lang/System out Ljava/io/PrintStream; getQueryString java/io/PrintStream getContentLength (I)Ljava/lang/StringBuilder; ! � �     � �    � �    � �   	 � �     � �  �   B     *� *� *� �    �          
  �        � �    � �  �  �    n*+� *� *� � � *� � 	+� 
+�  M� ,� 
� ,�  � 
*� � .M*� Y� � *� � � � ,� � Y� �*� � � *� � � *� � � � �  � !M,� � R,� "N-� #� $:� � %� &� 
� /N� � Y� � *� � '� ,� (� � -� )� *� !M,� � F,� "N� +-� #� ,� 
� /N� � Y� � *� � -� ,� (� � -� )*� .� � Y� /� *� � 0� � � 1�  
 C F  � � �    �   � #   6  7 
 9  :  = ! > ( ? 1 @ ? A C F F C G D g E q H } I � J � N � O � Q � R � S � T � W � U � V � [ � \ ^
 _ b ` aH eL fm g �   f 
 (  � �  G * � �  �  � �  �  � �  � + � � 
  � �  + � �   n � �    n � �  � � � �  �   # � F *"� 3  � _ �  +g + �      �     �    � �  �  [     �*� 2�  3� 4 L+53� 6L� 7+� 8� 9:� ;� � � 9� Y� +� <� � � 8++� d� =M,3� >>� ,`� =M� ?,� 8� @:� ;� � � @� Y� +� A� � � 8� � Y� B� � @� � � � 1�    �   :    n  o  s $ t 5 u Q y ] z d { h | q ~ { � � � � � � � �   *    � � �    � � �  ] l � �  d e � �  �    � Q ��  �6  � �  �   +      �    �       � �        � �    � �  �        b� � Y� C� *� D� � 1� E� FL+M,�>6� ,,2:G� H� � � I� J� K� :���ԧ L*� L�  @ N Q   Y \   �   2    �  � " � 6 � @ � N � Q � S � Y � \ � ] � a � �      6  � �  " 7 � �    b � �   �   > � *  � � �  � &  � � � �  � �   �  B   �     �    � �  �   4     
� MYN� O�    �       � �       
 � �   �       � �  �   I     *+,� P�    �   
    �  � �         � �      � �     � �  �      � �     �    � �  �       �Q+R� S � T� +U� V ,� WX� ;� Y � %+� WX� ;� V ,� WX� ;� Y *+� Z+[� \ N-� -]� T� *� ^*� 	� I� _� `� aY+,� *� b*� cW�    �   2    �  �  � , � = � N � S � \ � i � m � | � � � �   *    � � �     � � �    � � �  \ 3 � �  �   
 ,!� - � �      � �     �    � �  �  �    K+d� \ M� e� Y� f� ,� f� � � H� �+� g N-h� i� -hj� kN� � Y� l� -� � N� Y� m� *� � n� � oY� p� q� r� -� s� � :� Y� t� � u� v wm� y� z� � u� { wm� y� |� � :+� } ~� T� 7� � Y� � �� ,� �� +� � � � � � �� =� � Y� � +� } � �� +� � � ��� ,� � � � ��    �   :    � 	 � * � + � 2 � ; � G � [ � � � � � � � � � �J � �   >   K � �    K � �  	B � �  2 � �  � � � �  � } � �  �    � + ��  �� � � �9 ! � �  �   O     %� Y� *� � �� *Y� `Z� � �� �    �       � �       % � �    � �  �   &      
� �� e�    �   
      #  �    �
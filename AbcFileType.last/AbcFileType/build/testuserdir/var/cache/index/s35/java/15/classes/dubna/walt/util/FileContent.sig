����   2_
 _ �	 + �	 + �	 + � �	 + �	 + �	 + � �	 + �
 + �	 � � �
  � �
  � �
  �
 � � �
  �
  �
  � � �
  � �
  �
  �
  �
  � � �
  � �
 � � �
 � �
  �
 � � �
 ) � �
 ) �
 ) �
 ) �
 ) �
 � � �
 ) � �
 + �
 � �
  � � �
 8 � �
 8 �
 8 �
 � 
 ����������������	 
 )
 +	
 +
	 
 )
 +

	

  � B@
 � �
 �
 
 + content [B fileSize I 	bytesRead fileName Ljava/lang/String; filePath contentType CT_KEY ConstantValue <init> ([B)V Code LineNumberTable LocalVariableTable this Ldubna/walt/util/FileContent; 
Exceptions ([BLjava/lang/String;)V '(Ljava/lang/String;Ljava/lang/String;)V f Ljava/io/File; fi Ljava/io/FileInputStream; StackMapTable =(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;I)V i bufPos numBytes e Ljava/lang/Exception; 	inpStream Ljava/io/InputStream; maxSize bufLen buf  a ;(Ljavax/servlet/ServletInputStream;Ljava/lang/String;[BII)V j r n "Ljavax/servlet/ServletInputStream; boundary lb! parseFilePath &(Ljava/lang/String;)Ljava/lang/String; getBytes ()[B getNumPieces (I)I pieceLength getPiece (II)[B pieceNr startPos length a storeToDisk path name lf Ljava/io/FileOutputStream; <(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V inp getFileSize (Ljava/lang/String;)J srcFilePath 	sFilePath srcPath copyFile 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V destPath destFileName destFilePath src dest moveFile s Ljava/nio/file/Path; d copyFileData +(Ljava/lang/String;Ljava/io/OutputStream;)V out Ljava/io/OutputStream; totNumBytes" 
deleteFile (Ljava/lang/String;)V getFileName ()Ljava/lang/String; getFileType getContentType ()I getBytesRead 
SourceFile FileContent.java k# ` a b c d c   e f g f h f Content-Type: i f � �$ �% java/lang/StringBuilder ********* READING &'  CONTENT...( �)* � java/io/File k �+,-, java/lang/Exception Could not read file  java/io/FileInputStream k. �/012# !!!!!!!!!!   length=&3 ; read:4 � filePath: length=056789: java/lang/String k; dubna/walt/util/FileContent<= � �>?@ �0 � \A= / � �BCD, !Could not create upload directory java/io/FileOutputStream kE Could not store fileF;GHIJ,KLMN +++ COPY FILE:   ==>  
 filename= � � &Could not create destination directory Could not write output file � �O f>P � � +++ MOVE FILE:  ; QRSTUV java/nio/file/CopyOptionWXYZ[\ +++ copyFileData: ']# ... DATA COPIED - OK!^, . � � java/lang/Object java/io/InputStream  javax/servlet/ServletInputStream java/io/OutputStream ()V java/lang/System Ljava/io/PrintStream; append -(Ljava/lang/String;)Ljava/lang/StringBuilder; toString java/io/PrintStream print exists ()Z canRead (Ljava/io/File;)V ()J read ([B)I close (I)Ljava/lang/StringBuilder; println ([BII)I printStackTrace (Ljava/io/PrintStream;)V dubna/walt/SimpleQueryThread readLine (Ljava/io/InputStream;[BII)I ([BII)V indexOf (Ljava/lang/String;)I 	substring (I)Ljava/lang/String; trim lastIndexOf 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V mkdirs (Ljava/lang/String;Z)V write dubna/walt/util/IOUtil 
copyStream .(Ljava/io/InputStream;Ljava/io/OutputStream;)V isFile separatorChar C replace (CC)Ljava/lang/String; 	separator (II)Ljava/lang/String; java/nio/file/FileSystems 
getDefault ()Ljava/nio/file/FileSystem; java/nio/file/FileSystem getPath ;(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;  java/nio/file/StandardCopyOption REPLACE_EXISTING "Ljava/nio/file/StandardCopyOption; java/nio/file/Files move Y(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path; flush delete ! + _      ` a     b c     d c     e f     g f     h f    i f  j    	   k l  m   �     7*� *� *� *� *� *� *� *	� 
*+� *+�� �    n   .    !   	          %  + " 0 # 6 $ o       7 p q     7 ` a  r       k s  m   �     <*� *� *� *� *� *� *� *	� 
*,� *+� *+�� �    n   2    ,   	          %  + - 0 . 5 / ; 0 o        < p q     < ` a    < h f  r       k t  m  �    *� *� *� *� *� *� *� *	� 
*+� � � � Y� � +� � � � � Y+� N-� � 
-� � � Y� Y� � +� � � �� Y-� :*-� �� **� �� **� � � � *,� *� *� � ^� � Y�  � +� !� *� � "#� *� � "� � $� Y� Y� %� *� � "#� *� � "� � ��    n   ^    8   	          %  + 9 3 : Q ; Z < h = � @ � A � B � C � D � E � F � G � H J o   4    p q     g f    h f  Z � u v  � � w x  y    � h  + ) )   � �  r       k z  m    
   �*� *� *� *� *� *� *� *	� 
*,� � *-� 6�:*� 66� c� 1� ,+d� &6���*Y� `� `6���**� �� 6		*� � *� 		3T�	�����:� :� � '�  G � �   n   z    T   	          %  + U 3 V 8 W < Z B [ G ] J ^ M _ R ` ^ a m c r d } e � i � j � k � j � r � u � s � t � v o   p  �  { c 	 J k | c  M h } c  �  ~     � p q     � � �    � g f    � h f    � � c  < � � c  B � � a  y   B � M 	 + � ) ) �  4� � �   + � ) ) �  	  k �  m  A    U*� *� *� *� *� *� *� *	� 
*,� � 6�:*� -�6+� (6	*� )Y	� *� *� 	� ,� **� 	� -� .� /� � 	*� 	+� (`6	*� *� 	d� l+� 06� � ]*Y� Z`� �T*� ���d6
*� d6
� -
�
�3��3��� 
� **� dd� � ���*Y� 	`� **� �� 6

*� � *� 

3T�
���:� :		� � '�  FGJ   n   � -   �   	          %  + � 3 � 7 � = � B � F � Q � a � m � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �& �2 �> �D �G �J �L �T � o   �  � 7 { c 
 � / � c  � c � c )  { c 
 Q � � c 	L  ~  	  U p q    U � �   U g f   U � a   U � c   U � c  = � a  F � c  y   � � � 
 + � ) � �   �  
 + � ) � �  � '� �  
 + � ) � �   � � �   + � ) � �  	 	 � �  m   f     *1� 2<� 
*3� 2<*`� .�    n       �  �  �  � o        g f     { c  y    �   � �  m   /     *� �    n       � o        p q   r       � �  m   ?     *� 4dl`�    n       � o        p q      � c  r       � �  m   �     0h>6`*� 4� *� 4d6�:*� � 5�    n       �  �  �  �  �   � - � o   >    0 p q     0 � c    0 � c   , � c   ) � c     � a  y    �  r       � t  m   �     eN:� Y+� N-� � -� 6� � Y7� �� 8Y� Y� +� ,� � � 9:� � Y:� �*� *� � ;� <�    n   2    �  �  �  �  �  � & � B � G � Q _ d o   4    e p q     e � f    e � f   c u v   ` � �  y    � &  8* r      	 � �  m   �     ]N:� Y+� N-� � -� 6� � Y7� �� 8Y� Y� +� ,� � � 9:� � Y:� �*� =� <�    n   2         & B G Q W \ o   4    ] � �     ] � f    ] � f   [ u v   X � �  y    � &  8* r      	 � �  m   {     $� Y*� L+� >�  ?�+� �  A�+� �    n      $ 	% & ( ) + o       $ � f   	  u v  y   	 �  
 	 � �  m   <     */� C� D\� C� D�    n      4 o        � f   	 � �  m       �� � Y� E� *� F� +� G� ,� � � $N:� Y+� H� N-� � -� 6� � YI� �� 8Y� Y� +� ,� � � 9:� � YJ� �*� K�    n   2   ? +@ -A 0B <C CD JE TH pI uJ L �N o   4    � � f     � � f    � � f  - Y u v  0 V � �  y    � T  8* r      	 � t  m  &     `*� /� HM+� /� HN,:-:-:� L� 26� -`� M:-`� .:� � L� 26`� M:� N�    n   6   W X Y Z [ ^ #_ (` 3a @c Jd Vh _i o   R    ` � f     ` � f   X � f   P � f   M � f   J � f   G � f  # = { c  y     � @  ) ) ) ) ) ) )   r      	 � t  m  *     �*� /� HM+� /� HN� � Y� O� ,� F� -� P� � � $� Y-� :� � � 6� � YI� �� Q,� )� R:� Q-� )� R:� SY� TS� UW�    n   .   r s t 7v Aw Ix Qy [| h} u~ � o   H    � � f     � � f   � � f   x � f  A G u v  h   � �  u  � �  y    � [ ) )  r      	 � �  m  &     i� � Y� V� *� � � $� Y*� H� WMX>�:66� #,� 6`6���+� Y���+� Z,� � [� $�    n   >   � � %� (� -� 0� 3� 8� @� G� L� X� \� `� h� o   H    i g f     i � �  % D � x  ( A � c  - < � a  0 9 } c  3 6 � c  y    � 3  ) �  �  $ r      	 � �  m   >     � Y*� H� � \W�    n   
   � � o        g f   r       � �  m   /     *� �    n      � o        p q   	 � �  m   k     *]� 2<� *� -� �*`� .�    n      � � � � o        e f     { c  y    �   � �  m   2     *� � ^�    n      � o        p q    � �  m   /     *� �    n      � o        p q    � �  m   /     *� �    n      � o        p q    � �  m   /     *� �    n      � o        p q    �    �
����   3t
 . �	  �	  �	  �	  � �
 � � �
  � � � � �
 + �
 + � � � �
  �
  �
 + �
  � �
  �
 L � � � �
 M �
 M � �
  � �
  � � � � �
 & � � �
 L � �
  � � �
 � �
 + �
 � �
 � � �
 + � �
  �
  �
 M �	 � 
 : � �
	
 �


 +
 
 
 M � �
 +
 

 +	

 �
 U � 
!"
 #$	%&
' indexes [I isChange Z isOneString tmpDir Ljava/lang/String; PROPERTY_FONT_SIZE ConstantValue PROPERTY_BOLD magicKey startContentTag endContentTag <init> ()V Code LineNumberTable LocalVariableTable ex Ljava/lang/Exception; this Ljinr/sed/DocxReplace; StackMapTable getIndexOfEndStartContentTag (Ljava/lang/String;I)I content ind I i 
searchWord 
startIndex getFullWord &(Ljava/lang/String;)Ljava/lang/String; res indE replaceWord 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; word 	lastIndex isFirst 	addVector ;(Ljava/util/Vector;Ljava/util/Hashtable;)Ljava/lang/String; fontSize Ljava/util/Vector; props Ljava/util/Hashtable; LocalVariableTypeTable &Ljava/util/Vector<Ljava/lang/String;>; 	Signature O(Ljava/util/Vector<Ljava/lang/String;>;Ljava/util/Hashtable;)Ljava/lang/String; replaceWordMap M(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Hashtable;)Ljava/lang/String; a(Ljava/lang/String;Ljava/util/Vector<Ljava/lang/String;>;Ljava/util/Hashtable;)Ljava/lang/String; getUniqueFileName :(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path; 	directory 	extension fileName replaceContentTag cont wrongContentTag 
replaceMap Q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)Z e2 key keys Ljava/util/Enumeration; externalTxtFile Ljava/nio/file/Path; index zipfs Ljava/nio/file/FileSystem; e e1 in out map mapPr scrP 	dstFinalP dstP charset Ljava/nio/charset/Charset; zip_properties Ljava/util/Map; +Ljava/util/Enumeration<Ljava/lang/String;>; OLjava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/String;>;>; >Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Hashtable;>; 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;()*+, �(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Vector<Ljava/lang/String;>;>;Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/Hashtable;>;)Z replace <(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z ;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>; b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;)Z copyFile +(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z <clinit> 
SourceFile DocxReplace.java j k ] ^ _ ` a ` b c java.io.tmpdir-. } java/lang/Exception/ k /tmp > jinr/sed/DocxReplace <w:t012 u #   java/lang/StringBuilder345678 </w:t> t u91 !</w:t></w:r></w:p><w:p><w:r><w:t> <w:rPr> 	font_size:;<= java/lang/Integer>1 <w:sz w:val="3? "/><w:szCs w:val=" "/> bold java/lang/Boolean@A <w:b/> </w:rPr>BC java/lang/String � � {0}.{1} java/lang/ObjectDEFG8HIJK<L <w:t xml:space="preserve">M � docx � � � �NO � java/util/HashMap create falsePQ encoding UTF-8RST /word/document.xmlULVWX jY z u | } �Z[A\]^; java/util/Vector java/util/Hashtable � �_`ab java/nio/file/OpenOptioncdefgh k java/lang/ThrowableijklmnA � � java/nio/file/CopyOptionopqrs java/nio/file/Path java/nio/charset/Charset java/util/Map java/nio/file/FileSystem java/util/Enumeration java/lang/System getProperty printStackTrace length ()I indexOf append -(Ljava/lang/String;)Ljava/lang/StringBuilder; 	substring (II)Ljava/lang/String; toString ()Ljava/lang/String; size containsKey (Ljava/lang/Object;)Z get &(Ljava/lang/Object;)Ljava/lang/Object; intValue (I)Ljava/lang/StringBuilder; booleanValue ()Z 	elementAt (I)Ljava/lang/Object; java/util/UUID 
randomUUID ()Ljava/util/UUID; trim java/text/MessageFormat format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; java/nio/file/Paths ;(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path; 
replaceAll !java/nio/charset/StandardCharsets UTF_8 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; java/nio/file/FileSystems newFileSystem G(Ljava/nio/file/Path;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem; getPath java/nio/file/Files readAllBytes (Ljava/nio/file/Path;)[B ([BLjava/nio/charset/Charset;)V ()Ljava/util/Enumeration; hasMoreElements nextElement ()Ljava/lang/Object; equals deleteIfExists (Ljava/nio/file/Path;)Z getBytes (Ljava/nio/charset/Charset;)[B  java/nio/file/StandardOpenOption CREATE "Ljava/nio/file/StandardOpenOption; write G(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path; close addSuppressed (Ljava/lang/Throwable;)V toFile ()Ljava/io/File; java/io/File delete  java/nio/file/StandardCopyOption REPLACE_EXISTING "Ljava/nio/file/StandardCopyOption; copy Y(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path; !  .   	  ] ^    _ `    a `    b c    d c  e      f c  e    %  g c  e      h c  e      i c  e       j k  l   �     7*� *�
� *� *� � � � � � L+� 	� � 
� �   # &   m   2    1  %  &  '  2  4 # 8 & 6 ' 7 + 9 1 : 6 < n     '  o p    7 q r   s    � &    
  t u  l   ~     +� `� >� � `>`�    m       H  I  J  K n   *     q r      v c     w x    y x  s    �   z u  l   �     C*� +� O*� O*� .� *� +*� .`� O*� .� �*� .�    m       N  O  P  Q 1 S : T < U n        C q r     C v c    C { x  s    1
  | }  l  |     �M*� +*� .� >*� .� .� Y� ,� +*� .`*� .� � � M*� ,�+� 6*� .� *� .6� g*� .� ]� X*� .� M� Y� ,� +*+� � � � M+� >���+� 6*� .���*� .6���,�    m   J    X  Y  Z  [  \ C ] H _ J a S b ^ c f d � e � f � g � h � i � j � m n   4    � q r     � v c   � ~ c   � w x  S }  x  s    � J +� � g  � �  l  8    KN*� � H� Y� -� +*� .� � ,� � N� Y� -� +*� .`+� � � � N-�� Y� -� +*� .� � ,� � N*� .`6+� 6� *� .� � *� .� +�66� ~*+� *� .� n� i� 	6� "� Y� -� +*+� � � � N6+*+� � 6� +� 6*� .`���*� .`6� � Y� -� ++� � � � N-�    m   f    q  r 
 s + t M u O w p x z y � z � { � } � ~ �  � � � � � � � � � � �	 � �  �* �- �I � n   R   K q r    K v c   K � c  H ~ c  z � w x  � �  x  � � � x  � � � `  s    � O +� T� $!  � �  l  �     �N6+� � �� � Y� -� � � N,� �� Y� -� � � N,� � =,� � �  6� Y� -� !� h� "#� h� "$� � N� 
:� 	,%� � &,%� � &� '� � Y� -� (� � N� 
:� 	� Y� -� )� � N� Y� -� +� *� +� � N���-�  @ � �  � � �   m   V    �  �  �  � ( � , � @ � I � W � � � � � � � � � � � � � � � � � � � � � � � � � n   R  W , � x  �  o p  �  o p   � y x    � q r     � � �    � � �   � ~ c  �       � � �  s    
�  +!� ZB +B �   �    �  � �  l  k  	  b:*� � R� Y� � +*� .� � *,-� ,� � :� Y� � +*� .`+� � � � :�� Y� � +*� .� � *,-� ,� � :*� .`6+� 6� *� .� � *� .� +�66� �*+� *� .� p� k� 	6� $� Y� � +*+� � � � :6+*+� � 6� +� 6*� .`���*� .`6� � Y� � ++� � � � :�    m   f    �  �  � 3 � W � Z � � � � � � � � � � � � � � � � � � � � � �	 � � �' �4 �> �A �_ � n   \ 	  b q r    b v c   b � �   b � �  ^ ~ c  � � w x  � �  x  � � � x  � � � `  �      b � �  s    � Z +� [� $ ! �    � 	 � �  l   f     $-� .Y� /SY+� 0S� 1M*� +Y,S� 2�    m   
    �  � n        $ � c     $ � c    � c   � }  l   M     3M+,� 4�    m   
    �  � n         q r      � c    � c   � �  l       �+� +� 2:,� +� 2::� 5� 6:� :� 	*� 76		�*� 76-� 8� � �� 9:	� :Y� ;:

<=� > W
?@� > W� A::B� +� C:� +Y� D	� E:6*� FY6� w*� G:*� � *� .6� � 	����-� H:� I � <� J � +:� K� #*-� � L� � M� N:*� �������*� �  � OW	� P� QY� RS� SW� U� � T� H:� V� <� T� 4::�:� !� � T� :� V� � T�� :� 	�� 
:� 	*� 76� W � XW� 
:� 	� 	  ! $ RWZ U �Hn U �Hw  ��� Unyw   w��  w�� ���   m   � 7   � 
 �  �  � ! � $ � & � + � 5 � 8 � B � N � Q � V � _ � k � w � � � � � �  � � � � � � � �	 �
 � � �!$+1Hn �w�������� �"�%�#�$�' n   �  5  ~ ` 	 &  � p  � * � c  � i � c  � F � �  � � � �  � � v c  � � � x    � � �  � p �  � p �  o p   � q r    � � c   � � c   � � �   � � �  
� � �  � � �  � � �  B� ~ `  V� � � 	 _w � � 
 �   *  � F � �   � � �   � � �  _w � � 
 s   � � $   + + M M � � �  � � P   + + M M � � � � � � U � +  � $ +�  �?� � #Q UG UH U�    + + M M � � � � � � U       U  U�    + + M M � � � � �  B B W  �    �  � �  l  �    �+� +� 2:,� +� 2::� 5� 6:� :� 	*� 76�*� 76-� 8� � �� 9:� :Y� ;:		<=� > W	?@� > W� A:
:
B� +� C:� +Y� D� E:6*� FY6� m*� G:*� � *� .6� � 	����-� H:� I � 2� J � +:� K� *-� � +� Y:*� ��ʄ���*� �  � OW� P� QY� RS� SW
� U� 
� T� H:� V� <
� T� 4::�:
� !� 
� T� :� V� 
� T�� :

� 	�� 
:

� 	*� 76� W � XW� 
:

� 	� 	  ! $ HMP U �>d U �>m  y~� Udom   w��  w�� ���   m   � 7  * 
+ , . !3 $/ &0 +1 52 84 B5 N6 Q9 V; _= k? wD �E �F �G �H �I �J �K �L �M �N �P �Q �R �S �TVXYZ[!\']>_dDm_�b�_�`�a�f�c�e�g�i�l�j�k�q n   �  5  ~ `  &  � p  �   � c  � _ � c  � < � �  � � � �  � � v c  � � � x   � � 
�  � p 
�  � p 
�  o p 
  � q r    � � c   � � c   � � �  
� � �  � � �  � � �  B� ~ `  Vv � �  _m � � 	 �      � < � �   � � �  _m � � 	 s   � � $   + + M � � �  � � P   + + M � � � � � � U � +  � $ +�  �5� � #Q UG UH U�    + + M � � � � � � U       U  U�  
  + + M � � � � �  B B W  �    �   � �  l   �     +,� ZY� [S� \W�N-� 	�        m      v w x y { n   *    � p     q r      � �     � �  s    R   � k  l         � �    m       (  �    �
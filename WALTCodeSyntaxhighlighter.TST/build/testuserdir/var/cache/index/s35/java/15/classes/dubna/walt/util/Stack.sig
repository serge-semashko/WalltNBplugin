����   2 k
  ?	  @	  A B
  C
  D E
  F
  G
  H
  I J
 K L M
  ?
  N
  O P
  Q
  R
  S
  T
  U V W v Ljava/util/Vector; ind I <init> ()V Code LineNumberTable LocalVariableTable this Ldubna/walt/util/Stack; 
Exceptions X size ()I push (J)V l J (Ljava/lang/Object;)V obj Ljava/lang/Object; getFirst ()Ljava/lang/Object; StackMapTable getNext outContents (Ljava/io/PrintWriter;)V o i out Ljava/io/PrintWriter; getPrev getLast pop 
SourceFile 
Stack.java       java/util/Vector  Y ' ( java/lang/Long  * Z - [ 1 \ ] === Stack contents:  ^ _ ` java/lang/StringBuilder a b c d ;  c e f g h 1 ; 1 i j dubna/walt/util/Stack java/lang/Object java/lang/Exception (II)V 
addElement firstElement 	elementAt (I)Ljava/lang/Object; java/io/PrintWriter print (Ljava/lang/String;)V 	longValue ()J append (J)Ljava/lang/StringBuilder; -(Ljava/lang/String;)Ljava/lang/StringBuilder; toString ()Ljava/lang/String; lastElement removeElementAt (I)V !                
         X     *� *� *� *� Y

� � �    !          	      "        # $   %     &  ' (      2     *� � �    !         "        # $    ) *      H     *� � Y� � 	�    !   
    )  + "        # $      + ,   ) -      A     	*� +� 	�    !   
    3  5 "       	 # $     	 . /   0 1      d     *� � � �*� *� � 
L+�    !       >  ?  @  B "        # $     + /  2      3 1      j     %*Y� `Z� *� � � �*� *� � L+�    !       L  M # O "       % # $   #  + /  2      4 5      �     @+� =*� � � /*� � N+� Y� -� � � � � � ���̱    !       X  Y  [  \ 9 Y ? _ "   *    6 /   7 7     @ # $     @ 8 9  2   	 � � 6  : 1      c     *Y� dZ� � �*� *� � L+�    !       h  i  k "        # $     + /  2      ; 1      l     #*� � � �*� � L**� � d� +�    !       u  v  w ! y "       # # $     + /  2      < 1      l     #*� � � �*� L*� *� � d� +�    !       �  �  � ! � "       # # $     + /  2      =    >
����   3 �
 > _	 = `	 = a	 = b c	 = d
 = e	 = f g	 = h
 i j k
 i l
 = m
 = n
 = o p
 q r s	 t u
  v w
  _ x
  y
  z
  z	 = {
 | } ~
 i  �
 i � �
 � � � � � �
 � � � � � �	 � � � � � � � � � � �
 | �
 = �
 = �	 = �	 = �	 = �
 = � � � 	numFields I form_fields_types [Ljava/lang/String; fields sql Ljava/lang/String; <init> ()V Code LineNumberTable LocalVariableTable this Ljinr/sed/ServiceViewDoc; start e Ljava/lang/Exception; StackMapTable � 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; makeSelectSQL (Z)V i doFormat Z fields_types B 	initSuper 
SourceFile ServiceViewDoc.java F G ? @ A B C B   D E \ G � � report header � � � � � DOC_DATA_RECORD_ID � � U V � � � G report footer � � G java/lang/Exception � � � � � java/lang/StringBuilder XXXXXXXX Exception:  � � � � � � � � � ERROR � � FIELDS � � , � � � FIELDS_TYPES FORM_FIELDS_TYPES select  float0 � � replace(FORMAT( ,2),',',' ') as " ",  ,  � � � � � � _id,  _id 
SYS_FIELDS  from  
TABLE_NAME 
 where id= +++ Get doc data record SQL:  � � � G � G � E � Y � Y � G jinr/sed/ServiceViewDoc &dubna/walt/service/TableServiceSpecial java/lang/Throwable cfgTuner Ldubna/walt/util/Tuner; out Ljava/io/PrintWriter; dubna/walt/util/Tuner outCustomSection *(Ljava/lang/String;Ljava/io/PrintWriter;)V enabledOption (Ljava/lang/String;)Z 
getPreData (Ljava/lang/String;)V 	makeTable java/io/PrintWriter flush java/lang/System Ljava/io/PrintStream; printStackTrace (Ljava/io/PrintStream;)V append -(Ljava/lang/String;)Ljava/lang/StringBuilder; toString ()Ljava/lang/String; rm !Ldubna/walt/util/ResourceManager; dubna/walt/util/IOUtil 
writeLogLn 6(Ljava/lang/String;Ldubna/walt/util/ResourceManager;)V addParameter '(Ljava/lang/String;Ljava/lang/String;)V getParameter &(Ljava/lang/String;)Ljava/lang/String; java/lang/String split '(Ljava/lang/String;)[Ljava/lang/String; equals (Ljava/lang/Object;)Z jinr/sed/ServiceEditDocData typesNeedIdField Ljava/util/Set; java/util/Set contains 7(ILjava/lang/String;Ldubna/walt/util/ResourceManager;)V makeTableTuner initFormatParams makeTotalsForCols makeSubtotals unicodeHeaders initTableTagsObjects ! = >     ? @    A B    C B    D E     F G  H   T     *� *� *� *� *� �    I         
 	      J        K L    M G  H  N     �*� *� 	*� 
� *� � � *� **� � *� *� *� 
� *� 
� � cL+� � � Y� � +� � � *� � *� +� � *� *� 
� *� 
� � M*� *� 
� *� 
� ,��    . E    . �   E w �    I   N           "  *   . ( ; ) B * E " F # M $ j % w ( � ) � * � ( � ) � + J     F 1 N O    � K L   P    *Z � H Q R      S     T    U V  H  ,    �**�  � !"� #� *� $� !"� #M**� %� !"� #� **� �� *&� >*� � �,2'� (� @� <� Y� *Z� � )� *� 2� *� *� 2� +� � � � &� Y� *Z� � *� 2� ,� � � *� *� 2� � -*� 2� . � G� Y� *Z� � *� 2� /� � � *� � Y� *� 2� 0� � � ���&� Y� *Z� � *� 1� !� 2� *� 3� !� 4� *� � !� � � � Y� 5� *� � � *� � 6�    I   N    4  6 ! 7 3 8 < ; B < L = [ > � @ � A � B � C � D <! GG HX Id J� L J   *  D � W @   � K L    � X Y  !b Z B  P    � D [� O"� c�   \ G  H   _     *� 7*� 8*� 9*� :*� ;*� <�    I       T  U  V  W  X  Y  Z J        K L   R       ]    ^
����   2
 M z	 L { |	 L }	 L ~	 L 	 L � �
 L �	 L �	 L � �
 � �
 k �	 L �
 k � �
  z �
  �	 L �
 � �
  �
 k � �
 k �	 L �	 L �	 L �
 j �
 j �
 j � � � � �	 L �	 L �	 L �
 k �	 L � �	 L �
 k �
 � � �	 L �	 L �	 L �
 � �
 j �
 j � �	 � �
 5 �	 L �
 L �
 L �
 L �	 L �	 L �
 k �
 k �	 L �	 L � �
 k �
 k � � �
 � � �
 � � �
 M � � � rowSubtotal D oldCrossValue Ljava/lang/String; numRowSubtotals I numCurrRowSubtotals numCurrSectionCols <init> ()V Code LineNumberTable LocalVariableTable this +Ldubna/walt/service/CrossTab2SubtotService; outTableHeader (Ljava/sql/ResultSet;)V i tag name1 prevName numCols e Ljava/lang/Exception; 	resultSet Ljava/sql/ResultSet; StackMapTable � � � putValue ()Z d isNewSection (Ljava/lang/String;)Z 
crossValue endRow colNr putRowSubtotal outTableTotal (Ljava/lang/String;)V rowName 
SourceFile CrossTab2SubtotService.java V W N O   P Q R S T S U S 	table_beg � v � � � � headerBgColor � � � � v � � � v java/lang/StringBuilder rowspan=1 colspan= � � � S � � � � � � v   � � � S � � � Q � � � � � � colspan= ' class=rowSubtotal rowspan=2 Всего<br> � � � S � Q � � � Q 	rowspan=2 � � � � � � v 	rowspan=1 � � � Q � � � � � � � � java/lang/Exception � �  S o p t W � � m	
 O S <td>&nbsp;</td> � v � W totalBgColor <b>-- � --</b> v class=rowSubtotal align=right u v )dubna/walt/service/CrossTab2SubtotService #dubna/walt/service/CrossTab2Service java/sql/ResultSet java/lang/String dubna/walt/util/HTMLTag outTag row Ldubna/walt/util/HTMLTag; 
tableTuner Ldubna/walt/util/Tuner; dubna/walt/util/Tuner getParameter &(Ljava/lang/String;)Ljava/lang/String; setAttr cell_h setValue append -(Ljava/lang/String;)Ljava/lang/StringBuilder; crossColIndex java/lang/Integer toString (I)Ljava/lang/String; ()Ljava/lang/String; addAttr addValue (Ldubna/walt/util/HTMLTag;)V numCrossValues crossValues [Ljava/lang/String; CrossFieldsDelimiter indexOf (Ljava/lang/String;)I 	substring (II)Ljava/lang/String; equals (Ljava/lang/Object;)Z 	colTotals [D 	numDigits thsnDelimiter reset (ILjava/lang/String;)V totColLabel out Ljava/io/PrintWriter; toHTML java/io/PrintWriter write cfgTuner colTagsSectionName colNames 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; length ()I java/lang/System Ljava/io/PrintStream; printStackTrace (Ljava/io/PrintStream;)V currentColumn collectColTotal (ID)V record cell 	isNumeric 	getDValue ()D rowTotal numRowValues java/lang/Double (D)Ljava/lang/String; println ! L M     N O    P Q    R S    T S    U S     V W  X   ]     *� *� *� *� *� *� �    Y          	     $  ) Z        [ \    ] ^  X  �    �*� 	*� 
*� � � *� � *� 
� *� � Y� � *� � � � � *� � *� 
*� � MN66*� � �*� 2*� 2� � � M,-�  � � 	�� �*� � Y� !� � � � � *� � Y� "� -� � � *� 
*� � *� #� *� � Y� $� -� � � *Y� `� *� 
*� � 6,N���H*� � Y� !� � � � � *� � Y� "� -� � � *� 
*� � *� #� *� � Y� $� -� � � *� 
*� � *Y� `� **� *� ``�� %*� *� &*� '� (*� *� )� *� *� *� 
*� � *� +*� 
� ,� -*� .� *� 
� 6*� � E*� /*� 0*� 12� 2:*� �  � *� 12� � *� 
*� � ����6*� � K*� � Y� "� *� 2*� 2� � � � 3`� 4� � � *� 
*� � ����*� *� &*� '� (*� +*� 
� ,� -*� 
� � M,� 6� 7�   �� 5  Y   � 7   8  :  <  @ ( B H C Q D \ G _ H b I e J q L � M � O � S � T � U � W � X Y Z \ _ J# bA c[ df go h� i� j� m� o� r� s� t� v� w� z� }	  �: �E }K �W �� �� �� �� �� �� �� �� �� � Z   f 
 h � _ S  ( ` Q   K _ S N Q _ S  _f a Q  bc b Q  e` c S �  d e   � [ \    � f g  h   w � h  L i j j  .� }� � �� 4  L i j j j  k�   L i j j j  k j� � � P� (  L i  5  l m  X  �     �H*� 8>*� � �**� 2� 9� **� `*� � :*� ;*� � *Y� `� *� <*� 2*� 2�  � m*� =*� <*� `2� *� =� >� 4*� =� ?H**� `'� :*Y� @'c� @*Y� 'c� *Y� A`� A*� 
*� =� *� =� *`� 8�*� 
B� C���<**� � 8� L+� 6� 7�    � � 5 � � � 5  Y   j    �  �  �  � * � . � 6 � @ � U � g � q � y � � � � � � � � � � � � � � � � � � � � � � � � � � � � � Z   *   � _ S   � n O  �  d e    � [ \   h    � .	� a� � 
  L  5  o p  X   �     7*� � 3� 
*+� �+� � =+� *� � �  � �*+� �    Y   "    � 
 �  �  �  � . � 0 � 5 � Z        7 [ \     7 q Q    _ S  h    �   r W  X  �    *� 8� *� 
� D�*� 8*� `<*� *� `� >**� *� d2� 9� **� � :*� ;� *� 
B� C*Y� `� ����**� *� `*� � :*� ;*� A� [*� =*� E� � *� =� Y� F� *� @� G� H� � � *� 
*� =� **� *� ``*� @� :*� @*� +*� 
� ,� I*� 
� D*� *� *� � L+� 6� 7�     � 5  � � 5  Y   r    �  �  �  �  � & � 8 � A � H � Q � [ � a � r � v � } � � � � � � � �  � � � � � �	 � �	
 Z       H s S  �  d e    [ \   h    � 	.� � sg 5  t W  X   }     ;*� =*� � G� *� =J� *� 
*� =� *Y� `� *� *� =� �    Y         " , 1 : Z       ; [ \    u v  X   Q     *Y� *� ``� *+� K�    Y         ! Z        [ \      w Q   x    y
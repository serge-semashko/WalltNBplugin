����   2u
 n �	 m �	 m �	 m �	 m � �
 � �	 m � �	 m �
 m �	 m �
 m �
 � �	 m � �
 � �	 m �	 m �	 m �	 m �	 m �
 m �	 m � �
  � �
  �
 � � � �
  �	 m �
 � � �
 m �
 m �
 m �	 m �
 � �	 m �
 m �
 m � � � �
 m �
 m �
 m �
 m �
 m �	 m � �
 � �	 m �
 k �	 m �
 � �
 � �
 � �
 m �	 m �	 m �	 m �
 � �
 � � �
 � �
 � � �
 � � �
 � � �	 m �
 � �
 � �	 m �	 m �
 � � � � �	 m � � �
 � 	 m
 �	 m
 �	

	 m �
 g
 g
 g
 g crossValues [Ljava/lang/String; numCrossValues I crossColIndex 
makeTotals Z currentColumn <init> ()V Code LineNumberTable LocalVariableTable this 'Ldubna/walt/service/CrossTabServiceTot; 	makeTable 	resultSet Ljava/sql/ResultSet; StackMapTable 
Exceptions outTableBody (Ljava/sql/ResultSet;)I numRows putValue ()Z i d D collectColTotal (ID)V colIndex val endRow colNr startRow outTableHeader (Ljava/sql/ResultSet;)V tag Ljava/lang/String; outTableTotal (Ljava/lang/String;)V rowName outTableFooter isNewRow 	getRecord r p getCrossValues v Ljava/util/Vector; 
SourceFile CrossTabServiceTot.java w x o p t u v r noTotals !"#  $ � � x% �&'()*+ p NumSpecialCols,-. r/ r s r q r0 r1 x23 java/lang/StringBuilder numSqlColumns: 45678 ; crossColIndex:  ; numCrossValues: 79:;<=> wrapperTable? � � � � �@AB �C � � � � x wrapperTableEndD � � � � � � x � � � xE NumTableRowsFGH pIJK#L �M �NO � �P �Q rR#STU � <td>&nbsp;</td>S �V x totalBgColorWX <b>--Y7Z --</b>[\]9^_ �` ra �Vb 
rowBgColor 	table_beg headerBgColorc# . colspan=d �e �Wfg � 	rowspan=2h � ' <b> </b> align=right colspan= align=right -ijk 	table_endl pm8 SQL_Cross_Values java/util/Vector wnopqr java/lang/Stringst %dubna/walt/service/CrossTabServiceTot %dubna/walt/service/TableServiceSimple java/sql/ResultSet java/lang/Exception dubna/walt/util/HTMLTag cfgTuner Ldubna/walt/util/Tuner; dubna/walt/util/Tuner enabledOption (Ljava/lang/String;)Z subtotalRow Ldubna/walt/util/HTMLTag; makeTotalsForCols sqlSectionName runSQL ((Ljava/lang/String;)Ljava/sql/ResultSet; dubna/walt/util/DBUtil getColNames )(Ljava/sql/ResultSet;)[Ljava/lang/String; colNames getIntParameter (Ljava/lang/String;)I numSpecialCols numSqlColumns numTableColumns 
initArrays 	colTotals [D append -(Ljava/lang/String;)Ljava/lang/StringBuilder; java/lang/Integer toString (I)Ljava/lang/String; ()Ljava/lang/String; rm !Ldubna/walt/util/ResourceManager; dubna/walt/util/IOUtil 
writeLogLn 6(Ljava/lang/String;Ldubna/walt/util/ResourceManager;)V outTag dbUtil Ldubna/walt/util/DBUtil; closeResultSet totRowLabel next 
tableTuner addParameter '(Ljava/lang/String;Ljava/lang/String;)V record equals (Ljava/lang/Object;)Z cell setValue 	isNumeric 	getDValue ()D rowTotal numRowValues row addValue (Ldubna/walt/util/HTMLTag;)V setAttr reset getParameter &(Ljava/lang/String;)Ljava/lang/String; java/lang/Double (D)Ljava/lang/String; out Ljava/io/PrintWriter; toHTML java/io/PrintWriter println 	numDigits thsnDelimiter (ILjava/lang/String;)V cell_h addAttr colTagsSectionName 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; totColLabel write dubna/walt/util/StrUtil formatDouble ((DILjava/lang/String;)Ljava/lang/String; 	oldRecord 	getString (II)V 
addElement (Ljava/lang/Object;)V size ()I copyInto ([Ljava/lang/Object;)V ! m n     o p    q r    s r    t u    v r     w x  y   J     *� *� *� *� �    z          	 $  ) {        | }    ~ x  y  �     �*� � � *� *� *	� 
*� **� � L*+� � **� � � *� � *� **� �*� d� **� d� **� *� `d� *� **� `�� � Y� � *� � � � *� � � � *� � � �  *� !� "*#� $*+� %*+� &W*� '+� (*� � **� )� **� +*,� $�    z   j    8  9  :  ;  =   ? ) @ 1 A > B J C X D b E q G u H � J � K � L � J � N � O � P � Q � S � U � V � Y {       � | }   ) �  �  �    � - �� � �     �  � �  y   �     V*� =+� - � )*+� .*� /� *� 0*� 1� *� 0*� 1W����*� 2*� 34� � 5*� 4� � 5�    z   6    h  i  k  l  m   o ' p + q 0 s 6 u : v G w T x {        V | }     V  �   O � r  �   	 �  �     �  � �  y  *     �H*� >*� � �*� 6*� 2*� 2� 7� ^*� 8*� 6*� `2� 9*� 8� :� %*� 8� ;H*'� <**� ='c� =*Y� >`� >*� ?*� 8� @*� 8	� A*`� �*� ?B� C���|**� � �    z   F    �  �  � $ � 6 � @ � H � N � X � b � m � v � } �  � � � � � � � {       � � r    � | }    � � �  �    � � Z�   � �  y   b     *� � �*� \1(cR�    z       �  �  � {         | }      � r     � �  �      � x  y       �*� � *� ?� D�*� <*� � *� ?B� C����*� >� T*� 8*� 3E� F� A*� 8� Y� G� *� =� H� I� �  � 9*� ?*� 8� @**� *� =� <*� =*� J*� ?� K� L*� ?� D�    z   >    �  �  �  �  � % � + � 2 � B � g � r � ~ � � � � � � � {       � r    � | }   �    � � � W  � x  y   �     Q*� 2*� 8*� M*� N� O*� ?*� 3P� F� A<*� � !*� 8*� 62� 9*� ?*� 8� @����*� �    z   & 	   �  �  � # � - � : � E � K � P � {     % & � r    Q | }   �   	 � %� %  � �  y  e    n*Q� $*� ?*� 3R� F� A*� ST� 9*� S� Y� U� *� � � �  � V*� ?*� S� @*� S*� *� W*� *� 2� X� 9*� S� Y� U� *� � � �  � A*� ?*� S� @*� S*� Y� 9*� SZ� A*� ?*� S� @*� S	� A*� J*� ?� K� [*� ?	� 9=*� � @*� *� W*� 2� XN*� S-	� 7� *� 2� -� 9*� ?*� S� @����=*� � 3*� S� Y� \� *� 2� �  � 9*� ?*� S� @����*� S*� M*� N� O*� J*� ?� K� [�    z   j    �  �  �  � ? � J � e � � � � � � � � � � � � � � � � � � � � � � � � ?J �P_m {   4  � % � �  � E � r  8 � r   n | }    n  �  �   ; � �� /  m � k  ��    m � k  � k� � � 7  � �  y  h     �*� ?� D*� ?*� 3E� F� A*� 8*� M*� N� O*� 8� Y� ]� +� ^� �  � 9*� 8� Y� _� *� � � �  � A*� ?*� 8� @*� 8`� A*� 8a� 9=*� � J*� � 2*� 8� Y� G� *� 1*� M*� N� b� I� �  � 9*� ?*� 8� @����*� J*� ?� K� L�    z   >      & E e p y � � � � � �! �" {      � O � r    � | }     � � �  �   
 � �=�   � x  y   5     *c� $�    z   
   . / {        | }    � �  y   �     3*� *� � �<*� � *� 62*� d2� 7� ������    z      < = > )? += 1@ {      " � r    3 | }   �    � �   � �  y   �     F=*� � >*� d*� 62S*� 6+`� e S*� 6*� 62� 	� 	*� 62S�����    z      N 
O P %Q ?N EU {       C � r    F | }     F � �  �   0 � � 5  m �  ��   m �  � k�  �     �  � x  y   �     O*f� L� gY� hM+� - � ,+� e � i���*� '+� (*,� j� k� ,*� � l**� �� �    z   & 	  b c d f *h 2i =j Ek Nl {        O | }    H  �   < � �  �    �  � g �     �  �    �
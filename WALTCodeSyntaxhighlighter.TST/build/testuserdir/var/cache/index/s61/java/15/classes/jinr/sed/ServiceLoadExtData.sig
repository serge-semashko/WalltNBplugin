����   3�
 � �	 � �	 � �	 � �	 � �	 � �	 � �	 � �	 � �	 � � �
  �	 � � �	 � �
 � �	 � � �
 � �
 � � � �
 � � � � � � � �
 P � � � �
 � � �
 ! �
 ! � �
 ! � � � �
 � � �
 �  �	 �
	
 � �
 �
 �
 �
 �
 
 ! � �"
 �#
 $%&
 P'
 P(
)* �+, �-./0 �1 �2
 �34
5 �67 �8
 P9
 : �;<
 !=> �?
)@AB	CDE
FGHIJKLMNOPQRSTUV
 PW
 X
  �
 YZ[\]^_`abc 	checkStmt Ljava/sql/PreparedStatement; 
updateStmt okStmt vData Ljava/util/Vector; 	Signature &Ljava/util/Vector<Ljava/lang/String;>; 
numSrcCols I dest_fields_types [Ljava/lang/String; dest_fields dest_fields_names numDestCols <init> ()V Code LineNumberTable LocalVariableTable this Ljinr/sed/ServiceLoadExtData; start r Ljava/sql/ResultSet; e Ljava/lang/Exception; i metaData Ljava/sql/ResultSetMetaData; s Ljava/lang/String; h_dest conn Ljava/sql/Connection; sql destImportedFields 	srcDBUtil Ldubna/walt/util/DBUtil; StackMapTabledefgh 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; processRecord (Ljava/sql/ResultSet;)V val ex checkRecord (Ljava/sql/ResultSet;)Z newData id fieldNew fieldOld 	is_manual oldData isEqual Z idError checkResultSet showExtraRecords (Ljava/lang/String;)V 	extraType delStmti showErr *(Ljava/lang/Exception;Ljava/lang/String;)V msg 
SourceFile ServiceLoadExtData.java � � � � � � � � � � � � � � � � � � � � java/util/Vector �jkl report headermnopqr � REQUESTstuv java/lang/Exception Could not get external data... � �wxyz DEST_FIELDS ,{| DEST_FIELDS_NAMES DEST_FIELDS_TYPES  } � java/lang/StringBuilder~ ?, �� <th style='padding: 1px;'> </th>�� 
start load���� select   IS_MANUAL from  
TABLE_NAME  where id=? +++ CHECK RECORD SQL: ' '������� ,  replace into   (  changed, is_deleted) values ( 
 now(), 0) +++ UPDATE STATEMENT: ' +++ OK STATEMENT: 'update  - set is_deleted=0 where is_manual=0 and id=?' update  , set is_deleted=0 where is_manual=0 and id=?�� � �� �� � DELETED � � MANUAL report footer�� �  Import external data error� � IMPORT_ERROR � ��� java/lang/String int���z����� java/sql/Types��  Integer field value error:  =' varchar���z��  +++ execute: '� Process Record Error item�������� <td>~� </td>���� <td><b> 	</b></td>�m�  !!!!! UNKNOWN TYPE: �� � %!!!!! +++ ERROR: UNKNOWN FIELD TYPE:  <td colspan= 1><b> Неизместный тип поля:</b>  RECORD OLD UPDATED NEW 
<td>-</td>  ERROR: record ID is empty!   ERROR: record ID=' is_manual from  # where is_deleted=1 and is_manual=0 # where is_deleted=0 and is_manual=1 +++   SQL: '�z���z ',  :  <b> </b>  err_msg <b>XXXXXXXX Exception:  ERROR : jinr/sed/ServiceLoadExtData dubna/walt/service/Service dubna/walt/util/DBUtil java/sql/ResultSet java/sql/ResultSetMetaData java/sql/Connection java/lang/Throwable java/sql/PreparedStatement (I)V cfgTuner Ldubna/walt/util/Tuner; out Ljava/io/PrintWriter; dubna/walt/util/Tuner outCustomSection *(Ljava/lang/String;Ljava/io/PrintWriter;)V dbUtil getParameter &(Ljava/lang/String;)Ljava/lang/String; 
getResults ((Ljava/lang/String;)Ljava/sql/ResultSet; getMetaData ()Ljava/sql/ResultSetMetaData; getColumnCount ()I split '(Ljava/lang/String;)[Ljava/lang/String; useDb append -(Ljava/lang/String;)Ljava/lang/StringBuilder; toString ()Ljava/lang/String; addParameter '(Ljava/lang/String;Ljava/lang/String;)V getConnection ()Ljava/sql/Connection; setAutoCommit (Z)V rm !Ldubna/walt/util/ResourceManager; dubna/walt/util/IOUtil 
writeLogLn 6(Ljava/lang/String;Ldubna/walt/util/ResourceManager;)V prepareStatement 0(Ljava/lang/String;)Ljava/sql/PreparedStatement; next ()Z closeResultSet close java/io/PrintWriter flush clear 	elementAt (I)Ljava/lang/Object; equals (Ljava/lang/Object;)Z length java/lang/Integer parseInt (Ljava/lang/String;)I setInt (II)V setNull 	setString (ILjava/lang/String;)V executeUpdate enabledExpression (Ljava/lang/String;)Z java/lang/Object 	getString (I)Ljava/lang/String; trim 
addElement (Ljava/lang/Object;)V getInt (I)I (I)Ljava/lang/StringBuilder; executeQuery ()Ljava/sql/ResultSet; java/lang/System Ljava/io/PrintStream; java/io/PrintStream println hashCode printStackTrace (Ljava/io/PrintStream;)V size ! � �   	  � �    � �    � �    � �  �    �  � �    � �    � �    � �    � �     � �  �   �     2*� *� *� *� *� *� *� *� *� 	*� 
�    �   * 
      	          "  '  ,  �       2 � �    � �  �      �M*� Y*� � � *� *� � *� M,*� � � L� N*-� L+�H+�  N*-�  � **� � � � **� � � � 	**� � � � **� �� 
*�  ::6*� 
� D� !Y� "� #$� #� %:� !Y� "� #&� #*� 	2� #'� #� %:����*� (� )*� **� � *� � +:� , � !Y� "-� #*� � � #.� #*� /� � #0� #� %:� !Y� "1� #� #2� #� %*� 3� 4*� 5 � :6		*� � )� !Y� "� #*� 	2� #6� #� %:�	��Ի !Y� "7� #*� /� � #8� #� #9� #� #:� #� %:� !Y� ";� #� #2� #� %*� 3� 4*� 5 � � !Y� "<� #*� /� � #=� #� %*� 3� 4*� !Y� ">� #*� /� � #?� #� %� 5 � +� @ � *+� A���,+� B,� C*D� E*F� E*� G*� � *� � H� ;N*-I� *� G*� � *� � H� :
*� G*� � *� � H
��   1 4  >��  >��  ���  ���    �   � 8   %  &  (  * # - 1 1 4 . 5 / < 0 > 4 B 6 I 7 S 9 e : w ; � < � = � @ � A � B � C � D � B � K � M P Q SI Ti Uv Wz X� Y� X� [� \ ] _6 `a bj cr ew f{ h� i� p� q� r� m� n� p� q� r� p� q� s �   �  1  � �  5 	 � �  � J � � } / � � 	 I> � �  �� � �  �� � � y � � I> � � z � � �  � �   � � �   >� � �  � � �  �   � � 4  �  �  � 	  � � �  � d  � � � � P P  � I� � 
 � � � � P P � P P  � .� ��   � � �  V ^ � �      �     �    � �  �  �    o*� � J*� K� )*� L� )*� M� )*+� N� �>*� � �*� d� O� PM*� d2Q� R� q,� S� *� ,� T� U � *� � W � f:*� � W *� !Y� "X� #*� 	2� #Y� #*� d� O� P� #2� #� %� � *� d2Z� R� *� ,� [ ���N*� � \ W� V*� M� ]� J*� *� � O� P� T� U � !Y� "^� #*� � _� #2� #� %*� 3� 4*� � \ W� N*-`� *� a*� � � N*� M� )�  X { ~  (GJ R_b   �   �     z  {  |  } ( � 0 � : � H � X � _ � p � { � ~ � � � � � � � � � � � � � � � � �  � �= �G �J �K �R �_ �b �c �n � �   >  � C � �  H � � �  2 � � � K  � �   o � �    o � �  �   2 � 2 � =  � � P  
B � G� � RB O    � �  �  �    �=>*� +� b � c� d+� e 6� !Y� "f� #� gh� #� %:� .:	>� !Y� "f� #*� � O� P� #h� #� %:6*� � U *� � U *� � i :	*� K� !Y� "*� K� � #f� #*� � O� P� #h� #� %� )	��	� @ ��� !Y� "f� #� gh� #� %:6

*� ��*� 
d2Z� R� *� 
d2Q� R� �+
� b :� :� c:*� 
d2Q� R� � S� � T� j:*� � d	
� b :� :� c:� R� F� !Y� "� #f� #� #h� #� %:� !Y� "� #f� #� #h� #� %:� �=� !Y� "� #k� #� #l� #� %:� !Y� "� #k� #� #l� #� %:� {� m� !Y� "n� #*� 
d2� #� %� o� !Y� "p� #*� 
d2� #� %*� 3� 4*� M� !Y� "q� #*� � gr� #*� 
d2� #h� #� %� )�
��g	*� 
`� e 6

� =� *� st� )� *� su� )� �*� sv� )w:6

*� � �*� 
d2Z� R� *� 
d2Q� R� I+
� b :� :� c:*� � d� !Y� "� #f� #� #h� #� %:� #*� !Y� "p� #*� 
d2� #� %� �
��l=� E*� � O� P� S� *x� � **� !Y� "y� #*� � O� P� #2� #� %� *� L� )*� K� )�   9 <   �   E   �  �  �  �  � 9 � < � > � @ � d � g � s �  � � � � � � � � � � � � �# �( �, �3 �D �L �V �_ �j �o �s �z �� �� �� �� �� � �- �O �� �� �� �� �� �� ������	�
�!Ddjlp���!�"�# �   �  9  � �    � �  > ) � � 	# � � � j � � �  �� � � 
� % � � 
 �� � �  < � � � � � � 
  � � �    � � �  � � �  � � � � � � �  df � �  gc � �  �@ � � 	 �  * � <  � �  � * 	 � �    P  � �  � �   P P �  *�   � � P  P P �  )�   � � P P P P �  � S� D  � �   P P �  � w� � � 
�  
 � �    P �  �   � �   P P �  *�   � � P  P P �  � 2  � �   P P �  � & �       � �  �  �  
  �*� s+� )*� K� )*� � +M� !Y� "-� #*� � � #z� #*� /� � #� %N+D� R� � !Y� "-� #{� #� %N�  +F� R� � !Y� "-� #|� #� %N� !Y� "}� #+� #~� #-� #2� #� %*� 3� 4,-� 5 :� i :� @ �:6*� 
� �*� d2:6	� �    7    ��   n�   *Q� R� 6	� Z� R� 6		�   m                C� !Y� "� #f� #� e � gh� #� %:� N� !Y� "� #f� #� b � #h� #� %:� $� m� !Y� "n� #*� d2� #� %� o���*� L� )*� a*� � ���    �   f   - 
. / 0 J1 S2 j3 s4 �6 �7 �8 �9 �: �; �<@>g?jC�D�F�;�J�K�L�M �   R  � � � �  � � �   � � �    � � �  � � �  J� � �  � � �  � � �  �   1 � j � P� 9 � ��  P� 5 P))�  � �  �       � �  �  �     �N+� +� m� �+� �N6*� � �� ;� !Y� "-� #*� 	2� #Y� #*� � O� P� #�� #� %N����� m� !Y� ",� #�� #-� #� %� o*� M� !Y� "�� #,� #�� #-� #� %� )*� �*� � � !Y� "�� #,� #�� #-� #� %*� 3� 4� :� m� �*� �� !Y� ",� #�� #-� #� %� )�   � �   �   B   W X Y Z ] "^ T] Z_ w` �a �b �e �c �d �g �h �   >   D � �  �  � �    � � �     � � �    � � �   � � �  �    �  P� � C� t 	  �    �
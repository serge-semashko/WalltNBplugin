����   32
 � 	 �	 �	 �	 � �

	 �		 �

 �
 �
 �
 �
 �	 �	 �



 �
	 � �

 � 
!
 �"
 �#$
 # %
 #&'(
 ( 
)*+,-.
 #/
01	 �2
3
 �4
 �5
 �6
78
79	 �:
;9<
 �=
 �>
 �?
@A
B
 @C
DE �F
GH
 �
 @I
 @JKLMNO
 #P
QRS
 �TUV	WXYZ[
\0
 �]^_`
 ma �b �c
def
 mgh
 �"ijklm
 mno
 ;/
 ;pqrs
 �t �
 mu �vw �x
y �z �{|}~������ ���
 ��
 @�
��
 ��	 ��������������
��	 ��
 m�	 m�	 m�
 m�
�����
��
 ;����
 ���
)���
 m��
 m�
 m9
��� logIt Z iv Ljinr/sed/InputValidator; objectTypeId I <init> ()V Code LineNumberTable LocalVariableTable this Ljinr/sed/QueryThread; start e Ljava/lang/Exception; log StackMapTable� #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; parseRequest *(Ljavax/servlet/http/HttpServletRequest;)V request 'Ljavax/servlet/http/HttpServletRequest; sa [Ljava/lang/String;� � 
Exceptions registerParameter <(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V paramErr Ljava/lang/String; name val ht Ljava/util/Hashtable; v� getSysConst sql r Ljava/sql/ResultSet;� validateUser ()Z logQuery (Ljava/lang/Exception;)V ex err request_name conn Ljava/sql/Connection; s stmt Ljava/sql/PreparedStatement; l J c�� logAll 
trimString '(Ljava/lang/String;I)Ljava/lang/String; maxLen 
makeDBUtil ()Ldubna/walt/util/DBUtil; finish closeDBUtils 
SourceFile QueryThread.java � � � � � � � ���������� � � � � �� �� �� � � ����� ResetLog=true������ InputValidator�� � � excludeFromLog�� ��� showLog�� false�� � � � � java/lang/StringBuilder 
queryLabel��  [ java/util/Date��� ]  ClientIP  NOT LOGGED, :   NOT LOGGED, c=���� not identified����� �� � � ��� �� ���� java/lang/Exception � �� �� ��� jinr/sed/InputValidator�� ���� object_type_id��������� +++++ ERROR: param:  = ; => ;  ; objectTypeId=��  INPUT_ERROR   � � ERROR_ _orig =' ';  _orig=' ' const_inited "select alias, value from sys_const ===== get System Const SQL:	 ��
� -  : true :  USER_ID , DBUtil dubna/walt/util/DBUtil � +++ logQuery: ERROR!  $+++ logQuery: ERROR! dbUtil is null! &+++ logQuery: ERROR! cfgTuner is null! ERROR � � �insert into a_req_log (USER_ID, C, REQUEST_NAME, QUERY, DOC_ID, COOKIES, ERR, DAT, IP, USER_AGENT, REF, SESS_ID, SESS, DID, TIM, REAL_USER_ID) values (?, ?, ?, ?, ?, ?, ?, NOW(), ?, ?, ?, ?, ?, ?, ?, ?) queryString doc_id h_cookie  /  h_user-agent 	h_referer SESS_ID q_JSESSIONID q_cwldid VU +++ logQuery: STORE ERROR!  � � � !"#$ � _noDB free/ svs/ 
connString debug=on 
  connect: database 	connParam  //||  usr /***  pw%&% � �'( �) �* �+, Connection to   FAILED!... NotConnected Y-� ERR_MSG.� ERR_MSG_DES "Could not connect to the Database   Connect OK! � � 
[/� : --- finish() ROLLBACK0� COMMIT1 �+� jinr/sed/QueryThread dubna/walt/SimpleQueryThread java/lang/Throwable %javax/servlet/http/HttpServletRequest java/lang/String java/sql/ResultSet java/sql/Connection java/sql/PreparedStatement rm !Ldubna/walt/util/ResourceManager; dubna/walt/util/ResourceManager 
getBoolean (Ljava/lang/String;)Z java/lang/System currentTimeMillis ()J startTm getAddresses 	makeTuner setContentType dbUtil Ldubna/walt/util/DBUtil; cfgTuner Ldubna/walt/util/Tuner; dubna/walt/util/Tuner enabledOption dubna/walt/util/IOUtil clearLogFile $(Ldubna/walt/util/ResourceManager;)V 	removeKey (Ljava/lang/String;)V 	getString &(Ljava/lang/String;)Ljava/lang/String; getParameter contains (Ljava/lang/CharSequence;)Z setParam '(Ljava/lang/String;Ljava/lang/String;)V append -(Ljava/lang/String;)Ljava/lang/StringBuilder; dubna/walt/util/Fmt fullDateStr $(Ljava/util/Date;)Ljava/lang/String; toString ()Ljava/lang/String; println 	outWriter Ljava/io/PrintWriter; outCustomSection *(Ljava/lang/String;Ljava/io/PrintWriter;)V validateParameters startService java/io/PrintWriter flush close 	outStream Ljava/io/OutputStream; java/io/OutputStream logException logRequestFinished 	getObject '(Ljava/lang/String;Z)Ljava/lang/Object; getGlobalRM #()Ldubna/walt/util/ResourceManager; 	putObject '(Ljava/lang/String;Ljava/lang/Object;)V getParameterValues '(Ljava/lang/String;)[Ljava/lang/String; java/lang/Integer parseInt (Ljava/lang/String;)I getValidatedValue 9(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; 	getErrMsg (I)Ljava/lang/StringBuilder; 
writeLogLn 6(Ljava/lang/String;Ldubna/walt/util/ResourceManager;)V out Ljava/io/PrintStream; java/io/PrintStream length ()I 
getResults ((Ljava/lang/String;)Ljava/sql/ResultSet; next (I)Ljava/lang/String; ((Ljava/lang/String;Ljava/lang/String;Z)V closeResultSet (Ljava/sql/ResultSet;)V isAlive printStackTrace (Ljava/io/PrintStream;)V getConnection ()Ljava/sql/Connection; setAutoCommit (Z)V prepareStatement 0(Ljava/lang/String;)Ljava/sql/PreparedStatement; getIntParameter ((Ljava/lang/String;Ljava/lang/String;I)I setInt (II)V 	setString (ILjava/lang/String;)V executeUpdate (Ljava/io/PrintWriter;)V java/lang/Math min (II)I 	substring (II)Ljava/lang/String; cfgFileName java/sql/DriverManager M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection; *(Ljava/sql/Connection;Ljava/lang/String;)V DB_MySQL db allocate 	setObject ((Ljava/lang/String;Ljava/lang/Object;Z)V addParameter 
getMessage 	lsDateStr update release ! � �     � �    � �    � �     � �  �   J     *� *� *� *� �    �       	   	    �        � �    � �  �      �*� � <*� � 	**� 
� *� *� *� **� � *� � � *� � *� � *� *� **� � � *� � � � *� �  *� !� 
*� "� ~*� � #Y� $*� %� � &'� &� (Y� )� *� &+� &*� ,� � &-� &*� � � &*� ,� � &.� &*� � � &� /� 0*� 1*� 2� 3*� 4*� 5*� 6*� 2� *� 2� 7*� 2� 8*� 9� :� M*� <� ]M*,� =*,� 6*� 2� *� 2� 7*� 2� 8*� 9� :� M*� <� +N*� 2� *� 2� 7*� 2� 8*� 9� :� :*� <-�*� >� &-0 ; 
8 ;X_b ; 
j  8Cj  ��� ;  �   � 8    
         ! " % # - % 9 & @ ' I ( N * R + _ , p - { 0 � 1 � 3 � 4 � 5 � 7 � 8 � : � 3 � < > ? @ E F G& I- L0 K1 N5 O8 A9 B> CC EJ FQ GX I_ Lb Kc Ng Oj Er Fy G� I� L� K� N� P� Y �     9 
 � �   � � �   
� � �  �   3 � N,� zk ; F ;i ; F ��   �  �  ;�  �     �    � �  �   �     m*� � **� � ?� @� *� � %*� @Y*� � A� B� *� � A*� � C+D� E M*� ,� ,�� *,2� F� � N*+� G�  Y c f ;  �   2    b  c  d  e 1 f A i J j O k Y m c n g p l q �        m � �     m � �  J # � �  �    (� $  � � �  ;  �     ; �     �    � �  �  �    *� +,*� � H:� �*� +,*� � I:� #Y� $J� &+� &K� &,� &L� &� &M� &� &N� &*� � O� /*� � P*Q� #Y� $� &R� &� /-� S*� #Y� $T� &+� &� /-� S*� #Y� $+� &U� &� /,-� S� V� #Y� $T� &+� &W� &� &X� &+� &Y� &,� &Z� &� /� [� � \� *+-� S�    �   2    u  w  x # y f z � { � | � } � ~ �  � � � �   >  # � � �    � �     � �    � �    � �   � � �  �   	 � � � �     �    � �  �  !     �*� � �*� ]� � �^L� #Y� $_� &+� &� /*� � P*� +� `M,� a � J*� ,� b ,� b � c� V� #Y� $d� &,� b � &e� &,� b � &� /� [���*� ,� f*� ]g� c�    �   2    �  �  �  �  � 1 � : � C � Y � � � � � � � �       � � �  : d � �    � � �   �    � 1 � �� O�  �     ;  � �  �   I     *� � �*� h�    �       �  � 	 � �        � �   �    	 �     ; �     �    � �  �   �     i*� � d� V� #Y� $*� %� � &'� &� (Y� )� *� &+� &*� ,� � &i� &*� j� � &i� &*� � � &� /� [�    �   "    �  � ) � : � K � \ � e � h � �       i � �   �    � h �     �    � �  �  �  
  R*� � M*� � �*� � #Y� $k� &,� &k� &� /� � �**� l� ?� m� *� � *� � n� 2**� � � 'N� V� #Y� $o� &-� p� &� /� [-� V� q*� � � Vr� [��*� � � Vs� [��**� t� l� uN**� v� @� u:*� � w:� x y:� z :*� j� {� | ,� } � } **� ~� �� u� } *� � {� | **� �� �� u� } +� -� } � &� #Y� $+� p� &�� &-� &� /� } *� ,� � } 	*� �� � } 
*� �� � } *� �� {� | *� �� � } *� �� � } � *� 	e7�� | *� �� {� | � � W� 'N� V� #Y� $�� &-� p� &� /� [-� V� q�  W _ b ; �*- ;  �   � .   � 
 �  �  � 4 � 5 � F � W � _ � b � c �  � � � � � � � � � � � � � � � � � � � � � � � � � � �* �= �V �Z �g �� �� �� �� �� �� �� � � �" �* �- �. �J �Q � �   p  c # � �  �o � �  �^ � �  �U � �  �I � �  �> � �  ( � � . # � �   R � �    R � �  
H � �  �   E �  �"!J ;#� �  � ; � � � � � �  "� �  � ; �  ;# �     �    � �  �   �     6*� �*� 2� -*� � **� � ?� @� *� � *� *� 2� ��    �       �  �  �  � # � * � 5 � �       6 � �   �    #  � �  �   L     ++� \� �� ��    �       �         � �      � �     � �  ! � �  �  �    �*� �� *� ��� � 
*� �*� ��� � *� ��� � *� *� �� � �*� �� � R� V� #Y� $�� &*� �� � &*� �� � &*� �� � &�� &*� �� � &�� &� /� [� #Y� $*� �� � &*� �� � &*� �� � &� /*� �� *� �� � �L+� x *� mY+*� �� �� *� � �� �*� � �*� l*� � �� vL� V� #Y� $�� &*� �� � &�� &� /� [*� ��� �*� 2� 4*� �+� �� �*� �� #Y� $�� &*� �� � &� /� �+� V� q�*� �� � � V�� [*� �  E ;  �   � $      , 2 7 C E Q r �  � �$ �% �& �$ �' �( �)*3E45D7O8V9c:{;�:�C�D�F�G�I �      � 6 � �  r � �   � � �   �    
� Z� | ;� i ;�  �     ; �     �    � �  �   �     T*� �*� � K*� �� � ;� V� #Y� $�� &� (Y� )� �� &+� &*� %� � &�� &� /� [� L�   O R ;  �   & 	  R S U V >W LV OZ RY S\ �       T � �   �   
 � OB ;  �     �    � �  �   �     r*� � 8*� t� � *� �� �W� *� �� �W� L*� � �*� � �**� l� ?� m� *� � *� � �*� � �*� l� �*� �   * - ;  �   >   c e f  h *k -j .l 5m <p Mq Tr [s bt lv qx �       r � �   �     	B ; /  �    �
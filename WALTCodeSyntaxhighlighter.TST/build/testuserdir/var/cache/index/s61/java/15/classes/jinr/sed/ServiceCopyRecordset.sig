����   3
 T �	 S �	 S �	 S �	 S �	 S � U
 � � � l
 � � � �
  � �
  �
  � �
  � � h
  �
 � � j k �
 S � �	 S �
 � �
 � � �
 S � �	 � �
 " � �
 " �	 S �
 � � � � � �	 S � �
  �
 � �
 ~ � � v
 � �
 ~ � � � �
 � � � �
 ~ �	 S �  �
 S �
 ~ �
  � �
 � �       d
 � �
 ~ �
 ~ � � � �
 " � � � �  � � � � � � � � � 
debugPrint Z dFields [Ljava/lang/String; headers stmt Ljava/sql/PreparedStatement; nr I <init> ()V Code LineNumberTable LocalVariableTable this Ljinr/sed/ServiceCopyRecordset; start f i 	srcFields Ljava/lang/String; 
destFields qList fields e Ljava/lang/Exception; StackMapTable X 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; doCopy (Ljava/lang/String;)V numBatch conn Ljava/sql/Connection; sql 	srcDBUtil Ldubna/walt/util/DBUtil; r Ljava/sql/ResultSet; � � � processRecord (Ljava/sql/ResultSet;)V � 
SourceFile ServiceCopyRecordset.java ^ _ U V W X Y X Z [ � � � � �   � � java/lang/String = � � java/lang/StringBuilder � � ,  � � , ? � � � � srcSQL � � report header � � � � � � _ prepare data t u java/lang/Exception � � � � � XXXXXXXX Exception:  � � � � � ImportDataError ERROR report footer NotConnected � { doCopy: srcDBUtil= � � � � u  
start copy 	InsertSQL �	
 \ ] � � _ �   u � _ <br>  records copied.  COULD NOT READ SOURCE TABLE ^ u SHOW_DET <hr> : :  ; jinr/sed/ServiceCopyRecordset dubna/walt/service/Service dubna/walt/util/DBUtil java/sql/ResultSet java/sql/Connection java/sql/SQLException cfgTuner Ldubna/walt/util/Tuner; dubna/walt/util/Tuner enabledOption (Ljava/lang/String;)Z getCustomSection '(Ljava/lang/String;)[Ljava/lang/String; split append -(Ljava/lang/String;)Ljava/lang/StringBuilder; toString ()Ljava/lang/String; 	substring (I)Ljava/lang/String; addParameter '(Ljava/lang/String;Ljava/lang/String;)V getSQL &(Ljava/lang/String;)Ljava/lang/String; out Ljava/io/PrintWriter; outCustomSection *(Ljava/lang/String;Ljava/io/PrintWriter;)V java/io/PrintWriter flush java/lang/System Ljava/io/PrintStream; printStackTrace (Ljava/io/PrintStream;)V rm !Ldubna/walt/util/ResourceManager; dubna/walt/util/IOUtil 
writeLogLn 6(Ljava/lang/String;Ldubna/walt/util/ResourceManager;)V dbUtil -(Ljava/lang/Object;)Ljava/lang/StringBuilder; java/io/PrintStream println 
getResults ((Ljava/lang/String;)Ljava/sql/ResultSet; getIntParameter (Ljava/lang/String;)I getConnection ()Ljava/sql/Connection; setAutoCommit (Z)V getParameter prepareStatement 0(Ljava/lang/String;)Ljava/sql/PreparedStatement; getColNames )(Ljava/sql/ResultSet;)[Ljava/lang/String; next ()Z commit (I)Ljava/lang/StringBuilder; print java/lang/Thread sleep (J)V closeResultSet close 	getObject (I)Ljava/lang/Object; java/sql/PreparedStatement 	setObject (ILjava/lang/Object;)V executeUpdate ()I ! S T     U V    W X    Y X    Z [    \ ]     ^ _  `   S     *� *� *� *� *� �    a       
   	      b        c d    e _  `  j    Q**� � � 	M	N	:*� 
� :*�� � 6�� h2� L� Y� ,� � +2� � M� Y� -� � +2� � N*� +2S� Y� � � � :����*� ,� � *� -� � *� � � *� *� � *� *� � *� � *�  *� � **� � !� BL+� #� $� Y� %� +� &� � *� '� (*� )+� &� *� *+� &� *� +*� � �   "  a   v             "  ,  7  B  \  v   � ! �  � # � $ � % � & � ' � ( � ) � * 2 + , -) .6 /C 3P 4 b   R  B Z f X  / m g ]   � h i   � j i   � k i  " � l X  > m n   Q c d   o   + � /  S     p  � l� g  S  "> q     " r     s    t u  `  3    9+� *� ,� � �*� -M� #� Y� .� ,� /� � 0,+� 1N-� �*� 2*� � *� 3� 46� d6*� -� 5:� 6 **� 7� 8� 9 � � #*� 7� 8� 0*-� :� *� ;-� < � P*-� =*� ;p� 4*� -� >*� � Y� *� ;� ?@� � � A*� �  B� D*Y� ;`� ;���,-� E,� F*� -� >*� � Y� G� *� ;� ?H� � � A*� � � � "YI� J��    a   �     7  8  :  ; / = 5 ? 9 @ F A Q B W C [ E d F l G � H � J � K � L � M � N � O � P � Q � R � T � W � X � Y Z$ [+ \. ]8 _ b   >  Q � v ]  d � w x   9 c d    9 y i  # z {  5 | }  o     � I ~ � @ �� H� ;	 q     "  � �  `       �*� K� � %*� � Y� L� *� ;� ?M� � � A=*� �� d*� +� N � O *� K� � A*� � Y� G� � ?M� *� d2� P� +� N � /Q� � � A����*� � R W�    a   & 	   b  c . e 9 f J g V h � e � l � m b      0 j g ]    � c d     � | }  o    .� � c�  q     �  �    �
lbl_80297F74:
/* 80297F74  2C 04 00 00 */	cmpwi r4, 0
/* 80297F78  40 80 00 0C */	bge lbl_80297F84
/* 80297F7C  38 60 00 00 */	li r3, 0
/* 80297F80  4E 80 00 20 */	blr 
lbl_80297F84:
/* 80297F84  3C 60 80 3A */	lis r3, sOscData__12JASVoiceBank@ha
/* 80297F88  38 03 B1 B8 */	addi r0, r3, sOscData__12JASVoiceBank@l
/* 80297F8C  90 0D 8C E8 */	stw r0, sOscTable__12JASVoiceBank(r13)
/* 80297F90  B0 87 00 1A */	sth r4, 0x1a(r7)
/* 80297F94  38 00 00 01 */	li r0, 1
/* 80297F98  98 07 00 1D */	stb r0, 0x1d(r7)
/* 80297F9C  38 0D 8C E8 */	la r0, sOscTable__12JASVoiceBank(r13) /* 80451268-_SDA_BASE_ */
/* 80297FA0  90 07 00 14 */	stw r0, 0x14(r7)
/* 80297FA4  38 60 00 01 */	li r3, 1
/* 80297FA8  4E 80 00 20 */	blr 

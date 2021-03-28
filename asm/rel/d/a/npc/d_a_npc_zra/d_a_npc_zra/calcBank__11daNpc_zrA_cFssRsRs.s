lbl_80B81FB8:
/* 80B81FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B81FBC  7C 08 02 A6 */	mflr r0
/* 80B81FC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B81FC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B81FC8  4B 7E 02 10 */	b _savegpr_28
/* 80B81FCC  7C 7C 1B 78 */	mr r28, r3
/* 80B81FD0  7C 9D 23 78 */	mr r29, r4
/* 80B81FD4  7C BE 2B 78 */	mr r30, r5
/* 80B81FD8  7C FF 3B 78 */	mr r31, r7
/* 80B81FDC  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 80B81FE0  A8 06 00 00 */	lha r0, 0(r6)
/* 80B81FE4  7C 03 00 50 */	subf r0, r3, r0
/* 80B81FE8  7C 04 07 34 */	extsh r4, r0
/* 80B81FEC  2C 04 40 00 */	cmpwi r4, 0x4000
/* 80B81FF0  41 80 00 0C */	blt lbl_80B81FFC
/* 80B81FF4  38 80 40 00 */	li r4, 0x4000
/* 80B81FF8  48 00 00 10 */	b lbl_80B82008
lbl_80B81FFC:
/* 80B81FFC  2C 04 C0 00 */	cmpwi r4, -16384
/* 80B82000  41 81 00 08 */	bgt lbl_80B82008
/* 80B82004  38 80 C0 00 */	li r4, -16384
lbl_80B82008:
/* 80B82008  38 7C 15 3A */	addi r3, r28, 0x153a
/* 80B8200C  7F C0 07 34 */	extsh r0, r30
/* 80B82010  54 00 08 3C */	slwi r0, r0, 1
/* 80B82014  7C 05 07 34 */	extsh r5, r0
/* 80B82018  7F A6 EB 78 */	mr r6, r29
/* 80B8201C  4B 6E E5 EC */	b cLib_addCalcAngleS2__FPssss
/* 80B82020  7F E3 FB 78 */	mr r3, r31
/* 80B82024  A8 9C 15 3A */	lha r4, 0x153a(r28)
/* 80B82028  7F C5 07 34 */	extsh r5, r30
/* 80B8202C  7F A6 EB 78 */	mr r6, r29
/* 80B82030  4B 6E E5 D8 */	b cLib_addCalcAngleS2__FPssss
/* 80B82034  39 61 00 20 */	addi r11, r1, 0x20
/* 80B82038  4B 7E 01 EC */	b _restgpr_28
/* 80B8203C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B82040  7C 08 03 A6 */	mtlr r0
/* 80B82044  38 21 00 20 */	addi r1, r1, 0x20
/* 80B82048  4E 80 00 20 */	blr 

lbl_80297DA4:
/* 80297DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80297DA8  7C 08 02 A6 */	mflr r0
/* 80297DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80297DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80297DB4  7C 7F 1B 78 */	mr r31, r3
/* 80297DB8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80297DBC  41 82 00 30 */	beq lbl_80297DEC
/* 80297DC0  98 9F 00 0C */	stb r4, 0xc(r31)
/* 80297DC4  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80297DC8  54 03 10 3A */	slwi r3, r0, 2
/* 80297DCC  7C A4 2B 78 */	mr r4, r5
/* 80297DD0  38 A0 00 00 */	li r5, 0
/* 80297DD4  48 03 6F 3D */	bl __nwa__FUlP7JKRHeapi
/* 80297DD8  90 7F 00 08 */	stw r3, 8(r31)
/* 80297DDC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80297DE0  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80297DE4  54 04 10 3A */	slwi r4, r0, 2
/* 80297DE8  4B FF 76 99 */	bl bzero__7JASCalcFPvUl
lbl_80297DEC:
/* 80297DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80297DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80297DF4  7C 08 03 A6 */	mtlr r0
/* 80297DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80297DFC  4E 80 00 20 */	blr 

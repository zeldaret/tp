lbl_80AA0040:
/* 80AA0040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0044  7C 08 02 A6 */	mflr r0
/* 80AA0048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA004C  80 04 00 00 */	lwz r0, 0(r4)
/* 80AA0050  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AA0054  41 82 00 14 */	beq lbl_80AA0068
/* 80AA0058  40 80 00 1C */	bge lbl_80AA0074
/* 80AA005C  2C 00 00 05 */	cmpwi r0, 5
/* 80AA0060  41 82 00 14 */	beq lbl_80AA0074
/* 80AA0064  48 00 00 10 */	b lbl_80AA0074
lbl_80AA0068:
/* 80AA0068  38 80 00 4E */	li r4, 0x4e
/* 80AA006C  38 A0 00 00 */	li r5, 0
/* 80AA0070  4B 6A BB 81 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80AA0074:
/* 80AA0074  38 60 00 01 */	li r3, 1
/* 80AA0078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA007C  7C 08 03 A6 */	mtlr r0
/* 80AA0080  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0084  4E 80 00 20 */	blr 

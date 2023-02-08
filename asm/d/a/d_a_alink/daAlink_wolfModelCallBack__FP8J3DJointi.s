lbl_8009EFF0:
/* 8009EFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EFF4  7C 08 02 A6 */	mflr r0
/* 8009EFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EFFC  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 8009F000  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8009F004  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8009F008  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8009F00C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8009F010  2C 04 00 00 */	cmpwi r4, 0
/* 8009F014  40 82 00 0C */	bne lbl_8009F020
/* 8009F018  7C 04 03 78 */	mr r4, r0
/* 8009F01C  4B FF FF 61 */	bl wolfModelCallBack__9daAlink_cFi
lbl_8009F020:
/* 8009F020  38 60 00 01 */	li r3, 1
/* 8009F024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009F028  7C 08 03 A6 */	mtlr r0
/* 8009F02C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009F030  4E 80 00 20 */	blr 

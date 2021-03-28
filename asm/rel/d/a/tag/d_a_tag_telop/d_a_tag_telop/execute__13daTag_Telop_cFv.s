lbl_80490AF8:
/* 80490AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490AFC  7C 08 02 A6 */	mflr r0
/* 80490B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80490B08  7C 7F 1B 78 */	mr r31, r3
/* 80490B0C  80 03 05 6C */	lwz r0, 0x56c(r3)
/* 80490B10  2C 00 00 63 */	cmpwi r0, 0x63
/* 80490B14  41 82 00 28 */	beq lbl_80490B3C
/* 80490B18  40 80 00 30 */	bge lbl_80490B48
/* 80490B1C  2C 00 00 00 */	cmpwi r0, 0
/* 80490B20  41 82 00 08 */	beq lbl_80490B28
/* 80490B24  48 00 00 24 */	b lbl_80490B48
lbl_80490B28:
/* 80490B28  A0 7F 05 68 */	lhz r3, 0x568(r31)
/* 80490B2C  4B B8 F4 98 */	b fopMsgM_messageSetDemo__FUl
/* 80490B30  38 00 00 63 */	li r0, 0x63
/* 80490B34  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80490B38  48 00 00 10 */	b lbl_80490B48
lbl_80490B3C:
/* 80490B3C  4B B8 91 40 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80490B40  38 00 FF FF */	li r0, -1
/* 80490B44  90 1F 05 6C */	stw r0, 0x56c(r31)
lbl_80490B48:
/* 80490B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80490B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490B50  7C 08 03 A6 */	mtlr r0
/* 80490B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80490B58  4E 80 00 20 */	blr 

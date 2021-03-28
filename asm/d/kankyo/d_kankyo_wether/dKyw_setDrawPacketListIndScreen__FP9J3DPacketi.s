lbl_80056AF8:
/* 80056AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056AFC  7C 08 02 A6 */	mflr r0
/* 80056B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80056B08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80056B0C  40 82 00 0C */	bne lbl_80056B18
/* 80056B10  38 60 00 00 */	li r3, 0
/* 80056B14  48 00 00 20 */	b lbl_80056B34
lbl_80056B18:
/* 80056B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80056B1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80056B20  80 63 5F 6C */	lwz r3, 0x5f6c(r3)
/* 80056B24  7F E4 FB 78 */	mr r4, r31
/* 80056B28  38 A0 00 00 */	li r5, 0
/* 80056B2C  48 2C E9 61 */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80056B30  7F E3 FB 78 */	mr r3, r31
lbl_80056B34:
/* 80056B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80056B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056B3C  7C 08 03 A6 */	mtlr r0
/* 80056B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80056B44  4E 80 00 20 */	blr 

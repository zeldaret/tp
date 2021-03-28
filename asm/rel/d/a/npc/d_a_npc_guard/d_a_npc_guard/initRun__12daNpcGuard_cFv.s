lbl_809F0184:
/* 809F0184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F0188  7C 08 02 A6 */	mflr r0
/* 809F018C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F0190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F0194  7C 7F 1B 78 */	mr r31, r3
/* 809F0198  38 80 00 04 */	li r4, 4
/* 809F019C  80 A3 0D 84 */	lwz r5, 0xd84(r3)
/* 809F01A0  4B 76 7F 50 */	b getAnmP__10daNpcCd2_cFii
/* 809F01A4  7C 64 1B 78 */	mr r4, r3
/* 809F01A8  7F E3 FB 78 */	mr r3, r31
/* 809F01AC  3C A0 80 9F */	lis r5, lit_3900@ha
/* 809F01B0  C0 25 2C 50 */	lfs f1, lit_3900@l(r5)
/* 809F01B4  3C A0 80 9F */	lis r5, lit_3901@ha
/* 809F01B8  C0 45 2C 54 */	lfs f2, lit_3901@l(r5)
/* 809F01BC  38 A0 00 02 */	li r5, 2
/* 809F01C0  38 C0 00 00 */	li r6, 0
/* 809F01C4  38 E0 FF FF */	li r7, -1
/* 809F01C8  4B 76 8D 38 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809F01CC  38 00 00 01 */	li r0, 1
/* 809F01D0  90 1F 0D 9C */	stw r0, 0xd9c(r31)
/* 809F01D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F01D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F01DC  7C 08 03 A6 */	mtlr r0
/* 809F01E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809F01E4  4E 80 00 20 */	blr 

lbl_809EFEB8:
/* 809EFEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EFEBC  7C 08 02 A6 */	mflr r0
/* 809EFEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EFEC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EFEC8  7C 7F 1B 78 */	mr r31, r3
/* 809EFECC  38 80 00 04 */	li r4, 4
/* 809EFED0  80 A3 0D 84 */	lwz r5, 0xd84(r3)
/* 809EFED4  4B 76 82 1C */	b getAnmP__10daNpcCd2_cFii
/* 809EFED8  7C 64 1B 78 */	mr r4, r3
/* 809EFEDC  7F E3 FB 78 */	mr r3, r31
/* 809EFEE0  3C A0 80 9F */	lis r5, lit_3900@ha
/* 809EFEE4  C0 25 2C 50 */	lfs f1, lit_3900@l(r5)
/* 809EFEE8  3C A0 80 9F */	lis r5, lit_3901@ha
/* 809EFEEC  C0 45 2C 54 */	lfs f2, lit_3901@l(r5)
/* 809EFEF0  38 A0 00 02 */	li r5, 2
/* 809EFEF4  38 C0 00 00 */	li r6, 0
/* 809EFEF8  38 E0 FF FF */	li r7, -1
/* 809EFEFC  4B 76 90 04 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809EFF00  38 00 00 01 */	li r0, 1
/* 809EFF04  90 1F 0D 9C */	stw r0, 0xd9c(r31)
/* 809EFF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EFF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EFF10  7C 08 03 A6 */	mtlr r0
/* 809EFF14  38 21 00 10 */	addi r1, r1, 0x10
/* 809EFF18  4E 80 00 20 */	blr 

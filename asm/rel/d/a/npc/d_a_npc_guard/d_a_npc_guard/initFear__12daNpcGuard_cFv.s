lbl_809F08DC:
/* 809F08DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F08E0  7C 08 02 A6 */	mflr r0
/* 809F08E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F08E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F08EC  93 C1 00 08 */	stw r30, 8(r1)
/* 809F08F0  7C 7E 1B 78 */	mr r30, r3
/* 809F08F4  3C 80 80 9F */	lis r4, lit_3900@ha
/* 809F08F8  3B E4 2C 50 */	addi r31, r4, lit_3900@l
/* 809F08FC  38 80 00 2E */	li r4, 0x2e
/* 809F0900  38 A0 00 00 */	li r5, 0
/* 809F0904  4B 76 77 EC */	b getAnmP__10daNpcCd2_cFii
/* 809F0908  7C 64 1B 78 */	mr r4, r3
/* 809F090C  7F C3 F3 78 */	mr r3, r30
/* 809F0910  C0 3F 00 00 */	lfs f1, 0(r31)
/* 809F0914  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 809F0918  38 A0 00 02 */	li r5, 2
/* 809F091C  38 C0 00 00 */	li r6, 0
/* 809F0920  38 E0 FF FF */	li r7, -1
/* 809F0924  4B 76 85 DC */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809F0928  38 60 00 96 */	li r3, 0x96
/* 809F092C  38 80 00 3C */	li r4, 0x3c
/* 809F0930  48 00 1B DD */	bl func_809F250C
/* 809F0934  90 7E 0D 88 */	stw r3, 0xd88(r30)
/* 809F0938  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 809F093C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809F0940  38 00 00 00 */	li r0, 0
/* 809F0944  90 1E 0D 9C */	stw r0, 0xd9c(r30)
/* 809F0948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F094C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F0950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F0954  7C 08 03 A6 */	mtlr r0
/* 809F0958  38 21 00 10 */	addi r1, r1, 0x10
/* 809F095C  4E 80 00 20 */	blr 

lbl_80AA4B24:
/* 80AA4B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA4B28  7C 08 02 A6 */	mflr r0
/* 80AA4B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA4B30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AA4B34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AA4B38  7C 7E 1B 78 */	mr r30, r3
/* 80AA4B3C  3C 80 80 AA */	lis r4, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA4B40  3B E4 69 8C */	addi r31, r4, lit_4109@l /* 0x80AA698C@l */
/* 80AA4B44  88 03 0B 22 */	lbz r0, 0xb22(r3)
/* 80AA4B48  28 00 00 00 */	cmplwi r0, 0
/* 80AA4B4C  41 82 00 5C */	beq lbl_80AA4BA8
/* 80AA4B50  38 80 00 0C */	li r4, 0xc
/* 80AA4B54  80 BE 0B 00 */	lwz r5, 0xb00(r30)
/* 80AA4B58  4B 6B 35 99 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA4B5C  7C 64 1B 78 */	mr r4, r3
/* 80AA4B60  7F C3 F3 78 */	mr r3, r30
/* 80AA4B64  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA4B68  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA4B6C  38 A0 00 02 */	li r5, 2
/* 80AA4B70  38 C0 00 00 */	li r6, 0
/* 80AA4B74  38 E0 FF FF */	li r7, -1
/* 80AA4B78  4B 6B 43 89 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA4B7C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80AA4B80  FC 40 08 90 */	fmr f2, f1
/* 80AA4B84  48 00 0E 39 */	bl func_80AA59BC
/* 80AA4B88  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80AA4B8C  EC 00 08 2A */	fadds f0, f0, f1
/* 80AA4B90  FC 00 00 1E */	fctiwz f0, f0
/* 80AA4B94  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AA4B98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AA4B9C  90 1E 0A A0 */	stw r0, 0xaa0(r30)
/* 80AA4BA0  38 00 00 00 */	li r0, 0
/* 80AA4BA4  98 1E 0B 22 */	stb r0, 0xb22(r30)
lbl_80AA4BA8:
/* 80AA4BA8  80 1E 0A A0 */	lwz r0, 0xaa0(r30)
/* 80AA4BAC  7C 00 00 34 */	cntlzw r0, r0
/* 80AA4BB0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AA4BB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AA4BB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AA4BBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA4BC0  7C 08 03 A6 */	mtlr r0
/* 80AA4BC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA4BC8  4E 80 00 20 */	blr 

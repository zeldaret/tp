lbl_8097B754:
/* 8097B754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097B758  7C 08 02 A6 */	mflr r0
/* 8097B75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097B760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097B764  7C 7F 1B 78 */	mr r31, r3
/* 8097B768  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097B76C  28 00 00 00 */	cmplwi r0, 0
/* 8097B770  41 82 00 48 */	beq lbl_8097B7B8
/* 8097B774  38 80 00 06 */	li r4, 6
/* 8097B778  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097B77C  4B 7D C9 74 */	b getAnmP__10daNpcCd2_cFii
/* 8097B780  7C 64 1B 78 */	mr r4, r3
/* 8097B784  7F E3 FB 78 */	mr r3, r31
/* 8097B788  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097B78C  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097B790  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097B794  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097B798  38 A0 00 02 */	li r5, 2
/* 8097B79C  38 C0 00 00 */	li r6, 0
/* 8097B7A0  38 E0 FF FF */	li r7, -1
/* 8097B7A4  4B 7D D7 5C */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097B7A8  38 00 00 01 */	li r0, 1
/* 8097B7AC  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097B7B0  38 00 00 00 */	li r0, 0
/* 8097B7B4  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097B7B8:
/* 8097B7B8  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097B7BC  7C 00 00 34 */	cntlzw r0, r0
/* 8097B7C0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097B7C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097B7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097B7CC  7C 08 03 A6 */	mtlr r0
/* 8097B7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8097B7D4  4E 80 00 20 */	blr 

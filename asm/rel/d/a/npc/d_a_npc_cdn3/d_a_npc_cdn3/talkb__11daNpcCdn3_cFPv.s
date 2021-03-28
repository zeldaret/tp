lbl_8097B964:
/* 8097B964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097B968  7C 08 02 A6 */	mflr r0
/* 8097B96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097B970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097B974  7C 7F 1B 78 */	mr r31, r3
/* 8097B978  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097B97C  28 00 00 00 */	cmplwi r0, 0
/* 8097B980  41 82 00 48 */	beq lbl_8097B9C8
/* 8097B984  38 80 00 07 */	li r4, 7
/* 8097B988  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097B98C  4B 7D C7 64 */	b getAnmP__10daNpcCd2_cFii
/* 8097B990  7C 64 1B 78 */	mr r4, r3
/* 8097B994  7F E3 FB 78 */	mr r3, r31
/* 8097B998  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097B99C  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097B9A0  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097B9A4  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097B9A8  38 A0 00 02 */	li r5, 2
/* 8097B9AC  38 C0 00 00 */	li r6, 0
/* 8097B9B0  38 E0 FF FF */	li r7, -1
/* 8097B9B4  4B 7D D5 4C */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097B9B8  38 00 00 01 */	li r0, 1
/* 8097B9BC  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097B9C0  38 00 00 00 */	li r0, 0
/* 8097B9C4  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097B9C8:
/* 8097B9C8  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097B9CC  7C 00 00 34 */	cntlzw r0, r0
/* 8097B9D0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097B9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097B9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097B9DC  7C 08 03 A6 */	mtlr r0
/* 8097B9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8097B9E4  4E 80 00 20 */	blr 

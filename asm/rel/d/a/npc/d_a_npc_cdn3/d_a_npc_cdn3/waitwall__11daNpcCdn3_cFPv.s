lbl_8097B7D8:
/* 8097B7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097B7DC  7C 08 02 A6 */	mflr r0
/* 8097B7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097B7E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097B7E8  7C 7F 1B 78 */	mr r31, r3
/* 8097B7EC  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097B7F0  28 00 00 00 */	cmplwi r0, 0
/* 8097B7F4  41 82 00 48 */	beq lbl_8097B83C
/* 8097B7F8  38 80 00 0B */	li r4, 0xb
/* 8097B7FC  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097B800  4B 7D C8 F0 */	b getAnmP__10daNpcCd2_cFii
/* 8097B804  7C 64 1B 78 */	mr r4, r3
/* 8097B808  7F E3 FB 78 */	mr r3, r31
/* 8097B80C  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097B810  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097B814  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097B818  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097B81C  38 A0 00 02 */	li r5, 2
/* 8097B820  38 C0 00 00 */	li r6, 0
/* 8097B824  38 E0 FF FF */	li r7, -1
/* 8097B828  4B 7D D6 D8 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097B82C  38 00 00 01 */	li r0, 1
/* 8097B830  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097B834  38 00 00 00 */	li r0, 0
/* 8097B838  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097B83C:
/* 8097B83C  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097B840  7C 00 00 34 */	cntlzw r0, r0
/* 8097B844  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097B848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097B84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097B850  7C 08 03 A6 */	mtlr r0
/* 8097B854  38 21 00 10 */	addi r1, r1, 0x10
/* 8097B858  4E 80 00 20 */	blr 

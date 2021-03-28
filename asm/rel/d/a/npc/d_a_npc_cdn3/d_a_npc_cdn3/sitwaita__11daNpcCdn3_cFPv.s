lbl_8097BAF0:
/* 8097BAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097BAF4  7C 08 02 A6 */	mflr r0
/* 8097BAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097BAFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097BB00  7C 7F 1B 78 */	mr r31, r3
/* 8097BB04  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BB08  28 00 00 00 */	cmplwi r0, 0
/* 8097BB0C  41 82 00 48 */	beq lbl_8097BB54
/* 8097BB10  38 80 00 0E */	li r4, 0xe
/* 8097BB14  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BB18  4B 7D C5 D8 */	b getAnmP__10daNpcCd2_cFii
/* 8097BB1C  7C 64 1B 78 */	mr r4, r3
/* 8097BB20  7F E3 FB 78 */	mr r3, r31
/* 8097BB24  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097BB28  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097BB2C  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097BB30  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097BB34  38 A0 00 02 */	li r5, 2
/* 8097BB38  38 C0 00 00 */	li r6, 0
/* 8097BB3C  38 E0 FF FF */	li r7, -1
/* 8097BB40  4B 7D D3 C0 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BB44  38 00 00 01 */	li r0, 1
/* 8097BB48  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BB4C  38 00 00 00 */	li r0, 0
/* 8097BB50  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BB54:
/* 8097BB54  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097BB58  7C 00 00 34 */	cntlzw r0, r0
/* 8097BB5C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097BB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097BB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097BB68  7C 08 03 A6 */	mtlr r0
/* 8097BB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8097BB70  4E 80 00 20 */	blr 

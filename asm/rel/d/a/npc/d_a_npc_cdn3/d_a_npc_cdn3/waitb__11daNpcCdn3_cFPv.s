lbl_8097BA6C:
/* 8097BA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097BA70  7C 08 02 A6 */	mflr r0
/* 8097BA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097BA78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097BA7C  7C 7F 1B 78 */	mr r31, r3
/* 8097BA80  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BA84  28 00 00 00 */	cmplwi r0, 0
/* 8097BA88  41 82 00 48 */	beq lbl_8097BAD0
/* 8097BA8C  38 80 00 01 */	li r4, 1
/* 8097BA90  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BA94  4B 7D C6 5C */	b getAnmP__10daNpcCd2_cFii
/* 8097BA98  7C 64 1B 78 */	mr r4, r3
/* 8097BA9C  7F E3 FB 78 */	mr r3, r31
/* 8097BAA0  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097BAA4  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097BAA8  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097BAAC  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097BAB0  38 A0 00 02 */	li r5, 2
/* 8097BAB4  38 C0 00 00 */	li r6, 0
/* 8097BAB8  38 E0 FF FF */	li r7, -1
/* 8097BABC  4B 7D D4 44 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BAC0  38 00 00 01 */	li r0, 1
/* 8097BAC4  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BAC8  38 00 00 00 */	li r0, 0
/* 8097BACC  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BAD0:
/* 8097BAD0  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097BAD4  7C 00 00 34 */	cntlzw r0, r0
/* 8097BAD8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097BADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097BAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097BAE4  7C 08 03 A6 */	mtlr r0
/* 8097BAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8097BAEC  4E 80 00 20 */	blr 

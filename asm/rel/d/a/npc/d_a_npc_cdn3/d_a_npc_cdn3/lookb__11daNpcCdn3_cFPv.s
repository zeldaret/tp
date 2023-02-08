lbl_8097BE8C:
/* 8097BE8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097BE90  7C 08 02 A6 */	mflr r0
/* 8097BE94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097BE98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097BE9C  7C 7F 1B 78 */	mr r31, r3
/* 8097BEA0  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BEA4  28 00 00 00 */	cmplwi r0, 0
/* 8097BEA8  41 82 00 48 */	beq lbl_8097BEF0
/* 8097BEAC  38 80 00 0A */	li r4, 0xa
/* 8097BEB0  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BEB4  4B 7D C2 3D */	bl getAnmP__10daNpcCd2_cFii
/* 8097BEB8  7C 64 1B 78 */	mr r4, r3
/* 8097BEBC  7F E3 FB 78 */	mr r3, r31
/* 8097BEC0  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097BEC4  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097BEC8  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097BECC  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097BED0  38 A0 00 02 */	li r5, 2
/* 8097BED4  38 C0 00 00 */	li r6, 0
/* 8097BED8  38 E0 FF FF */	li r7, -1
/* 8097BEDC  4B 7D D0 25 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BEE0  38 00 00 01 */	li r0, 1
/* 8097BEE4  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BEE8  38 00 00 00 */	li r0, 0
/* 8097BEEC  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BEF0:
/* 8097BEF0  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097BEF4  7C 00 00 34 */	cntlzw r0, r0
/* 8097BEF8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097BEFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097BF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097BF04  7C 08 03 A6 */	mtlr r0
/* 8097BF08  38 21 00 10 */	addi r1, r1, 0x10
/* 8097BF0C  4E 80 00 20 */	blr 

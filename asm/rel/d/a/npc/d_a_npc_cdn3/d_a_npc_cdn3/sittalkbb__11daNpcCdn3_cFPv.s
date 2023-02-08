lbl_8097BD84:
/* 8097BD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097BD88  7C 08 02 A6 */	mflr r0
/* 8097BD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097BD90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097BD94  7C 7F 1B 78 */	mr r31, r3
/* 8097BD98  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BD9C  28 00 00 00 */	cmplwi r0, 0
/* 8097BDA0  41 82 00 48 */	beq lbl_8097BDE8
/* 8097BDA4  38 80 00 13 */	li r4, 0x13
/* 8097BDA8  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BDAC  4B 7D C3 45 */	bl getAnmP__10daNpcCd2_cFii
/* 8097BDB0  7C 64 1B 78 */	mr r4, r3
/* 8097BDB4  7F E3 FB 78 */	mr r3, r31
/* 8097BDB8  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097BDBC  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097BDC0  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097BDC4  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097BDC8  38 A0 00 02 */	li r5, 2
/* 8097BDCC  38 C0 00 00 */	li r6, 0
/* 8097BDD0  38 E0 FF FF */	li r7, -1
/* 8097BDD4  4B 7D D1 2D */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BDD8  38 00 00 01 */	li r0, 1
/* 8097BDDC  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BDE0  38 00 00 00 */	li r0, 0
/* 8097BDE4  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BDE8:
/* 8097BDE8  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097BDEC  7C 00 00 34 */	cntlzw r0, r0
/* 8097BDF0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097BDF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097BDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097BDFC  7C 08 03 A6 */	mtlr r0
/* 8097BE00  38 21 00 10 */	addi r1, r1, 0x10
/* 8097BE04  4E 80 00 20 */	blr 

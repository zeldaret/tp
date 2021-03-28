lbl_8097BE08:
/* 8097BE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097BE0C  7C 08 02 A6 */	mflr r0
/* 8097BE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097BE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097BE18  7C 7F 1B 78 */	mr r31, r3
/* 8097BE1C  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BE20  28 00 00 00 */	cmplwi r0, 0
/* 8097BE24  41 82 00 48 */	beq lbl_8097BE6C
/* 8097BE28  38 80 00 09 */	li r4, 9
/* 8097BE2C  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BE30  4B 7D C2 C0 */	b getAnmP__10daNpcCd2_cFii
/* 8097BE34  7C 64 1B 78 */	mr r4, r3
/* 8097BE38  7F E3 FB 78 */	mr r3, r31
/* 8097BE3C  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097BE40  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097BE44  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097BE48  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097BE4C  38 A0 00 02 */	li r5, 2
/* 8097BE50  38 C0 00 00 */	li r6, 0
/* 8097BE54  38 E0 FF FF */	li r7, -1
/* 8097BE58  4B 7D D0 A8 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BE5C  38 00 00 01 */	li r0, 1
/* 8097BE60  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BE64  38 00 00 00 */	li r0, 0
/* 8097BE68  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BE6C:
/* 8097BE6C  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097BE70  7C 00 00 34 */	cntlzw r0, r0
/* 8097BE74  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097BE78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097BE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097BE80  7C 08 03 A6 */	mtlr r0
/* 8097BE84  38 21 00 10 */	addi r1, r1, 0x10
/* 8097BE88  4E 80 00 20 */	blr 

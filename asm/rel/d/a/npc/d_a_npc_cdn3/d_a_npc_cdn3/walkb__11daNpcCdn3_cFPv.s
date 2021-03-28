lbl_8097C250:
/* 8097C250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097C254  7C 08 02 A6 */	mflr r0
/* 8097C258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097C25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097C260  7C 7F 1B 78 */	mr r31, r3
/* 8097C264  38 80 00 03 */	li r4, 3
/* 8097C268  80 A3 0B 58 */	lwz r5, 0xb58(r3)
/* 8097C26C  4B 7D BE 84 */	b getAnmP__10daNpcCd2_cFii
/* 8097C270  7C 64 1B 78 */	mr r4, r3
/* 8097C274  7F E3 FB 78 */	mr r3, r31
/* 8097C278  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097C27C  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097C280  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097C284  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097C288  38 A0 00 02 */	li r5, 2
/* 8097C28C  38 C0 00 00 */	li r6, 0
/* 8097C290  38 E0 FF FF */	li r7, -1
/* 8097C294  4B 7D CC 6C */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097C298  38 00 00 02 */	li r0, 2
/* 8097C29C  90 1F 0B 68 */	stw r0, 0xb68(r31)
/* 8097C2A0  38 60 00 01 */	li r3, 1
/* 8097C2A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097C2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097C2AC  7C 08 03 A6 */	mtlr r0
/* 8097C2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8097C2B4  4E 80 00 20 */	blr 

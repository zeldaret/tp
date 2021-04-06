lbl_8097C634:
/* 8097C634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097C638  7C 08 02 A6 */	mflr r0
/* 8097C63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097C640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097C644  7C 7F 1B 78 */	mr r31, r3
/* 8097C648  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097C64C  28 00 00 00 */	cmplwi r0, 0
/* 8097C650  41 82 00 48 */	beq lbl_8097C698
/* 8097C654  38 80 00 31 */	li r4, 0x31
/* 8097C658  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097C65C  4B 7D BA 95 */	bl getAnmP__10daNpcCd2_cFii
/* 8097C660  7C 64 1B 78 */	mr r4, r3
/* 8097C664  7F E3 FB 78 */	mr r3, r31
/* 8097C668  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097C66C  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097C670  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097C674  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097C678  38 A0 00 02 */	li r5, 2
/* 8097C67C  38 C0 00 00 */	li r6, 0
/* 8097C680  38 E0 FF FF */	li r7, -1
/* 8097C684  4B 7D C8 7D */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097C688  38 00 00 01 */	li r0, 1
/* 8097C68C  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097C690  38 00 00 00 */	li r0, 0
/* 8097C694  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097C698:
/* 8097C698  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097C69C  7C 00 00 34 */	cntlzw r0, r0
/* 8097C6A0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097C6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097C6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097C6AC  7C 08 03 A6 */	mtlr r0
/* 8097C6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8097C6B4  4E 80 00 20 */	blr 

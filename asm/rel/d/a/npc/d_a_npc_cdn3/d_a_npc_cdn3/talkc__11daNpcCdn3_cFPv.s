lbl_8097B9E8:
/* 8097B9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097B9EC  7C 08 02 A6 */	mflr r0
/* 8097B9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097B9F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097B9F8  7C 7F 1B 78 */	mr r31, r3
/* 8097B9FC  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BA00  28 00 00 00 */	cmplwi r0, 0
/* 8097BA04  41 82 00 48 */	beq lbl_8097BA4C
/* 8097BA08  38 80 00 08 */	li r4, 8
/* 8097BA0C  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BA10  4B 7D C6 E1 */	bl getAnmP__10daNpcCd2_cFii
/* 8097BA14  7C 64 1B 78 */	mr r4, r3
/* 8097BA18  7F E3 FB 78 */	mr r3, r31
/* 8097BA1C  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097BA20  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097BA24  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097BA28  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097BA2C  38 A0 00 02 */	li r5, 2
/* 8097BA30  38 C0 00 00 */	li r6, 0
/* 8097BA34  38 E0 FF FF */	li r7, -1
/* 8097BA38  4B 7D D4 C9 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BA3C  38 00 00 01 */	li r0, 1
/* 8097BA40  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BA44  38 00 00 00 */	li r0, 0
/* 8097BA48  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BA4C:
/* 8097BA4C  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097BA50  7C 00 00 34 */	cntlzw r0, r0
/* 8097BA54  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097BA58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097BA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097BA60  7C 08 03 A6 */	mtlr r0
/* 8097BA64  38 21 00 10 */	addi r1, r1, 0x10
/* 8097BA68  4E 80 00 20 */	blr 

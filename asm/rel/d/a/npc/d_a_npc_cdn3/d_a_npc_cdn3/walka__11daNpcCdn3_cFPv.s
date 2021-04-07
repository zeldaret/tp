lbl_8097C1E8:
/* 8097C1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097C1EC  7C 08 02 A6 */	mflr r0
/* 8097C1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097C1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097C1F8  7C 7F 1B 78 */	mr r31, r3
/* 8097C1FC  38 80 00 02 */	li r4, 2
/* 8097C200  80 A3 0B 58 */	lwz r5, 0xb58(r3)
/* 8097C204  4B 7D BE ED */	bl getAnmP__10daNpcCd2_cFii
/* 8097C208  7C 64 1B 78 */	mr r4, r3
/* 8097C20C  7F E3 FB 78 */	mr r3, r31
/* 8097C210  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097C214  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097C218  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097C21C  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097C220  38 A0 00 02 */	li r5, 2
/* 8097C224  38 C0 00 00 */	li r6, 0
/* 8097C228  38 E0 FF FF */	li r7, -1
/* 8097C22C  4B 7D CC D5 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097C230  38 00 00 02 */	li r0, 2
/* 8097C234  90 1F 0B 68 */	stw r0, 0xb68(r31)
/* 8097C238  38 60 00 01 */	li r3, 1
/* 8097C23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097C240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097C244  7C 08 03 A6 */	mtlr r0
/* 8097C248  38 21 00 10 */	addi r1, r1, 0x10
/* 8097C24C  4E 80 00 20 */	blr 

lbl_8097C2B8:
/* 8097C2B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097C2BC  7C 08 02 A6 */	mflr r0
/* 8097C2C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097C2C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097C2C8  7C 7F 1B 78 */	mr r31, r3
/* 8097C2CC  38 80 00 04 */	li r4, 4
/* 8097C2D0  80 A3 0B 58 */	lwz r5, 0xb58(r3)
/* 8097C2D4  4B 7D BE 1D */	bl getAnmP__10daNpcCd2_cFii
/* 8097C2D8  7C 64 1B 78 */	mr r4, r3
/* 8097C2DC  7F E3 FB 78 */	mr r3, r31
/* 8097C2E0  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097C2E4  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097C2E8  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097C2EC  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097C2F0  38 A0 00 02 */	li r5, 2
/* 8097C2F4  38 C0 00 00 */	li r6, 0
/* 8097C2F8  38 E0 FF FF */	li r7, -1
/* 8097C2FC  4B 7D CC 05 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097C300  38 00 00 01 */	li r0, 1
/* 8097C304  90 1F 0B 68 */	stw r0, 0xb68(r31)
/* 8097C308  38 60 00 01 */	li r3, 1
/* 8097C30C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097C310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097C314  7C 08 03 A6 */	mtlr r0
/* 8097C318  38 21 00 10 */	addi r1, r1, 0x10
/* 8097C31C  4E 80 00 20 */	blr 

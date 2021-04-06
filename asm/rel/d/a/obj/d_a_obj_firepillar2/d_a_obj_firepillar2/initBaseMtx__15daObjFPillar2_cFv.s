lbl_80BE9CD8:
/* 80BE9CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9CDC  7C 08 02 A6 */	mflr r0
/* 80BE9CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE9CE8  7C 7F 1B 78 */	mr r31, r3
/* 80BE9CEC  A0 03 09 7A */	lhz r0, 0x97a(r3)
/* 80BE9CF0  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BE9CF4  28 00 00 01 */	cmplwi r0, 1
/* 80BE9CF8  40 82 00 18 */	bne lbl_80BE9D10
/* 80BE9CFC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE9D00  4B 42 30 65 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE9D04  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BE9D08  4B 42 32 3D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE9D0C  48 00 00 24 */	b lbl_80BE9D30
lbl_80BE9D10:
/* 80BE9D10  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE9D14  4B 42 30 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE9D18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE9D1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE9D20  38 80 40 00 */	li r4, 0x4000
/* 80BE9D24  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BE9D28  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BE9D2C  4B 42 25 75 */	bl mDoMtx_ZXYrotM__FPA4_fsss
lbl_80BE9D30:
/* 80BE9D30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE9D34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE9D38  38 9F 09 14 */	addi r4, r31, 0x914
/* 80BE9D3C  4B 75 C7 75 */	bl PSMTXCopy
/* 80BE9D40  7F E3 FB 78 */	mr r3, r31
/* 80BE9D44  48 00 00 19 */	bl setBaseMtx__15daObjFPillar2_cFv
/* 80BE9D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE9D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9D50  7C 08 03 A6 */	mtlr r0
/* 80BE9D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9D58  4E 80 00 20 */	blr 

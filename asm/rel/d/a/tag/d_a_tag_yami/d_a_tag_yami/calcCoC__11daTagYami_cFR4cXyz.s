lbl_80D65C60:
/* 80D65C60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D65C64  7C 08 02 A6 */	mflr r0
/* 80D65C68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D65C6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D65C70  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D65C74  7C 7E 1B 78 */	mr r30, r3
/* 80D65C78  7C 9F 23 78 */	mr r31, r4
/* 80D65C7C  3C 60 80 D6 */	lis r3, lit_3820@ha /* 0x80D6625C@ha */
/* 80D65C80  C0 03 62 5C */	lfs f0, lit_3820@l(r3)  /* 0x80D6625C@l */
/* 80D65C84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D65C88  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D65C8C  3C 60 80 D6 */	lis r3, lit_3821@ha /* 0x80D66260@ha */
/* 80D65C90  C0 03 62 60 */	lfs f0, lit_3821@l(r3)  /* 0x80D66260@l */
/* 80D65C94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D65C98  38 61 00 08 */	addi r3, r1, 8
/* 80D65C9C  38 80 00 00 */	li r4, 0
/* 80D65CA0  38 A0 80 6A */	li r5, -32662
/* 80D65CA4  38 C0 00 00 */	li r6, 0
/* 80D65CA8  4B 50 17 4D */	bl __ct__5csXyzFsss
/* 80D65CAC  38 61 00 08 */	addi r3, r1, 8
/* 80D65CB0  4B 2A 72 5D */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80D65CB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D65CB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D65CBC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80D65CC0  7C 85 23 78 */	mr r5, r4
/* 80D65CC4  4B 5E 10 A9 */	bl PSMTXMultVec
/* 80D65CC8  38 61 00 10 */	addi r3, r1, 0x10
/* 80D65CCC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80D65CD0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80D65CD4  4B 50 0E 11 */	bl __pl__4cXyzCFRC3Vec
/* 80D65CD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D65CDC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80D65CE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D65CE4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80D65CE8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D65CEC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80D65CF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D65CF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D65CF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D65CFC  7C 08 03 A6 */	mtlr r0
/* 80D65D00  38 21 00 30 */	addi r1, r1, 0x30
/* 80D65D04  4E 80 00 20 */	blr 

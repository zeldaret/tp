lbl_80B95BB8:
/* 80B95BB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B95BBC  7C 08 02 A6 */	mflr r0
/* 80B95BC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B95BC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B95BC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B95BCC  7C 7E 1B 78 */	mr r30, r3
/* 80B95BD0  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80B95BD4  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B95BD8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B95BDC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B95BE0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B95BE4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B95BE8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B95BEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B95BF0  C0 1E 14 64 */	lfs f0, 0x1464(r30)
/* 80B95BF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80B95BF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B95BFC  38 61 00 08 */	addi r3, r1, 8
/* 80B95C00  4B 47 71 64 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B95C04  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80B95C08  4B 47 73 3C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B95C0C  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80B95C10  4B 47 72 60 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B95C14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B95C18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B95C1C  38 9F 00 24 */	addi r4, r31, 0x24
/* 80B95C20  4B 7B 08 90 */	b PSMTXCopy
/* 80B95C24  93 DF 00 14 */	stw r30, 0x14(r31)
/* 80B95C28  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B95C2C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B95C30  41 82 00 1C */	beq lbl_80B95C4C
/* 80B95C34  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80B95C38  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80B95C3C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B95C40  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B95C44  4B 47 B5 A8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80B95C48  48 00 00 0C */	b lbl_80B95C54
lbl_80B95C4C:
/* 80B95C4C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B95C50  4B 47 B5 9C */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_80B95C54:
/* 80B95C54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B95C58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B95C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B95C60  7C 08 03 A6 */	mtlr r0
/* 80B95C64  38 21 00 20 */	addi r1, r1, 0x20
/* 80B95C68  4E 80 00 20 */	blr 

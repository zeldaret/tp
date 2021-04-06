lbl_8015276C:
/* 8015276C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152770  7C 08 02 A6 */	mflr r0
/* 80152774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015277C  93 C1 00 08 */	stw r30, 8(r1)
/* 80152780  7C 7E 1B 78 */	mr r30, r3
/* 80152784  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80152788  83 E3 00 04 */	lwz r31, 4(r3)
/* 8015278C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80152790  4B EB A5 D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80152794  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80152798  4B EB A7 AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8015279C  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 801527A0  4B EB A6 D1 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 801527A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801527A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801527AC  38 9F 00 24 */	addi r4, r31, 0x24
/* 801527B0  48 1F 3D 01 */	bl PSMTXCopy
/* 801527B4  93 DF 00 14 */	stw r30, 0x14(r31)
/* 801527B8  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 801527BC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801527C0  41 82 00 1C */	beq lbl_801527DC
/* 801527C4  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 801527C8  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 801527CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801527D0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 801527D4  4B EB EA 19 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 801527D8  48 00 00 0C */	b lbl_801527E4
lbl_801527DC:
/* 801527DC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 801527E0  4B EB EA 0D */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_801527E4:
/* 801527E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801527E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801527EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801527F0  7C 08 03 A6 */	mtlr r0
/* 801527F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801527F8  4E 80 00 20 */	blr 

lbl_80678BC0:
/* 80678BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80678BC4  7C 08 02 A6 */	mflr r0
/* 80678BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80678BCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80678BD0  7C 7F 1B 78 */	mr r31, r3
/* 80678BD4  3C 60 80 68 */	lis r3, lit_3688@ha
/* 80678BD8  38 63 8E CC */	addi r3, r3, lit_3688@l
/* 80678BDC  88 1F 06 39 */	lbz r0, 0x639(r31)
/* 80678BE0  28 00 00 00 */	cmplwi r0, 0
/* 80678BE4  40 82 00 20 */	bne lbl_80678C04
/* 80678BE8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80678BEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80678BF0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80678BF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80678BF8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80678BFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80678C00  48 00 00 1C */	b lbl_80678C1C
lbl_80678C04:
/* 80678C04  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80678C08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80678C0C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80678C10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80678C14  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80678C18  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80678C1C:
/* 80678C1C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80678C20  4B 99 41 44 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80678C24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80678C28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80678C2C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80678C30  4B 99 38 04 */	b mDoMtx_YrotM__FPA4_fs
/* 80678C34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80678C38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80678C3C  38 81 00 08 */	addi r4, r1, 8
/* 80678C40  7C 85 23 78 */	mr r5, r4
/* 80678C44  4B CC E1 28 */	b PSMTXMultVec
/* 80678C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80678C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80678C50  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80678C54  38 81 00 08 */	addi r4, r1, 8
/* 80678C58  4B 9C F7 6C */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80678C5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80678C60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80678C64  7C 08 03 A6 */	mtlr r0
/* 80678C68  38 21 00 20 */	addi r1, r1, 0x20
/* 80678C6C  4E 80 00 20 */	blr 

lbl_806E0F38:
/* 806E0F38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E0F3C  7C 08 02 A6 */	mflr r0
/* 806E0F40  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E0F44  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806E0F48  7C 7F 1B 78 */	mr r31, r3
/* 806E0F4C  7C 80 23 78 */	mr r0, r4
/* 806E0F50  38 61 00 08 */	addi r3, r1, 8
/* 806E0F54  7C A4 2B 78 */	mr r4, r5
/* 806E0F58  7C 05 03 78 */	mr r5, r0
/* 806E0F5C  4B B8 5B D8 */	b __mi__4cXyzCFRC3Vec
/* 806E0F60  C0 01 00 08 */	lfs f0, 8(r1)
/* 806E0F64  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E0F68  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806E0F6C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E0F70  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806E0F74  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E0F78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0F7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0F80  A8 1F 05 D0 */	lha r0, 0x5d0(r31)
/* 806E0F84  7C 00 00 D0 */	neg r0, r0
/* 806E0F88  7C 04 07 34 */	extsh r4, r0
/* 806E0F8C  4B 92 B4 E8 */	b mDoMtx_ZrotS__FPA4_fs
/* 806E0F90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0F94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0F98  A8 1F 05 CC */	lha r0, 0x5cc(r31)
/* 806E0F9C  7C 00 00 D0 */	neg r0, r0
/* 806E0FA0  7C 04 07 34 */	extsh r4, r0
/* 806E0FA4  4B 92 B3 F8 */	b mDoMtx_XrotM__FPA4_fs
/* 806E0FA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0FAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0FB0  A8 1F 05 CE */	lha r0, 0x5ce(r31)
/* 806E0FB4  7C 00 00 D0 */	neg r0, r0
/* 806E0FB8  7C 04 07 34 */	extsh r4, r0
/* 806E0FBC  4B 92 B4 78 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0FC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0FC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0FC8  38 81 00 14 */	addi r4, r1, 0x14
/* 806E0FCC  38 A1 00 20 */	addi r5, r1, 0x20
/* 806E0FD0  4B C6 5D 9C */	b PSMTXMultVec
/* 806E0FD4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806E0FD8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 806E0FDC  4B B8 66 98 */	b cM_atan2s__Fff
/* 806E0FE0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806E0FE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E0FE8  7C 08 03 A6 */	mtlr r0
/* 806E0FEC  38 21 00 40 */	addi r1, r1, 0x40
/* 806E0FF0  4E 80 00 20 */	blr 

lbl_8099D80C:
/* 8099D80C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099D810  7C 08 02 A6 */	mflr r0
/* 8099D814  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099D818  39 61 00 20 */	addi r11, r1, 0x20
/* 8099D81C  4B 9C 49 C1 */	bl _savegpr_29
/* 8099D820  2C 04 00 00 */	cmpwi r4, 0
/* 8099D824  41 82 00 0C */	beq lbl_8099D830
/* 8099D828  38 60 00 01 */	li r3, 1
/* 8099D82C  48 00 00 A8 */	b lbl_8099D8D4
lbl_8099D830:
/* 8099D830  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8099D834  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8099D838  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8099D83C  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8099D840  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8099D844  2C 04 00 01 */	cmpwi r4, 1
/* 8099D848  40 82 00 0C */	bne lbl_8099D854
/* 8099D84C  3B C3 1D 8C */	addi r30, r3, 0x1d8c
/* 8099D850  48 00 00 08 */	b lbl_8099D858
lbl_8099D854:
/* 8099D854  3B C3 1D B0 */	addi r30, r3, 0x1db0
lbl_8099D858:
/* 8099D858  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8099D85C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8099D860  1F A4 00 30 */	mulli r29, r4, 0x30
/* 8099D864  7C 60 EA 14 */	add r3, r0, r29
/* 8099D868  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099D86C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099D870  4B 9A 8C 41 */	bl PSMTXCopy
/* 8099D874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099D878  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099D87C  A8 9E 00 02 */	lha r4, 2(r30)
/* 8099D880  4B 66 EB B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8099D884  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099D888  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099D88C  A8 9E 00 04 */	lha r4, 4(r30)
/* 8099D890  4B 66 EC 3D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8099D894  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099D898  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099D89C  A8 9E 00 00 */	lha r4, 0(r30)
/* 8099D8A0  4B 66 EA FD */	bl mDoMtx_XrotM__FPA4_fs
/* 8099D8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099D8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099D8AC  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8099D8B0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8099D8B4  7C 80 EA 14 */	add r4, r0, r29
/* 8099D8B8  4B 9A 8B F9 */	bl PSMTXCopy
/* 8099D8BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099D8C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099D8C4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8099D8C8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8099D8CC  4B 9A 8B E5 */	bl PSMTXCopy
/* 8099D8D0  38 60 00 01 */	li r3, 1
lbl_8099D8D4:
/* 8099D8D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8099D8D8  4B 9C 49 51 */	bl _restgpr_29
/* 8099D8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099D8E0  7C 08 03 A6 */	mtlr r0
/* 8099D8E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8099D8E8  4E 80 00 20 */	blr 

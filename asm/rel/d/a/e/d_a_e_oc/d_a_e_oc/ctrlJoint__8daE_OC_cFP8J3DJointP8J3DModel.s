lbl_8072C630:
/* 8072C630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072C634  7C 08 02 A6 */	mflr r0
/* 8072C638  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072C63C  39 61 00 20 */	addi r11, r1, 0x20
/* 8072C640  4B C3 5B 99 */	bl _savegpr_28
/* 8072C644  7C 7C 1B 78 */	mr r28, r3
/* 8072C648  7C BD 2B 78 */	mr r29, r5
/* 8072C64C  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 8072C650  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8072C654  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8072C658  1F DF 00 30 */	mulli r30, r31, 0x30
/* 8072C65C  7C 60 F2 14 */	add r3, r0, r30
/* 8072C660  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072C664  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072C668  4B C1 9E 49 */	bl PSMTXCopy
/* 8072C66C  2C 1F 00 11 */	cmpwi r31, 0x11
/* 8072C670  40 82 00 18 */	bne lbl_8072C688
/* 8072C674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072C678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072C67C  A8 9C 06 D2 */	lha r4, 0x6d2(r28)
/* 8072C680  4B 8D FD B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8072C684  48 00 00 1C */	b lbl_8072C6A0
lbl_8072C688:
/* 8072C688  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8072C68C  40 82 00 14 */	bne lbl_8072C6A0
/* 8072C690  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072C694  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072C698  A8 9C 06 D0 */	lha r4, 0x6d0(r28)
/* 8072C69C  4B 8D FD 99 */	bl mDoMtx_YrotM__FPA4_fs
lbl_8072C6A0:
/* 8072C6A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072C6A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072C6A8  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 8072C6AC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8072C6B0  7C 80 F2 14 */	add r4, r0, r30
/* 8072C6B4  4B C1 9D FD */	bl PSMTXCopy
/* 8072C6B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072C6BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072C6C0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8072C6C4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8072C6C8  4B C1 9D E9 */	bl PSMTXCopy
/* 8072C6CC  38 60 00 01 */	li r3, 1
/* 8072C6D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8072C6D4  4B C3 5B 51 */	bl _restgpr_28
/* 8072C6D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072C6DC  7C 08 03 A6 */	mtlr r0
/* 8072C6E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8072C6E4  4E 80 00 20 */	blr 

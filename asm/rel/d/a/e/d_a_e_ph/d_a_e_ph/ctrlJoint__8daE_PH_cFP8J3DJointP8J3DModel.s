lbl_8073D850:
/* 8073D850  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073D854  7C 08 02 A6 */	mflr r0
/* 8073D858  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073D85C  39 61 00 20 */	addi r11, r1, 0x20
/* 8073D860  4B C2 49 78 */	b _savegpr_28
/* 8073D864  7C 7C 1B 78 */	mr r28, r3
/* 8073D868  7C BD 2B 78 */	mr r29, r5
/* 8073D86C  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 8073D870  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8073D874  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8073D878  1F DF 00 30 */	mulli r30, r31, 0x30
/* 8073D87C  7C 60 F2 14 */	add r3, r0, r30
/* 8073D880  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8073D884  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8073D888  4B C0 8C 28 */	b PSMTXCopy
/* 8073D88C  2C 1F 00 02 */	cmpwi r31, 2
/* 8073D890  40 82 00 2C */	bne lbl_8073D8BC
/* 8073D894  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073D898  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8073D89C  A8 9C 06 68 */	lha r4, 0x668(r28)
/* 8073D8A0  4B 8C EB 94 */	b mDoMtx_YrotM__FPA4_fs
/* 8073D8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073D8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8073D8AC  A8 1C 06 66 */	lha r0, 0x666(r28)
/* 8073D8B0  7C 00 00 D0 */	neg r0, r0
/* 8073D8B4  7C 04 07 34 */	extsh r4, r0
/* 8073D8B8  4B 8C EA E4 */	b mDoMtx_XrotM__FPA4_fs
lbl_8073D8BC:
/* 8073D8BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073D8C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8073D8C4  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 8073D8C8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8073D8CC  7C 80 F2 14 */	add r4, r0, r30
/* 8073D8D0  4B C0 8B E0 */	b PSMTXCopy
/* 8073D8D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073D8D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8073D8DC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8073D8E0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8073D8E4  4B C0 8B CC */	b PSMTXCopy
/* 8073D8E8  38 60 00 01 */	li r3, 1
/* 8073D8EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8073D8F0  4B C2 49 34 */	b _restgpr_28
/* 8073D8F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073D8F8  7C 08 03 A6 */	mtlr r0
/* 8073D8FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8073D900  4E 80 00 20 */	blr 

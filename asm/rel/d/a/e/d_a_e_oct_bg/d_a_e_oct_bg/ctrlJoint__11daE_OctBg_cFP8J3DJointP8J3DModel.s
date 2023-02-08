lbl_807390E4:
/* 807390E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807390E8  7C 08 02 A6 */	mflr r0
/* 807390EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807390F0  39 61 00 20 */	addi r11, r1, 0x20
/* 807390F4  4B C2 90 E5 */	bl _savegpr_28
/* 807390F8  7C 7D 1B 78 */	mr r29, r3
/* 807390FC  7C BE 2B 78 */	mr r30, r5
/* 80739100  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 80739104  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80739108  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8073910C  1F FC 00 30 */	mulli r31, r28, 0x30
/* 80739110  7C 60 FA 14 */	add r3, r0, r31
/* 80739114  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80739118  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073911C  4B C0 D3 95 */	bl PSMTXCopy
/* 80739120  2C 1C 00 00 */	cmpwi r28, 0
/* 80739124  41 82 00 64 */	beq lbl_80739188
/* 80739128  2C 1C 00 01 */	cmpwi r28, 1
/* 8073912C  40 82 00 44 */	bne lbl_80739170
/* 80739130  88 1D 0B 75 */	lbz r0, 0xb75(r29)
/* 80739134  28 00 00 00 */	cmplwi r0, 0
/* 80739138  40 82 00 18 */	bne lbl_80739150
/* 8073913C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80739140  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80739144  A8 9D 0B 8A */	lha r4, 0xb8a(r29)
/* 80739148  4B 8D 32 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 8073914C  48 00 00 3C */	b lbl_80739188
lbl_80739150:
/* 80739150  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80739154  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80739158  A8 9D 0B 84 */	lha r4, 0xb84(r29)
/* 8073915C  A8 1D 0B 8A */	lha r0, 0xb8a(r29)
/* 80739160  7C 04 00 50 */	subf r0, r4, r0
/* 80739164  7C 04 07 34 */	extsh r4, r0
/* 80739168  4B 8D 32 CD */	bl mDoMtx_YrotM__FPA4_fs
/* 8073916C  48 00 00 1C */	b lbl_80739188
lbl_80739170:
/* 80739170  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80739174  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80739178  57 80 08 3C */	slwi r0, r28, 1
/* 8073917C  7C 9D 02 14 */	add r4, r29, r0
/* 80739180  A8 84 0B 80 */	lha r4, 0xb80(r4)
/* 80739184  4B 8D 32 B1 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80739188:
/* 80739188  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073918C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80739190  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80739194  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80739198  7C 80 FA 14 */	add r4, r0, r31
/* 8073919C  4B C0 D3 15 */	bl PSMTXCopy
/* 807391A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807391A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807391A8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 807391AC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 807391B0  4B C0 D3 01 */	bl PSMTXCopy
/* 807391B4  38 60 00 01 */	li r3, 1
/* 807391B8  39 61 00 20 */	addi r11, r1, 0x20
/* 807391BC  4B C2 90 69 */	bl _restgpr_28
/* 807391C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807391C4  7C 08 03 A6 */	mtlr r0
/* 807391C8  38 21 00 20 */	addi r1, r1, 0x20
/* 807391CC  4E 80 00 20 */	blr 

lbl_806EF770:
/* 806EF770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806EF774  7C 08 02 A6 */	mflr r0
/* 806EF778  90 01 00 24 */	stw r0, 0x24(r1)
/* 806EF77C  39 61 00 20 */	addi r11, r1, 0x20
/* 806EF780  4B C7 2A 58 */	b _savegpr_28
/* 806EF784  7C 7D 1B 78 */	mr r29, r3
/* 806EF788  7C BE 2B 78 */	mr r30, r5
/* 806EF78C  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 806EF790  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806EF794  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806EF798  1F FC 00 30 */	mulli r31, r28, 0x30
/* 806EF79C  7C 60 FA 14 */	add r3, r0, r31
/* 806EF7A0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806EF7A4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806EF7A8  4B C5 6D 08 */	b PSMTXCopy
/* 806EF7AC  2C 1C 00 02 */	cmpwi r28, 2
/* 806EF7B0  41 82 00 44 */	beq lbl_806EF7F4
/* 806EF7B4  40 80 00 10 */	bge lbl_806EF7C4
/* 806EF7B8  2C 1C 00 01 */	cmpwi r28, 1
/* 806EF7BC  40 80 00 14 */	bge lbl_806EF7D0
/* 806EF7C0  48 00 00 78 */	b lbl_806EF838
lbl_806EF7C4:
/* 806EF7C4  2C 1C 00 04 */	cmpwi r28, 4
/* 806EF7C8  40 80 00 70 */	bge lbl_806EF838
/* 806EF7CC  48 00 00 4C */	b lbl_806EF818
lbl_806EF7D0:
/* 806EF7D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF7D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF7D8  A8 9D 06 94 */	lha r4, 0x694(r29)
/* 806EF7DC  4B 91 CC F0 */	b mDoMtx_ZrotM__FPA4_fs
/* 806EF7E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF7E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF7E8  A8 9D 06 92 */	lha r4, 0x692(r29)
/* 806EF7EC  4B 91 CC 48 */	b mDoMtx_YrotM__FPA4_fs
/* 806EF7F0  48 00 00 48 */	b lbl_806EF838
lbl_806EF7F4:
/* 806EF7F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF7F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF7FC  A8 9D 06 9A */	lha r4, 0x69a(r29)
/* 806EF800  4B 91 CC CC */	b mDoMtx_ZrotM__FPA4_fs
/* 806EF804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF80C  A8 9D 06 98 */	lha r4, 0x698(r29)
/* 806EF810  4B 91 CC 24 */	b mDoMtx_YrotM__FPA4_fs
/* 806EF814  48 00 00 24 */	b lbl_806EF838
lbl_806EF818:
/* 806EF818  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF81C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF820  A8 9D 06 A0 */	lha r4, 0x6a0(r29)
/* 806EF824  4B 91 CC A8 */	b mDoMtx_ZrotM__FPA4_fs
/* 806EF828  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF82C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF830  A8 9D 06 9E */	lha r4, 0x69e(r29)
/* 806EF834  4B 91 CC 00 */	b mDoMtx_YrotM__FPA4_fs
lbl_806EF838:
/* 806EF838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF83C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF840  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806EF844  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806EF848  7C 80 FA 14 */	add r4, r0, r31
/* 806EF84C  4B C5 6C 64 */	b PSMTXCopy
/* 806EF850  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF854  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF858  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 806EF85C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 806EF860  4B C5 6C 50 */	b PSMTXCopy
/* 806EF864  38 60 00 01 */	li r3, 1
/* 806EF868  39 61 00 20 */	addi r11, r1, 0x20
/* 806EF86C  4B C7 29 B8 */	b _restgpr_28
/* 806EF870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EF874  7C 08 03 A6 */	mtlr r0
/* 806EF878  38 21 00 20 */	addi r1, r1, 0x20
/* 806EF87C  4E 80 00 20 */	blr 

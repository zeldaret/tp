lbl_8060577C:
/* 8060577C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80605780  7C 08 02 A6 */	mflr r0
/* 80605784  90 01 00 24 */	stw r0, 0x24(r1)
/* 80605788  39 61 00 20 */	addi r11, r1, 0x20
/* 8060578C  4B D5 CA 4C */	b _savegpr_28
/* 80605790  7C 7C 1B 78 */	mr r28, r3
/* 80605794  7C BE 2B 78 */	mr r30, r5
/* 80605798  A3 A4 00 14 */	lhz r29, 0x14(r4)
/* 8060579C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806057A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806057A4  1F FD 00 30 */	mulli r31, r29, 0x30
/* 806057A8  7C 60 FA 14 */	add r3, r0, r31
/* 806057AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806057B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806057B4  4B D4 0C FC */	b PSMTXCopy
/* 806057B8  2C 1D 00 01 */	cmpwi r29, 1
/* 806057BC  40 82 00 24 */	bne lbl_806057E0
/* 806057C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806057C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806057C8  A8 9C 0B 16 */	lha r4, 0xb16(r28)
/* 806057CC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806057D0  7C 04 00 50 */	subf r0, r4, r0
/* 806057D4  7C 04 07 34 */	extsh r4, r0
/* 806057D8  4B A0 6C 5C */	b mDoMtx_YrotM__FPA4_fs
/* 806057DC  48 00 00 28 */	b lbl_80605804
lbl_806057E0:
/* 806057E0  2C 1D 00 19 */	cmpwi r29, 0x19
/* 806057E4  40 82 00 20 */	bne lbl_80605804
/* 806057E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806057EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806057F0  A8 9C 0B 14 */	lha r4, 0xb14(r28)
/* 806057F4  A8 1C 0B 16 */	lha r0, 0xb16(r28)
/* 806057F8  7C 04 00 50 */	subf r0, r4, r0
/* 806057FC  7C 04 07 34 */	extsh r4, r0
/* 80605800  4B A0 6C 34 */	b mDoMtx_YrotM__FPA4_fs
lbl_80605804:
/* 80605804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80605808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8060580C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80605810  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80605814  7C 80 FA 14 */	add r4, r0, r31
/* 80605818  4B D4 0C 98 */	b PSMTXCopy
/* 8060581C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80605820  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80605824  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80605828  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8060582C  4B D4 0C 84 */	b PSMTXCopy
/* 80605830  38 60 00 01 */	li r3, 1
/* 80605834  39 61 00 20 */	addi r11, r1, 0x20
/* 80605838  4B D5 C9 EC */	b _restgpr_28
/* 8060583C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80605840  7C 08 03 A6 */	mtlr r0
/* 80605844  38 21 00 20 */	addi r1, r1, 0x20
/* 80605848  4E 80 00 20 */	blr 

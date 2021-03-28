lbl_80781898:
/* 80781898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8078189C  7C 08 02 A6 */	mflr r0
/* 807818A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 807818A4  39 61 00 20 */	addi r11, r1, 0x20
/* 807818A8  4B BE 09 30 */	b _savegpr_28
/* 807818AC  7C 7D 1B 78 */	mr r29, r3
/* 807818B0  7C BE 2B 78 */	mr r30, r5
/* 807818B4  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 807818B8  80 65 00 84 */	lwz r3, 0x84(r5)
/* 807818BC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807818C0  1F FC 00 30 */	mulli r31, r28, 0x30
/* 807818C4  7C 60 FA 14 */	add r3, r0, r31
/* 807818C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807818CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807818D0  4B BC 4B E0 */	b PSMTXCopy
/* 807818D4  2C 1C 00 03 */	cmpwi r28, 3
/* 807818D8  41 82 00 70 */	beq lbl_80781948
/* 807818DC  40 80 00 14 */	bge lbl_807818F0
/* 807818E0  2C 1C 00 01 */	cmpwi r28, 1
/* 807818E4  41 82 00 64 */	beq lbl_80781948
/* 807818E8  40 80 00 14 */	bge lbl_807818FC
/* 807818EC  48 00 00 5C */	b lbl_80781948
lbl_807818F0:
/* 807818F0  2C 1C 00 05 */	cmpwi r28, 5
/* 807818F4  40 80 00 54 */	bge lbl_80781948
/* 807818F8  48 00 00 28 */	b lbl_80781920
lbl_807818FC:
/* 807818FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80781900  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80781904  A8 9D 05 D8 */	lha r4, 0x5d8(r29)
/* 80781908  4B 88 AB C4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8078190C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80781910  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80781914  A8 9D 05 DA */	lha r4, 0x5da(r29)
/* 80781918  4B 88 AB 1C */	b mDoMtx_YrotM__FPA4_fs
/* 8078191C  48 00 00 2C */	b lbl_80781948
lbl_80781920:
/* 80781920  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80781924  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80781928  A8 1D 05 DE */	lha r0, 0x5de(r29)
/* 8078192C  7C 00 00 D0 */	neg r0, r0
/* 80781930  7C 04 07 34 */	extsh r4, r0
/* 80781934  4B 88 AB 98 */	b mDoMtx_ZrotM__FPA4_fs
/* 80781938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8078193C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80781940  A8 9D 05 E0 */	lha r4, 0x5e0(r29)
/* 80781944  4B 88 AA F0 */	b mDoMtx_YrotM__FPA4_fs
lbl_80781948:
/* 80781948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8078194C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80781950  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80781954  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80781958  7C 80 FA 14 */	add r4, r0, r31
/* 8078195C  4B BC 4B 54 */	b PSMTXCopy
/* 80781960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80781964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80781968  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8078196C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80781970  4B BC 4B 40 */	b PSMTXCopy
/* 80781974  38 60 00 01 */	li r3, 1
/* 80781978  39 61 00 20 */	addi r11, r1, 0x20
/* 8078197C  4B BE 08 A8 */	b _restgpr_28
/* 80781980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80781984  7C 08 03 A6 */	mtlr r0
/* 80781988  38 21 00 20 */	addi r1, r1, 0x20
/* 8078198C  4E 80 00 20 */	blr 

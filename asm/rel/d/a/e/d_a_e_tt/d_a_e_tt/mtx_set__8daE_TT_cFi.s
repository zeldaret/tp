lbl_807C0E10:
/* 807C0E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C0E14  7C 08 02 A6 */	mflr r0
/* 807C0E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C0E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C0E20  93 C1 00 08 */	stw r30, 8(r1)
/* 807C0E24  7C 7E 1B 78 */	mr r30, r3
/* 807C0E28  7C 9F 23 78 */	mr r31, r4
/* 807C0E2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C0E30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C0E34  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807C0E38  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 807C0E3C  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 807C0E40  EC 42 00 2A */	fadds f2, f2, f0
/* 807C0E44  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 807C0E48  4B B8 5A A0 */	b PSMTXTrans
/* 807C0E4C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807C0E50  4B 84 C0 F4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807C0E54  3C 60 80 7C */	lis r3, l_HIO@ha
/* 807C0E58  38 63 23 EC */	addi r3, r3, l_HIO@l
/* 807C0E5C  C0 23 00 08 */	lfs f1, 8(r3)
/* 807C0E60  FC 40 08 90 */	fmr f2, f1
/* 807C0E64  FC 60 08 90 */	fmr f3, f1
/* 807C0E68  4B 84 BF D0 */	b scaleM__14mDoMtx_stack_cFfff
/* 807C0E6C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807C0E70  80 83 00 04 */	lwz r4, 4(r3)
/* 807C0E74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C0E78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C0E7C  38 84 00 24 */	addi r4, r4, 0x24
/* 807C0E80  4B B8 56 30 */	b PSMTXCopy
/* 807C0E84  2C 1F 00 00 */	cmpwi r31, 0
/* 807C0E88  40 82 00 40 */	bne lbl_807C0EC8
/* 807C0E8C  88 1E 06 F7 */	lbz r0, 0x6f7(r30)
/* 807C0E90  28 00 00 00 */	cmplwi r0, 0
/* 807C0E94  41 82 00 34 */	beq lbl_807C0EC8
/* 807C0E98  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807C0E9C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807C0EA0  41 82 00 28 */	beq lbl_807C0EC8
/* 807C0EA4  7F C3 F3 78 */	mr r3, r30
/* 807C0EA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807C0EAC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807C0EB0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807C0EB4  4B 85 99 2C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C0EB8  3C 60 80 7C */	lis r3, lit_5507@ha
/* 807C0EBC  C0 03 20 98 */	lfs f0, lit_5507@l(r3)
/* 807C0EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C0EC4  41 81 00 0C */	bgt lbl_807C0ED0
lbl_807C0EC8:
/* 807C0EC8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807C0ECC  4B 85 03 20 */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_807C0ED0:
/* 807C0ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C0ED4  83 C1 00 08 */	lwz r30, 8(r1)
/* 807C0ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C0EDC  7C 08 03 A6 */	mtlr r0
/* 807C0EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 807C0EE4  4E 80 00 20 */	blr 

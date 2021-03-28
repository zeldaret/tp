lbl_806CE6AC:
/* 806CE6AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CE6B0  7C 08 02 A6 */	mflr r0
/* 806CE6B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CE6B8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806CE6BC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806CE6C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806CE6C4  4B C9 3B 18 */	b _savegpr_29
/* 806CE6C8  7C 7E 1B 78 */	mr r30, r3
/* 806CE6CC  3C 80 80 6D */	lis r4, lit_3907@ha
/* 806CE6D0  3B A4 0E 60 */	addi r29, r4, lit_3907@l
/* 806CE6D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806CE6D8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 806CE6DC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806CE6E0  4B 94 C1 00 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE6E4  FF E0 08 90 */	fmr f31, f1
/* 806CE6E8  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 806CE6EC  2C 00 00 01 */	cmpwi r0, 1
/* 806CE6F0  41 82 00 44 */	beq lbl_806CE734
/* 806CE6F4  40 80 01 44 */	bge lbl_806CE838
/* 806CE6F8  2C 00 00 00 */	cmpwi r0, 0
/* 806CE6FC  40 80 00 08 */	bge lbl_806CE704
/* 806CE700  48 00 01 38 */	b lbl_806CE838
lbl_806CE704:
/* 806CE704  38 00 00 00 */	li r0, 0
/* 806CE708  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 806CE70C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806CE710  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CE714  7F C3 F3 78 */	mr r3, r30
/* 806CE718  38 80 00 0B */	li r4, 0xb
/* 806CE71C  38 A0 00 02 */	li r5, 2
/* 806CE720  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 806CE724  C0 5D 00 08 */	lfs f2, 8(r29)
/* 806CE728  4B FF F1 41 */	bl setBck__8daE_GI_cFiUcff
/* 806CE72C  38 00 00 01 */	li r0, 1
/* 806CE730  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_806CE734:
/* 806CE734  88 9E 06 9E */	lbz r4, 0x69e(r30)
/* 806CE738  28 04 00 FF */	cmplwi r4, 0xff
/* 806CE73C  41 82 00 20 */	beq lbl_806CE75C
/* 806CE740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CE744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CE748  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806CE74C  7C 05 07 74 */	extsb r5, r0
/* 806CE750  4B 96 6C 10 */	b isSwitch__10dSv_info_cCFii
/* 806CE754  2C 03 00 00 */	cmpwi r3, 0
/* 806CE758  41 82 00 E0 */	beq lbl_806CE838
lbl_806CE75C:
/* 806CE75C  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CE760  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CE764  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806CE768  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806CE76C  40 80 00 CC */	bge lbl_806CE838
/* 806CE770  7F C3 F3 78 */	mr r3, r30
/* 806CE774  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806CE778  4B 94 BF 98 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE77C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806CE780  7C 00 18 50 */	subf r0, r0, r3
/* 806CE784  7C 03 07 34 */	extsh r3, r0
/* 806CE788  4B C9 69 48 */	b abs
/* 806CE78C  3C 80 80 6D */	lis r4, l_HIO@ha
/* 806CE790  38 84 11 38 */	addi r4, r4, l_HIO@l
/* 806CE794  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806CE798  FC 00 00 1E */	fctiwz f0, f0
/* 806CE79C  D8 01 00 08 */	stfd f0, 8(r1)
/* 806CE7A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806CE7A4  7C 00 07 34 */	extsh r0, r0
/* 806CE7A8  7C 03 00 00 */	cmpw r3, r0
/* 806CE7AC  40 80 00 64 */	bge lbl_806CE810
/* 806CE7B0  7F C3 F3 78 */	mr r3, r30
/* 806CE7B4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806CE7B8  4B 94 E6 44 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE7BC  2C 03 00 00 */	cmpwi r3, 0
/* 806CE7C0  40 82 00 50 */	bne lbl_806CE810
/* 806CE7C4  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CE7C8  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CE7CC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806CE7D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806CE7D4  40 80 00 28 */	bge lbl_806CE7FC
/* 806CE7D8  7F C3 F3 78 */	mr r3, r30
/* 806CE7DC  4B FF F5 B1 */	bl setCryStop__8daE_GI_cFv
/* 806CE7E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CE7E4  41 82 00 18 */	beq lbl_806CE7FC
/* 806CE7E8  7F C3 F3 78 */	mr r3, r30
/* 806CE7EC  38 80 00 02 */	li r4, 2
/* 806CE7F0  38 A0 00 02 */	li r5, 2
/* 806CE7F4  4B FF F1 19 */	bl setActionMode__8daE_GI_cFii
/* 806CE7F8  48 00 00 40 */	b lbl_806CE838
lbl_806CE7FC:
/* 806CE7FC  7F C3 F3 78 */	mr r3, r30
/* 806CE800  38 80 00 02 */	li r4, 2
/* 806CE804  38 A0 00 00 */	li r5, 0
/* 806CE808  4B FF F1 05 */	bl setActionMode__8daE_GI_cFii
/* 806CE80C  48 00 00 2C */	b lbl_806CE838
lbl_806CE810:
/* 806CE810  3C 60 80 6D */	lis r3, s_battle_gi__FPvPv@ha
/* 806CE814  38 63 E3 1C */	addi r3, r3, s_battle_gi__FPvPv@l
/* 806CE818  7F C4 F3 78 */	mr r4, r30
/* 806CE81C  4B 95 2B 1C */	b fpcEx_Search__FPFPvPv_PvPv
/* 806CE820  28 03 00 00 */	cmplwi r3, 0
/* 806CE824  41 82 00 14 */	beq lbl_806CE838
/* 806CE828  7F C3 F3 78 */	mr r3, r30
/* 806CE82C  38 80 00 02 */	li r4, 2
/* 806CE830  38 A0 00 00 */	li r5, 0
/* 806CE834  4B FF F0 D9 */	bl setActionMode__8daE_GI_cFii
lbl_806CE838:
/* 806CE838  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806CE83C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806CE840  39 61 00 20 */	addi r11, r1, 0x20
/* 806CE844  4B C9 39 E4 */	b _restgpr_29
/* 806CE848  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CE84C  7C 08 03 A6 */	mtlr r0
/* 806CE850  38 21 00 30 */	addi r1, r1, 0x30
/* 806CE854  4E 80 00 20 */	blr 

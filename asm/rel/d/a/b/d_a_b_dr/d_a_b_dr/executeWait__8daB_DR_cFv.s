lbl_805BD5FC:
/* 805BD5FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BD600  7C 08 02 A6 */	mflr r0
/* 805BD604  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BD608  39 61 00 40 */	addi r11, r1, 0x40
/* 805BD60C  4B DA 4B CD */	bl _savegpr_28
/* 805BD610  7C 7E 1B 78 */	mr r30, r3
/* 805BD614  3C 80 80 5C */	lis r4, lit_3800@ha /* 0x805C6C74@ha */
/* 805BD618  3B E4 6C 74 */	addi r31, r4, lit_3800@l /* 0x805C6C74@l */
/* 805BD61C  38 80 00 00 */	li r4, 0
/* 805BD620  4B FF F7 5D */	bl flapMove__8daB_DR_cFb
/* 805BD624  7C 7C 1B 78 */	mr r28, r3
/* 805BD628  7F C3 F3 78 */	mr r3, r30
/* 805BD62C  38 80 00 00 */	li r4, 0
/* 805BD630  4B FF EC 19 */	bl mHabatakiAnmSet__8daB_DR_cFi
/* 805BD634  80 1E 07 0C */	lwz r0, 0x70c(r30)
/* 805BD638  2C 00 00 01 */	cmpwi r0, 1
/* 805BD63C  41 82 00 4C */	beq lbl_805BD688
/* 805BD640  40 80 00 10 */	bge lbl_805BD650
/* 805BD644  2C 00 00 00 */	cmpwi r0, 0
/* 805BD648  40 80 00 14 */	bge lbl_805BD65C
/* 805BD64C  48 00 02 38 */	b lbl_805BD884
lbl_805BD650:
/* 805BD650  2C 00 00 03 */	cmpwi r0, 3
/* 805BD654  40 80 02 30 */	bge lbl_805BD884
/* 805BD658  48 00 02 24 */	b lbl_805BD87C
lbl_805BD65C:
/* 805BD65C  7F C3 F3 78 */	mr r3, r30
/* 805BD660  4B FF F5 B9 */	bl mAllClr__8daB_DR_cFv
/* 805BD664  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BD668  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BD66C  A8 03 00 46 */	lha r0, 0x46(r3)
/* 805BD670  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 805BD674  38 00 00 C8 */	li r0, 0xc8
/* 805BD678  B0 1E 07 50 */	sth r0, 0x750(r30)
/* 805BD67C  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 805BD680  38 03 00 01 */	addi r0, r3, 1
/* 805BD684  90 1E 07 0C */	stw r0, 0x70c(r30)
lbl_805BD688:
/* 805BD688  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 805BD68C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BD690  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 805BD694  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BD698  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 805BD69C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805BD6A0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805BD6A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BD6A8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805BD6AC  38 81 00 24 */	addi r4, r1, 0x24
/* 805BD6B0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805BD6B4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 805BD6B8  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 805BD6BC  4B CB 23 FD */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805BD6C0  38 61 00 0C */	addi r3, r1, 0xc
/* 805BD6C4  38 81 00 24 */	addi r4, r1, 0x24
/* 805BD6C8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805BD6CC  4B CA 94 69 */	bl __mi__4cXyzCFRC3Vec
/* 805BD6D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805BD6D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805BD6D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805BD6DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BD6E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805BD6E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BD6E8  7F C3 F3 78 */	mr r3, r30
/* 805BD6EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD6F0  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD6F4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 805BD6F8  4B A5 D0 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805BD6FC  7C 64 1B 78 */	mr r4, r3
/* 805BD700  38 7E 04 DE */	addi r3, r30, 0x4de
/* 805BD704  38 A0 00 0A */	li r5, 0xa
/* 805BD708  38 C0 08 00 */	li r6, 0x800
/* 805BD70C  4B CB 2E FD */	bl cLib_addCalcAngleS2__FPssss
/* 805BD710  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805BD714  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805BD718  A8 BE 07 50 */	lha r5, 0x750(r30)
/* 805BD71C  38 C0 04 00 */	li r6, 0x400
/* 805BD720  4B CB 2E E9 */	bl cLib_addCalcAngleS2__FPssss
/* 805BD724  38 7E 07 50 */	addi r3, r30, 0x750
/* 805BD728  38 80 00 08 */	li r4, 8
/* 805BD72C  38 A0 00 08 */	li r5, 8
/* 805BD730  38 C0 00 14 */	li r6, 0x14
/* 805BD734  4B CB 2E D5 */	bl cLib_addCalcAngleS2__FPssss
/* 805BD738  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805BD73C  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 805BD740  7C 00 07 35 */	extsh. r0, r0
/* 805BD744  40 82 01 40 */	bne lbl_805BD884
/* 805BD748  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 805BD74C  41 82 01 38 */	beq lbl_805BD884
/* 805BD750  38 61 00 18 */	addi r3, r1, 0x18
/* 805BD754  4B D8 99 E5 */	bl PSVECSquareMag
/* 805BD758  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BD75C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD760  40 81 00 58 */	ble lbl_805BD7B8
/* 805BD764  FC 00 08 34 */	frsqrte f0, f1
/* 805BD768  C8 9F 03 98 */	lfd f4, 0x398(r31)
/* 805BD76C  FC 44 00 32 */	fmul f2, f4, f0
/* 805BD770  C8 7F 03 A0 */	lfd f3, 0x3a0(r31)
/* 805BD774  FC 00 00 32 */	fmul f0, f0, f0
/* 805BD778  FC 01 00 32 */	fmul f0, f1, f0
/* 805BD77C  FC 03 00 28 */	fsub f0, f3, f0
/* 805BD780  FC 02 00 32 */	fmul f0, f2, f0
/* 805BD784  FC 44 00 32 */	fmul f2, f4, f0
/* 805BD788  FC 00 00 32 */	fmul f0, f0, f0
/* 805BD78C  FC 01 00 32 */	fmul f0, f1, f0
/* 805BD790  FC 03 00 28 */	fsub f0, f3, f0
/* 805BD794  FC 02 00 32 */	fmul f0, f2, f0
/* 805BD798  FC 44 00 32 */	fmul f2, f4, f0
/* 805BD79C  FC 00 00 32 */	fmul f0, f0, f0
/* 805BD7A0  FC 01 00 32 */	fmul f0, f1, f0
/* 805BD7A4  FC 03 00 28 */	fsub f0, f3, f0
/* 805BD7A8  FC 02 00 32 */	fmul f0, f2, f0
/* 805BD7AC  FC 21 00 32 */	fmul f1, f1, f0
/* 805BD7B0  FC 20 08 18 */	frsp f1, f1
/* 805BD7B4  48 00 00 88 */	b lbl_805BD83C
lbl_805BD7B8:
/* 805BD7B8  C8 1F 03 A8 */	lfd f0, 0x3a8(r31)
/* 805BD7BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD7C0  40 80 00 10 */	bge lbl_805BD7D0
/* 805BD7C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805BD7C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805BD7CC  48 00 00 70 */	b lbl_805BD83C
lbl_805BD7D0:
/* 805BD7D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805BD7D4  80 81 00 08 */	lwz r4, 8(r1)
/* 805BD7D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805BD7DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805BD7E0  7C 03 00 00 */	cmpw r3, r0
/* 805BD7E4  41 82 00 14 */	beq lbl_805BD7F8
/* 805BD7E8  40 80 00 40 */	bge lbl_805BD828
/* 805BD7EC  2C 03 00 00 */	cmpwi r3, 0
/* 805BD7F0  41 82 00 20 */	beq lbl_805BD810
/* 805BD7F4  48 00 00 34 */	b lbl_805BD828
lbl_805BD7F8:
/* 805BD7F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805BD7FC  41 82 00 0C */	beq lbl_805BD808
/* 805BD800  38 00 00 01 */	li r0, 1
/* 805BD804  48 00 00 28 */	b lbl_805BD82C
lbl_805BD808:
/* 805BD808  38 00 00 02 */	li r0, 2
/* 805BD80C  48 00 00 20 */	b lbl_805BD82C
lbl_805BD810:
/* 805BD810  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805BD814  41 82 00 0C */	beq lbl_805BD820
/* 805BD818  38 00 00 05 */	li r0, 5
/* 805BD81C  48 00 00 10 */	b lbl_805BD82C
lbl_805BD820:
/* 805BD820  38 00 00 03 */	li r0, 3
/* 805BD824  48 00 00 08 */	b lbl_805BD82C
lbl_805BD828:
/* 805BD828  38 00 00 04 */	li r0, 4
lbl_805BD82C:
/* 805BD82C  2C 00 00 01 */	cmpwi r0, 1
/* 805BD830  40 82 00 0C */	bne lbl_805BD83C
/* 805BD834  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805BD838  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805BD83C:
/* 805BD83C  C0 1F 03 74 */	lfs f0, 0x374(r31)
/* 805BD840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD844  40 80 00 40 */	bge lbl_805BD884
/* 805BD848  88 1E 07 D2 */	lbz r0, 0x7d2(r30)
/* 805BD84C  28 00 00 00 */	cmplwi r0, 0
/* 805BD850  40 82 00 10 */	bne lbl_805BD860
/* 805BD854  7F C3 F3 78 */	mr r3, r30
/* 805BD858  38 80 00 01 */	li r4, 1
/* 805BD85C  4B FF DD F1 */	bl mStatusONOFF__8daB_DR_cFi
lbl_805BD860:
/* 805BD860  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BD864  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805BD868  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 805BD86C  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 805BD870  38 03 00 01 */	addi r0, r3, 1
/* 805BD874  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 805BD878  48 00 00 0C */	b lbl_805BD884
lbl_805BD87C:
/* 805BD87C  7F C3 F3 78 */	mr r3, r30
/* 805BD880  4B FF FB 65 */	bl normalHoverMove__8daB_DR_cFv
lbl_805BD884:
/* 805BD884  88 1E 07 D2 */	lbz r0, 0x7d2(r30)
/* 805BD888  28 00 00 01 */	cmplwi r0, 1
/* 805BD88C  40 82 00 44 */	bne lbl_805BD8D0
/* 805BD890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD898  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805BD89C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 805BD8A0  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BD8A4  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BD8A8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805BD8AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD8B0  40 80 00 14 */	bge lbl_805BD8C4
/* 805BD8B4  7F C3 F3 78 */	mr r3, r30
/* 805BD8B8  38 80 00 00 */	li r4, 0
/* 805BD8BC  4B FF DD 91 */	bl mStatusONOFF__8daB_DR_cFi
/* 805BD8C0  48 00 00 10 */	b lbl_805BD8D0
lbl_805BD8C4:
/* 805BD8C4  7F C3 F3 78 */	mr r3, r30
/* 805BD8C8  38 80 00 01 */	li r4, 1
/* 805BD8CC  4B FF DD 81 */	bl mStatusONOFF__8daB_DR_cFi
lbl_805BD8D0:
/* 805BD8D0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805BD8D4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805BD8D8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 805BD8DC  4B CB 21 A5 */	bl cLib_addCalc0__FPfff
/* 805BD8E0  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 805BD8E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805BD8E8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 805BD8EC  4B CB 21 95 */	bl cLib_addCalc0__FPfff
/* 805BD8F0  80 1E 07 0C */	lwz r0, 0x70c(r30)
/* 805BD8F4  2C 00 00 02 */	cmpwi r0, 2
/* 805BD8F8  40 82 00 7C */	bne lbl_805BD974
/* 805BD8FC  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 805BD900  48 00 92 DD */	bl func_805C6BDC
/* 805BD904  2C 03 00 00 */	cmpwi r3, 0
/* 805BD908  41 82 00 18 */	beq lbl_805BD920
/* 805BD90C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD910  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD914  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805BD918  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 805BD91C  41 82 00 58 */	beq lbl_805BD974
lbl_805BD920:
/* 805BD920  7F C3 F3 78 */	mr r3, r30
/* 805BD924  4B FF F7 39 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805BD928  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BD92C  41 82 00 18 */	beq lbl_805BD944
/* 805BD930  7F C3 F3 78 */	mr r3, r30
/* 805BD934  38 80 00 05 */	li r4, 5
/* 805BD938  38 A0 00 00 */	li r5, 0
/* 805BD93C  4B FF DB 79 */	bl setActionMode__8daB_DR_cFii
/* 805BD940  48 00 00 34 */	b lbl_805BD974
lbl_805BD944:
/* 805BD944  88 1E 07 D1 */	lbz r0, 0x7d1(r30)
/* 805BD948  28 00 00 00 */	cmplwi r0, 0
/* 805BD94C  41 82 00 18 */	beq lbl_805BD964
/* 805BD950  7F C3 F3 78 */	mr r3, r30
/* 805BD954  38 80 00 07 */	li r4, 7
/* 805BD958  38 A0 00 00 */	li r5, 0
/* 805BD95C  4B FF DB 59 */	bl setActionMode__8daB_DR_cFii
/* 805BD960  48 00 00 14 */	b lbl_805BD974
lbl_805BD964:
/* 805BD964  7F C3 F3 78 */	mr r3, r30
/* 805BD968  38 80 00 04 */	li r4, 4
/* 805BD96C  38 A0 00 00 */	li r5, 0
/* 805BD970  4B FF DB 45 */	bl setActionMode__8daB_DR_cFii
lbl_805BD974:
/* 805BD974  39 61 00 40 */	addi r11, r1, 0x40
/* 805BD978  4B DA 48 AD */	bl _restgpr_28
/* 805BD97C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BD980  7C 08 03 A6 */	mtlr r0
/* 805BD984  38 21 00 40 */	addi r1, r1, 0x40
/* 805BD988  4E 80 00 20 */	blr 

lbl_80AE9820:
/* 80AE9820  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AE9824  7C 08 02 A6 */	mflr r0
/* 80AE9828  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AE982C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE9830  4B 87 89 A8 */	b _savegpr_28
/* 80AE9834  7C 7C 1B 78 */	mr r28, r3
/* 80AE9838  3C 60 80 AF */	lis r3, m__17daNpcShoe_Param_c@ha
/* 80AE983C  38 83 A3 B0 */	addi r4, r3, m__17daNpcShoe_Param_c@l
/* 80AE9840  38 A0 00 00 */	li r5, 0
/* 80AE9844  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AE9848  83 E3 00 04 */	lwz r31, 4(r3)
/* 80AE984C  3B C0 00 00 */	li r30, 0
/* 80AE9850  38 64 00 00 */	addi r3, r4, 0
/* 80AE9854  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80AE9858  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80AE985C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80AE9860  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80AE9864  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80AE9868  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80AE986C  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80AE9870  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80AE9874  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80AE9878  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80AE987C  7C 03 00 50 */	subf r0, r3, r0
/* 80AE9880  7C 1D 07 34 */	extsh r29, r0
/* 80AE9884  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80AE9888  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AE988C  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80AE9890  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AE9894  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80AE9898  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AE989C  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80AE98A0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AE98A4  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80AE98A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AE98AC  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80AE98B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AE98B4  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80AE98B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AE98BC  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80AE98C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AE98C4  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80AE98C8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AE98CC  80 64 01 38 */	lwz r3, 0x138(r4)
/* 80AE98D0  80 04 01 3C */	lwz r0, 0x13c(r4)
/* 80AE98D4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80AE98D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE98DC  80 04 01 40 */	lwz r0, 0x140(r4)
/* 80AE98E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AE98E4  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80AE98E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE98EC  38 1C 09 20 */	addi r0, r28, 0x920
/* 80AE98F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE98F4  38 1C 09 26 */	addi r0, r28, 0x926
/* 80AE98F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AE98FC  A8 1C 0E 10 */	lha r0, 0xe10(r28)
/* 80AE9900  2C 00 00 01 */	cmpwi r0, 1
/* 80AE9904  41 82 00 18 */	beq lbl_80AE991C
/* 80AE9908  40 80 00 08 */	bge lbl_80AE9910
/* 80AE990C  48 00 00 34 */	b lbl_80AE9940
lbl_80AE9910:
/* 80AE9910  2C 00 00 04 */	cmpwi r0, 4
/* 80AE9914  40 80 00 2C */	bge lbl_80AE9940
/* 80AE9918  48 00 00 0C */	b lbl_80AE9924
lbl_80AE991C:
/* 80AE991C  3B C0 00 01 */	li r30, 1
/* 80AE9920  48 00 00 20 */	b lbl_80AE9940
lbl_80AE9924:
/* 80AE9924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE9928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE992C  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80AE9930  2C 00 00 03 */	cmpwi r0, 3
/* 80AE9934  40 82 00 0C */	bne lbl_80AE9940
/* 80AE9938  C1 04 01 60 */	lfs f8, 0x160(r4)
/* 80AE993C  C1 24 01 64 */	lfs f9, 0x164(r4)
lbl_80AE9940:
/* 80AE9940  28 05 00 00 */	cmplwi r5, 0
/* 80AE9944  41 82 00 4C */	beq lbl_80AE9990
/* 80AE9948  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80AE994C  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80AE9950  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80AE9954  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80AE9958  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80AE995C  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80AE9960  A8 1C 0E 10 */	lha r0, 0xe10(r28)
/* 80AE9964  2C 00 00 02 */	cmpwi r0, 2
/* 80AE9968  41 82 00 1C */	beq lbl_80AE9984
/* 80AE996C  2C 00 00 03 */	cmpwi r0, 3
/* 80AE9970  41 82 00 14 */	beq lbl_80AE9984
/* 80AE9974  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80AE9978  C0 04 01 68 */	lfs f0, 0x168(r4)
/* 80AE997C  EC 05 00 28 */	fsubs f0, f5, f0
/* 80AE9980  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80AE9984:
/* 80AE9984  38 1C 08 78 */	addi r0, r28, 0x878
/* 80AE9988  90 1C 0C 28 */	stw r0, 0xc28(r28)
/* 80AE998C  48 00 00 0C */	b lbl_80AE9998
lbl_80AE9990:
/* 80AE9990  38 00 00 00 */	li r0, 0
/* 80AE9994  90 1C 0C 28 */	stw r0, 0xc28(r28)
lbl_80AE9998:
/* 80AE9998  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80AE999C  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80AE99A0  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80AE99A4  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80AE99A8  38 7C 0B F8 */	addi r3, r28, 0xbf8
/* 80AE99AC  C0 A4 00 A0 */	lfs f5, 0xa0(r4)
/* 80AE99B0  FC C0 28 90 */	fmr f6, f5
/* 80AE99B4  FC E0 28 90 */	fmr f7, f5
/* 80AE99B8  FD 00 28 90 */	fmr f8, f5
/* 80AE99BC  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80AE99C0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80AE99C4  4B 66 76 F4 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80AE99C8  38 7C 0B F8 */	addi r3, r28, 0xbf8
/* 80AE99CC  7F 84 E3 78 */	mr r4, r28
/* 80AE99D0  38 BF 00 24 */	addi r5, r31, 0x24
/* 80AE99D4  38 C1 00 18 */	addi r6, r1, 0x18
/* 80AE99D8  7F C7 F3 78 */	mr r7, r30
/* 80AE99DC  7F A8 EB 78 */	mr r8, r29
/* 80AE99E0  39 20 00 00 */	li r9, 0
/* 80AE99E4  4B 66 79 6C */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80AE99E8  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE99EC  4B 87 88 38 */	b _restgpr_28
/* 80AE99F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AE99F4  7C 08 03 A6 */	mtlr r0
/* 80AE99F8  38 21 00 60 */	addi r1, r1, 0x60
/* 80AE99FC  4E 80 00 20 */	blr 

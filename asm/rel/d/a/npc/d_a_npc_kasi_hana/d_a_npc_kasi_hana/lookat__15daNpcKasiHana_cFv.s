lbl_80A1D848:
/* 80A1D848  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A1D84C  7C 08 02 A6 */	mflr r0
/* 80A1D850  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A1D854  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1D858  4B 94 49 80 */	b _savegpr_28
/* 80A1D85C  7C 7C 1B 78 */	mr r28, r3
/* 80A1D860  3C 60 80 A2 */	lis r3, lit_3908@ha
/* 80A1D864  38 83 10 80 */	addi r4, r3, lit_3908@l
/* 80A1D868  38 A0 00 00 */	li r5, 0
/* 80A1D86C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A1D870  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A1D874  3B C0 00 00 */	li r30, 0
/* 80A1D878  38 64 00 48 */	addi r3, r4, 0x48
/* 80A1D87C  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80A1D880  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80A1D884  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80A1D888  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80A1D88C  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80A1D890  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80A1D894  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80A1D898  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80A1D89C  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80A1D8A0  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80A1D8A4  7C 03 00 50 */	subf r0, r3, r0
/* 80A1D8A8  7C 1D 07 34 */	extsh r29, r0
/* 80A1D8AC  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80A1D8B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A1D8B4  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80A1D8B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A1D8BC  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80A1D8C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A1D8C4  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80A1D8C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A1D8CC  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80A1D8D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A1D8D4  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80A1D8D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A1D8DC  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80A1D8E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A1D8E4  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80A1D8E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A1D8EC  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80A1D8F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A1D8F4  80 64 02 2C */	lwz r3, 0x22c(r4)
/* 80A1D8F8  80 04 02 30 */	lwz r0, 0x230(r4)
/* 80A1D8FC  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A1D900  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1D904  80 04 02 34 */	lwz r0, 0x234(r4)
/* 80A1D908  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A1D90C  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80A1D910  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1D914  38 1C 09 20 */	addi r0, r28, 0x920
/* 80A1D918  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1D91C  38 1C 09 26 */	addi r0, r28, 0x926
/* 80A1D920  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A1D924  A8 1C 14 3C */	lha r0, 0x143c(r28)
/* 80A1D928  2C 00 00 01 */	cmpwi r0, 1
/* 80A1D92C  41 82 00 18 */	beq lbl_80A1D944
/* 80A1D930  40 80 00 08 */	bge lbl_80A1D938
/* 80A1D934  48 00 00 34 */	b lbl_80A1D968
lbl_80A1D938:
/* 80A1D938  2C 00 00 04 */	cmpwi r0, 4
/* 80A1D93C  40 80 00 2C */	bge lbl_80A1D968
/* 80A1D940  48 00 00 0C */	b lbl_80A1D94C
lbl_80A1D944:
/* 80A1D944  3B C0 00 01 */	li r30, 1
/* 80A1D948  48 00 00 20 */	b lbl_80A1D968
lbl_80A1D94C:
/* 80A1D94C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1D950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A1D954  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80A1D958  2C 00 00 03 */	cmpwi r0, 3
/* 80A1D95C  40 82 00 0C */	bne lbl_80A1D968
/* 80A1D960  C1 04 02 38 */	lfs f8, 0x238(r4)
/* 80A1D964  C1 24 02 3C */	lfs f9, 0x23c(r4)
lbl_80A1D968:
/* 80A1D968  28 05 00 00 */	cmplwi r5, 0
/* 80A1D96C  41 82 00 4C */	beq lbl_80A1D9B8
/* 80A1D970  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80A1D974  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80A1D978  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80A1D97C  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80A1D980  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80A1D984  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80A1D988  A8 1C 14 3C */	lha r0, 0x143c(r28)
/* 80A1D98C  2C 00 00 02 */	cmpwi r0, 2
/* 80A1D990  41 82 00 1C */	beq lbl_80A1D9AC
/* 80A1D994  2C 00 00 03 */	cmpwi r0, 3
/* 80A1D998  41 82 00 14 */	beq lbl_80A1D9AC
/* 80A1D99C  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80A1D9A0  C0 04 02 40 */	lfs f0, 0x240(r4)
/* 80A1D9A4  EC 05 00 28 */	fsubs f0, f5, f0
/* 80A1D9A8  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80A1D9AC:
/* 80A1D9AC  38 1C 08 78 */	addi r0, r28, 0x878
/* 80A1D9B0  90 1C 0C 20 */	stw r0, 0xc20(r28)
/* 80A1D9B4  48 00 00 0C */	b lbl_80A1D9C0
lbl_80A1D9B8:
/* 80A1D9B8  38 00 00 00 */	li r0, 0
/* 80A1D9BC  90 1C 0C 20 */	stw r0, 0xc20(r28)
lbl_80A1D9C0:
/* 80A1D9C0  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80A1D9C4  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80A1D9C8  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80A1D9CC  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80A1D9D0  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 80A1D9D4  C0 A4 00 00 */	lfs f5, 0(r4)
/* 80A1D9D8  FC C0 28 90 */	fmr f6, f5
/* 80A1D9DC  FC E0 28 90 */	fmr f7, f5
/* 80A1D9E0  FD 00 28 90 */	fmr f8, f5
/* 80A1D9E4  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80A1D9E8  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A1D9EC  4B 73 36 CC */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80A1D9F0  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 80A1D9F4  7F 84 E3 78 */	mr r4, r28
/* 80A1D9F8  38 BF 00 24 */	addi r5, r31, 0x24
/* 80A1D9FC  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A1DA00  7F C7 F3 78 */	mr r7, r30
/* 80A1DA04  7F A8 EB 78 */	mr r8, r29
/* 80A1DA08  39 20 00 00 */	li r9, 0
/* 80A1DA0C  4B 73 39 44 */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80A1DA10  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1DA14  4B 94 48 10 */	b _restgpr_28
/* 80A1DA18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A1DA1C  7C 08 03 A6 */	mtlr r0
/* 80A1DA20  38 21 00 60 */	addi r1, r1, 0x60
/* 80A1DA24  4E 80 00 20 */	blr 

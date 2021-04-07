lbl_8096A81C:
/* 8096A81C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8096A820  7C 08 02 A6 */	mflr r0
/* 8096A824  90 01 00 64 */	stw r0, 0x64(r1)
/* 8096A828  39 61 00 60 */	addi r11, r1, 0x60
/* 8096A82C  4B 9F 79 AD */	bl _savegpr_28
/* 8096A830  7C 7C 1B 78 */	mr r28, r3
/* 8096A834  3C 60 80 97 */	lis r3, l_cyl_src@ha /* 0x8096C920@ha */
/* 8096A838  38 83 C9 20 */	addi r4, r3, l_cyl_src@l /* 0x8096C920@l */
/* 8096A83C  38 A0 00 00 */	li r5, 0
/* 8096A840  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 8096A844  83 E3 00 04 */	lwz r31, 4(r3)
/* 8096A848  3B C0 00 00 */	li r30, 0
/* 8096A84C  38 64 00 44 */	addi r3, r4, 0x44
/* 8096A850  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8096A854  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 8096A858  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 8096A85C  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 8096A860  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 8096A864  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 8096A868  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 8096A86C  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 8096A870  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 8096A874  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 8096A878  7C 03 00 50 */	subf r0, r3, r0
/* 8096A87C  7C 1D 07 34 */	extsh r29, r0
/* 8096A880  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 8096A884  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8096A888  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 8096A88C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8096A890  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 8096A894  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8096A898  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 8096A89C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8096A8A0  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 8096A8A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8096A8A8  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 8096A8AC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8096A8B0  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 8096A8B4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8096A8B8  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 8096A8BC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8096A8C0  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 8096A8C4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8096A8C8  80 64 02 08 */	lwz r3, 0x208(r4)
/* 8096A8CC  80 04 02 0C */	lwz r0, 0x20c(r4)
/* 8096A8D0  90 61 00 18 */	stw r3, 0x18(r1)
/* 8096A8D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8096A8D8  80 04 02 10 */	lwz r0, 0x210(r4)
/* 8096A8DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8096A8E0  38 1C 09 1A */	addi r0, r28, 0x91a
/* 8096A8E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8096A8E8  38 1C 09 20 */	addi r0, r28, 0x920
/* 8096A8EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8096A8F0  38 1C 09 26 */	addi r0, r28, 0x926
/* 8096A8F4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8096A8F8  A8 1C 0D E8 */	lha r0, 0xde8(r28)
/* 8096A8FC  2C 00 00 01 */	cmpwi r0, 1
/* 8096A900  41 82 00 18 */	beq lbl_8096A918
/* 8096A904  40 80 00 08 */	bge lbl_8096A90C
/* 8096A908  48 00 00 34 */	b lbl_8096A93C
lbl_8096A90C:
/* 8096A90C  2C 00 00 04 */	cmpwi r0, 4
/* 8096A910  40 80 00 2C */	bge lbl_8096A93C
/* 8096A914  48 00 00 0C */	b lbl_8096A920
lbl_8096A918:
/* 8096A918  3B C0 00 01 */	li r30, 1
/* 8096A91C  48 00 00 20 */	b lbl_8096A93C
lbl_8096A920:
/* 8096A920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096A924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096A928  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 8096A92C  2C 00 00 03 */	cmpwi r0, 3
/* 8096A930  40 82 00 0C */	bne lbl_8096A93C
/* 8096A934  C1 04 02 14 */	lfs f8, 0x214(r4)
/* 8096A938  C1 24 02 18 */	lfs f9, 0x218(r4)
lbl_8096A93C:
/* 8096A93C  28 05 00 00 */	cmplwi r5, 0
/* 8096A940  41 82 00 4C */	beq lbl_8096A98C
/* 8096A944  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 8096A948  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 8096A94C  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 8096A950  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 8096A954  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 8096A958  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 8096A95C  A8 1C 0D E8 */	lha r0, 0xde8(r28)
/* 8096A960  2C 00 00 02 */	cmpwi r0, 2
/* 8096A964  41 82 00 1C */	beq lbl_8096A980
/* 8096A968  2C 00 00 03 */	cmpwi r0, 3
/* 8096A96C  41 82 00 14 */	beq lbl_8096A980
/* 8096A970  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 8096A974  C0 04 02 1C */	lfs f0, 0x21c(r4)
/* 8096A978  EC 05 00 28 */	fsubs f0, f5, f0
/* 8096A97C  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_8096A980:
/* 8096A980  38 1C 08 78 */	addi r0, r28, 0x878
/* 8096A984  90 1C 0C 0C */	stw r0, 0xc0c(r28)
/* 8096A988  48 00 00 0C */	b lbl_8096A994
lbl_8096A98C:
/* 8096A98C  38 00 00 00 */	li r0, 0
/* 8096A990  90 1C 0C 0C */	stw r0, 0xc0c(r28)
lbl_8096A994:
/* 8096A994  D0 C1 00 08 */	stfs f6, 8(r1)
/* 8096A998  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 8096A99C  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 8096A9A0  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 8096A9A4  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 8096A9A8  C0 A4 00 D4 */	lfs f5, 0xd4(r4)
/* 8096A9AC  FC C0 28 90 */	fmr f6, f5
/* 8096A9B0  FC E0 28 90 */	fmr f7, f5
/* 8096A9B4  FD 00 28 90 */	fmr f8, f5
/* 8096A9B8  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 8096A9BC  38 A1 00 24 */	addi r5, r1, 0x24
/* 8096A9C0  4B 7E 66 F9 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 8096A9C4  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 8096A9C8  7F 84 E3 78 */	mr r4, r28
/* 8096A9CC  38 BF 00 24 */	addi r5, r31, 0x24
/* 8096A9D0  38 C1 00 18 */	addi r6, r1, 0x18
/* 8096A9D4  7F C7 F3 78 */	mr r7, r30
/* 8096A9D8  7F A8 EB 78 */	mr r8, r29
/* 8096A9DC  39 20 00 00 */	li r9, 0
/* 8096A9E0  4B 7E 69 71 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 8096A9E4  39 61 00 60 */	addi r11, r1, 0x60
/* 8096A9E8  4B 9F 78 3D */	bl _restgpr_28
/* 8096A9EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8096A9F0  7C 08 03 A6 */	mtlr r0
/* 8096A9F4  38 21 00 60 */	addi r1, r1, 0x60
/* 8096A9F8  4E 80 00 20 */	blr 

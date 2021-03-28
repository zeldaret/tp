lbl_8098E690:
/* 8098E690  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8098E694  7C 08 02 A6 */	mflr r0
/* 8098E698  90 01 00 64 */	stw r0, 0x64(r1)
/* 8098E69C  39 61 00 60 */	addi r11, r1, 0x60
/* 8098E6A0  4B 9D 3B 38 */	b _savegpr_28
/* 8098E6A4  7C 7C 1B 78 */	mr r28, r3
/* 8098E6A8  3C 60 80 99 */	lis r3, sLoadResPat_Normal@ha
/* 8098E6AC  38 83 18 F8 */	addi r4, r3, sLoadResPat_Normal@l
/* 8098E6B0  38 A0 00 00 */	li r5, 0
/* 8098E6B4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 8098E6B8  83 E3 00 04 */	lwz r31, 4(r3)
/* 8098E6BC  3B C0 00 00 */	li r30, 0
/* 8098E6C0  38 64 00 14 */	addi r3, r4, 0x14
/* 8098E6C4  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8098E6C8  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 8098E6CC  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 8098E6D0  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 8098E6D4  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 8098E6D8  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 8098E6DC  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 8098E6E0  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 8098E6E4  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 8098E6E8  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 8098E6EC  7C 03 00 50 */	subf r0, r3, r0
/* 8098E6F0  7C 1D 07 34 */	extsh r29, r0
/* 8098E6F4  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 8098E6F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8098E6FC  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 8098E700  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8098E704  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 8098E708  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8098E70C  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 8098E710  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8098E714  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 8098E718  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8098E71C  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 8098E720  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8098E724  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 8098E728  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8098E72C  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 8098E730  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8098E734  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 8098E738  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8098E73C  80 64 04 10 */	lwz r3, 0x410(r4)
/* 8098E740  80 04 04 14 */	lwz r0, 0x414(r4)
/* 8098E744  90 61 00 18 */	stw r3, 0x18(r1)
/* 8098E748  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8098E74C  80 04 04 18 */	lwz r0, 0x418(r4)
/* 8098E750  90 01 00 20 */	stw r0, 0x20(r1)
/* 8098E754  38 1C 09 1A */	addi r0, r28, 0x91a
/* 8098E758  90 01 00 18 */	stw r0, 0x18(r1)
/* 8098E75C  38 1C 09 20 */	addi r0, r28, 0x920
/* 8098E760  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8098E764  38 1C 09 26 */	addi r0, r28, 0x926
/* 8098E768  90 01 00 20 */	stw r0, 0x20(r1)
/* 8098E76C  A8 1C 0E 02 */	lha r0, 0xe02(r28)
/* 8098E770  2C 00 00 01 */	cmpwi r0, 1
/* 8098E774  41 82 00 18 */	beq lbl_8098E78C
/* 8098E778  40 80 00 08 */	bge lbl_8098E780
/* 8098E77C  48 00 00 34 */	b lbl_8098E7B0
lbl_8098E780:
/* 8098E780  2C 00 00 04 */	cmpwi r0, 4
/* 8098E784  40 80 00 2C */	bge lbl_8098E7B0
/* 8098E788  48 00 00 0C */	b lbl_8098E794
lbl_8098E78C:
/* 8098E78C  3B C0 00 01 */	li r30, 1
/* 8098E790  48 00 00 20 */	b lbl_8098E7B0
lbl_8098E794:
/* 8098E794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098E798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098E79C  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 8098E7A0  2C 00 00 03 */	cmpwi r0, 3
/* 8098E7A4  40 82 00 0C */	bne lbl_8098E7B0
/* 8098E7A8  C1 04 04 1C */	lfs f8, 0x41c(r4)
/* 8098E7AC  C1 24 04 20 */	lfs f9, 0x420(r4)
lbl_8098E7B0:
/* 8098E7B0  28 05 00 00 */	cmplwi r5, 0
/* 8098E7B4  41 82 00 4C */	beq lbl_8098E800
/* 8098E7B8  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 8098E7BC  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 8098E7C0  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 8098E7C4  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 8098E7C8  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 8098E7CC  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 8098E7D0  A8 1C 0E 02 */	lha r0, 0xe02(r28)
/* 8098E7D4  2C 00 00 02 */	cmpwi r0, 2
/* 8098E7D8  41 82 00 1C */	beq lbl_8098E7F4
/* 8098E7DC  2C 00 00 03 */	cmpwi r0, 3
/* 8098E7E0  41 82 00 14 */	beq lbl_8098E7F4
/* 8098E7E4  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 8098E7E8  C0 04 04 24 */	lfs f0, 0x424(r4)
/* 8098E7EC  EC 05 00 28 */	fsubs f0, f5, f0
/* 8098E7F0  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_8098E7F4:
/* 8098E7F4  38 1C 08 78 */	addi r0, r28, 0x878
/* 8098E7F8  90 1C 0C 0C */	stw r0, 0xc0c(r28)
/* 8098E7FC  48 00 00 0C */	b lbl_8098E808
lbl_8098E800:
/* 8098E800  38 00 00 00 */	li r0, 0
/* 8098E804  90 1C 0C 0C */	stw r0, 0xc0c(r28)
lbl_8098E808:
/* 8098E808  D0 C1 00 08 */	stfs f6, 8(r1)
/* 8098E80C  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 8098E810  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 8098E814  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 8098E818  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 8098E81C  C0 A4 00 84 */	lfs f5, 0x84(r4)
/* 8098E820  FC C0 28 90 */	fmr f6, f5
/* 8098E824  FC E0 28 90 */	fmr f7, f5
/* 8098E828  FD 00 28 90 */	fmr f8, f5
/* 8098E82C  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 8098E830  38 A1 00 24 */	addi r5, r1, 0x24
/* 8098E834  4B 7C 28 84 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 8098E838  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 8098E83C  7F 84 E3 78 */	mr r4, r28
/* 8098E840  38 BF 00 24 */	addi r5, r31, 0x24
/* 8098E844  38 C1 00 18 */	addi r6, r1, 0x18
/* 8098E848  7F C7 F3 78 */	mr r7, r30
/* 8098E84C  7F A8 EB 78 */	mr r8, r29
/* 8098E850  39 20 00 00 */	li r9, 0
/* 8098E854  4B 7C 2A FC */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 8098E858  39 61 00 60 */	addi r11, r1, 0x60
/* 8098E85C  4B 9D 39 C8 */	b _restgpr_28
/* 8098E860  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8098E864  7C 08 03 A6 */	mtlr r0
/* 8098E868  38 21 00 60 */	addi r1, r1, 0x60
/* 8098E86C  4E 80 00 20 */	blr 

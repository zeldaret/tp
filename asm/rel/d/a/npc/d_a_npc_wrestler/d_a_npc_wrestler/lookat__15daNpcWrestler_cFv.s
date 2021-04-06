lbl_80B40B3C:
/* 80B40B3C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B40B40  7C 08 02 A6 */	mflr r0
/* 80B40B44  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B40B48  39 61 00 60 */	addi r11, r1, 0x60
/* 80B40B4C  4B 82 16 8D */	bl _savegpr_28
/* 80B40B50  7C 7C 1B 78 */	mr r28, r3
/* 80B40B54  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B40B58  38 83 16 DC */	addi r4, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B40B5C  38 A0 00 00 */	li r5, 0
/* 80B40B60  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B40B64  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B40B68  3B C0 00 00 */	li r30, 0
/* 80B40B6C  80 7C 0B D8 */	lwz r3, 0xbd8(r28)
/* 80B40B70  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80B40B74  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80B40B78  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80B40B7C  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80B40B80  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80B40B84  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80B40B88  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80B40B8C  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80B40B90  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80B40B94  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B40B98  7C 03 00 50 */	subf r0, r3, r0
/* 80B40B9C  7C 1D 07 34 */	extsh r29, r0
/* 80B40BA0  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80B40BA4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B40BA8  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80B40BAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B40BB0  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80B40BB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B40BB8  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80B40BBC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B40BC0  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80B40BC4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B40BC8  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80B40BCC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B40BD0  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80B40BD4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B40BD8  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80B40BDC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B40BE0  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80B40BE4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B40BE8  80 64 05 78 */	lwz r3, 0x578(r4)
/* 80B40BEC  80 04 05 7C */	lwz r0, 0x57c(r4)
/* 80B40BF0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B40BF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B40BF8  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80B40BFC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B40C00  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80B40C04  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B40C08  38 1C 09 20 */	addi r0, r28, 0x920
/* 80B40C0C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B40C10  38 1C 09 26 */	addi r0, r28, 0x926
/* 80B40C14  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B40C18  A8 1C 0E 90 */	lha r0, 0xe90(r28)
/* 80B40C1C  2C 00 00 01 */	cmpwi r0, 1
/* 80B40C20  41 82 00 18 */	beq lbl_80B40C38
/* 80B40C24  40 80 00 08 */	bge lbl_80B40C2C
/* 80B40C28  48 00 00 34 */	b lbl_80B40C5C
lbl_80B40C2C:
/* 80B40C2C  2C 00 00 04 */	cmpwi r0, 4
/* 80B40C30  40 80 00 2C */	bge lbl_80B40C5C
/* 80B40C34  48 00 00 0C */	b lbl_80B40C40
lbl_80B40C38:
/* 80B40C38  3B C0 00 01 */	li r30, 1
/* 80B40C3C  48 00 00 20 */	b lbl_80B40C5C
lbl_80B40C40:
/* 80B40C40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B40C44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B40C48  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80B40C4C  2C 00 00 03 */	cmpwi r0, 3
/* 80B40C50  40 82 00 0C */	bne lbl_80B40C5C
/* 80B40C54  C1 04 06 9C */	lfs f8, 0x69c(r4)
/* 80B40C58  C1 24 06 38 */	lfs f9, 0x638(r4)
lbl_80B40C5C:
/* 80B40C5C  28 05 00 00 */	cmplwi r5, 0
/* 80B40C60  41 82 00 4C */	beq lbl_80B40CAC
/* 80B40C64  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80B40C68  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80B40C6C  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80B40C70  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80B40C74  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80B40C78  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80B40C7C  A8 1C 0E 90 */	lha r0, 0xe90(r28)
/* 80B40C80  2C 00 00 02 */	cmpwi r0, 2
/* 80B40C84  41 82 00 1C */	beq lbl_80B40CA0
/* 80B40C88  2C 00 00 03 */	cmpwi r0, 3
/* 80B40C8C  41 82 00 14 */	beq lbl_80B40CA0
/* 80B40C90  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80B40C94  C0 04 06 20 */	lfs f0, 0x620(r4)
/* 80B40C98  EC 05 00 28 */	fsubs f0, f5, f0
/* 80B40C9C  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80B40CA0:
/* 80B40CA0  38 1C 08 78 */	addi r0, r28, 0x878
/* 80B40CA4  90 1C 0C 14 */	stw r0, 0xc14(r28)
/* 80B40CA8  48 00 00 0C */	b lbl_80B40CB4
lbl_80B40CAC:
/* 80B40CAC  38 00 00 00 */	li r0, 0
/* 80B40CB0  90 1C 0C 14 */	stw r0, 0xc14(r28)
lbl_80B40CB4:
/* 80B40CB4  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80B40CB8  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80B40CBC  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80B40CC0  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80B40CC4  38 7C 0B E4 */	addi r3, r28, 0xbe4
/* 80B40CC8  C0 A4 01 B8 */	lfs f5, 0x1b8(r4)
/* 80B40CCC  FC C0 28 90 */	fmr f6, f5
/* 80B40CD0  FC E0 28 90 */	fmr f7, f5
/* 80B40CD4  FD 00 28 90 */	fmr f8, f5
/* 80B40CD8  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B40CDC  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B40CE0  4B 61 03 D9 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80B40CE4  38 7C 0B E4 */	addi r3, r28, 0xbe4
/* 80B40CE8  7F 84 E3 78 */	mr r4, r28
/* 80B40CEC  38 BF 00 24 */	addi r5, r31, 0x24
/* 80B40CF0  38 C1 00 18 */	addi r6, r1, 0x18
/* 80B40CF4  7F C7 F3 78 */	mr r7, r30
/* 80B40CF8  7F A8 EB 78 */	mr r8, r29
/* 80B40CFC  39 20 00 00 */	li r9, 0
/* 80B40D00  4B 61 06 51 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80B40D04  39 61 00 60 */	addi r11, r1, 0x60
/* 80B40D08  4B 82 15 1D */	bl _restgpr_28
/* 80B40D0C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B40D10  7C 08 03 A6 */	mtlr r0
/* 80B40D14  38 21 00 60 */	addi r1, r1, 0x60
/* 80B40D18  4E 80 00 20 */	blr 

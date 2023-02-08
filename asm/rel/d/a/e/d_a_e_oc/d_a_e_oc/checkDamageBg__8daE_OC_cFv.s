lbl_8072D994:
/* 8072D994  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8072D998  7C 08 02 A6 */	mflr r0
/* 8072D99C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8072D9A0  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8072D9A4  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8072D9A8  7C 7F 1B 78 */	mr r31, r3
/* 8072D9AC  3C 60 80 73 */	lis r3, lit_3911@ha /* 0x80735B28@ha */
/* 8072D9B0  3B C3 5B 28 */	addi r30, r3, lit_3911@l /* 0x80735B28@l */
/* 8072D9B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8072D9B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8072D9BC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8072D9C0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8072D9C4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8072D9C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8072D9CC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8072D9D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8072D9D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8072D9D8  38 61 00 14 */	addi r3, r1, 0x14
/* 8072D9DC  4B 8D F3 89 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8072D9E0  38 7F 06 88 */	addi r3, r31, 0x688
/* 8072D9E4  4B 8D F5 61 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8072D9E8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8072D9EC  4B 8D F5 59 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8072D9F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072D9F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072D9F8  A8 9F 06 D8 */	lha r4, 0x6d8(r31)
/* 8072D9FC  4B 8D EA 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 8072DA00  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8072DA04  FC 40 08 90 */	fmr f2, f1
/* 8072DA08  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 8072DA0C  4B 8D F3 91 */	bl transM__14mDoMtx_stack_cFfff
/* 8072DA10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072DA14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072DA18  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8072DA1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8072DA20  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8072DA24  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8072DA28  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8072DA2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8072DA30  38 61 00 34 */	addi r3, r1, 0x34
/* 8072DA34  4B 94 A2 35 */	bl __ct__11dBgS_LinChkFv
/* 8072DA38  38 61 00 34 */	addi r3, r1, 0x34
/* 8072DA3C  38 81 00 14 */	addi r4, r1, 0x14
/* 8072DA40  38 A1 00 08 */	addi r5, r1, 8
/* 8072DA44  7F E6 FB 78 */	mr r6, r31
/* 8072DA48  4B 94 A3 1D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8072DA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072DA50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072DA54  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8072DA58  7F C3 F3 78 */	mr r3, r30
/* 8072DA5C  38 81 00 34 */	addi r4, r1, 0x34
/* 8072DA60  4B 94 69 55 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8072DA64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072DA68  41 82 00 84 */	beq lbl_8072DAEC
/* 8072DA6C  A8 1F 06 BE */	lha r0, 0x6be(r31)
/* 8072DA70  2C 00 00 00 */	cmpwi r0, 0
/* 8072DA74  40 82 00 68 */	bne lbl_8072DADC
/* 8072DA78  3C 60 80 73 */	lis r3, __vt__8cM3dGPla@ha /* 0x80735FE0@ha */
/* 8072DA7C  38 03 5F E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80735FE0@l */
/* 8072DA80  90 01 00 30 */	stw r0, 0x30(r1)
/* 8072DA84  7F C3 F3 78 */	mr r3, r30
/* 8072DA88  38 81 00 48 */	addi r4, r1, 0x48
/* 8072DA8C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8072DA90  4B 94 6C B5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8072DA94  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8072DA98  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8072DA9C  4B B3 9B D9 */	bl cM_atan2s__Fff
/* 8072DAA0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8072DAA4  3C 84 00 01 */	addis r4, r4, 1
/* 8072DAA8  38 04 80 00 */	addi r0, r4, -32768
/* 8072DAAC  7C 00 07 34 */	extsh r0, r0
/* 8072DAB0  7C 00 18 50 */	subf r0, r0, r3
/* 8072DAB4  7C 00 07 35 */	extsh. r0, r0
/* 8072DAB8  40 81 00 10 */	ble lbl_8072DAC8
/* 8072DABC  38 00 04 00 */	li r0, 0x400
/* 8072DAC0  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 8072DAC4  48 00 00 0C */	b lbl_8072DAD0
lbl_8072DAC8:
/* 8072DAC8  38 00 FC 00 */	li r0, -1024
/* 8072DACC  B0 1F 06 BE */	sth r0, 0x6be(r31)
lbl_8072DAD0:
/* 8072DAD0  3C 60 80 73 */	lis r3, __vt__8cM3dGPla@ha /* 0x80735FE0@ha */
/* 8072DAD4  38 03 5F E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80735FE0@l */
/* 8072DAD8  90 01 00 30 */	stw r0, 0x30(r1)
lbl_8072DADC:
/* 8072DADC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8072DAE0  A8 1F 06 BE */	lha r0, 0x6be(r31)
/* 8072DAE4  7C 03 02 14 */	add r0, r3, r0
/* 8072DAE8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_8072DAEC:
/* 8072DAEC  38 61 00 34 */	addi r3, r1, 0x34
/* 8072DAF0  38 80 FF FF */	li r4, -1
/* 8072DAF4  4B 94 A1 E9 */	bl __dt__11dBgS_LinChkFv
/* 8072DAF8  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8072DAFC  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8072DB00  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8072DB04  7C 08 03 A6 */	mtlr r0
/* 8072DB08  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8072DB0C  4E 80 00 20 */	blr 

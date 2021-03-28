lbl_8078A588:
/* 8078A588  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8078A58C  7C 08 02 A6 */	mflr r0
/* 8078A590  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8078A594  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8078A598  4B BD 7C 44 */	b _savegpr_29
/* 8078A59C  7C 7D 1B 78 */	mr r29, r3
/* 8078A5A0  7C 9E 23 78 */	mr r30, r4
/* 8078A5A4  7C BF 2B 78 */	mr r31, r5
/* 8078A5A8  38 61 00 20 */	addi r3, r1, 0x20
/* 8078A5AC  4B 8E D6 BC */	b __ct__11dBgS_LinChkFv
/* 8078A5B0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8078A5B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8078A5B8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8078A5BC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8078A5C0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8078A5C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8078A5C8  3C 60 80 79 */	lis r3, lit_3901@ha
/* 8078A5CC  C0 03 DD C4 */	lfs f0, lit_3901@l(r3)
/* 8078A5D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8078A5D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8078A5D8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8078A5DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8078A5E0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8078A5E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8078A5E8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8078A5EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8078A5F0  38 61 00 20 */	addi r3, r1, 0x20
/* 8078A5F4  38 81 00 14 */	addi r4, r1, 0x14
/* 8078A5F8  38 A1 00 08 */	addi r5, r1, 8
/* 8078A5FC  7F A6 EB 78 */	mr r6, r29
/* 8078A600  4B 8E D7 64 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8078A604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078A608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8078A60C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8078A610  38 81 00 20 */	addi r4, r1, 0x20
/* 8078A614  4B 8E 9D A0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8078A618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8078A61C  41 82 00 38 */	beq lbl_8078A654
/* 8078A620  28 1F 00 00 */	cmplwi r31, 0
/* 8078A624  41 82 00 1C */	beq lbl_8078A640
/* 8078A628  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8078A62C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8078A630  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8078A634  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8078A638  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8078A63C  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8078A640:
/* 8078A640  38 61 00 20 */	addi r3, r1, 0x20
/* 8078A644  38 80 FF FF */	li r4, -1
/* 8078A648  4B 8E D6 94 */	b __dt__11dBgS_LinChkFv
/* 8078A64C  38 60 00 01 */	li r3, 1
/* 8078A650  48 00 00 14 */	b lbl_8078A664
lbl_8078A654:
/* 8078A654  38 61 00 20 */	addi r3, r1, 0x20
/* 8078A658  38 80 FF FF */	li r4, -1
/* 8078A65C  4B 8E D6 80 */	b __dt__11dBgS_LinChkFv
/* 8078A660  38 60 00 00 */	li r3, 0
lbl_8078A664:
/* 8078A664  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8078A668  4B BD 7B C0 */	b _restgpr_29
/* 8078A66C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8078A670  7C 08 03 A6 */	mtlr r0
/* 8078A674  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8078A678  4E 80 00 20 */	blr 

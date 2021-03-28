lbl_807E8560:
/* 807E8560  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807E8564  7C 08 02 A6 */	mflr r0
/* 807E8568  90 01 00 94 */	stw r0, 0x94(r1)
/* 807E856C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807E8570  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E8574  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 807E8578  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807E857C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807E8580  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E8584  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807E8588  C0 03 F7 70 */	lfs f0, lit_3905@l(r3)
/* 807E858C  EC 01 00 2A */	fadds f0, f1, f0
/* 807E8590  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E8594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E8598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E859C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E85A0  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 807E85A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E85A8  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 807E85AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E85B0  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 807E85B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E85B8  38 61 00 20 */	addi r3, r1, 0x20
/* 807E85BC  4B 88 F6 AC */	b __ct__11dBgS_LinChkFv
/* 807E85C0  38 61 00 20 */	addi r3, r1, 0x20
/* 807E85C4  38 81 00 14 */	addi r4, r1, 0x14
/* 807E85C8  38 A1 00 08 */	addi r5, r1, 8
/* 807E85CC  38 C0 00 00 */	li r6, 0
/* 807E85D0  4B 88 F7 94 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807E85D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E85D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E85DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807E85E0  38 81 00 20 */	addi r4, r1, 0x20
/* 807E85E4  4B 88 BD D0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807E85E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E85EC  41 82 00 18 */	beq lbl_807E8604
/* 807E85F0  38 61 00 20 */	addi r3, r1, 0x20
/* 807E85F4  38 80 FF FF */	li r4, -1
/* 807E85F8  4B 88 F6 E4 */	b __dt__11dBgS_LinChkFv
/* 807E85FC  38 60 00 00 */	li r3, 0
/* 807E8600  48 00 00 14 */	b lbl_807E8614
lbl_807E8604:
/* 807E8604  38 61 00 20 */	addi r3, r1, 0x20
/* 807E8608  38 80 FF FF */	li r4, -1
/* 807E860C  4B 88 F6 D0 */	b __dt__11dBgS_LinChkFv
/* 807E8610  38 60 00 01 */	li r3, 1
lbl_807E8614:
/* 807E8614  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807E8618  7C 08 03 A6 */	mtlr r0
/* 807E861C  38 21 00 90 */	addi r1, r1, 0x90
/* 807E8620  4E 80 00 20 */	blr 

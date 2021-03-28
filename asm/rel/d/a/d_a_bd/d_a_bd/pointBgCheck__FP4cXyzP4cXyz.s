lbl_804D7518:
/* 804D7518  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804D751C  7C 08 02 A6 */	mflr r0
/* 804D7520  90 01 00 94 */	stw r0, 0x94(r1)
/* 804D7524  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 804D7528  93 C1 00 88 */	stw r30, 0x88(r1)
/* 804D752C  7C 7E 1B 78 */	mr r30, r3
/* 804D7530  7C 9F 23 78 */	mr r31, r4
/* 804D7534  38 61 00 14 */	addi r3, r1, 0x14
/* 804D7538  4B BA 07 30 */	b __ct__11dBgS_LinChkFv
/* 804D753C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804D7540  D0 01 00 08 */	stfs f0, 8(r1)
/* 804D7544  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804D7548  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D754C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804D7550  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804D7554  3C 60 80 4E */	lis r3, lit_4170@ha
/* 804D7558  C0 03 9E A4 */	lfs f0, lit_4170@l(r3)
/* 804D755C  EC 01 00 2A */	fadds f0, f1, f0
/* 804D7560  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804D7564  38 61 00 14 */	addi r3, r1, 0x14
/* 804D7568  7F C4 F3 78 */	mr r4, r30
/* 804D756C  38 A1 00 08 */	addi r5, r1, 8
/* 804D7570  38 C0 00 00 */	li r6, 0
/* 804D7574  4B BA 07 F0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804D7578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D757C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D7580  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804D7584  38 81 00 14 */	addi r4, r1, 0x14
/* 804D7588  4B B9 CE 2C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804D758C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D7590  41 82 00 18 */	beq lbl_804D75A8
/* 804D7594  38 61 00 14 */	addi r3, r1, 0x14
/* 804D7598  38 80 FF FF */	li r4, -1
/* 804D759C  4B BA 07 40 */	b __dt__11dBgS_LinChkFv
/* 804D75A0  38 60 00 01 */	li r3, 1
/* 804D75A4  48 00 00 14 */	b lbl_804D75B8
lbl_804D75A8:
/* 804D75A8  38 61 00 14 */	addi r3, r1, 0x14
/* 804D75AC  38 80 FF FF */	li r4, -1
/* 804D75B0  4B BA 07 2C */	b __dt__11dBgS_LinChkFv
/* 804D75B4  38 60 00 00 */	li r3, 0
lbl_804D75B8:
/* 804D75B8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 804D75BC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 804D75C0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804D75C4  7C 08 03 A6 */	mtlr r0
/* 804D75C8  38 21 00 90 */	addi r1, r1, 0x90
/* 804D75CC  4E 80 00 20 */	blr 

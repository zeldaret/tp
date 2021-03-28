lbl_8065ADB0:
/* 8065ADB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065ADB4  7C 08 02 A6 */	mflr r0
/* 8065ADB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065ADBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8065ADC0  4B D0 74 1C */	b _savegpr_29
/* 8065ADC4  7C 7D 1B 78 */	mr r29, r3
/* 8065ADC8  88 03 0C A5 */	lbz r0, 0xca5(r3)
/* 8065ADCC  28 00 00 00 */	cmplwi r0, 0
/* 8065ADD0  41 82 00 0C */	beq lbl_8065ADDC
/* 8065ADD4  38 60 00 00 */	li r3, 0
/* 8065ADD8  48 00 00 98 */	b lbl_8065AE70
lbl_8065ADDC:
/* 8065ADDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065ADE0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8065ADE4  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 8065ADE8  7F C3 F3 78 */	mr r3, r30
/* 8065ADEC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8065ADF0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8065ADF4  7D 89 03 A6 */	mtctr r12
/* 8065ADF8  4E 80 04 21 */	bctrl 
/* 8065ADFC  28 03 00 00 */	cmplwi r3, 0
/* 8065AE00  40 82 00 0C */	bne lbl_8065AE0C
/* 8065AE04  38 60 00 00 */	li r3, 0
/* 8065AE08  48 00 00 68 */	b lbl_8065AE70
lbl_8065AE0C:
/* 8065AE0C  7F A3 EB 78 */	mr r3, r29
/* 8065AE10  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8065AE14  4B 9B F9 CC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8065AE18  3C 60 80 66 */	lis r3, lit_5049@ha
/* 8065AE1C  C0 03 2E 48 */	lfs f0, lit_5049@l(r3)
/* 8065AE20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065AE24  40 80 00 48 */	bge lbl_8065AE6C
/* 8065AE28  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 8065AE2C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8065AE30  41 82 00 3C */	beq lbl_8065AE6C
/* 8065AE34  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001F@ha */
/* 8065AE38  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0005001F@l */
/* 8065AE3C  90 01 00 08 */	stw r0, 8(r1)
/* 8065AE40  38 7D 05 7C */	addi r3, r29, 0x57c
/* 8065AE44  38 81 00 08 */	addi r4, r1, 8
/* 8065AE48  38 A0 FF FF */	li r5, -1
/* 8065AE4C  81 9D 05 7C */	lwz r12, 0x57c(r29)
/* 8065AE50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065AE54  7D 89 03 A6 */	mtctr r12
/* 8065AE58  4E 80 04 21 */	bctrl 
/* 8065AE5C  38 00 00 32 */	li r0, 0x32
/* 8065AE60  98 1D 0C A3 */	stb r0, 0xca3(r29)
/* 8065AE64  38 60 00 01 */	li r3, 1
/* 8065AE68  48 00 00 08 */	b lbl_8065AE70
lbl_8065AE6C:
/* 8065AE6C  38 60 00 00 */	li r3, 0
lbl_8065AE70:
/* 8065AE70  39 61 00 20 */	addi r11, r1, 0x20
/* 8065AE74  4B D0 73 B4 */	b _restgpr_29
/* 8065AE78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065AE7C  7C 08 03 A6 */	mtlr r0
/* 8065AE80  38 21 00 20 */	addi r1, r1, 0x20
/* 8065AE84  4E 80 00 20 */	blr 

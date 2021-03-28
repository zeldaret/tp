lbl_8032DA1C:
/* 8032DA1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032DA20  7C 08 02 A6 */	mflr r0
/* 8032DA24  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032DA28  39 61 00 30 */	addi r11, r1, 0x30
/* 8032DA2C  48 03 47 A1 */	bl _savegpr_25
/* 8032DA30  7C 9C 23 78 */	mr r28, r4
/* 8032DA34  7C BD 2B 78 */	mr r29, r5
/* 8032DA38  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8032DA3C  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 8032DA40  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8032DA44  90 9C 00 28 */	stw r4, 0x28(r28)
/* 8032DA48  80 A5 00 00 */	lwz r5, 0(r5)
/* 8032DA4C  80 9C 00 00 */	lwz r4, 0(r28)
/* 8032DA50  80 04 00 04 */	lwz r0, 4(r4)
/* 8032DA54  83 FC 00 30 */	lwz r31, 0x30(r28)
/* 8032DA58  83 DC 00 24 */	lwz r30, 0x24(r28)
/* 8032DA5C  38 80 00 00 */	li r4, 0
/* 8032DA60  C0 02 CA 6C */	lfs f0, lit_1578(r2)
/* 8032DA64  7C 09 03 A6 */	mtctr r0
/* 8032DA68  2C 00 00 00 */	cmpwi r0, 0
/* 8032DA6C  40 81 00 1C */	ble lbl_8032DA88
lbl_8032DA70:
/* 8032DA70  7C DE 22 14 */	add r6, r30, r4
/* 8032DA74  D0 06 00 00 */	stfs f0, 0(r6)
/* 8032DA78  D0 06 00 04 */	stfs f0, 4(r6)
/* 8032DA7C  D0 06 00 08 */	stfs f0, 8(r6)
/* 8032DA80  38 84 00 0C */	addi r4, r4, 0xc
/* 8032DA84  42 00 FF EC */	bdnz lbl_8032DA70
lbl_8032DA88:
/* 8032DA88  A0 05 00 1E */	lhz r0, 0x1e(r5)
/* 8032DA8C  28 00 00 00 */	cmplwi r0, 0
/* 8032DA90  41 82 00 4C */	beq lbl_8032DADC
/* 8032DA94  A3 45 00 1C */	lhz r26, 0x1c(r5)
/* 8032DA98  3B 20 00 00 */	li r25, 0
/* 8032DA9C  83 A3 00 24 */	lwz r29, 0x24(r3)
/* 8032DAA0  83 63 00 0C */	lwz r27, 0xc(r3)
/* 8032DAA4  48 00 00 28 */	b lbl_8032DACC
lbl_8032DAA8:
/* 8032DAA8  57 24 04 3E */	clrlwi r4, r25, 0x10
/* 8032DAAC  1C 04 00 14 */	mulli r0, r4, 0x14
/* 8032DAB0  7C 7D 02 14 */	add r3, r29, r0
/* 8032DAB4  1C 04 00 30 */	mulli r0, r4, 0x30
/* 8032DAB8  7C 9B 02 14 */	add r4, r27, r0
/* 8032DABC  7F E5 FB 78 */	mr r5, r31
/* 8032DAC0  7F C6 F3 78 */	mr r6, r30
/* 8032DAC4  4B FF EE 21 */	bl calcSkin_VtxNrmF32__12J3DSkinNListFPA4_fPvPv
/* 8032DAC8  3B 39 00 01 */	addi r25, r25, 1
lbl_8032DACC:
/* 8032DACC  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 8032DAD0  7C 00 D0 40 */	cmplw r0, r26
/* 8032DAD4  41 80 FF D4 */	blt lbl_8032DAA8
/* 8032DAD8  48 00 00 48 */	b lbl_8032DB20
lbl_8032DADC:
/* 8032DADC  A3 65 00 1C */	lhz r27, 0x1c(r5)
/* 8032DAE0  3B 20 00 00 */	li r25, 0
/* 8032DAE4  83 43 00 24 */	lwz r26, 0x24(r3)
/* 8032DAE8  48 00 00 2C */	b lbl_8032DB14
lbl_8032DAEC:
/* 8032DAEC  57 25 04 3E */	clrlwi r5, r25, 0x10
/* 8032DAF0  1C 05 00 14 */	mulli r0, r5, 0x14
/* 8032DAF4  7C 7A 02 14 */	add r3, r26, r0
/* 8032DAF8  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8032DAFC  1C 05 00 30 */	mulli r0, r5, 0x30
/* 8032DB00  7C 84 02 14 */	add r4, r4, r0
/* 8032DB04  7F E5 FB 78 */	mr r5, r31
/* 8032DB08  7F C6 F3 78 */	mr r6, r30
/* 8032DB0C  4B FF ED D9 */	bl calcSkin_VtxNrmF32__12J3DSkinNListFPA4_fPvPv
/* 8032DB10  3B 39 00 01 */	addi r25, r25, 1
lbl_8032DB14:
/* 8032DB14  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 8032DB18  7C 00 D8 40 */	cmplw r0, r27
/* 8032DB1C  41 80 FF D0 */	blt lbl_8032DAEC
lbl_8032DB20:
/* 8032DB20  80 7C 00 00 */	lwz r3, 0(r28)
/* 8032DB24  80 03 00 04 */	lwz r0, 4(r3)
/* 8032DB28  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8032DB2C  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8032DB30  48 00 DA AD */	bl DCStoreRange
/* 8032DB34  93 DC 00 30 */	stw r30, 0x30(r28)
/* 8032DB38  39 61 00 30 */	addi r11, r1, 0x30
/* 8032DB3C  48 03 46 DD */	bl _restgpr_25
/* 8032DB40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032DB44  7C 08 03 A6 */	mtlr r0
/* 8032DB48  38 21 00 30 */	addi r1, r1, 0x30
/* 8032DB4C  4E 80 00 20 */	blr 

lbl_80A2DCB4:
/* 80A2DCB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2DCB8  7C 08 02 A6 */	mflr r0
/* 80A2DCBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2DCC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2DCC4  4B 93 45 14 */	b _savegpr_28
/* 80A2DCC8  7C 7C 1B 78 */	mr r28, r3
/* 80A2DCCC  7C 9D 23 78 */	mr r29, r4
/* 80A2DCD0  3B C0 00 02 */	li r30, 2
lbl_80A2DCD4:
/* 80A2DCD4  3B FE 00 5A */	addi r31, r30, 0x5a
/* 80A2DCD8  7F E3 FB 78 */	mr r3, r31
/* 80A2DCDC  4B 71 EE 90 */	b daNpcT_chkTmpBit__FUl
/* 80A2DCE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A2DCE4  41 82 00 44 */	beq lbl_80A2DD28
/* 80A2DCE8  7F C3 F3 78 */	mr r3, r30
/* 80A2DCEC  3C 80 80 A4 */	lis r4, lit_4204@ha
/* 80A2DCF0  C0 24 09 00 */	lfs f1, lit_4204@l(r4)
/* 80A2DCF4  38 80 00 00 */	li r4, 0
/* 80A2DCF8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80A2DCFC  7C 05 07 74 */	extsb r5, r0
/* 80A2DD00  38 C0 00 00 */	li r6, 0
/* 80A2DD04  38 E0 FF FF */	li r7, -1
/* 80A2DD08  4B 5F 94 68 */	b dStage_changeScene__FifUlScsi
/* 80A2DD0C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A2DD10  41 82 00 48 */	beq lbl_80A2DD58
/* 80A2DD14  7F E3 FB 78 */	mr r3, r31
/* 80A2DD18  4B 71 EE 14 */	b daNpcT_offTmpBit__FUl
/* 80A2DD1C  38 7E 01 EA */	addi r3, r30, 0x1ea
/* 80A2DD20  4B 71 ED 0C */	b daNpcT_onEvtBit__FUl
/* 80A2DD24  48 00 00 34 */	b lbl_80A2DD58
lbl_80A2DD28:
/* 80A2DD28  3B DE 00 01 */	addi r30, r30, 1
/* 80A2DD2C  2C 1E 00 07 */	cmpwi r30, 7
/* 80A2DD30  40 81 FF A4 */	ble lbl_80A2DCD4
/* 80A2DD34  38 60 00 01 */	li r3, 1
/* 80A2DD38  3C 80 80 A4 */	lis r4, lit_4204@ha
/* 80A2DD3C  C0 24 09 00 */	lfs f1, lit_4204@l(r4)
/* 80A2DD40  38 80 00 00 */	li r4, 0
/* 80A2DD44  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80A2DD48  7C 05 07 74 */	extsb r5, r0
/* 80A2DD4C  38 C0 00 00 */	li r6, 0
/* 80A2DD50  38 E0 FF FF */	li r7, -1
/* 80A2DD54  4B 5F 94 1C */	b dStage_changeScene__FifUlScsi
lbl_80A2DD58:
/* 80A2DD58  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2DD5C  4B 93 44 C8 */	b _restgpr_28
/* 80A2DD60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2DD64  7C 08 03 A6 */	mtlr r0
/* 80A2DD68  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2DD6C  4E 80 00 20 */	blr 

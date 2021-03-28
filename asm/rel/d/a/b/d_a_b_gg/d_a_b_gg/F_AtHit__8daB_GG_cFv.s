lbl_805EA9AC:
/* 805EA9AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EA9B0  7C 08 02 A6 */	mflr r0
/* 805EA9B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EA9B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805EA9BC  4B D7 78 1C */	b _savegpr_28
/* 805EA9C0  7C 7F 1B 78 */	mr r31, r3
/* 805EA9C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EA9C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EA9CC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 805EA9D0  A8 7F 06 5A */	lha r3, 0x65a(r31)
/* 805EA9D4  38 03 FF FF */	addi r0, r3, -1
/* 805EA9D8  B0 1F 06 5A */	sth r0, 0x65a(r31)
/* 805EA9DC  A8 1F 06 5A */	lha r0, 0x65a(r31)
/* 805EA9E0  2C 00 00 00 */	cmpwi r0, 0
/* 805EA9E4  41 81 00 0C */	bgt lbl_805EA9F0
/* 805EA9E8  38 00 00 00 */	li r0, 0
/* 805EA9EC  B0 1F 06 5A */	sth r0, 0x65a(r31)
lbl_805EA9F0:
/* 805EA9F0  A8 1F 06 5A */	lha r0, 0x65a(r31)
/* 805EA9F4  2C 00 00 00 */	cmpwi r0, 0
/* 805EA9F8  40 81 00 38 */	ble lbl_805EAA30
/* 805EA9FC  3B A0 00 00 */	li r29, 0
/* 805EAA00  3B C0 00 00 */	li r30, 0
lbl_805EAA04:
/* 805EAA04  38 7E 08 14 */	addi r3, r30, 0x814
/* 805EAA08  7C 7F 1A 14 */	add r3, r31, r3
/* 805EAA0C  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 805EAA10  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805EAA14  7D 89 03 A6 */	mtctr r12
/* 805EAA18  4E 80 04 21 */	bctrl 
/* 805EAA1C  3B BD 00 01 */	addi r29, r29, 1
/* 805EAA20  2C 1D 00 03 */	cmpwi r29, 3
/* 805EAA24  3B DE 01 38 */	addi r30, r30, 0x138
/* 805EAA28  41 80 FF DC */	blt lbl_805EAA04
/* 805EAA2C  48 00 00 B8 */	b lbl_805EAAE4
lbl_805EAA30:
/* 805EAA30  3B 80 00 00 */	li r28, 0
/* 805EAA34  3B C0 00 00 */	li r30, 0
lbl_805EAA38:
/* 805EAA38  38 7E 08 14 */	addi r3, r30, 0x814
/* 805EAA3C  7C 7F 1A 14 */	add r3, r31, r3
/* 805EAA40  4B A9 98 80 */	b ChkAtHit__12dCcD_GObjInfFv
/* 805EAA44  28 03 00 00 */	cmplwi r3, 0
/* 805EAA48  41 82 00 8C */	beq lbl_805EAAD4
/* 805EAA4C  7F A3 EB 78 */	mr r3, r29
/* 805EAA50  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805EAA54  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 805EAA58  7D 89 03 A6 */	mtctr r12
/* 805EAA5C  4E 80 04 21 */	bctrl 
/* 805EAA60  2C 03 00 00 */	cmpwi r3, 0
/* 805EAA64  40 82 00 70 */	bne lbl_805EAAD4
/* 805EAA68  88 1F 05 C5 */	lbz r0, 0x5c5(r31)
/* 805EAA6C  28 00 00 00 */	cmplwi r0, 0
/* 805EAA70  41 82 00 58 */	beq lbl_805EAAC8
/* 805EAA74  28 00 00 01 */	cmplwi r0, 1
/* 805EAA78  40 82 00 50 */	bne lbl_805EAAC8
/* 805EAA7C  7C 7F F2 14 */	add r3, r31, r30
/* 805EAA80  88 03 08 8B */	lbz r0, 0x88b(r3)
/* 805EAA84  2C 00 00 00 */	cmpwi r0, 0
/* 805EAA88  40 82 00 40 */	bne lbl_805EAAC8
/* 805EAA8C  7F A3 EB 78 */	mr r3, r29
/* 805EAA90  3C 80 80 5F */	lis r4, data_805ED730@ha
/* 805EAA94  38 84 D7 30 */	addi r4, r4, data_805ED730@l
/* 805EAA98  A8 84 00 00 */	lha r4, 0(r4)
/* 805EAA9C  3C A0 80 5F */	lis r5, lit_5884@ha
/* 805EAAA0  C0 25 D2 F4 */	lfs f1, lit_5884@l(r5)
/* 805EAAA4  3C A0 80 5F */	lis r5, lit_5784@ha
/* 805EAAA8  C0 45 D2 E8 */	lfs f2, lit_5784@l(r5)
/* 805EAAAC  38 A0 00 00 */	li r5, 0
/* 805EAAB0  38 C0 00 00 */	li r6, 0
/* 805EAAB4  38 E0 00 00 */	li r7, 0
/* 805EAAB8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805EAABC  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 805EAAC0  7D 89 03 A6 */	mtctr r12
/* 805EAAC4  4E 80 04 21 */	bctrl 
lbl_805EAAC8:
/* 805EAAC8  38 00 00 14 */	li r0, 0x14
/* 805EAACC  B0 1F 06 5A */	sth r0, 0x65a(r31)
/* 805EAAD0  48 00 00 14 */	b lbl_805EAAE4
lbl_805EAAD4:
/* 805EAAD4  3B 9C 00 01 */	addi r28, r28, 1
/* 805EAAD8  2C 1C 00 03 */	cmpwi r28, 3
/* 805EAADC  3B DE 01 38 */	addi r30, r30, 0x138
/* 805EAAE0  41 80 FF 58 */	blt lbl_805EAA38
lbl_805EAAE4:
/* 805EAAE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805EAAE8  4B D7 77 3C */	b _restgpr_28
/* 805EAAEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EAAF0  7C 08 03 A6 */	mtlr r0
/* 805EAAF4  38 21 00 20 */	addi r1, r1, 0x20
/* 805EAAF8  4E 80 00 20 */	blr 

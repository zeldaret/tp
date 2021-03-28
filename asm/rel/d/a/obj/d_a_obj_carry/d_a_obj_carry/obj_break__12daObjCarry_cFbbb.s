lbl_80476940:
/* 80476940  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80476944  7C 08 02 A6 */	mflr r0
/* 80476948  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047694C  39 61 00 40 */	addi r11, r1, 0x40
/* 80476950  4B EE B8 84 */	b _savegpr_27
/* 80476954  7C 7E 1B 78 */	mr r30, r3
/* 80476958  7C BB 2B 78 */	mr r27, r5
/* 8047695C  7C DF 33 78 */	mr r31, r6
/* 80476960  A0 63 0D 16 */	lhz r3, 0xd16(r3)
/* 80476964  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80476968  7C 1D 03 78 */	mr r29, r0
/* 8047696C  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80476970  7C 1C 03 78 */	mr r28, r0
/* 80476974  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80476978  41 82 00 94 */	beq lbl_80476A0C
/* 8047697C  A0 1E 0D 18 */	lhz r0, 0xd18(r30)
/* 80476980  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80476984  40 82 00 40 */	bne lbl_804769C4
/* 80476988  38 61 00 18 */	addi r3, r1, 0x18
/* 8047698C  38 80 00 00 */	li r4, 0
/* 80476990  A8 BE 04 B6 */	lha r5, 0x4b6(r30)
/* 80476994  38 C0 00 00 */	li r6, 0
/* 80476998  4B DF 0A 5C */	b __ct__5csXyzFsss
/* 8047699C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804769A0  7F A4 EB 78 */	mr r4, r29
/* 804769A4  7F 85 E3 78 */	mr r5, r28
/* 804769A8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 804769AC  7C 06 07 74 */	extsb r6, r0
/* 804769B0  38 E1 00 18 */	addi r7, r1, 0x18
/* 804769B4  39 00 00 00 */	li r8, 0
/* 804769B8  39 20 00 00 */	li r9, 0
/* 804769BC  4B BA 58 84 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 804769C0  48 00 00 4C */	b lbl_80476A0C
lbl_804769C4:
/* 804769C4  38 61 00 10 */	addi r3, r1, 0x10
/* 804769C8  38 80 00 00 */	li r4, 0
/* 804769CC  A8 BE 04 B6 */	lha r5, 0x4b6(r30)
/* 804769D0  38 C0 00 00 */	li r6, 0
/* 804769D4  4B DF 0A 20 */	b __ct__5csXyzFsss
/* 804769D8  38 00 00 00 */	li r0, 0
/* 804769DC  90 01 00 08 */	stw r0, 8(r1)
/* 804769E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804769E4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804769E8  7F A4 EB 78 */	mr r4, r29
/* 804769EC  7F 85 E3 78 */	mr r5, r28
/* 804769F0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 804769F4  7C 06 07 74 */	extsb r6, r0
/* 804769F8  38 E1 00 10 */	addi r7, r1, 0x10
/* 804769FC  39 00 00 00 */	li r8, 0
/* 80476A00  39 20 00 00 */	li r9, 0
/* 80476A04  39 40 00 00 */	li r10, 0
/* 80476A08  4B BA 55 5C */	b fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
lbl_80476A0C:
/* 80476A0C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80476A10  41 82 00 18 */	beq lbl_80476A28
/* 80476A14  7F C3 F3 78 */	mr r3, r30
/* 80476A18  4B BA 61 88 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80476A1C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80476A20  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80476A24  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80476A28:
/* 80476A28  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80476A2C  41 82 00 18 */	beq lbl_80476A44
/* 80476A30  7F C3 F3 78 */	mr r3, r30
/* 80476A34  48 00 26 F5 */	bl eff_break_call__12daObjCarry_cFv
/* 80476A38  7F C3 F3 78 */	mr r3, r30
/* 80476A3C  38 80 00 00 */	li r4, 0
/* 80476A40  48 00 0E C1 */	bl se_break__12daObjCarry_cFP13cBgS_PolyInfo
lbl_80476A44:
/* 80476A44  39 61 00 40 */	addi r11, r1, 0x40
/* 80476A48  4B EE B7 D8 */	b _restgpr_27
/* 80476A4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80476A50  7C 08 03 A6 */	mtlr r0
/* 80476A54  38 21 00 40 */	addi r1, r1, 0x40
/* 80476A58  4E 80 00 20 */	blr 

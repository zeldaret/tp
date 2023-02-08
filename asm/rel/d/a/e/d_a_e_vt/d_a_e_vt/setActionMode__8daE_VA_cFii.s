lbl_807C3918:
/* 807C3918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807C391C  7C 08 02 A6 */	mflr r0
/* 807C3920  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C3924  39 61 00 20 */	addi r11, r1, 0x20
/* 807C3928  4B B9 E8 B5 */	bl _savegpr_29
/* 807C392C  7C 7D 1B 78 */	mr r29, r3
/* 807C3930  7C 9E 23 78 */	mr r30, r4
/* 807C3934  7C BF 2B 78 */	mr r31, r5
/* 807C3938  38 60 00 06 */	li r3, 6
/* 807C393C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807C3940  7C 04 07 74 */	extsb r4, r0
/* 807C3944  4B 86 A2 21 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 807C3948  2C 03 00 00 */	cmpwi r3, 0
/* 807C394C  41 82 00 4C */	beq lbl_807C3998
/* 807C3950  2C 1E 00 0D */	cmpwi r30, 0xd
/* 807C3954  41 82 00 44 */	beq lbl_807C3998
/* 807C3958  2C 1E 00 0E */	cmpwi r30, 0xe
/* 807C395C  41 82 00 3C */	beq lbl_807C3998
/* 807C3960  38 60 00 06 */	li r3, 6
/* 807C3964  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807C3968  7C 04 07 74 */	extsb r4, r0
/* 807C396C  4B 86 A1 95 */	bl dComIfGs_offOneZoneSwitch__Fii
/* 807C3970  38 60 00 07 */	li r3, 7
/* 807C3974  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807C3978  7C 04 07 74 */	extsb r4, r0
/* 807C397C  4B 86 A1 E9 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 807C3980  2C 03 00 00 */	cmpwi r3, 0
/* 807C3984  40 82 00 14 */	bne lbl_807C3998
/* 807C3988  38 60 00 07 */	li r3, 7
/* 807C398C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807C3990  7C 04 07 74 */	extsb r4, r0
/* 807C3994  4B 86 A1 09 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_807C3998:
/* 807C3998  38 00 00 00 */	li r0, 0
/* 807C399C  98 1D 13 81 */	stb r0, 0x1381(r29)
/* 807C39A0  93 DD 13 1C */	stw r30, 0x131c(r29)
/* 807C39A4  93 FD 13 20 */	stw r31, 0x1320(r29)
/* 807C39A8  98 1D 13 7F */	stb r0, 0x137f(r29)
/* 807C39AC  39 61 00 20 */	addi r11, r1, 0x20
/* 807C39B0  4B B9 E8 79 */	bl _restgpr_29
/* 807C39B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C39B8  7C 08 03 A6 */	mtlr r0
/* 807C39BC  38 21 00 20 */	addi r1, r1, 0x20
/* 807C39C0  4E 80 00 20 */	blr 

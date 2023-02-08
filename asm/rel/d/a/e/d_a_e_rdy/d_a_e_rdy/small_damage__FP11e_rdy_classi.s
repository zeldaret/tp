lbl_80773D2C:
/* 80773D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80773D30  7C 08 02 A6 */	mflr r0
/* 80773D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80773D38  39 61 00 20 */	addi r11, r1, 0x20
/* 80773D3C  4B BE E4 A1 */	bl _savegpr_29
/* 80773D40  7C 7D 1B 78 */	mr r29, r3
/* 80773D44  7C 9E 23 78 */	mr r30, r4
/* 80773D48  3C 60 80 78 */	lis r3, lit_4018@ha /* 0x80779DFC@ha */
/* 80773D4C  3B E3 9D FC */	addi r31, r3, lit_4018@l /* 0x80779DFC@l */
/* 80773D50  A8 1D 0A 42 */	lha r0, 0xa42(r29)
/* 80773D54  2C 00 00 14 */	cmpwi r0, 0x14
/* 80773D58  41 82 00 08 */	beq lbl_80773D60
/* 80773D5C  B0 1D 0A 44 */	sth r0, 0xa44(r29)
lbl_80773D60:
/* 80773D60  38 00 00 14 */	li r0, 0x14
/* 80773D64  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80773D68  38 00 00 00 */	li r0, 0
/* 80773D6C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80773D70  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070013@ha */
/* 80773D74  38 03 00 13 */	addi r0, r3, 0x0013 /* 0x00070013@l */
/* 80773D78  90 01 00 08 */	stw r0, 8(r1)
/* 80773D7C  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80773D80  38 81 00 08 */	addi r4, r1, 8
/* 80773D84  38 A0 FF FF */	li r5, -1
/* 80773D88  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 80773D8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80773D90  7D 89 03 A6 */	mtctr r12
/* 80773D94  4E 80 04 21 */	bctrl 
/* 80773D98  2C 1E 00 00 */	cmpwi r30, 0
/* 80773D9C  40 82 00 80 */	bne lbl_80773E1C
/* 80773DA0  A8 7D 0A 4C */	lha r3, 0xa4c(r29)
/* 80773DA4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80773DA8  7C 03 00 50 */	subf r0, r3, r0
/* 80773DAC  7C 00 07 34 */	extsh r0, r0
/* 80773DB0  2C 00 C0 00 */	cmpwi r0, -16384
/* 80773DB4  41 80 00 0C */	blt lbl_80773DC0
/* 80773DB8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80773DBC  40 81 00 20 */	ble lbl_80773DDC
lbl_80773DC0:
/* 80773DC0  7F A3 EB 78 */	mr r3, r29
/* 80773DC4  38 80 00 0F */	li r4, 0xf
/* 80773DC8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80773DCC  38 A0 00 00 */	li r5, 0
/* 80773DD0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80773DD4  4B FF 80 AD */	bl anm_init__FP11e_rdy_classifUcf
/* 80773DD8  48 00 00 5C */	b lbl_80773E34
lbl_80773DDC:
/* 80773DDC  7C 00 07 35 */	extsh. r0, r0
/* 80773DE0  40 80 00 20 */	bge lbl_80773E00
/* 80773DE4  7F A3 EB 78 */	mr r3, r29
/* 80773DE8  38 80 00 0C */	li r4, 0xc
/* 80773DEC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80773DF0  38 A0 00 00 */	li r5, 0
/* 80773DF4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80773DF8  4B FF 80 89 */	bl anm_init__FP11e_rdy_classifUcf
/* 80773DFC  48 00 00 38 */	b lbl_80773E34
lbl_80773E00:
/* 80773E00  7F A3 EB 78 */	mr r3, r29
/* 80773E04  38 80 00 0D */	li r4, 0xd
/* 80773E08  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80773E0C  38 A0 00 00 */	li r5, 0
/* 80773E10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80773E14  4B FF 80 6D */	bl anm_init__FP11e_rdy_classifUcf
/* 80773E18  48 00 00 1C */	b lbl_80773E34
lbl_80773E1C:
/* 80773E1C  7F A3 EB 78 */	mr r3, r29
/* 80773E20  38 80 00 0F */	li r4, 0xf
/* 80773E24  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80773E28  38 A0 00 00 */	li r5, 0
/* 80773E2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80773E30  4B FF 80 51 */	bl anm_init__FP11e_rdy_classifUcf
lbl_80773E34:
/* 80773E34  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80773E38  D0 1D 0A C0 */	stfs f0, 0xac0(r29)
/* 80773E3C  A8 1D 13 16 */	lha r0, 0x1316(r29)
/* 80773E40  B0 1D 0A C4 */	sth r0, 0xac4(r29)
/* 80773E44  39 61 00 20 */	addi r11, r1, 0x20
/* 80773E48  4B BE E3 E1 */	bl _restgpr_29
/* 80773E4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80773E50  7C 08 03 A6 */	mtlr r0
/* 80773E54  38 21 00 20 */	addi r1, r1, 0x20
/* 80773E58  4E 80 00 20 */	blr 

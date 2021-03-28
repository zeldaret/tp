lbl_80199E28:
/* 80199E28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80199E2C  7C 08 02 A6 */	mflr r0
/* 80199E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80199E34  39 61 00 20 */	addi r11, r1, 0x20
/* 80199E38  48 1C 83 A5 */	bl _savegpr_29
/* 80199E3C  7C 7D 1B 78 */	mr r29, r3
/* 80199E40  7C 9E 23 78 */	mr r30, r4
/* 80199E44  7C BF 2B 78 */	mr r31, r5
/* 80199E48  48 09 E5 89 */	bl getMessageID__12dMsgObject_cFv
/* 80199E4C  28 03 1B 82 */	cmplwi r3, 0x1b82
/* 80199E50  40 82 00 30 */	bne lbl_80199E80
/* 80199E54  38 00 00 00 */	li r0, 0
/* 80199E58  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80199E5C  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80199E60  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80199E64  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80199E68  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80199E6C  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80199E70  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80199E74  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
/* 80199E78  38 00 00 01 */	li r0, 1
/* 80199E7C  98 1D 0F 76 */	stb r0, 0xf76(r29)
lbl_80199E80:
/* 80199E80  38 7D 09 74 */	addi r3, r29, 0x974
/* 80199E84  38 81 00 08 */	addi r4, r1, 8
/* 80199E88  48 0B 06 A1 */	bl getEventId__10dMsgFlow_cFPi
/* 80199E8C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80199E90  28 00 00 01 */	cmplwi r0, 1
/* 80199E94  40 82 00 98 */	bne lbl_80199F2C
/* 80199E98  7F E3 FB 78 */	mr r3, r31
/* 80199E9C  7F C4 F3 78 */	mr r4, r30
/* 80199EA0  38 A0 00 00 */	li r5, 0
/* 80199EA4  38 C0 00 00 */	li r6, 0
/* 80199EA8  48 0B 04 31 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80199EAC  2C 03 00 00 */	cmpwi r3, 0
/* 80199EB0  41 82 00 D8 */	beq lbl_80199F88
/* 80199EB4  80 7D 0D 90 */	lwz r3, 0xd90(r29)
/* 80199EB8  3C 03 00 01 */	addis r0, r3, 1
/* 80199EBC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80199EC0  40 82 00 28 */	bne lbl_80199EE8
/* 80199EC4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80199EC8  80 81 00 08 */	lwz r4, 8(r1)
/* 80199ECC  38 A0 00 00 */	li r5, 0
/* 80199ED0  38 C0 FF FF */	li r6, -1
/* 80199ED4  38 E0 FF FF */	li r7, -1
/* 80199ED8  39 00 00 00 */	li r8, 0
/* 80199EDC  39 20 00 00 */	li r9, 0
/* 80199EE0  4B E8 1D 09 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80199EE4  90 7D 0D 90 */	stw r3, 0xd90(r29)
lbl_80199EE8:
/* 80199EE8  80 7D 0D 90 */	lwz r3, 0xd90(r29)
/* 80199EEC  4B E8 74 B1 */	bl fpcEx_IsExist__FUi
/* 80199EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80199EF4  41 82 00 30 */	beq lbl_80199F24
/* 80199EF8  7F A3 EB 78 */	mr r3, r29
/* 80199EFC  38 80 00 08 */	li r4, 8
/* 80199F00  4B FF D6 DD */	bl offFlag__13dShopSystem_cFi
/* 80199F04  7F A3 EB 78 */	mr r3, r29
/* 80199F08  48 00 05 ED */	bl setSoldOutItemHide__13dShopSystem_cFv
/* 80199F0C  38 00 00 01 */	li r0, 1
/* 80199F10  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80199F14  7F A3 EB 78 */	mr r3, r29
/* 80199F18  4B FB 03 0D */	bl evtChange__8daNpcT_cFv
/* 80199F1C  38 60 00 02 */	li r3, 2
/* 80199F20  48 00 00 6C */	b lbl_80199F8C
lbl_80199F24:
/* 80199F24  38 60 00 00 */	li r3, 0
/* 80199F28  48 00 00 64 */	b lbl_80199F8C
lbl_80199F2C:
/* 80199F2C  80 1D 0F 60 */	lwz r0, 0xf60(r29)
/* 80199F30  2C 00 00 00 */	cmpwi r0, 0
/* 80199F34  41 80 00 0C */	blt lbl_80199F40
/* 80199F38  38 C0 00 64 */	li r6, 0x64
/* 80199F3C  48 00 00 1C */	b lbl_80199F58
lbl_80199F40:
/* 80199F40  88 7D 0F 6E */	lbz r3, 0xf6e(r29)
/* 80199F44  38 03 FF FF */	addi r0, r3, -1
/* 80199F48  54 00 08 3C */	slwi r0, r0, 1
/* 80199F4C  7C 7D 02 14 */	add r3, r29, r0
/* 80199F50  A0 63 0E 68 */	lhz r3, 0xe68(r3)
/* 80199F54  38 C3 00 01 */	addi r6, r3, 1
lbl_80199F58:
/* 80199F58  7F E3 FB 78 */	mr r3, r31
/* 80199F5C  7F C4 F3 78 */	mr r4, r30
/* 80199F60  38 A0 00 00 */	li r5, 0
/* 80199F64  48 0B 03 75 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80199F68  2C 03 00 00 */	cmpwi r3, 0
/* 80199F6C  41 82 00 1C */	beq lbl_80199F88
/* 80199F70  7F A3 EB 78 */	mr r3, r29
/* 80199F74  38 80 00 08 */	li r4, 8
/* 80199F78  4B FF D6 65 */	bl offFlag__13dShopSystem_cFi
/* 80199F7C  7F A3 EB 78 */	mr r3, r29
/* 80199F80  38 80 00 02 */	li r4, 2
/* 80199F84  48 00 03 C1 */	bl setSeq__13dShopSystem_cFUc
lbl_80199F88:
/* 80199F88  38 60 00 00 */	li r3, 0
lbl_80199F8C:
/* 80199F8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80199F90  48 1C 82 99 */	bl _restgpr_29
/* 80199F94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80199F98  7C 08 03 A6 */	mtlr r0
/* 80199F9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80199FA0  4E 80 00 20 */	blr 

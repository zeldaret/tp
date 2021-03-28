lbl_80CF5D58:
/* 80CF5D58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF5D5C  7C 08 02 A6 */	mflr r0
/* 80CF5D60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF5D64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CF5D68  7C 7F 1B 78 */	mr r31, r3
/* 80CF5D6C  4B FF FF 69 */	bl initBaseMtx__14daObjSwBallC_cFv
/* 80CF5D70  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CF5D74  38 03 00 24 */	addi r0, r3, 0x24
/* 80CF5D78  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CF5D7C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CF5D80  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF5D84  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CF5D88  80 83 00 00 */	lwz r4, 0(r3)
/* 80CF5D8C  7F E3 FB 78 */	mr r3, r31
/* 80CF5D90  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80CF5D94  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80CF5D98  C0 64 00 44 */	lfs f3, 0x44(r4)
/* 80CF5D9C  C0 84 00 48 */	lfs f4, 0x48(r4)
/* 80CF5DA0  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80CF5DA4  C0 C4 00 50 */	lfs f6, 0x50(r4)
/* 80CF5DA8  4B 32 47 A0 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CF5DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF5DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF5DB4  38 80 00 3D */	li r4, 0x3d
/* 80CF5DB8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF5DBC  7C 05 07 74 */	extsb r5, r0
/* 80CF5DC0  4B 33 F5 A0 */	b isSwitch__10dSv_info_cCFii
/* 80CF5DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF5DC8  41 82 00 60 */	beq lbl_80CF5E28
/* 80CF5DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF5DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF5DD4  38 80 00 3E */	li r4, 0x3e
/* 80CF5DD8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF5DDC  7C 05 07 74 */	extsb r5, r0
/* 80CF5DE0  4B 33 F5 80 */	b isSwitch__10dSv_info_cCFii
/* 80CF5DE4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF5DE8  41 82 00 40 */	beq lbl_80CF5E28
/* 80CF5DEC  3C 60 80 CF */	lis r3, lit_3814@ha
/* 80CF5DF0  C0 03 6C DC */	lfs f0, lit_3814@l(r3)
/* 80CF5DF4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CF5DF8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF5DFC  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CF5E00  A8 04 00 08 */	lha r0, 8(r4)
/* 80CF5E04  3C 60 80 CF */	lis r3, lit_3816@ha
/* 80CF5E08  C8 23 6C E4 */	lfd f1, lit_3816@l(r3)
/* 80CF5E0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF5E10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF5E14  3C 00 43 30 */	lis r0, 0x4330
/* 80CF5E18  90 01 00 08 */	stw r0, 8(r1)
/* 80CF5E1C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CF5E20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CF5E24  D0 04 00 10 */	stfs f0, 0x10(r4)
lbl_80CF5E28:
/* 80CF5E28  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CF5E2C  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF5E30  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CF5E34  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF5E38  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80CF5E3C  38 80 00 01 */	li r4, 1
/* 80CF5E40  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF5E44  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80CF5E48  7D 89 03 A6 */	mtctr r12
/* 80CF5E4C  4E 80 04 21 */	bctrl 
/* 80CF5E50  3C 80 80 CF */	lis r4, l_color@ha
/* 80CF5E54  8C 04 6C D4 */	lbzu r0, l_color@l(r4)
/* 80CF5E58  98 03 00 00 */	stb r0, 0(r3)
/* 80CF5E5C  88 04 00 01 */	lbz r0, 1(r4)
/* 80CF5E60  98 03 00 01 */	stb r0, 1(r3)
/* 80CF5E64  88 04 00 02 */	lbz r0, 2(r4)
/* 80CF5E68  98 03 00 02 */	stb r0, 2(r3)
/* 80CF5E6C  38 00 00 FF */	li r0, 0xff
/* 80CF5E70  98 1F 05 7E */	stb r0, 0x57e(r31)
/* 80CF5E74  3C 60 80 CF */	lis r3, l_arcName@ha
/* 80CF5E78  80 03 6D B0 */	lwz r0, l_arcName@l(r3)
/* 80CF5E7C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80CF5E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF5E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF5E88  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CF5E8C  7F E4 FB 78 */	mr r4, r31
/* 80CF5E90  3C A0 80 CF */	lis r5, l_evName@ha
/* 80CF5E94  38 A5 6D B4 */	addi r5, r5, l_evName@l
/* 80CF5E98  80 A5 00 00 */	lwz r5, 0(r5)
/* 80CF5E9C  38 C0 00 FF */	li r6, 0xff
/* 80CF5EA0  4B 35 18 B8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80CF5EA4  B0 7F 05 7C */	sth r3, 0x57c(r31)
/* 80CF5EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF5EAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF5EB0  38 80 00 3F */	li r4, 0x3f
/* 80CF5EB4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF5EB8  7C 05 07 74 */	extsb r5, r0
/* 80CF5EBC  4B 33 F4 A4 */	b isSwitch__10dSv_info_cCFii
/* 80CF5EC0  2C 03 00 00 */	cmpwi r3, 0
/* 80CF5EC4  41 82 00 14 */	beq lbl_80CF5ED8
/* 80CF5EC8  7F E3 FB 78 */	mr r3, r31
/* 80CF5ECC  48 00 09 4D */	bl setLightOnSwB__14daObjSwBallC_cFv
/* 80CF5ED0  38 00 00 03 */	li r0, 3
/* 80CF5ED4  98 1F 05 7F */	stb r0, 0x57f(r31)
lbl_80CF5ED8:
/* 80CF5ED8  7F E3 FB 78 */	mr r3, r31
/* 80CF5EDC  48 00 02 45 */	bl execute__14daObjSwBallC_cFv
/* 80CF5EE0  38 60 00 01 */	li r3, 1
/* 80CF5EE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CF5EE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF5EEC  7C 08 03 A6 */	mtlr r0
/* 80CF5EF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF5EF4  4E 80 00 20 */	blr 

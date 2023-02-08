lbl_80138DC0:
/* 80138DC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80138DC4  7C 08 02 A6 */	mflr r0
/* 80138DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80138DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80138DD0  48 22 94 0D */	bl _savegpr_29
/* 80138DD4  7C 7D 1B 78 */	mr r29, r3
/* 80138DD8  4B F6 AE B5 */	bl setItemHeap__9daAlink_cFv
/* 80138DDC  7C 7E 1B 78 */	mr r30, r3
/* 80138DE0  38 62 92 90 */	la r3, l_arcName(r2) /* 80452C90-_SDA2_BASE_ */
/* 80138DE4  38 80 00 25 */	li r4, 0x25
/* 80138DE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80138DEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80138DF0  3F E5 00 02 */	addis r31, r5, 2
/* 80138DF4  3B FF C2 F8 */	addi r31, r31, -15624
/* 80138DF8  7F E5 FB 78 */	mr r5, r31
/* 80138DFC  38 C0 00 80 */	li r6, 0x80
/* 80138E00  4B F0 34 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80138E04  7C 64 1B 78 */	mr r4, r3
/* 80138E08  7F A3 EB 78 */	mr r3, r29
/* 80138E0C  3C A0 00 08 */	lis r5, 8
/* 80138E10  38 C0 02 00 */	li r6, 0x200
/* 80138E14  4B F6 AF 69 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80138E18  90 7D 07 08 */	stw r3, 0x708(r29)
/* 80138E1C  38 62 92 90 */	la r3, l_arcName(r2) /* 80452C90-_SDA2_BASE_ */
/* 80138E20  38 80 00 49 */	li r4, 0x49
/* 80138E24  7F E5 FB 78 */	mr r5, r31
/* 80138E28  38 C0 00 80 */	li r6, 0x80
/* 80138E2C  4B F0 34 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80138E30  90 7D 07 18 */	stw r3, 0x718(r29)
/* 80138E34  80 7D 07 08 */	lwz r3, 0x708(r29)
/* 80138E38  80 83 00 04 */	lwz r4, 4(r3)
/* 80138E3C  80 7D 07 18 */	lwz r3, 0x718(r29)
/* 80138E40  48 1F 23 95 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 80138E44  38 60 00 20 */	li r3, 0x20
/* 80138E48  48 19 5E 05 */	bl __nw__FUl
/* 80138E4C  7C 60 1B 79 */	or. r0, r3, r3
/* 80138E50  41 82 00 0C */	beq lbl_80138E5C
/* 80138E54  48 18 59 F1 */	bl __ct__16Z2SoundObjSimpleFv
/* 80138E58  7C 60 1B 78 */	mr r0, r3
lbl_80138E5C:
/* 80138E5C  90 1D 07 6C */	stw r0, 0x76c(r29)
/* 80138E60  7F C3 F3 78 */	mr r3, r30
/* 80138E64  4B ED 63 69 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80138E68  38 00 01 0A */	li r0, 0x10a
/* 80138E6C  B0 1D 2F DC */	sth r0, 0x2fdc(r29)
/* 80138E70  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80138E74  D0 1D 33 DC */	stfs f0, 0x33dc(r29)
/* 80138E78  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 80138E7C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80138E80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80138E84  C0 03 01 2C */	lfs f0, 0x12c(r3)
/* 80138E88  D0 1D 37 E0 */	stfs f0, 0x37e0(r29)
/* 80138E8C  C0 03 01 3C */	lfs f0, 0x13c(r3)
/* 80138E90  D0 1D 37 E4 */	stfs f0, 0x37e4(r29)
/* 80138E94  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 80138E98  D0 1D 37 E8 */	stfs f0, 0x37e8(r29)
/* 80138E9C  C0 1D 37 E0 */	lfs f0, 0x37e0(r29)
/* 80138EA0  D0 1D 37 F8 */	stfs f0, 0x37f8(r29)
/* 80138EA4  C0 1D 37 E4 */	lfs f0, 0x37e4(r29)
/* 80138EA8  D0 1D 37 FC */	stfs f0, 0x37fc(r29)
/* 80138EAC  C0 1D 37 E8 */	lfs f0, 0x37e8(r29)
/* 80138EB0  D0 1D 38 00 */	stfs f0, 0x3800(r29)
/* 80138EB4  C0 1D 37 E0 */	lfs f0, 0x37e0(r29)
/* 80138EB8  D0 1D 37 EC */	stfs f0, 0x37ec(r29)
/* 80138EBC  C0 1D 37 E4 */	lfs f0, 0x37e4(r29)
/* 80138EC0  D0 1D 37 F0 */	stfs f0, 0x37f0(r29)
/* 80138EC4  C0 1D 37 E8 */	lfs f0, 0x37e8(r29)
/* 80138EC8  D0 1D 37 F4 */	stfs f0, 0x37f4(r29)
/* 80138ECC  38 7D 2F 38 */	addi r3, r29, 0x2f38
/* 80138ED0  38 9D 37 EC */	addi r4, r29, 0x37ec
/* 80138ED4  38 BD 37 F8 */	addi r5, r29, 0x37f8
/* 80138ED8  4B F1 67 E1 */	bl setOldPosP__22dPa_hermiteEcallBack_cFPC4cXyzPC4cXyz
/* 80138EDC  38 00 00 00 */	li r0, 0
/* 80138EE0  90 1D 32 D4 */	stw r0, 0x32d4(r29)
/* 80138EE4  80 7D 07 6C */	lwz r3, 0x76c(r29)
/* 80138EE8  38 9D 37 E0 */	addi r4, r29, 0x37e0
/* 80138EEC  38 A0 00 01 */	li r5, 1
/* 80138EF0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80138EF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80138EF8  7D 89 03 A6 */	mtctr r12
/* 80138EFC  4E 80 04 21 */	bctrl 
/* 80138F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80138F04  48 22 93 25 */	bl _restgpr_29
/* 80138F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80138F0C  7C 08 03 A6 */	mtlr r0
/* 80138F10  38 21 00 20 */	addi r1, r1, 0x20
/* 80138F14  4E 80 00 20 */	blr 

lbl_8014EAD0:
/* 8014EAD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014EAD4  7C 08 02 A6 */	mflr r0
/* 8014EAD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014EADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014EAE0  7C 7F 1B 78 */	mr r31, r3
/* 8014EAE4  81 83 05 68 */	lwz r12, 0x568(r3)
/* 8014EAE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8014EAEC  7D 89 03 A6 */	mtctr r12
/* 8014EAF0  4E 80 04 21 */	bctrl 
/* 8014EAF4  7F E3 FB 78 */	mr r3, r31
/* 8014EAF8  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8014EAFC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8014EB00  7D 89 03 A6 */	mtctr r12
/* 8014EB04  4E 80 04 21 */	bctrl 
/* 8014EB08  7F E3 FB 78 */	mr r3, r31
/* 8014EB0C  38 9F 08 9C */	addi r4, r31, 0x89c
/* 8014EB10  4B EC BB BD */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8014EB14  38 7F 05 6C */	addi r3, r31, 0x56c
/* 8014EB18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8014EB1C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8014EB20  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8014EB24  4B F2 7F 89 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8014EB28  80 1F 06 48 */	lwz r0, 0x648(r31)
/* 8014EB2C  90 1F 09 D4 */	stw r0, 0x9d4(r31)
/* 8014EB30  80 1F 06 4C */	lwz r0, 0x64c(r31)
/* 8014EB34  90 1F 09 D8 */	stw r0, 0x9d8(r31)
/* 8014EB38  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 8014EB3C  90 1F 09 DC */	stw r0, 0x9dc(r31)
/* 8014EB40  88 1F 06 54 */	lbz r0, 0x654(r31)
/* 8014EB44  98 1F 09 E0 */	stb r0, 0x9e0(r31)
/* 8014EB48  A0 1F 06 5C */	lhz r0, 0x65c(r31)
/* 8014EB4C  B0 1F 09 E8 */	sth r0, 0x9e8(r31)
/* 8014EB50  A0 1F 06 5E */	lhz r0, 0x65e(r31)
/* 8014EB54  B0 1F 09 EA */	sth r0, 0x9ea(r31)
/* 8014EB58  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 8014EB5C  90 1F 09 EC */	stw r0, 0x9ec(r31)
/* 8014EB60  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 8014EB64  90 1F 09 F0 */	stw r0, 0x9f0(r31)
/* 8014EB68  C0 1F 06 6C */	lfs f0, 0x66c(r31)
/* 8014EB6C  D0 1F 09 F8 */	stfs f0, 0x9f8(r31)
/* 8014EB70  C0 1F 06 70 */	lfs f0, 0x670(r31)
/* 8014EB74  D0 1F 09 FC */	stfs f0, 0x9fc(r31)
/* 8014EB78  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 8014EB7C  D0 1F 0A 00 */	stfs f0, 0xa00(r31)
/* 8014EB80  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 8014EB84  90 1F 0A 04 */	stw r0, 0xa04(r31)
/* 8014EB88  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 8014EB8C  D0 1F 0A 08 */	stfs f0, 0xa08(r31)
/* 8014EB90  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 8014EB94  90 1F 0A 0C */	stw r0, 0xa0c(r31)
/* 8014EB98  C0 1F 06 04 */	lfs f0, 0x604(r31)
/* 8014EB9C  D0 1F 0A 10 */	stfs f0, 0xa10(r31)
/* 8014EBA0  C0 22 9A 40 */	lfs f1, lit_5667(r2)
/* 8014EBA4  C0 1F 0A 10 */	lfs f0, 0xa10(r31)
/* 8014EBA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8014EBAC  41 82 00 24 */	beq lbl_8014EBD0
/* 8014EBB0  38 7F 09 E8 */	addi r3, r31, 0x9e8
/* 8014EBB4  A8 9F 09 1C */	lha r4, 0x91c(r31)
/* 8014EBB8  48 00 16 79 */	bl daBaseNpc_getGroundAngle__FP13cBgS_PolyInfos
/* 8014EBBC  B0 7F 09 18 */	sth r3, 0x918(r31)
/* 8014EBC0  7F E3 FB 78 */	mr r3, r31
/* 8014EBC4  48 00 04 DD */	bl setEnvTevColor__11daBaseNpc_cFv
/* 8014EBC8  7F E3 FB 78 */	mr r3, r31
/* 8014EBCC  48 00 05 31 */	bl setRoomNo__11daBaseNpc_cFv
lbl_8014EBD0:
/* 8014EBD0  7F E3 FB 78 */	mr r3, r31
/* 8014EBD4  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8014EBD8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8014EBDC  7D 89 03 A6 */	mtctr r12
/* 8014EBE0  4E 80 04 21 */	bctrl 
/* 8014EBE4  7F E3 FB 78 */	mr r3, r31
/* 8014EBE8  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8014EBEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8014EBF0  7D 89 03 A6 */	mtctr r12
/* 8014EBF4  4E 80 04 21 */	bctrl 
/* 8014EBF8  7F E3 FB 78 */	mr r3, r31
/* 8014EBFC  38 80 00 00 */	li r4, 0
/* 8014EC00  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8014EC04  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8014EC08  7D 89 03 A6 */	mtctr r12
/* 8014EC0C  4E 80 04 21 */	bctrl 
/* 8014EC10  7F E3 FB 78 */	mr r3, r31
/* 8014EC14  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8014EC18  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8014EC1C  7D 89 03 A6 */	mtctr r12
/* 8014EC20  4E 80 04 21 */	bctrl 
/* 8014EC24  7F E3 FB 78 */	mr r3, r31
/* 8014EC28  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8014EC2C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8014EC30  7D 89 03 A6 */	mtctr r12
/* 8014EC34  4E 80 04 21 */	bctrl 
/* 8014EC38  38 60 00 01 */	li r3, 1
/* 8014EC3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014EC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014EC44  7C 08 03 A6 */	mtlr r0
/* 8014EC48  38 21 00 10 */	addi r1, r1, 0x10
/* 8014EC4C  4E 80 00 20 */	blr 

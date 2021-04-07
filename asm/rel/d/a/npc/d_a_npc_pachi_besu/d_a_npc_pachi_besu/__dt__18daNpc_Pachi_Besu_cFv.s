lbl_80A92D6C:
/* 80A92D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A92D70  7C 08 02 A6 */	mflr r0
/* 80A92D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A92D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A92D7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A92D80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A92D84  7C 9F 23 78 */	mr r31, r4
/* 80A92D88  41 82 01 00 */	beq lbl_80A92E88
/* 80A92D8C  3C 60 80 A9 */	lis r3, __vt__18daNpc_Pachi_Besu_c@ha /* 0x80A979EC@ha */
/* 80A92D90  38 03 79 EC */	addi r0, r3, __vt__18daNpc_Pachi_Besu_c@l /* 0x80A979EC@l */
/* 80A92D94  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A92D98  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A92D9C  28 03 00 00 */	cmplwi r3, 0
/* 80A92DA0  41 82 00 08 */	beq lbl_80A92DA8
/* 80A92DA4  4B 57 E5 6D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A92DA8:
/* 80A92DA8  7F C3 F3 78 */	mr r3, r30
/* 80A92DAC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A92DB0  54 00 10 3A */	slwi r0, r0, 2
/* 80A92DB4  3C 80 80 A9 */	lis r4, l_loadResPtrnList@ha /* 0x80A96CDC@ha */
/* 80A92DB8  38 84 6C DC */	addi r4, r4, l_loadResPtrnList@l /* 0x80A96CDC@l */
/* 80A92DBC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A92DC0  3C A0 80 A9 */	lis r5, l_resNameList@ha /* 0x80A96CA0@ha */
/* 80A92DC4  38 A5 6C A0 */	addi r5, r5, l_resNameList@l /* 0x80A96CA0@l */
/* 80A92DC8  4B 6B 56 E5 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80A92DCC  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 80A92DD0  3C 80 80 A9 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80A95BB8@ha */
/* 80A92DD4  38 84 5B B8 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80A95BB8@l */
/* 80A92DD8  38 A0 00 08 */	li r5, 8
/* 80A92DDC  38 C0 00 02 */	li r6, 2
/* 80A92DE0  4B 8C EF 09 */	bl __destroy_arr
/* 80A92DE4  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80A92DE8  41 82 00 84 */	beq lbl_80A92E6C
/* 80A92DEC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A92DF0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A92DF4  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80A92DF8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A92DFC  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A92E00  38 03 00 84 */	addi r0, r3, 0x84
/* 80A92E04  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A92E08  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A92E0C  41 82 00 54 */	beq lbl_80A92E60
/* 80A92E10  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A92E14  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A92E18  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80A92E1C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A92E20  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A92E24  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80A92E28  41 82 00 10 */	beq lbl_80A92E38
/* 80A92E2C  3C 60 80 A9 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A979E0@ha */
/* 80A92E30  38 03 79 E0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A979E0@l */
/* 80A92E34  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80A92E38:
/* 80A92E38  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A92E3C  41 82 00 24 */	beq lbl_80A92E60
/* 80A92E40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A92E44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A92E48  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A92E4C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A92E50  41 82 00 10 */	beq lbl_80A92E60
/* 80A92E54  3C 60 80 A9 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A979D4@ha */
/* 80A92E58  38 03 79 D4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A979D4@l */
/* 80A92E5C  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80A92E60:
/* 80A92E60  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80A92E64  38 80 00 00 */	li r4, 0
/* 80A92E68  4B 5F 12 7D */	bl __dt__12dCcD_GObjInfFv
lbl_80A92E6C:
/* 80A92E6C  7F C3 F3 78 */	mr r3, r30
/* 80A92E70  38 80 00 00 */	li r4, 0
/* 80A92E74  48 00 29 45 */	bl __dt__8daNpcT_cFv
/* 80A92E78  7F E0 07 35 */	extsh. r0, r31
/* 80A92E7C  40 81 00 0C */	ble lbl_80A92E88
/* 80A92E80  7F C3 F3 78 */	mr r3, r30
/* 80A92E84  4B 83 BE B9 */	bl __dl__FPv
lbl_80A92E88:
/* 80A92E88  7F C3 F3 78 */	mr r3, r30
/* 80A92E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A92E90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A92E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A92E98  7C 08 03 A6 */	mtlr r0
/* 80A92E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A92EA0  4E 80 00 20 */	blr 

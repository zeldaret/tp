lbl_807C3B58:
/* 807C3B58  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 807C3B5C  7C 08 02 A6 */	mflr r0
/* 807C3B60  90 01 01 74 */	stw r0, 0x174(r1)
/* 807C3B64  39 61 01 70 */	addi r11, r1, 0x170
/* 807C3B68  4B B9 E6 61 */	bl _savegpr_24
/* 807C3B6C  7C 78 1B 78 */	mr r24, r3
/* 807C3B70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C3B74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C3B78  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 807C3B7C  4B FF FE 49 */	bl getWolfCutType__8daE_VA_cFv
/* 807C3B80  7C 7F 1B 78 */	mr r31, r3
/* 807C3B84  38 78 1B 1C */	addi r3, r24, 0x1b1c
/* 807C3B88  4B 8B FC A9 */	bl Move__10dCcD_GSttsFv
/* 807C3B8C  A8 18 13 38 */	lha r0, 0x1338(r24)
/* 807C3B90  2C 00 00 00 */	cmpwi r0, 0
/* 807C3B94  40 82 00 8C */	bne lbl_807C3C20
/* 807C3B98  3B 60 00 00 */	li r27, 0
/* 807C3B9C  3B 20 00 00 */	li r25, 0
lbl_807C3BA0:
/* 807C3BA0  3B 59 20 64 */	addi r26, r25, 0x2064
/* 807C3BA4  7F 58 D2 14 */	add r26, r24, r26
/* 807C3BA8  7F 43 D3 78 */	mr r3, r26
/* 807C3BAC  4B 8C 08 B5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807C3BB0  28 03 00 00 */	cmplwi r3, 0
/* 807C3BB4  41 82 00 5C */	beq lbl_807C3C10
/* 807C3BB8  7F 43 D3 78 */	mr r3, r26
/* 807C3BBC  4B 8C 09 3D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807C3BC0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807C3BC4  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807C3BC8  41 82 00 10 */	beq lbl_807C3BD8
/* 807C3BCC  38 00 00 14 */	li r0, 0x14
/* 807C3BD0  B0 18 13 38 */	sth r0, 0x1338(r24)
/* 807C3BD4  48 00 00 0C */	b lbl_807C3BE0
lbl_807C3BD8:
/* 807C3BD8  38 00 00 0A */	li r0, 0xa
/* 807C3BDC  B0 18 13 38 */	sth r0, 0x1338(r24)
lbl_807C3BE0:
/* 807C3BE0  7F 43 D3 78 */	mr r3, r26
/* 807C3BE4  4B 8C 09 15 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807C3BE8  7C 64 1B 78 */	mr r4, r3
/* 807C3BEC  38 78 12 54 */	addi r3, r24, 0x1254
/* 807C3BF0  38 A0 00 2A */	li r5, 0x2a
/* 807C3BF4  7F 06 C3 78 */	mr r6, r24
/* 807C3BF8  4B 8C 39 1D */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 807C3BFC  7F 43 D3 78 */	mr r3, r26
/* 807C3C00  81 9A 00 3C */	lwz r12, 0x3c(r26)
/* 807C3C04  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807C3C08  7D 89 03 A6 */	mtctr r12
/* 807C3C0C  4E 80 04 21 */	bctrl 
lbl_807C3C10:
/* 807C3C10  3B 7B 00 01 */	addi r27, r27, 1
/* 807C3C14  2C 1B 00 04 */	cmpwi r27, 4
/* 807C3C18  3B 39 01 38 */	addi r25, r25, 0x138
/* 807C3C1C  41 80 FF 84 */	blt lbl_807C3BA0
lbl_807C3C20:
/* 807C3C20  88 18 13 87 */	lbz r0, 0x1387(r24)
/* 807C3C24  28 00 00 00 */	cmplwi r0, 0
/* 807C3C28  41 82 00 A4 */	beq lbl_807C3CCC
/* 807C3C2C  80 18 13 1C */	lwz r0, 0x131c(r24)
/* 807C3C30  2C 00 00 00 */	cmpwi r0, 0
/* 807C3C34  40 82 07 C0 */	bne lbl_807C43F4
/* 807C3C38  3B 60 00 00 */	li r27, 0
/* 807C3C3C  3B 20 00 00 */	li r25, 0
lbl_807C3C40:
/* 807C3C40  3B 59 25 44 */	addi r26, r25, 0x2544
/* 807C3C44  7F 58 D2 14 */	add r26, r24, r26
/* 807C3C48  7F 43 D3 78 */	mr r3, r26
/* 807C3C4C  4B 8C 08 15 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807C3C50  28 03 00 00 */	cmplwi r3, 0
/* 807C3C54  41 82 00 64 */	beq lbl_807C3CB8
/* 807C3C58  7F 43 D3 78 */	mr r3, r26
/* 807C3C5C  4B 8C 08 9D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807C3C60  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807C3C64  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807C3C68  41 82 00 18 */	beq lbl_807C3C80
/* 807C3C6C  7F 03 C3 78 */	mr r3, r24
/* 807C3C70  38 80 00 01 */	li r4, 1
/* 807C3C74  38 A0 00 00 */	li r5, 0
/* 807C3C78  4B FF FC A1 */	bl setActionMode__8daE_VA_cFii
/* 807C3C7C  48 00 00 3C */	b lbl_807C3CB8
lbl_807C3C80:
/* 807C3C80  38 00 00 13 */	li r0, 0x13
/* 807C3C84  7C BB 03 D6 */	divw r5, r27, r0
/* 807C3C88  3C 60 80 7D */	lis r3, lit_3909@ha /* 0x807CECB0@ha */
/* 807C3C8C  C0 03 EC B0 */	lfs f0, lit_3909@l(r3)  /* 0x807CECB0@l */
/* 807C3C90  54 A3 10 3A */	slwi r3, r5, 2
/* 807C3C94  38 03 11 04 */	addi r0, r3, 0x1104
/* 807C3C98  7C 18 05 2E */	stfsx f0, r24, r0
/* 807C3C9C  38 80 00 00 */	li r4, 0
/* 807C3CA0  54 A3 08 3C */	slwi r3, r5, 1
/* 807C3CA4  38 03 11 2C */	addi r0, r3, 0x112c
/* 807C3CA8  7C 98 03 2E */	sthx r4, r24, r0
/* 807C3CAC  7F 03 C3 78 */	mr r3, r24
/* 807C3CB0  38 80 00 00 */	li r4, 0
/* 807C3CB4  48 00 21 F9 */	bl setVibTag__8daE_VA_cFii
lbl_807C3CB8:
/* 807C3CB8  3B 7B 00 01 */	addi r27, r27, 1
/* 807C3CBC  2C 1B 00 BE */	cmpwi r27, 0xbe
/* 807C3CC0  3B 39 01 38 */	addi r25, r25, 0x138
/* 807C3CC4  41 80 FF 7C */	blt lbl_807C3C40
/* 807C3CC8  48 00 07 2C */	b lbl_807C43F4
lbl_807C3CCC:
/* 807C3CCC  A8 18 13 3A */	lha r0, 0x133a(r24)
/* 807C3CD0  2C 00 00 00 */	cmpwi r0, 0
/* 807C3CD4  40 82 01 7C */	bne lbl_807C3E50
/* 807C3CD8  38 78 1B 78 */	addi r3, r24, 0x1b78
/* 807C3CDC  4B 8C 07 85 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807C3CE0  28 03 00 00 */	cmplwi r3, 0
/* 807C3CE4  41 82 01 6C */	beq lbl_807C3E50
/* 807C3CE8  38 78 1B 78 */	addi r3, r24, 0x1b78
/* 807C3CEC  4B 8C 08 0D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807C3CF0  3C 98 00 01 */	addis r4, r24, 1
/* 807C3CF4  90 64 0F 44 */	stw r3, 0xf44(r4)
/* 807C3CF8  80 64 0F 44 */	lwz r3, 0xf44(r4)
/* 807C3CFC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807C3D00  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807C3D04  41 82 00 24 */	beq lbl_807C3D28
/* 807C3D08  2C 1F 00 01 */	cmpwi r31, 1
/* 807C3D0C  40 82 00 10 */	bne lbl_807C3D1C
/* 807C3D10  38 00 00 0F */	li r0, 0xf
/* 807C3D14  B0 18 13 3A */	sth r0, 0x133a(r24)
/* 807C3D18  48 00 00 18 */	b lbl_807C3D30
lbl_807C3D1C:
/* 807C3D1C  38 00 00 14 */	li r0, 0x14
/* 807C3D20  B0 18 13 3A */	sth r0, 0x133a(r24)
/* 807C3D24  48 00 00 0C */	b lbl_807C3D30
lbl_807C3D28:
/* 807C3D28  38 00 00 0A */	li r0, 0xa
/* 807C3D2C  B0 18 13 3A */	sth r0, 0x133a(r24)
lbl_807C3D30:
/* 807C3D30  3C 78 00 01 */	addis r3, r24, 1
/* 807C3D34  A0 03 0F 60 */	lhz r0, 0xf60(r3)
/* 807C3D38  28 00 00 01 */	cmplwi r0, 1
/* 807C3D3C  41 81 00 0C */	bgt lbl_807C3D48
/* 807C3D40  38 00 00 0A */	li r0, 0xa
/* 807C3D44  B0 18 13 3A */	sth r0, 0x133a(r24)
lbl_807C3D48:
/* 807C3D48  A8 18 13 3A */	lha r0, 0x133a(r24)
/* 807C3D4C  B0 18 13 3E */	sth r0, 0x133e(r24)
/* 807C3D50  2C 1F 00 01 */	cmpwi r31, 1
/* 807C3D54  41 82 00 78 */	beq lbl_807C3DCC
/* 807C3D58  3C 78 00 01 */	addis r3, r24, 1
/* 807C3D5C  80 63 0F 44 */	lwz r3, 0xf44(r3)
/* 807C3D60  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807C3D64  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807C3D68  41 82 00 64 */	beq lbl_807C3DCC
/* 807C3D6C  7F C3 F3 78 */	mr r3, r30
/* 807C3D70  7F 04 C3 78 */	mr r4, r24
/* 807C3D74  38 A0 00 40 */	li r5, 0x40
/* 807C3D78  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807C3D7C  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 807C3D80  7D 89 03 A6 */	mtctr r12
/* 807C3D84  4E 80 04 21 */	bctrl 
/* 807C3D88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C3D8C  41 82 00 40 */	beq lbl_807C3DCC
/* 807C3D90  7F 03 C3 78 */	mr r3, r24
/* 807C3D94  38 80 00 09 */	li r4, 9
/* 807C3D98  38 A0 00 00 */	li r5, 0
/* 807C3D9C  4B FF FB 7D */	bl setActionMode__8daE_VA_cFii
/* 807C3DA0  38 78 12 54 */	addi r3, r24, 0x1254
/* 807C3DA4  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 807C3DA8  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 807C3DAC  38 A0 00 1F */	li r5, 0x1f
/* 807C3DB0  81 98 12 54 */	lwz r12, 0x1254(r24)
/* 807C3DB4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807C3DB8  7D 89 03 A6 */	mtctr r12
/* 807C3DBC  4E 80 04 21 */	bctrl 
/* 807C3DC0  38 00 00 14 */	li r0, 0x14
/* 807C3DC4  B0 18 13 3C */	sth r0, 0x133c(r24)
/* 807C3DC8  48 00 06 2C */	b lbl_807C43F4
lbl_807C3DCC:
/* 807C3DCC  80 18 13 70 */	lwz r0, 0x1370(r24)
/* 807C3DD0  2C 00 00 01 */	cmpwi r0, 1
/* 807C3DD4  40 82 00 40 */	bne lbl_807C3E14
/* 807C3DD8  88 18 13 7F */	lbz r0, 0x137f(r24)
/* 807C3DDC  28 00 00 00 */	cmplwi r0, 0
/* 807C3DE0  41 82 00 34 */	beq lbl_807C3E14
/* 807C3DE4  38 78 12 54 */	addi r3, r24, 0x1254
/* 807C3DE8  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 807C3DEC  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 807C3DF0  38 A0 00 20 */	li r5, 0x20
/* 807C3DF4  81 98 12 54 */	lwz r12, 0x1254(r24)
/* 807C3DF8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807C3DFC  7D 89 03 A6 */	mtctr r12
/* 807C3E00  4E 80 04 21 */	bctrl 
/* 807C3E04  7F 03 C3 78 */	mr r3, r24
/* 807C3E08  38 98 1C 4C */	addi r4, r24, 0x1c4c
/* 807C3E0C  4B FF FC A5 */	bl setTransDamage__8daE_VA_cFP4cXyz
/* 807C3E10  48 00 05 E4 */	b lbl_807C43F4
lbl_807C3E14:
/* 807C3E14  2C 1F 00 02 */	cmpwi r31, 2
/* 807C3E18  40 82 00 2C */	bne lbl_807C3E44
/* 807C3E1C  7F 03 C3 78 */	mr r3, r24
/* 807C3E20  38 80 00 0A */	li r4, 0xa
/* 807C3E24  38 A0 00 00 */	li r5, 0
/* 807C3E28  4B FF FA F1 */	bl setActionMode__8daE_VA_cFii
/* 807C3E2C  38 78 1B 78 */	addi r3, r24, 0x1b78
/* 807C3E30  81 98 1B B4 */	lwz r12, 0x1bb4(r24)
/* 807C3E34  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807C3E38  7D 89 03 A6 */	mtctr r12
/* 807C3E3C  4E 80 04 21 */	bctrl 
/* 807C3E40  48 00 05 B4 */	b lbl_807C43F4
lbl_807C3E44:
/* 807C3E44  38 00 00 00 */	li r0, 0
/* 807C3E48  B0 18 13 3A */	sth r0, 0x133a(r24)
/* 807C3E4C  B0 18 13 3E */	sth r0, 0x133e(r24)
lbl_807C3E50:
/* 807C3E50  A8 18 13 3C */	lha r0, 0x133c(r24)
/* 807C3E54  2C 00 00 00 */	cmpwi r0, 0
/* 807C3E58  40 82 05 9C */	bne lbl_807C43F4
/* 807C3E5C  3B 20 00 00 */	li r25, 0
/* 807C3E60  38 61 00 08 */	addi r3, r1, 8
/* 807C3E64  4B 8B FB C5 */	bl __ct__12dCcD_GObjInfFv
/* 807C3E68  3B 81 01 0C */	addi r28, r1, 0x10c
/* 807C3E6C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807C3E70  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807C3E74  90 01 01 28 */	stw r0, 0x128(r1)
/* 807C3E78  3C 60 80 7D */	lis r3, __vt__8cM3dGAab@ha /* 0x807CF454@ha */
/* 807C3E7C  38 03 F4 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807CF454@l */
/* 807C3E80  90 01 01 24 */	stw r0, 0x124(r1)
/* 807C3E84  3C 60 80 7D */	lis r3, __vt__8cM3dGCyl@ha /* 0x807CF448@ha */
/* 807C3E88  38 03 F4 48 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x807CF448@l */
/* 807C3E8C  90 01 01 40 */	stw r0, 0x140(r1)
/* 807C3E90  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 807C3E94  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 807C3E98  90 61 01 28 */	stw r3, 0x128(r1)
/* 807C3E9C  3B 63 00 58 */	addi r27, r3, 0x58
/* 807C3EA0  93 61 01 40 */	stw r27, 0x140(r1)
/* 807C3EA4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 807C3EA8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 807C3EAC  90 61 00 44 */	stw r3, 0x44(r1)
/* 807C3EB0  3B E3 00 2C */	addi r31, r3, 0x2c
/* 807C3EB4  93 E1 01 28 */	stw r31, 0x128(r1)
/* 807C3EB8  3B A3 00 84 */	addi r29, r3, 0x84
/* 807C3EBC  93 A1 01 40 */	stw r29, 0x140(r1)
/* 807C3EC0  38 78 1C B0 */	addi r3, r24, 0x1cb0
/* 807C3EC4  4B 8C 05 9D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807C3EC8  28 03 00 00 */	cmplwi r3, 0
/* 807C3ECC  41 82 00 24 */	beq lbl_807C3EF0
/* 807C3ED0  38 78 1C B0 */	addi r3, r24, 0x1cb0
/* 807C3ED4  4B 8C 06 25 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807C3ED8  3C 98 00 01 */	addis r4, r24, 1
/* 807C3EDC  90 64 0F 44 */	stw r3, 0xf44(r4)
/* 807C3EE0  3B 20 00 01 */	li r25, 1
/* 807C3EE4  38 61 00 08 */	addi r3, r1, 8
/* 807C3EE8  38 98 1C B0 */	addi r4, r24, 0x1cb0
/* 807C3EEC  48 00 05 21 */	bl __as__8dCcD_CylFRC8dCcD_Cyl
lbl_807C3EF0:
/* 807C3EF0  38 78 1D EC */	addi r3, r24, 0x1dec
/* 807C3EF4  4B 8C 05 6D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807C3EF8  28 03 00 00 */	cmplwi r3, 0
/* 807C3EFC  41 82 00 24 */	beq lbl_807C3F20
/* 807C3F00  38 78 1D EC */	addi r3, r24, 0x1dec
/* 807C3F04  4B 8C 05 F5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807C3F08  3C 98 00 01 */	addis r4, r24, 1
/* 807C3F0C  90 64 0F 44 */	stw r3, 0xf44(r4)
/* 807C3F10  3B 20 00 01 */	li r25, 1
/* 807C3F14  38 61 00 08 */	addi r3, r1, 8
/* 807C3F18  38 98 1D EC */	addi r4, r24, 0x1dec
/* 807C3F1C  48 00 04 F1 */	bl __as__8dCcD_CylFRC8dCcD_Cyl
lbl_807C3F20:
/* 807C3F20  2C 19 00 00 */	cmpwi r25, 0
/* 807C3F24  41 82 04 6C */	beq lbl_807C4390
/* 807C3F28  80 18 13 70 */	lwz r0, 0x1370(r24)
/* 807C3F2C  2C 00 00 02 */	cmpwi r0, 2
/* 807C3F30  41 82 00 B4 */	beq lbl_807C3FE4
/* 807C3F34  3C 78 00 01 */	addis r3, r24, 1
/* 807C3F38  80 63 0F 44 */	lwz r3, 0xf44(r3)
/* 807C3F3C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807C3F40  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807C3F44  41 82 00 A0 */	beq lbl_807C3FE4
/* 807C3F48  88 18 13 7F */	lbz r0, 0x137f(r24)
/* 807C3F4C  28 00 00 00 */	cmplwi r0, 0
/* 807C3F50  40 82 00 94 */	bne lbl_807C3FE4
/* 807C3F54  38 78 1C B0 */	addi r3, r24, 0x1cb0
/* 807C3F58  81 98 1C EC */	lwz r12, 0x1cec(r24)
/* 807C3F5C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807C3F60  7D 89 03 A6 */	mtctr r12
/* 807C3F64  4E 80 04 21 */	bctrl 
/* 807C3F68  38 78 1D EC */	addi r3, r24, 0x1dec
/* 807C3F6C  81 98 1E 28 */	lwz r12, 0x1e28(r24)
/* 807C3F70  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807C3F74  7D 89 03 A6 */	mtctr r12
/* 807C3F78  4E 80 04 21 */	bctrl 
/* 807C3F7C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 807C3F80  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 807C3F84  90 01 00 44 */	stw r0, 0x44(r1)
/* 807C3F88  93 E1 01 28 */	stw r31, 0x128(r1)
/* 807C3F8C  93 A1 01 40 */	stw r29, 0x140(r1)
/* 807C3F90  28 1C 00 00 */	cmplwi r28, 0
/* 807C3F94  41 82 00 40 */	beq lbl_807C3FD4
/* 807C3F98  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 807C3F9C  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 807C3FA0  90 01 01 28 */	stw r0, 0x128(r1)
/* 807C3FA4  93 61 01 40 */	stw r27, 0x140(r1)
/* 807C3FA8  3C 60 80 7D */	lis r3, __vt__8cM3dGCyl@ha /* 0x807CF448@ha */
/* 807C3FAC  38 03 F4 48 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x807CF448@l */
/* 807C3FB0  90 01 01 40 */	stw r0, 0x140(r1)
/* 807C3FB4  41 82 00 20 */	beq lbl_807C3FD4
/* 807C3FB8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807C3FBC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807C3FC0  90 01 01 28 */	stw r0, 0x128(r1)
/* 807C3FC4  41 82 00 10 */	beq lbl_807C3FD4
/* 807C3FC8  3C 60 80 7D */	lis r3, __vt__8cM3dGAab@ha /* 0x807CF454@ha */
/* 807C3FCC  38 03 F4 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807CF454@l */
/* 807C3FD0  90 01 01 24 */	stw r0, 0x124(r1)
lbl_807C3FD4:
/* 807C3FD4  38 61 00 08 */	addi r3, r1, 8
/* 807C3FD8  38 80 00 00 */	li r4, 0
/* 807C3FDC  4B 8C 01 09 */	bl __dt__12dCcD_GObjInfFv
/* 807C3FE0  48 00 04 14 */	b lbl_807C43F4
lbl_807C3FE4:
/* 807C3FE4  38 00 00 00 */	li r0, 0
/* 807C3FE8  3C 98 00 01 */	addis r4, r24, 1
/* 807C3FEC  90 04 0F 5C */	stw r0, 0xf5c(r4)
/* 807C3FF0  38 00 00 64 */	li r0, 0x64
/* 807C3FF4  B0 18 05 62 */	sth r0, 0x562(r24)
/* 807C3FF8  7F 03 C3 78 */	mr r3, r24
/* 807C3FFC  38 84 0F 44 */	addi r4, r4, 0xf44
/* 807C4000  4B 8C 3C 05 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807C4004  A8 18 05 62 */	lha r0, 0x562(r24)
/* 807C4008  20 00 00 64 */	subfic r0, r0, 0x64
/* 807C400C  90 18 13 68 */	stw r0, 0x1368(r24)
/* 807C4010  3C 78 00 01 */	addis r3, r24, 1
/* 807C4014  80 63 0F 44 */	lwz r3, 0xf44(r3)
/* 807C4018  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807C401C  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807C4020  41 82 00 10 */	beq lbl_807C4030
/* 807C4024  38 00 00 14 */	li r0, 0x14
/* 807C4028  B0 18 13 3C */	sth r0, 0x133c(r24)
/* 807C402C  48 00 00 0C */	b lbl_807C4038
lbl_807C4030:
/* 807C4030  38 00 00 0A */	li r0, 0xa
/* 807C4034  B0 18 13 3C */	sth r0, 0x133c(r24)
lbl_807C4038:
/* 807C4038  3C 78 00 01 */	addis r3, r24, 1
/* 807C403C  A0 03 0F 60 */	lhz r0, 0xf60(r3)
/* 807C4040  28 00 00 01 */	cmplwi r0, 1
/* 807C4044  41 81 00 0C */	bgt lbl_807C4050
/* 807C4048  38 00 00 0A */	li r0, 0xa
/* 807C404C  B0 18 13 3C */	sth r0, 0x133c(r24)
lbl_807C4050:
/* 807C4050  A8 18 13 3C */	lha r0, 0x133c(r24)
/* 807C4054  B0 18 13 3E */	sth r0, 0x133e(r24)
/* 807C4058  80 18 13 70 */	lwz r0, 0x1370(r24)
/* 807C405C  2C 00 00 01 */	cmpwi r0, 1
/* 807C4060  40 82 00 14 */	bne lbl_807C4074
/* 807C4064  7F 03 C3 78 */	mr r3, r24
/* 807C4068  38 81 00 DC */	addi r4, r1, 0xdc
/* 807C406C  4B FF FA 45 */	bl setTransDamage__8daE_VA_cFP4cXyz
/* 807C4070  48 00 02 F8 */	b lbl_807C4368
lbl_807C4074:
/* 807C4074  2C 00 00 02 */	cmpwi r0, 2
/* 807C4078  40 82 02 F0 */	bne lbl_807C4368
/* 807C407C  88 18 13 81 */	lbz r0, 0x1381(r24)
/* 807C4080  28 00 00 00 */	cmplwi r0, 0
/* 807C4084  40 82 00 F8 */	bne lbl_807C417C
/* 807C4088  38 00 00 00 */	li r0, 0
/* 807C408C  98 18 13 85 */	stb r0, 0x1385(r24)
/* 807C4090  80 18 13 1C */	lwz r0, 0x131c(r24)
/* 807C4094  2C 00 00 0C */	cmpwi r0, 0xc
/* 807C4098  40 82 00 34 */	bne lbl_807C40CC
/* 807C409C  3C 78 00 01 */	addis r3, r24, 1
/* 807C40A0  80 63 0F 44 */	lwz r3, 0xf44(r3)
/* 807C40A4  80 83 00 10 */	lwz r4, 0x10(r3)
/* 807C40A8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00016060@ha */
/* 807C40AC  38 03 60 60 */	addi r0, r3, 0x6060 /* 0x00016060@l */
/* 807C40B0  7C 80 00 39 */	and. r0, r4, r0
/* 807C40B4  41 82 02 B4 */	beq lbl_807C4368
/* 807C40B8  7F 03 C3 78 */	mr r3, r24
/* 807C40BC  38 80 00 11 */	li r4, 0x11
/* 807C40C0  38 A0 00 00 */	li r5, 0
/* 807C40C4  4B FF F8 55 */	bl setActionMode__8daE_VA_cFii
/* 807C40C8  48 00 02 A0 */	b lbl_807C4368
lbl_807C40CC:
/* 807C40CC  3C B8 00 01 */	addis r5, r24, 1
/* 807C40D0  80 65 0F 44 */	lwz r3, 0xf44(r5)
/* 807C40D4  80 83 00 10 */	lwz r4, 0x10(r3)
/* 807C40D8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014050@ha */
/* 807C40DC  38 03 40 50 */	addi r0, r3, 0x4050 /* 0x00014050@l */
/* 807C40E0  7C 80 00 39 */	and. r0, r4, r0
/* 807C40E4  41 82 00 70 */	beq lbl_807C4154
/* 807C40E8  88 18 13 86 */	lbz r0, 0x1386(r24)
/* 807C40EC  28 00 00 00 */	cmplwi r0, 0
/* 807C40F0  41 82 00 3C */	beq lbl_807C412C
/* 807C40F4  7F 03 C3 78 */	mr r3, r24
/* 807C40F8  38 80 00 0E */	li r4, 0xe
/* 807C40FC  38 A0 00 02 */	li r5, 2
/* 807C4100  4B FF F8 19 */	bl setActionMode__8daE_VA_cFii
/* 807C4104  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807C4108  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807C410C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807C4110  FC 00 00 1E */	fctiwz f0, f0
/* 807C4114  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 807C4118  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 807C411C  90 18 13 44 */	stw r0, 0x1344(r24)
/* 807C4120  38 00 00 01 */	li r0, 1
/* 807C4124  98 18 13 81 */	stb r0, 0x1381(r24)
/* 807C4128  48 00 02 40 */	b lbl_807C4368
lbl_807C412C:
/* 807C412C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C4130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C4134  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C4138  38 80 00 1F */	li r4, 0x1f
/* 807C413C  4B 8A BC 59 */	bl StopQuake__12dVibration_cFi
/* 807C4140  7F 03 C3 78 */	mr r3, r24
/* 807C4144  38 80 00 11 */	li r4, 0x11
/* 807C4148  38 A0 00 0A */	li r5, 0xa
/* 807C414C  4B FF F7 CD */	bl setActionMode__8daE_VA_cFii
/* 807C4150  48 00 02 18 */	b lbl_807C4368
lbl_807C4154:
/* 807C4154  A0 05 0F 60 */	lhz r0, 0xf60(r5)
/* 807C4158  28 00 00 00 */	cmplwi r0, 0
/* 807C415C  41 82 02 0C */	beq lbl_807C4368
/* 807C4160  7F 03 C3 78 */	mr r3, r24
/* 807C4164  38 80 00 0D */	li r4, 0xd
/* 807C4168  38 A0 00 00 */	li r5, 0
/* 807C416C  4B FF F7 AD */	bl setActionMode__8daE_VA_cFii
/* 807C4170  38 00 00 01 */	li r0, 1
/* 807C4174  98 18 13 81 */	stb r0, 0x1381(r24)
/* 807C4178  48 00 01 F0 */	b lbl_807C4368
lbl_807C417C:
/* 807C417C  3B 40 00 00 */	li r26, 0
/* 807C4180  88 1E 05 69 */	lbz r0, 0x569(r30)
/* 807C4184  28 00 00 04 */	cmplwi r0, 4
/* 807C4188  41 80 00 18 */	blt lbl_807C41A0
/* 807C418C  88 18 13 83 */	lbz r0, 0x1383(r24)
/* 807C4190  28 00 00 00 */	cmplwi r0, 0
/* 807C4194  41 82 00 3C */	beq lbl_807C41D0
/* 807C4198  3B 40 00 01 */	li r26, 1
/* 807C419C  48 00 00 34 */	b lbl_807C41D0
lbl_807C41A0:
/* 807C41A0  3C 78 00 01 */	addis r3, r24, 1
/* 807C41A4  80 63 0F 44 */	lwz r3, 0xf44(r3)
/* 807C41A8  88 03 00 77 */	lbz r0, 0x77(r3)
/* 807C41AC  2C 00 00 01 */	cmpwi r0, 1
/* 807C41B0  40 82 00 20 */	bne lbl_807C41D0
/* 807C41B4  88 78 13 85 */	lbz r3, 0x1385(r24)
/* 807C41B8  38 03 00 01 */	addi r0, r3, 1
/* 807C41BC  98 18 13 85 */	stb r0, 0x1385(r24)
/* 807C41C0  88 18 13 85 */	lbz r0, 0x1385(r24)
/* 807C41C4  28 00 00 02 */	cmplwi r0, 2
/* 807C41C8  41 80 00 08 */	blt lbl_807C41D0
/* 807C41CC  3B 40 00 01 */	li r26, 1
lbl_807C41D0:
/* 807C41D0  3B 20 00 00 */	li r25, 0
/* 807C41D4  3C 78 00 01 */	addis r3, r24, 1
/* 807C41D8  80 63 0F 44 */	lwz r3, 0xf44(r3)
/* 807C41DC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 807C41E0  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 807C41E4  41 82 00 A0 */	beq lbl_807C4284
/* 807C41E8  88 03 00 14 */	lbz r0, 0x14(r3)
/* 807C41EC  28 00 00 04 */	cmplwi r0, 4
/* 807C41F0  41 80 00 48 */	blt lbl_807C4238
/* 807C41F4  4B 99 B1 A5 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 807C41F8  2C 03 00 00 */	cmpwi r3, 0
/* 807C41FC  41 82 00 20 */	beq lbl_807C421C
/* 807C4200  A0 1E 05 6E */	lhz r0, 0x56e(r30)
/* 807C4204  28 00 00 00 */	cmplwi r0, 0
/* 807C4208  41 82 00 0C */	beq lbl_807C4214
/* 807C420C  3B 20 00 06 */	li r25, 6
/* 807C4210  48 00 00 98 */	b lbl_807C42A8
lbl_807C4214:
/* 807C4214  3B 20 00 02 */	li r25, 2
/* 807C4218  48 00 00 90 */	b lbl_807C42A8
lbl_807C421C:
/* 807C421C  A0 1E 05 6E */	lhz r0, 0x56e(r30)
/* 807C4220  28 00 00 00 */	cmplwi r0, 0
/* 807C4224  41 82 00 0C */	beq lbl_807C4230
/* 807C4228  3B 20 00 02 */	li r25, 2
/* 807C422C  48 00 00 7C */	b lbl_807C42A8
lbl_807C4230:
/* 807C4230  3B 20 00 01 */	li r25, 1
/* 807C4234  48 00 00 74 */	b lbl_807C42A8
lbl_807C4238:
/* 807C4238  4B 99 B1 61 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 807C423C  2C 03 00 00 */	cmpwi r3, 0
/* 807C4240  41 82 00 20 */	beq lbl_807C4260
/* 807C4244  A0 1E 05 6E */	lhz r0, 0x56e(r30)
/* 807C4248  28 00 00 00 */	cmplwi r0, 0
/* 807C424C  40 82 00 0C */	bne lbl_807C4258
/* 807C4250  2C 1A 00 00 */	cmpwi r26, 0
/* 807C4254  41 82 00 54 */	beq lbl_807C42A8
lbl_807C4258:
/* 807C4258  3B 20 00 02 */	li r25, 2
/* 807C425C  48 00 00 4C */	b lbl_807C42A8
lbl_807C4260:
/* 807C4260  2C 1A 00 00 */	cmpwi r26, 0
/* 807C4264  41 82 00 44 */	beq lbl_807C42A8
/* 807C4268  A0 1E 05 6E */	lhz r0, 0x56e(r30)
/* 807C426C  28 00 00 00 */	cmplwi r0, 0
/* 807C4270  41 82 00 0C */	beq lbl_807C427C
/* 807C4274  3B 20 00 02 */	li r25, 2
/* 807C4278  48 00 00 30 */	b lbl_807C42A8
lbl_807C427C:
/* 807C427C  3B 20 00 01 */	li r25, 1
/* 807C4280  48 00 00 28 */	b lbl_807C42A8
lbl_807C4284:
/* 807C4284  74 80 D8 00 */	andis. r0, r4, 0xd800
/* 807C4288  41 82 00 20 */	beq lbl_807C42A8
/* 807C428C  88 03 00 77 */	lbz r0, 0x77(r3)
/* 807C4290  2C 00 00 01 */	cmpwi r0, 1
/* 807C4294  41 82 00 10 */	beq lbl_807C42A4
/* 807C4298  88 03 00 14 */	lbz r0, 0x14(r3)
/* 807C429C  28 00 00 04 */	cmplwi r0, 4
/* 807C42A0  41 80 00 08 */	blt lbl_807C42A8
lbl_807C42A4:
/* 807C42A4  3B 20 00 01 */	li r25, 1
lbl_807C42A8:
/* 807C42A8  88 78 13 83 */	lbz r3, 0x1383(r24)
/* 807C42AC  38 03 00 01 */	addi r0, r3, 1
/* 807C42B0  98 18 13 83 */	stb r0, 0x1383(r24)
/* 807C42B4  2C 19 00 00 */	cmpwi r25, 0
/* 807C42B8  41 82 00 2C */	beq lbl_807C42E4
/* 807C42BC  38 00 00 00 */	li r0, 0
/* 807C42C0  98 18 13 85 */	stb r0, 0x1385(r24)
/* 807C42C4  88 18 13 84 */	lbz r0, 0x1384(r24)
/* 807C42C8  7C 00 CA 14 */	add r0, r0, r25
/* 807C42CC  98 18 13 84 */	stb r0, 0x1384(r24)
/* 807C42D0  7F 03 C3 78 */	mr r3, r24
/* 807C42D4  38 80 00 0D */	li r4, 0xd
/* 807C42D8  38 A0 00 05 */	li r5, 5
/* 807C42DC  4B FF F6 3D */	bl setActionMode__8daE_VA_cFii
/* 807C42E0  48 00 00 80 */	b lbl_807C4360
lbl_807C42E4:
/* 807C42E4  3C 78 00 01 */	addis r3, r24, 1
/* 807C42E8  80 63 0F 44 */	lwz r3, 0xf44(r3)
/* 807C42EC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807C42F0  70 00 40 50 */	andi. r0, r0, 0x4050
/* 807C42F4  41 82 00 18 */	beq lbl_807C430C
/* 807C42F8  7F 03 C3 78 */	mr r3, r24
/* 807C42FC  38 80 00 0E */	li r4, 0xe
/* 807C4300  38 A0 00 02 */	li r5, 2
/* 807C4304  4B FF F6 15 */	bl setActionMode__8daE_VA_cFii
/* 807C4308  48 00 00 58 */	b lbl_807C4360
lbl_807C430C:
/* 807C430C  88 1E 05 69 */	lbz r0, 0x569(r30)
/* 807C4310  28 00 00 01 */	cmplwi r0, 1
/* 807C4314  40 81 00 14 */	ble lbl_807C4328
/* 807C4318  88 18 13 82 */	lbz r0, 0x1382(r24)
/* 807C431C  68 00 00 01 */	xori r0, r0, 1
/* 807C4320  98 18 13 82 */	stb r0, 0x1382(r24)
/* 807C4324  48 00 00 2C */	b lbl_807C4350
lbl_807C4328:
/* 807C4328  4B AA 35 45 */	bl cM_rnd__Fv
/* 807C432C  3C 60 80 7D */	lis r3, lit_3934@ha /* 0x807CECEC@ha */
/* 807C4330  C0 03 EC EC */	lfs f0, lit_3934@l(r3)  /* 0x807CECEC@l */
/* 807C4334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C4338  40 80 00 10 */	bge lbl_807C4348
/* 807C433C  38 00 00 00 */	li r0, 0
/* 807C4340  98 18 13 82 */	stb r0, 0x1382(r24)
/* 807C4344  48 00 00 0C */	b lbl_807C4350
lbl_807C4348:
/* 807C4348  38 00 00 01 */	li r0, 1
/* 807C434C  98 18 13 82 */	stb r0, 0x1382(r24)
lbl_807C4350:
/* 807C4350  7F 03 C3 78 */	mr r3, r24
/* 807C4354  38 80 00 0E */	li r4, 0xe
/* 807C4358  88 B8 13 82 */	lbz r5, 0x1382(r24)
/* 807C435C  4B FF F5 BD */	bl setActionMode__8daE_VA_cFii
lbl_807C4360:
/* 807C4360  38 00 00 01 */	li r0, 1
/* 807C4364  98 18 13 81 */	stb r0, 0x1381(r24)
lbl_807C4368:
/* 807C4368  38 78 1C B0 */	addi r3, r24, 0x1cb0
/* 807C436C  81 98 1C EC */	lwz r12, 0x1cec(r24)
/* 807C4370  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807C4374  7D 89 03 A6 */	mtctr r12
/* 807C4378  4E 80 04 21 */	bctrl 
/* 807C437C  38 78 1D EC */	addi r3, r24, 0x1dec
/* 807C4380  81 98 1E 28 */	lwz r12, 0x1e28(r24)
/* 807C4384  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807C4388  7D 89 03 A6 */	mtctr r12
/* 807C438C  4E 80 04 21 */	bctrl 
lbl_807C4390:
/* 807C4390  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 807C4394  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 807C4398  90 01 00 44 */	stw r0, 0x44(r1)
/* 807C439C  93 E1 01 28 */	stw r31, 0x128(r1)
/* 807C43A0  93 A1 01 40 */	stw r29, 0x140(r1)
/* 807C43A4  28 1C 00 00 */	cmplwi r28, 0
/* 807C43A8  41 82 00 40 */	beq lbl_807C43E8
/* 807C43AC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 807C43B0  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 807C43B4  90 01 01 28 */	stw r0, 0x128(r1)
/* 807C43B8  93 61 01 40 */	stw r27, 0x140(r1)
/* 807C43BC  3C 60 80 7D */	lis r3, __vt__8cM3dGCyl@ha /* 0x807CF448@ha */
/* 807C43C0  38 03 F4 48 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x807CF448@l */
/* 807C43C4  90 01 01 40 */	stw r0, 0x140(r1)
/* 807C43C8  41 82 00 20 */	beq lbl_807C43E8
/* 807C43CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807C43D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807C43D4  90 01 01 28 */	stw r0, 0x128(r1)
/* 807C43D8  41 82 00 10 */	beq lbl_807C43E8
/* 807C43DC  3C 60 80 7D */	lis r3, __vt__8cM3dGAab@ha /* 0x807CF454@ha */
/* 807C43E0  38 03 F4 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807CF454@l */
/* 807C43E4  90 01 01 24 */	stw r0, 0x124(r1)
lbl_807C43E8:
/* 807C43E8  38 61 00 08 */	addi r3, r1, 8
/* 807C43EC  38 80 00 00 */	li r4, 0
/* 807C43F0  4B 8B FC F5 */	bl __dt__12dCcD_GObjInfFv
lbl_807C43F4:
/* 807C43F4  39 61 01 70 */	addi r11, r1, 0x170
/* 807C43F8  4B B9 DE 1D */	bl _restgpr_24
/* 807C43FC  80 01 01 74 */	lwz r0, 0x174(r1)
/* 807C4400  7C 08 03 A6 */	mtlr r0
/* 807C4404  38 21 01 70 */	addi r1, r1, 0x170
/* 807C4408  4E 80 00 20 */	blr 

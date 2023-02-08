lbl_80765B70:
/* 80765B70  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80765B74  7C 08 02 A6 */	mflr r0
/* 80765B78  90 01 00 74 */	stw r0, 0x74(r1)
/* 80765B7C  39 61 00 70 */	addi r11, r1, 0x70
/* 80765B80  4B BF C6 55 */	bl _savegpr_27
/* 80765B84  7C 7D 1B 78 */	mr r29, r3
/* 80765B88  3C 60 80 77 */	lis r3, lit_4007@ha /* 0x8076B45C@ha */
/* 80765B8C  3B E3 B4 5C */	addi r31, r3, lit_4007@l /* 0x8076B45C@l */
/* 80765B90  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80765B94  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80765B98  FC 00 00 1E */	fctiwz f0, f0
/* 80765B9C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80765BA0  80 61 00 54 */	lwz r3, 0x54(r1)
/* 80765BA4  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 80765BA8  2C 00 00 01 */	cmpwi r0, 1
/* 80765BAC  41 82 00 7C */	beq lbl_80765C28
/* 80765BB0  40 80 00 10 */	bge lbl_80765BC0
/* 80765BB4  2C 00 00 00 */	cmpwi r0, 0
/* 80765BB8  40 80 00 14 */	bge lbl_80765BCC
/* 80765BBC  48 00 02 84 */	b lbl_80765E40
lbl_80765BC0:
/* 80765BC0  2C 00 00 03 */	cmpwi r0, 3
/* 80765BC4  40 80 02 7C */	bge lbl_80765E40
/* 80765BC8  48 00 02 20 */	b lbl_80765DE8
lbl_80765BCC:
/* 80765BCC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80765BD0  4B B0 1D 85 */	bl cM_rndF__Ff
/* 80765BD4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80765BD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80765BDC  40 80 00 28 */	bge lbl_80765C04
/* 80765BE0  7F A3 EB 78 */	mr r3, r29
/* 80765BE4  38 80 00 07 */	li r4, 7
/* 80765BE8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80765BEC  38 A0 00 00 */	li r5, 0
/* 80765BF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80765BF4  4B FF F4 FD */	bl anm_init__FP11e_rdb_classifUcf
/* 80765BF8  38 00 00 01 */	li r0, 1
/* 80765BFC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80765C00  48 00 02 40 */	b lbl_80765E40
lbl_80765C04:
/* 80765C04  7F A3 EB 78 */	mr r3, r29
/* 80765C08  38 80 00 08 */	li r4, 8
/* 80765C0C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80765C10  38 A0 00 00 */	li r5, 0
/* 80765C14  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80765C18  4B FF F4 D9 */	bl anm_init__FP11e_rdb_classifUcf
/* 80765C1C  38 00 00 02 */	li r0, 2
/* 80765C20  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80765C24  48 00 02 1C */	b lbl_80765E40
lbl_80765C28:
/* 80765C28  2C 03 00 3F */	cmpwi r3, 0x3f
/* 80765C2C  40 81 00 14 */	ble lbl_80765C40
/* 80765C30  2C 03 00 49 */	cmpwi r3, 0x49
/* 80765C34  40 80 00 0C */	bge lbl_80765C40
/* 80765C38  38 00 00 01 */	li r0, 1
/* 80765C3C  98 1D 06 C4 */	stb r0, 0x6c4(r29)
lbl_80765C40:
/* 80765C40  2C 03 00 44 */	cmpwi r3, 0x44
/* 80765C44  40 82 01 60 */	bne lbl_80765DA4
/* 80765C48  38 7D 08 20 */	addi r3, r29, 0x820
/* 80765C4C  38 80 00 00 */	li r4, 0
/* 80765C50  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80765C54  38 C1 00 28 */	addi r6, r1, 0x28
/* 80765C58  38 E1 00 20 */	addi r7, r1, 0x20
/* 80765C5C  39 01 00 30 */	addi r8, r1, 0x30
/* 80765C60  4B FF FE 39 */	bl getPolyColor__FR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf
/* 80765C64  2C 03 00 00 */	cmpwi r3, 0
/* 80765C68  41 82 00 E0 */	beq lbl_80765D48
/* 80765C6C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80765C70  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80765C74  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80765C78  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80765C7C  3B C0 00 00 */	li r30, 0
/* 80765C80  3B 80 00 00 */	li r28, 0
/* 80765C84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80765C88  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80765C8C:
/* 80765C8C  2C 1E 00 00 */	cmpwi r30, 0
/* 80765C90  40 82 00 5C */	bne lbl_80765CEC
/* 80765C94  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80765C98  38 80 00 00 */	li r4, 0
/* 80765C9C  90 81 00 08 */	stw r4, 8(r1)
/* 80765CA0  38 00 FF FF */	li r0, -1
/* 80765CA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80765CA8  38 01 00 2C */	addi r0, r1, 0x2c
/* 80765CAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80765CB0  38 01 00 28 */	addi r0, r1, 0x28
/* 80765CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80765CB8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80765CBC  38 80 00 00 */	li r4, 0
/* 80765CC0  3C A0 80 77 */	lis r5, ap_name_4291@ha /* 0x8076B730@ha */
/* 80765CC4  38 A5 B7 30 */	addi r5, r5, ap_name_4291@l /* 0x8076B730@l */
/* 80765CC8  7C A5 E2 2E */	lhzx r5, r5, r28
/* 80765CCC  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80765CD0  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80765CD4  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80765CD8  39 21 00 40 */	addi r9, r1, 0x40
/* 80765CDC  89 41 00 20 */	lbz r10, 0x20(r1)
/* 80765CE0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80765CE4  4B 8E 6D AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80765CE8  48 00 00 50 */	b lbl_80765D38
lbl_80765CEC:
/* 80765CEC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80765CF0  38 80 00 00 */	li r4, 0
/* 80765CF4  90 81 00 08 */	stw r4, 8(r1)
/* 80765CF8  38 00 FF FF */	li r0, -1
/* 80765CFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80765D00  90 81 00 10 */	stw r4, 0x10(r1)
/* 80765D04  90 81 00 14 */	stw r4, 0x14(r1)
/* 80765D08  90 81 00 18 */	stw r4, 0x18(r1)
/* 80765D0C  38 80 00 00 */	li r4, 0
/* 80765D10  3C A0 80 77 */	lis r5, ap_name_4291@ha /* 0x8076B730@ha */
/* 80765D14  38 A5 B7 30 */	addi r5, r5, ap_name_4291@l /* 0x8076B730@l */
/* 80765D18  7C A5 E2 2E */	lhzx r5, r5, r28
/* 80765D1C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80765D20  38 E0 00 00 */	li r7, 0
/* 80765D24  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80765D28  39 21 00 40 */	addi r9, r1, 0x40
/* 80765D2C  39 40 00 FF */	li r10, 0xff
/* 80765D30  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80765D34  4B 8E 6D 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80765D38:
/* 80765D38  3B DE 00 01 */	addi r30, r30, 1
/* 80765D3C  2C 1E 00 02 */	cmpwi r30, 2
/* 80765D40  3B 9C 00 02 */	addi r28, r28, 2
/* 80765D44  40 81 FF 48 */	ble lbl_80765C8C
lbl_80765D48:
/* 80765D48  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80765D4C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80765D50  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80765D54  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80765D58  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80765D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80765D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80765D64  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80765D68  38 80 00 06 */	li r4, 6
/* 80765D6C  38 A0 00 1F */	li r5, 0x1f
/* 80765D70  38 C1 00 34 */	addi r6, r1, 0x34
/* 80765D74  4B 90 9C B1 */	bl StartShock__12dVibration_cFii4cXyz
/* 80765D78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070579@ha */
/* 80765D7C  38 03 05 79 */	addi r0, r3, 0x0579 /* 0x00070579@l */
/* 80765D80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80765D84  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80765D88  38 81 00 24 */	addi r4, r1, 0x24
/* 80765D8C  38 A0 00 00 */	li r5, 0
/* 80765D90  38 C0 FF FF */	li r6, -1
/* 80765D94  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 80765D98  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80765D9C  7D 89 03 A6 */	mtctr r12
/* 80765DA0  4E 80 04 21 */	bctrl 
lbl_80765DA4:
/* 80765DA4  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80765DA8  38 80 00 01 */	li r4, 1
/* 80765DAC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80765DB0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80765DB4  40 82 00 18 */	bne lbl_80765DCC
/* 80765DB8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80765DBC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80765DC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80765DC4  41 82 00 08 */	beq lbl_80765DCC
/* 80765DC8  38 80 00 00 */	li r4, 0
lbl_80765DCC:
/* 80765DCC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80765DD0  41 82 00 70 */	beq lbl_80765E40
/* 80765DD4  38 00 00 01 */	li r0, 1
/* 80765DD8  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 80765DDC  38 00 00 00 */	li r0, 0
/* 80765DE0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80765DE4  48 00 00 5C */	b lbl_80765E40
lbl_80765DE8:
/* 80765DE8  2C 03 00 3D */	cmpwi r3, 0x3d
/* 80765DEC  40 81 00 14 */	ble lbl_80765E00
/* 80765DF0  2C 03 00 48 */	cmpwi r3, 0x48
/* 80765DF4  40 80 00 0C */	bge lbl_80765E00
/* 80765DF8  38 00 00 01 */	li r0, 1
/* 80765DFC  98 1D 06 C4 */	stb r0, 0x6c4(r29)
lbl_80765E00:
/* 80765E00  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80765E04  38 80 00 01 */	li r4, 1
/* 80765E08  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80765E0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80765E10  40 82 00 18 */	bne lbl_80765E28
/* 80765E14  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80765E18  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80765E1C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80765E20  41 82 00 08 */	beq lbl_80765E28
/* 80765E24  38 80 00 00 */	li r4, 0
lbl_80765E28:
/* 80765E28  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80765E2C  41 82 00 14 */	beq lbl_80765E40
/* 80765E30  38 00 00 01 */	li r0, 1
/* 80765E34  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 80765E38  38 00 00 00 */	li r0, 0
/* 80765E3C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_80765E40:
/* 80765E40  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80765E44  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80765E48  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80765E4C  4B B0 9C 35 */	bl cLib_addCalc0__FPfff
/* 80765E50  38 00 00 01 */	li r0, 1
/* 80765E54  98 1D 06 C8 */	stb r0, 0x6c8(r29)
/* 80765E58  39 61 00 70 */	addi r11, r1, 0x70
/* 80765E5C  4B BF C3 C5 */	bl _restgpr_27
/* 80765E60  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80765E64  7C 08 03 A6 */	mtlr r0
/* 80765E68  38 21 00 70 */	addi r1, r1, 0x70
/* 80765E6C  4E 80 00 20 */	blr 

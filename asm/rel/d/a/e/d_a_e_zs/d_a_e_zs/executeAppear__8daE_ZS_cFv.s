lbl_80833964:
/* 80833964  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80833968  7C 08 02 A6 */	mflr r0
/* 8083396C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80833970  39 61 00 40 */	addi r11, r1, 0x40
/* 80833974  4B B2 E8 5D */	bl _savegpr_26
/* 80833978  7C 7E 1B 78 */	mr r30, r3
/* 8083397C  3C 80 80 83 */	lis r4, lit_3909@ha /* 0x808352D0@ha */
/* 80833980  3B E4 52 D0 */	addi r31, r4, lit_3909@l /* 0x808352D0@l */
/* 80833984  80 03 06 64 */	lwz r0, 0x664(r3)
/* 80833988  2C 00 00 02 */	cmpwi r0, 2
/* 8083398C  41 82 01 E0 */	beq lbl_80833B6C
/* 80833990  40 80 00 14 */	bge lbl_808339A4
/* 80833994  2C 00 00 00 */	cmpwi r0, 0
/* 80833998  41 82 00 18 */	beq lbl_808339B0
/* 8083399C  40 80 00 78 */	bge lbl_80833A14
/* 808339A0  48 00 03 78 */	b lbl_80833D18
lbl_808339A4:
/* 808339A4  2C 00 00 0A */	cmpwi r0, 0xa
/* 808339A8  41 82 02 AC */	beq lbl_80833C54
/* 808339AC  48 00 03 6C */	b lbl_80833D18
lbl_808339B0:
/* 808339B0  3C 60 80 83 */	lis r3, s_BossSearch__FPvPv@ha /* 0x8083364C@ha */
/* 808339B4  38 63 36 4C */	addi r3, r3, s_BossSearch__FPvPv@l /* 0x8083364C@l */
/* 808339B8  7F C4 F3 78 */	mr r4, r30
/* 808339BC  4B 7E D9 7D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 808339C0  28 03 00 00 */	cmplwi r3, 0
/* 808339C4  40 82 00 10 */	bne lbl_808339D4
/* 808339C8  7F C3 F3 78 */	mr r3, r30
/* 808339CC  4B 7E 62 B1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 808339D0  48 00 03 48 */	b lbl_80833D18
lbl_808339D4:
/* 808339D4  3C 80 80 83 */	lis r4, struct_808354C0+0x0@ha /* 0x808354C0@ha */
/* 808339D8  8C 04 54 C0 */	lbzu r0, struct_808354C0+0x0@l(r4)  /* 0x808354C0@l */
/* 808339DC  28 00 00 00 */	cmplwi r0, 0
/* 808339E0  40 82 00 18 */	bne lbl_808339F8
/* 808339E4  80 03 06 80 */	lwz r0, 0x680(r3)
/* 808339E8  2C 00 00 01 */	cmpwi r0, 1
/* 808339EC  41 82 03 2C */	beq lbl_80833D18
/* 808339F0  38 00 00 01 */	li r0, 1
/* 808339F4  98 04 00 00 */	stb r0, 0(r4)
lbl_808339F8:
/* 808339F8  7F C3 F3 78 */	mr r3, r30
/* 808339FC  4B FF FC 9D */	bl mBossHandCheck__8daE_ZS_cFv
/* 80833A00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80833A04  40 82 03 14 */	bne lbl_80833D18
/* 80833A08  38 00 00 01 */	li r0, 1
/* 80833A0C  90 1E 06 64 */	stw r0, 0x664(r30)
/* 80833A10  48 00 03 08 */	b lbl_80833D18
lbl_80833A14:
/* 80833A14  88 1E 06 72 */	lbz r0, 0x672(r30)
/* 80833A18  28 00 00 00 */	cmplwi r0, 0
/* 80833A1C  40 82 00 2C */	bne lbl_80833A48
/* 80833A20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80833A24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80833A28  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80833A2C  4B 7E 6D B5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80833A30  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x808354B0@ha */
/* 80833A34  38 63 54 B0 */	addi r3, r3, l_HIO@l /* 0x808354B0@l */
/* 80833A38  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80833A3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80833A40  4C 40 13 82 */	cror 2, 0, 2
/* 80833A44  40 82 02 D4 */	bne lbl_80833D18
lbl_80833A48:
/* 80833A48  88 1E 06 72 */	lbz r0, 0x672(r30)
/* 80833A4C  28 00 00 02 */	cmplwi r0, 2
/* 80833A50  40 82 00 34 */	bne lbl_80833A84
/* 80833A54  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 80833A58  2C 00 00 09 */	cmpwi r0, 9
/* 80833A5C  41 82 00 4C */	beq lbl_80833AA8
/* 80833A60  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80833A64  D0 1E 06 5C */	stfs f0, 0x65c(r30)
/* 80833A68  7F C3 F3 78 */	mr r3, r30
/* 80833A6C  38 80 00 09 */	li r4, 9
/* 80833A70  38 A0 00 02 */	li r5, 2
/* 80833A74  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80833A78  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80833A7C  4B FF F7 69 */	bl setBck__8daE_ZS_cFiUcff
/* 80833A80  48 00 00 28 */	b lbl_80833AA8
lbl_80833A84:
/* 80833A84  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 80833A88  2C 00 00 04 */	cmpwi r0, 4
/* 80833A8C  41 82 00 1C */	beq lbl_80833AA8
/* 80833A90  7F C3 F3 78 */	mr r3, r30
/* 80833A94  38 80 00 04 */	li r4, 4
/* 80833A98  38 A0 00 00 */	li r5, 0
/* 80833A9C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80833AA0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80833AA4  4B FF F7 41 */	bl setBck__8daE_ZS_cFiUcff
lbl_80833AA8:
/* 80833AA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704B6@ha */
/* 80833AAC  38 03 04 B6 */	addi r0, r3, 0x04B6 /* 0x000704B6@l */
/* 80833AB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80833AB4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80833AB8  38 81 00 20 */	addi r4, r1, 0x20
/* 80833ABC  38 A0 00 00 */	li r5, 0
/* 80833AC0  38 C0 FF FF */	li r6, -1
/* 80833AC4  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 80833AC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80833ACC  7D 89 03 A6 */	mtctr r12
/* 80833AD0  4E 80 04 21 */	bctrl 
/* 80833AD4  3B 40 00 00 */	li r26, 0
/* 80833AD8  3B A0 00 00 */	li r29, 0
/* 80833ADC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80833AE0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80833AE4  3C 60 80 83 */	lis r3, eff_Appear_id@ha /* 0x808353D0@ha */
/* 80833AE8  3B 83 53 D0 */	addi r28, r3, eff_Appear_id@l /* 0x808353D0@l */
lbl_80833AEC:
/* 80833AEC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80833AF0  38 80 00 00 */	li r4, 0
/* 80833AF4  90 81 00 08 */	stw r4, 8(r1)
/* 80833AF8  38 00 FF FF */	li r0, -1
/* 80833AFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80833B00  90 81 00 10 */	stw r4, 0x10(r1)
/* 80833B04  90 81 00 14 */	stw r4, 0x14(r1)
/* 80833B08  90 81 00 18 */	stw r4, 0x18(r1)
/* 80833B0C  38 80 00 00 */	li r4, 0
/* 80833B10  7C BC EA 2E */	lhzx r5, r28, r29
/* 80833B14  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80833B18  38 E0 00 00 */	li r7, 0
/* 80833B1C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80833B20  39 20 00 00 */	li r9, 0
/* 80833B24  39 40 00 FF */	li r10, 0xff
/* 80833B28  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80833B2C  4B 81 8F 65 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80833B30  3B 5A 00 01 */	addi r26, r26, 1
/* 80833B34  2C 1A 00 02 */	cmpwi r26, 2
/* 80833B38  3B BD 00 02 */	addi r29, r29, 2
/* 80833B3C  41 80 FF B0 */	blt lbl_80833AEC
/* 80833B40  38 00 00 01 */	li r0, 1
/* 80833B44  98 1E 06 73 */	stb r0, 0x673(r30)
/* 80833B48  38 00 00 02 */	li r0, 2
/* 80833B4C  90 1E 06 64 */	stw r0, 0x664(r30)
/* 80833B50  80 1E 08 E0 */	lwz r0, 0x8e0(r30)
/* 80833B54  60 00 00 01 */	ori r0, r0, 1
/* 80833B58  90 1E 08 E0 */	stw r0, 0x8e0(r30)
/* 80833B5C  80 1E 08 F4 */	lwz r0, 0x8f4(r30)
/* 80833B60  60 00 00 01 */	ori r0, r0, 1
/* 80833B64  90 1E 08 F4 */	stw r0, 0x8f4(r30)
/* 80833B68  48 00 01 B0 */	b lbl_80833D18
lbl_80833B6C:
/* 80833B6C  88 1E 06 72 */	lbz r0, 0x672(r30)
/* 80833B70  28 00 00 02 */	cmplwi r0, 2
/* 80833B74  40 82 00 84 */	bne lbl_80833BF8
/* 80833B78  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80833B7C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80833B80  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80833B84  4B 7E 6B 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80833B88  7C 64 1B 78 */	mr r4, r3
/* 80833B8C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80833B90  38 A0 00 08 */	li r5, 8
/* 80833B94  38 C0 10 00 */	li r6, 0x1000
/* 80833B98  4B A3 CA 71 */	bl cLib_addCalcAngleS2__FPssss
/* 80833B9C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80833BA0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80833BA4  38 7E 06 5C */	addi r3, r30, 0x65c
/* 80833BA8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80833BAC  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80833BB0  4B A3 BE D1 */	bl cLib_addCalc0__FPfff
/* 80833BB4  C0 3E 06 5C */	lfs f1, 0x65c(r30)
/* 80833BB8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80833BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80833BC0  40 81 01 58 */	ble lbl_80833D18
/* 80833BC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80833BC8  D0 1E 06 5C */	stfs f0, 0x65c(r30)
/* 80833BCC  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 80833BD0  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80833BD4  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80833BD8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80833BDC  64 00 00 20 */	oris r0, r0, 0x20
/* 80833BE0  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80833BE4  7F C3 F3 78 */	mr r3, r30
/* 80833BE8  38 80 00 01 */	li r4, 1
/* 80833BEC  38 A0 00 00 */	li r5, 0
/* 80833BF0  4B FF F6 A1 */	bl setActionMode__8daE_ZS_cFii
/* 80833BF4  48 00 01 24 */	b lbl_80833D18
lbl_80833BF8:
/* 80833BF8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80833BFC  38 80 00 01 */	li r4, 1
/* 80833C00  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80833C04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80833C08  40 82 00 18 */	bne lbl_80833C20
/* 80833C0C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80833C10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80833C14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80833C18  41 82 00 08 */	beq lbl_80833C20
/* 80833C1C  38 80 00 00 */	li r4, 0
lbl_80833C20:
/* 80833C20  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80833C24  41 82 00 F4 */	beq lbl_80833D18
/* 80833C28  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 80833C2C  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80833C30  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80833C34  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80833C38  64 00 00 20 */	oris r0, r0, 0x20
/* 80833C3C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80833C40  7F C3 F3 78 */	mr r3, r30
/* 80833C44  38 80 00 01 */	li r4, 1
/* 80833C48  38 A0 00 00 */	li r5, 0
/* 80833C4C  4B FF F6 45 */	bl setActionMode__8daE_ZS_cFii
/* 80833C50  48 00 00 C8 */	b lbl_80833D18
lbl_80833C54:
/* 80833C54  3C 60 80 83 */	lis r3, s_BossSearch__FPvPv@ha /* 0x8083364C@ha */
/* 80833C58  38 63 36 4C */	addi r3, r3, s_BossSearch__FPvPv@l /* 0x8083364C@l */
/* 80833C5C  7F C4 F3 78 */	mr r4, r30
/* 80833C60  4B 7E D6 D9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80833C64  28 03 00 00 */	cmplwi r3, 0
/* 80833C68  40 82 00 10 */	bne lbl_80833C78
/* 80833C6C  7F C3 F3 78 */	mr r3, r30
/* 80833C70  4B 7E 60 0D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80833C74  48 00 00 A4 */	b lbl_80833D18
lbl_80833C78:
/* 80833C78  88 03 08 51 */	lbz r0, 0x851(r3)
/* 80833C7C  28 00 00 00 */	cmplwi r0, 0
/* 80833C80  40 82 00 98 */	bne lbl_80833D18
/* 80833C84  88 9E 06 72 */	lbz r4, 0x672(r30)
/* 80833C88  28 04 00 01 */	cmplwi r4, 1
/* 80833C8C  40 82 00 10 */	bne lbl_80833C9C
/* 80833C90  88 03 08 54 */	lbz r0, 0x854(r3)
/* 80833C94  28 00 00 00 */	cmplwi r0, 0
/* 80833C98  40 82 00 18 */	bne lbl_80833CB0
lbl_80833C9C:
/* 80833C9C  28 04 00 02 */	cmplwi r4, 2
/* 80833CA0  40 82 00 78 */	bne lbl_80833D18
/* 80833CA4  88 03 08 55 */	lbz r0, 0x855(r3)
/* 80833CA8  28 00 00 00 */	cmplwi r0, 0
/* 80833CAC  41 82 00 6C */	beq lbl_80833D18
lbl_80833CB0:
/* 80833CB0  28 04 00 02 */	cmplwi r4, 2
/* 80833CB4  40 82 00 28 */	bne lbl_80833CDC
/* 80833CB8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80833CBC  D0 1E 06 5C */	stfs f0, 0x65c(r30)
/* 80833CC0  7F C3 F3 78 */	mr r3, r30
/* 80833CC4  38 80 00 09 */	li r4, 9
/* 80833CC8  38 A0 00 02 */	li r5, 2
/* 80833CCC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80833CD0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80833CD4  4B FF F5 11 */	bl setBck__8daE_ZS_cFiUcff
/* 80833CD8  48 00 00 1C */	b lbl_80833CF4
lbl_80833CDC:
/* 80833CDC  7F C3 F3 78 */	mr r3, r30
/* 80833CE0  38 80 00 04 */	li r4, 4
/* 80833CE4  38 A0 00 00 */	li r5, 0
/* 80833CE8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80833CEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80833CF0  4B FF F4 F5 */	bl setBck__8daE_ZS_cFiUcff
lbl_80833CF4:
/* 80833CF4  38 00 00 01 */	li r0, 1
/* 80833CF8  98 1E 06 73 */	stb r0, 0x673(r30)
/* 80833CFC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80833D00  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80833D04  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80833D08  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80833D0C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80833D10  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80833D14  90 1E 06 64 */	stw r0, 0x664(r30)
lbl_80833D18:
/* 80833D18  39 61 00 40 */	addi r11, r1, 0x40
/* 80833D1C  4B B2 E5 01 */	bl _restgpr_26
/* 80833D20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80833D24  7C 08 03 A6 */	mtlr r0
/* 80833D28  38 21 00 40 */	addi r1, r1, 0x40
/* 80833D2C  4E 80 00 20 */	blr 

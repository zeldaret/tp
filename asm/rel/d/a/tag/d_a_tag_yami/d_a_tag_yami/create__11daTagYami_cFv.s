lbl_80D659F8:
/* 80D659F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D659FC  7C 08 02 A6 */	mflr r0
/* 80D65A00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D65A04  39 61 00 30 */	addi r11, r1, 0x30
/* 80D65A08  4B 5F C7 D0 */	b _savegpr_28
/* 80D65A0C  7C 7E 1B 78 */	mr r30, r3
/* 80D65A10  3C 80 80 D6 */	lis r4, l_sph_src@ha
/* 80D65A14  3B E4 62 10 */	addi r31, r4, l_sph_src@l
/* 80D65A18  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D65A1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D65A20  40 82 00 A8 */	bne lbl_80D65AC8
/* 80D65A24  7F C0 F3 79 */	or. r0, r30, r30
/* 80D65A28  41 82 00 94 */	beq lbl_80D65ABC
/* 80D65A2C  7C 1D 03 78 */	mr r29, r0
/* 80D65A30  4B 2B 31 34 */	b __ct__10fopAc_ac_cFv
/* 80D65A34  3B 9D 05 68 */	addi r28, r29, 0x568
/* 80D65A38  7F 83 E3 78 */	mr r3, r28
/* 80D65A3C  4B 31 DF EC */	b __ct__12dCcD_GObjInfFv
/* 80D65A40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D65A44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D65A48  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D65A4C  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha
/* 80D65A50  38 03 62 F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D65A54  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80D65A58  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D65A5C  38 03 62 E8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D65A60  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D65A64  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D65A68  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D65A6C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80D65A70  38 03 00 58 */	addi r0, r3, 0x58
/* 80D65A74  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D65A78  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D65A7C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D65A80  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80D65A84  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D65A88  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D65A8C  38 03 00 84 */	addi r0, r3, 0x84
/* 80D65A90  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D65A94  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D65A98  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D65A9C  90 1D 06 BC */	stw r0, 0x6bc(r29)
/* 80D65AA0  38 7D 06 C0 */	addi r3, r29, 0x6c0
/* 80D65AA4  4B 31 DC BC */	b __ct__10dCcD_GSttsFv
/* 80D65AA8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D65AAC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D65AB0  90 7D 06 BC */	stw r3, 0x6bc(r29)
/* 80D65AB4  38 03 00 20 */	addi r0, r3, 0x20
/* 80D65AB8  90 1D 06 C0 */	stw r0, 0x6c0(r29)
lbl_80D65ABC:
/* 80D65ABC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D65AC0  60 00 00 08 */	ori r0, r0, 8
/* 80D65AC4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D65AC8:
/* 80D65AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D65ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D65AD0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D65AD4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D65AD8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D65ADC  A0 84 04 74 */	lhz r4, 0x474(r4)
/* 80D65AE0  4B 2C EE DC */	b isEventBit__11dSv_event_cCFUs
/* 80D65AE4  2C 03 00 00 */	cmpwi r3, 0
/* 80D65AE8  41 82 00 0C */	beq lbl_80D65AF4
/* 80D65AEC  38 60 00 05 */	li r3, 5
/* 80D65AF0  48 00 01 1C */	b lbl_80D65C0C
lbl_80D65AF4:
/* 80D65AF4  38 7E 06 A4 */	addi r3, r30, 0x6a4
/* 80D65AF8  38 80 00 FF */	li r4, 0xff
/* 80D65AFC  38 A0 00 FF */	li r5, 0xff
/* 80D65B00  7F C6 F3 78 */	mr r6, r30
/* 80D65B04  4B 31 DD 5C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D65B08  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D65B0C  38 9F 00 00 */	addi r4, r31, 0
/* 80D65B10  4B 31 ED A4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D65B14  38 1E 06 A4 */	addi r0, r30, 0x6a4
/* 80D65B18  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 80D65B1C  38 00 00 00 */	li r0, 0
/* 80D65B20  90 1E 07 00 */	stw r0, 0x700(r30)
/* 80D65B24  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D65B28  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D65B2C  90 1E 06 E4 */	stw r0, 0x6e4(r30)
/* 80D65B30  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D65B34  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D65B38  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80D65B3C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D65B40  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D65B44  2C 00 00 02 */	cmpwi r0, 2
/* 80D65B48  41 82 00 08 */	beq lbl_80D65B50
/* 80D65B4C  48 00 00 B4 */	b lbl_80D65C00
lbl_80D65B50:
/* 80D65B50  7F C3 F3 78 */	mr r3, r30
/* 80D65B54  38 81 00 14 */	addi r4, r1, 0x14
/* 80D65B58  48 00 01 09 */	bl calcCoC__11daTagYami_cFR4cXyz
/* 80D65B5C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D65B60  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D65B64  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D65B68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D65B6C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D65B70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D65B74  7F C3 F3 78 */	mr r3, r30
/* 80D65B78  38 81 00 08 */	addi r4, r1, 8
/* 80D65B7C  48 00 05 85 */	bl setCoC__11daTagYami_cF4cXyz
/* 80D65B80  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D65B84  D0 1E 06 FC */	stfs f0, 0x6fc(r30)
/* 80D65B88  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80D65B8C  D0 1E 06 F8 */	stfs f0, 0x6f8(r30)
/* 80D65B90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D65B94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D65B98  38 80 00 3D */	li r4, 0x3d
/* 80D65B9C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D65BA0  7C 05 07 74 */	extsb r5, r0
/* 80D65BA4  4B 2C F7 BC */	b isSwitch__10dSv_info_cCFii
/* 80D65BA8  2C 03 00 00 */	cmpwi r3, 0
/* 80D65BAC  41 82 00 3C */	beq lbl_80D65BE8
/* 80D65BB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D65BB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D65BB8  38 80 00 3E */	li r4, 0x3e
/* 80D65BBC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D65BC0  7C 05 07 74 */	extsb r5, r0
/* 80D65BC4  4B 2C F7 9C */	b isSwitch__10dSv_info_cCFii
/* 80D65BC8  2C 03 00 00 */	cmpwi r3, 0
/* 80D65BCC  41 82 00 1C */	beq lbl_80D65BE8
/* 80D65BD0  80 1E 05 94 */	lwz r0, 0x594(r30)
/* 80D65BD4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D65BD8  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80D65BDC  38 00 00 00 */	li r0, 0
/* 80D65BE0  98 1E 06 E0 */	stb r0, 0x6e0(r30)
/* 80D65BE4  48 00 00 24 */	b lbl_80D65C08
lbl_80D65BE8:
/* 80D65BE8  80 1E 05 94 */	lwz r0, 0x594(r30)
/* 80D65BEC  60 00 00 01 */	ori r0, r0, 1
/* 80D65BF0  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80D65BF4  38 00 00 01 */	li r0, 1
/* 80D65BF8  98 1E 06 E0 */	stb r0, 0x6e0(r30)
/* 80D65BFC  48 00 00 0C */	b lbl_80D65C08
lbl_80D65C00:
/* 80D65C00  38 60 00 05 */	li r3, 5
/* 80D65C04  48 00 00 08 */	b lbl_80D65C0C
lbl_80D65C08:
/* 80D65C08  38 60 00 04 */	li r3, 4
lbl_80D65C0C:
/* 80D65C0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D65C10  4B 5F C6 14 */	b _restgpr_28
/* 80D65C14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D65C18  7C 08 03 A6 */	mtlr r0
/* 80D65C1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D65C20  4E 80 00 20 */	blr 

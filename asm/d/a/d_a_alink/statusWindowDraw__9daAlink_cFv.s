lbl_80140984:
/* 80140984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80140988  7C 08 02 A6 */	mflr r0
/* 8014098C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80140990  39 61 00 20 */	addi r11, r1, 0x20
/* 80140994  48 22 18 49 */	bl _savegpr_29
/* 80140998  7C 7D 1B 78 */	mr r29, r3
/* 8014099C  88 03 2F BF */	lbz r0, 0x2fbf(r3)
/* 801409A0  28 00 00 00 */	cmplwi r0, 0
/* 801409A4  40 82 01 0C */	bne lbl_80140AB0
/* 801409A8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801409AC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801409B0  38 80 00 0C */	li r4, 0xc
/* 801409B4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 801409B8  38 DD 01 0C */	addi r6, r29, 0x10c
/* 801409BC  48 06 2E 09 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 801409C0  7F A3 EB 78 */	mr r3, r29
/* 801409C4  4B F8 BE 19 */	bl initTevCustomColor__9daAlink_cFv
/* 801409C8  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 801409CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801409D0  40 82 00 18 */	bne lbl_801409E8
/* 801409D4  7F A3 EB 78 */	mr r3, r29
/* 801409D8  38 82 97 E8 */	la r4, waterColor(r2) /* 804531E8-_SDA2_BASE_ */
/* 801409DC  4B F8 B9 89 */	bl setWaterDropColor__9daAlink_cFPC13J3DGXColorS10
/* 801409E0  7F A3 EB 78 */	mr r3, r29
/* 801409E4  4B F8 A5 E5 */	bl setDrawHand__9daAlink_cFv
lbl_801409E8:
/* 801409E8  7F A3 EB 78 */	mr r3, r29
/* 801409EC  80 9D 06 50 */	lwz r4, 0x650(r29)
/* 801409F0  4B F8 B8 A9 */	bl basicModelDraw__9daAlink_cFP8J3DModel
/* 801409F4  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 801409F8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801409FC  40 82 00 5C */	bne lbl_80140A58
/* 80140A00  7F A3 EB 78 */	mr r3, r29
/* 80140A04  80 9D 06 5C */	lwz r4, 0x65c(r29)
/* 80140A08  4B F8 B8 91 */	bl basicModelDraw__9daAlink_cFP8J3DModel
/* 80140A0C  7F A3 EB 78 */	mr r3, r29
/* 80140A10  80 9D 06 58 */	lwz r4, 0x658(r29)
/* 80140A14  4B F8 B8 85 */	bl basicModelDraw__9daAlink_cFP8J3DModel
/* 80140A18  7F A3 EB 78 */	mr r3, r29
/* 80140A1C  80 9D 06 54 */	lwz r4, 0x654(r29)
/* 80140A20  4B F8 B8 79 */	bl basicModelDraw__9daAlink_cFP8J3DModel
/* 80140A24  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80140A28  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80140A2C  41 82 00 2C */	beq lbl_80140A58
/* 80140A30  3B C0 00 00 */	li r30, 0
/* 80140A34  3B E0 00 00 */	li r31, 0
lbl_80140A38:
/* 80140A38  7F A3 EB 78 */	mr r3, r29
/* 80140A3C  38 1F 07 84 */	addi r0, r31, 0x784
/* 80140A40  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80140A44  4B F8 B8 55 */	bl basicModelDraw__9daAlink_cFP8J3DModel
/* 80140A48  3B DE 00 01 */	addi r30, r30, 1
/* 80140A4C  2C 1E 00 02 */	cmpwi r30, 2
/* 80140A50  3B FF 00 04 */	addi r31, r31, 4
/* 80140A54  41 80 FF E4 */	blt lbl_80140A38
lbl_80140A58:
/* 80140A58  7F A3 EB 78 */	mr r3, r29
/* 80140A5C  4B F8 AA 25 */	bl checkSwordDraw__9daAlink_cFv
/* 80140A60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80140A64  41 82 00 30 */	beq lbl_80140A94
/* 80140A68  7F A3 EB 78 */	mr r3, r29
/* 80140A6C  80 9D 06 B8 */	lwz r4, 0x6b8(r29)
/* 80140A70  4B F8 B8 29 */	bl basicModelDraw__9daAlink_cFP8J3DModel
/* 80140A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80140A78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80140A7C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80140A80  28 00 00 3F */	cmplwi r0, 0x3f
/* 80140A84  41 82 00 10 */	beq lbl_80140A94
/* 80140A88  7F A3 EB 78 */	mr r3, r29
/* 80140A8C  80 9D 06 BC */	lwz r4, 0x6bc(r29)
/* 80140A90  4B F8 B8 09 */	bl basicModelDraw__9daAlink_cFP8J3DModel
lbl_80140A94:
/* 80140A94  7F A3 EB 78 */	mr r3, r29
/* 80140A98  4B F8 AA A5 */	bl checkShieldDraw__9daAlink_cFv
/* 80140A9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80140AA0  41 82 00 10 */	beq lbl_80140AB0
/* 80140AA4  7F A3 EB 78 */	mr r3, r29
/* 80140AA8  80 9D 06 78 */	lwz r4, 0x678(r29)
/* 80140AAC  4B F8 B7 ED */	bl basicModelDraw__9daAlink_cFP8J3DModel
lbl_80140AB0:
/* 80140AB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80140AB4  48 22 17 75 */	bl _restgpr_29
/* 80140AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80140ABC  7C 08 03 A6 */	mtlr r0
/* 80140AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80140AC4  4E 80 00 20 */	blr 

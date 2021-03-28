lbl_800269B4:
/* 800269B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800269B8  7C 08 02 A6 */	mflr r0
/* 800269BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800269C0  39 61 00 20 */	addi r11, r1, 0x20
/* 800269C4  48 33 B8 15 */	bl _savegpr_28
/* 800269C8  7C 7E 1B 78 */	mr r30, r3
/* 800269CC  7C 9F 23 78 */	mr r31, r4
/* 800269D0  2C 05 FF FF */	cmpwi r5, -1
/* 800269D4  41 82 00 0C */	beq lbl_800269E0
/* 800269D8  7C BD 2B 78 */	mr r29, r5
/* 800269DC  48 00 00 18 */	b lbl_800269F4
lbl_800269E0:
/* 800269E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800269E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800269E8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 800269EC  7C 00 07 74 */	extsb r0, r0
/* 800269F0  7C 1D 03 78 */	mr r29, r0
lbl_800269F4:
/* 800269F4  38 60 00 00 */	li r3, 0
/* 800269F8  48 00 5F 85 */	bl getLayerNo__14dComIfG_play_cFi
/* 800269FC  7C 65 1B 78 */	mr r5, r3
/* 80026A00  3C 60 80 3A */	lis r3, l_layerFuncTableA@ha
/* 80026A04  38 63 66 44 */	addi r3, r3, l_layerFuncTableA@l
/* 80026A08  38 80 00 01 */	li r4, 1
/* 80026A0C  4B FF F6 75 */	bl dStage_setLayerTagName__FP9FuncTableii
/* 80026A10  7F C3 F3 78 */	mr r3, r30
/* 80026A14  7F E4 FB 78 */	mr r4, r31
/* 80026A18  3C A0 80 3A */	lis r5, l_layerFuncTableA@ha
/* 80026A1C  38 A5 66 44 */	addi r5, r5, l_layerFuncTableA@l
/* 80026A20  38 C0 00 01 */	li r6, 1
/* 80026A24  4B FF F6 91 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026A28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80026A2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80026A30  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80026A34  81 8C 01 70 */	lwz r12, 0x170(r12)
/* 80026A38  7D 89 03 A6 */	mtctr r12
/* 80026A3C  4E 80 04 21 */	bctrl 
/* 80026A40  28 03 00 00 */	cmplwi r3, 0
/* 80026A44  41 82 00 60 */	beq lbl_80026AA4
/* 80026A48  2C 1D 00 00 */	cmpwi r29, 0
/* 80026A4C  41 80 00 58 */	blt lbl_80026AA4
/* 80026A50  80 03 00 00 */	lwz r0, 0(r3)
/* 80026A54  7C 00 E8 00 */	cmpw r0, r29
/* 80026A58  40 81 00 4C */	ble lbl_80026AA4
/* 80026A5C  83 83 00 04 */	lwz r28, 4(r3)
/* 80026A60  38 60 00 00 */	li r3, 0
/* 80026A64  48 00 5F 19 */	bl getLayerNo__14dComIfG_play_cFi
/* 80026A68  7C 65 1B 78 */	mr r5, r3
/* 80026A6C  3C 60 80 3A */	lis r3, l_envLayerFuncTable@ha
/* 80026A70  38 63 66 50 */	addi r3, r3, l_envLayerFuncTable@l
/* 80026A74  38 80 00 05 */	li r4, 5
/* 80026A78  1C 1D 00 0F */	mulli r0, r29, 0xf
/* 80026A7C  7C 00 2A 14 */	add r0, r0, r5
/* 80026A80  7C BC 00 AE */	lbzx r5, r28, r0
/* 80026A84  4B FF F5 FD */	bl dStage_setLayerTagName__FP9FuncTableii
/* 80026A88  7F C3 F3 78 */	mr r3, r30
/* 80026A8C  7F E4 FB 78 */	mr r4, r31
/* 80026A90  3C A0 80 3A */	lis r5, l_envLayerFuncTable@ha
/* 80026A94  38 A5 66 50 */	addi r5, r5, l_envLayerFuncTable@l
/* 80026A98  38 C0 00 05 */	li r6, 5
/* 80026A9C  4B FF F6 19 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026AA0  48 00 00 30 */	b lbl_80026AD0
lbl_80026AA4:
/* 80026AA4  3C 60 80 3A */	lis r3, l_envLayerFuncTable@ha
/* 80026AA8  38 63 66 50 */	addi r3, r3, l_envLayerFuncTable@l
/* 80026AAC  38 80 00 05 */	li r4, 5
/* 80026AB0  38 A0 00 00 */	li r5, 0
/* 80026AB4  4B FF F5 CD */	bl dStage_setLayerTagName__FP9FuncTableii
/* 80026AB8  7F C3 F3 78 */	mr r3, r30
/* 80026ABC  7F E4 FB 78 */	mr r4, r31
/* 80026AC0  3C A0 80 3A */	lis r5, l_envLayerFuncTable@ha
/* 80026AC4  38 A5 66 50 */	addi r5, r5, l_envLayerFuncTable@l
/* 80026AC8  38 C0 00 05 */	li r6, 5
/* 80026ACC  4B FF F5 E9 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
lbl_80026AD0:
/* 80026AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80026AD4  48 33 B7 51 */	bl _restgpr_28
/* 80026AD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80026ADC  7C 08 03 A6 */	mtlr r0
/* 80026AE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80026AE4  4E 80 00 20 */	blr 

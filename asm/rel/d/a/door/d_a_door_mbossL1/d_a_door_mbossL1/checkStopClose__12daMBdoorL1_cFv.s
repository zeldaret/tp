lbl_806769D0:
/* 806769D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806769D4  7C 08 02 A6 */	mflr r0
/* 806769D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806769DC  39 61 00 20 */	addi r11, r1, 0x20
/* 806769E0  4B CE B7 F9 */	bl _savegpr_28
/* 806769E4  7C 7C 1B 78 */	mr r28, r3
/* 806769E8  4B 9C 37 D1 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 806769EC  7C 7F 1B 78 */	mr r31, r3
/* 806769F0  7F 83 E3 78 */	mr r3, r28
/* 806769F4  4B 9C 37 C5 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 806769F8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806769FC  7C 1E 07 74 */	extsb r30, r0
/* 80676A00  80 1C 05 F8 */	lwz r0, 0x5f8(r28)
/* 80676A04  28 00 00 00 */	cmplwi r0, 0
/* 80676A08  40 82 00 0C */	bne lbl_80676A14
/* 80676A0C  38 60 00 00 */	li r3, 0
/* 80676A10  48 00 00 8C */	b lbl_80676A9C
lbl_80676A14:
/* 80676A14  7F 83 E3 78 */	mr r3, r28
/* 80676A18  4B 9C 37 89 */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80676A1C  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80676A20  7F 83 E3 78 */	mr r3, r28
/* 80676A24  4B 9C 37 89 */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80676A28  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80676A2C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80676A30  7C 1E 00 00 */	cmpw r30, r0
/* 80676A34  40 82 00 20 */	bne lbl_80676A54
/* 80676A38  2C 1D 00 01 */	cmpwi r29, 1
/* 80676A3C  41 82 00 0C */	beq lbl_80676A48
/* 80676A40  38 60 00 00 */	li r3, 0
/* 80676A44  48 00 00 58 */	b lbl_80676A9C
lbl_80676A48:
/* 80676A48  7F 83 E3 78 */	mr r3, r28
/* 80676A4C  4B 9C 37 85 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80676A50  48 00 00 1C */	b lbl_80676A6C
lbl_80676A54:
/* 80676A54  2C 03 00 01 */	cmpwi r3, 1
/* 80676A58  41 82 00 0C */	beq lbl_80676A64
/* 80676A5C  38 60 00 00 */	li r3, 0
/* 80676A60  48 00 00 3C */	b lbl_80676A9C
lbl_80676A64:
/* 80676A64  7F 83 E3 78 */	mr r3, r28
/* 80676A68  4B 9C 37 75 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
lbl_80676A6C:
/* 80676A6C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80676A70  28 04 00 FF */	cmplwi r4, 0xff
/* 80676A74  40 82 00 0C */	bne lbl_80676A80
/* 80676A78  38 60 00 00 */	li r3, 0
/* 80676A7C  48 00 00 20 */	b lbl_80676A9C
lbl_80676A80:
/* 80676A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676A84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676A88  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80676A8C  7C 05 07 74 */	extsb r5, r0
/* 80676A90  4B 9B E8 D1 */	bl isSwitch__10dSv_info_cCFii
/* 80676A94  7C 60 00 34 */	cntlzw r0, r3
/* 80676A98  54 03 D9 7E */	srwi r3, r0, 5
lbl_80676A9C:
/* 80676A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80676AA0  4B CE B7 85 */	bl _restgpr_28
/* 80676AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80676AA8  7C 08 03 A6 */	mtlr r0
/* 80676AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80676AB0  4E 80 00 20 */	blr 

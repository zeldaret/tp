lbl_80AF1A48:
/* 80AF1A48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF1A4C  7C 08 02 A6 */	mflr r0
/* 80AF1A50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF1A54  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF1A58  4B 87 07 7D */	bl _savegpr_27
/* 80AF1A5C  7C 7B 1B 78 */	mr r27, r3
/* 80AF1A60  7C 9C 23 78 */	mr r28, r4
/* 80AF1A64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF1A68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF1A6C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AF1A70  3B C0 00 00 */	li r30, 0
/* 80AF1A74  3B A0 FF FF */	li r29, -1
/* 80AF1A78  7F E3 FB 78 */	mr r3, r31
/* 80AF1A7C  3C A0 80 AF */	lis r5, d_a_npc_soldierA__stringBase0@ha /* 0x80AF2864@ha */
/* 80AF1A80  38 A5 28 64 */	addi r5, r5, d_a_npc_soldierA__stringBase0@l /* 0x80AF2864@l */
/* 80AF1A84  38 A5 00 1F */	addi r5, r5, 0x1f
/* 80AF1A88  38 C0 00 03 */	li r6, 3
/* 80AF1A8C  4B 55 66 61 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AF1A90  28 03 00 00 */	cmplwi r3, 0
/* 80AF1A94  41 82 00 08 */	beq lbl_80AF1A9C
/* 80AF1A98  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80AF1A9C:
/* 80AF1A9C  7F E3 FB 78 */	mr r3, r31
/* 80AF1AA0  7F 84 E3 78 */	mr r4, r28
/* 80AF1AA4  4B 55 62 A9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80AF1AA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1AAC  41 82 00 4C */	beq lbl_80AF1AF8
/* 80AF1AB0  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80AF1AB4  41 82 00 20 */	beq lbl_80AF1AD4
/* 80AF1AB8  40 80 00 10 */	bge lbl_80AF1AC8
/* 80AF1ABC  2C 1D 00 00 */	cmpwi r29, 0
/* 80AF1AC0  41 82 00 38 */	beq lbl_80AF1AF8
/* 80AF1AC4  48 00 00 34 */	b lbl_80AF1AF8
lbl_80AF1AC8:
/* 80AF1AC8  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80AF1ACC  41 82 00 1C */	beq lbl_80AF1AE8
/* 80AF1AD0  48 00 00 28 */	b lbl_80AF1AF8
lbl_80AF1AD4:
/* 80AF1AD4  7F 63 DB 78 */	mr r3, r27
/* 80AF1AD8  80 9B 0E 10 */	lwz r4, 0xe10(r27)
/* 80AF1ADC  38 A0 00 00 */	li r5, 0
/* 80AF1AE0  4B 66 22 3D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AF1AE4  48 00 00 14 */	b lbl_80AF1AF8
lbl_80AF1AE8:
/* 80AF1AE8  7F 63 DB 78 */	mr r3, r27
/* 80AF1AEC  80 9B 0E 10 */	lwz r4, 0xe10(r27)
/* 80AF1AF0  38 A0 00 00 */	li r5, 0
/* 80AF1AF4  4B 66 22 29 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80AF1AF8:
/* 80AF1AF8  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80AF1AFC  41 82 00 28 */	beq lbl_80AF1B24
/* 80AF1B00  40 80 00 10 */	bge lbl_80AF1B10
/* 80AF1B04  2C 1D 00 00 */	cmpwi r29, 0
/* 80AF1B08  41 82 00 14 */	beq lbl_80AF1B1C
/* 80AF1B0C  48 00 00 60 */	b lbl_80AF1B6C
lbl_80AF1B10:
/* 80AF1B10  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80AF1B14  41 82 00 34 */	beq lbl_80AF1B48
/* 80AF1B18  48 00 00 54 */	b lbl_80AF1B6C
lbl_80AF1B1C:
/* 80AF1B1C  3B C0 00 01 */	li r30, 1
/* 80AF1B20  48 00 00 50 */	b lbl_80AF1B70
lbl_80AF1B24:
/* 80AF1B24  7F 63 DB 78 */	mr r3, r27
/* 80AF1B28  38 80 00 00 */	li r4, 0
/* 80AF1B2C  38 A0 00 01 */	li r5, 1
/* 80AF1B30  38 C0 00 00 */	li r6, 0
/* 80AF1B34  4B 66 22 51 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AF1B38  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1B3C  41 82 00 34 */	beq lbl_80AF1B70
/* 80AF1B40  3B C0 00 01 */	li r30, 1
/* 80AF1B44  48 00 00 2C */	b lbl_80AF1B70
lbl_80AF1B48:
/* 80AF1B48  7F 63 DB 78 */	mr r3, r27
/* 80AF1B4C  38 80 00 00 */	li r4, 0
/* 80AF1B50  38 A0 00 01 */	li r5, 1
/* 80AF1B54  38 C0 00 00 */	li r6, 0
/* 80AF1B58  4B 66 22 2D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AF1B5C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1B60  41 82 00 10 */	beq lbl_80AF1B70
/* 80AF1B64  3B C0 00 01 */	li r30, 1
/* 80AF1B68  48 00 00 08 */	b lbl_80AF1B70
lbl_80AF1B6C:
/* 80AF1B6C  3B C0 00 01 */	li r30, 1
lbl_80AF1B70:
/* 80AF1B70  7F C3 F3 78 */	mr r3, r30
/* 80AF1B74  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF1B78  4B 87 06 A9 */	bl _restgpr_27
/* 80AF1B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF1B80  7C 08 03 A6 */	mtlr r0
/* 80AF1B84  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF1B88  4E 80 00 20 */	blr 

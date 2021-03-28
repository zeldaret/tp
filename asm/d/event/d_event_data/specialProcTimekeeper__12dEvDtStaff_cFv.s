lbl_80045AFC:
/* 80045AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80045B00  7C 08 02 A6 */	mflr r0
/* 80045B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80045B08  39 61 00 20 */	addi r11, r1, 0x20
/* 80045B0C  48 31 C6 CD */	bl _savegpr_28
/* 80045B10  7C 7E 1B 78 */	mr r30, r3
/* 80045B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80045B18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80045B1C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80045B20  7F E3 FB 78 */	mr r3, r31
/* 80045B24  3C 80 80 38 */	lis r4, d_event_d_event_data__stringBase0@ha
/* 80045B28  38 84 9D D0 */	addi r4, r4, d_event_d_event_data__stringBase0@l
/* 80045B2C  38 84 01 53 */	addi r4, r4, 0x153
/* 80045B30  38 A0 00 00 */	li r5, 0
/* 80045B34  38 C0 00 00 */	li r6, 0
/* 80045B38  48 00 1F E5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80045B3C  7C 7C 1B 78 */	mr r28, r3
/* 80045B40  2C 1C FF FF */	cmpwi r28, -1
/* 80045B44  41 82 00 D8 */	beq lbl_80045C1C
/* 80045B48  7F E3 FB 78 */	mr r3, r31
/* 80045B4C  7F 84 E3 78 */	mr r4, r28
/* 80045B50  48 00 24 0D */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80045B54  7C 7D 1B 78 */	mr r29, r3
/* 80045B58  7F E3 FB 78 */	mr r3, r31
/* 80045B5C  7F 84 E3 78 */	mr r4, r28
/* 80045B60  48 00 21 ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 80045B64  2C 03 00 00 */	cmpwi r3, 0
/* 80045B68  41 82 00 54 */	beq lbl_80045BBC
/* 80045B6C  80 9D 00 00 */	lwz r4, 0(r29)
/* 80045B70  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80045B74  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80045B78  7C 04 00 00 */	cmpw r4, r0
/* 80045B7C  41 82 00 40 */	beq lbl_80045BBC
/* 80045B80  40 80 00 3C */	bge lbl_80045BBC
/* 80045B84  3C 60 43 4F */	lis r3, 0x434F /* 0x434F554E@ha */
/* 80045B88  38 03 55 4E */	addi r0, r3, 0x554E /* 0x434F554E@l */
/* 80045B8C  7C 04 00 00 */	cmpw r4, r0
/* 80045B90  41 82 00 08 */	beq lbl_80045B98
/* 80045B94  48 00 00 28 */	b lbl_80045BBC
lbl_80045B98:
/* 80045B98  7F E3 FB 78 */	mr r3, r31
/* 80045B9C  7F 84 E3 78 */	mr r4, r28
/* 80045BA0  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045BA4  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045BA8  38 A5 00 3D */	addi r5, r5, 0x3d
/* 80045BAC  38 C0 00 03 */	li r6, 3
/* 80045BB0  48 00 25 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045BB4  80 03 00 00 */	lwz r0, 0(r3)
/* 80045BB8  90 1E 00 42 */	stw r0, 0x42(r30)
lbl_80045BBC:
/* 80045BBC  80 9D 00 00 */	lwz r4, 0(r29)
/* 80045BC0  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80045BC4  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80045BC8  7C 04 00 00 */	cmpw r4, r0
/* 80045BCC  41 82 00 44 */	beq lbl_80045C10
/* 80045BD0  40 80 00 40 */	bge lbl_80045C10
/* 80045BD4  3C 60 43 4F */	lis r3, 0x434F /* 0x434F554E@ha */
/* 80045BD8  38 03 55 4E */	addi r0, r3, 0x554E /* 0x434F554E@l */
/* 80045BDC  7C 04 00 00 */	cmpw r4, r0
/* 80045BE0  41 82 00 08 */	beq lbl_80045BE8
/* 80045BE4  48 00 00 2C */	b lbl_80045C10
lbl_80045BE8:
/* 80045BE8  80 7E 00 42 */	lwz r3, 0x42(r30)
/* 80045BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80045BF0  40 81 00 10 */	ble lbl_80045C00
/* 80045BF4  38 03 FF FF */	addi r0, r3, -1
/* 80045BF8  90 1E 00 42 */	stw r0, 0x42(r30)
/* 80045BFC  48 00 00 20 */	b lbl_80045C1C
lbl_80045C00:
/* 80045C00  7F E3 FB 78 */	mr r3, r31
/* 80045C04  7F 84 E3 78 */	mr r4, r28
/* 80045C08  48 00 25 75 */	bl cutEnd__16dEvent_manager_cFi
/* 80045C0C  48 00 00 10 */	b lbl_80045C1C
lbl_80045C10:
/* 80045C10  7F E3 FB 78 */	mr r3, r31
/* 80045C14  7F 84 E3 78 */	mr r4, r28
/* 80045C18  48 00 25 65 */	bl cutEnd__16dEvent_manager_cFi
lbl_80045C1C:
/* 80045C1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80045C20  48 31 C6 05 */	bl _restgpr_28
/* 80045C24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80045C28  7C 08 03 A6 */	mtlr r0
/* 80045C2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80045C30  4E 80 00 20 */	blr 

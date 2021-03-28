lbl_80046A58:
/* 80046A58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046A5C  7C 08 02 A6 */	mflr r0
/* 80046A60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80046A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80046A68  48 31 B7 75 */	bl _savegpr_29
/* 80046A6C  7C 7F 1B 78 */	mr r31, r3
/* 80046A70  38 60 00 00 */	li r3, 0
/* 80046A74  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80046A78  2C 00 FF FE */	cmpwi r0, -2
/* 80046A7C  40 82 00 0C */	bne lbl_80046A88
/* 80046A80  38 60 FF FE */	li r3, -2
/* 80046A84  48 00 01 70 */	b lbl_80046BF4
lbl_80046A88:
/* 80046A88  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80046A8C  40 81 00 50 */	ble lbl_80046ADC
/* 80046A90  2C 00 00 D7 */	cmpwi r0, 0xd7
/* 80046A94  40 80 00 48 */	bge lbl_80046ADC
/* 80046A98  38 7F 01 90 */	addi r3, r31, 0x190
/* 80046A9C  4B FF F9 E5 */	bl getEventName__18dEvent_exception_cFv
/* 80046AA0  7C 64 1B 78 */	mr r4, r3
/* 80046AA4  7F E3 FB 78 */	mr r3, r31
/* 80046AA8  38 A0 00 FF */	li r5, 0xff
/* 80046AAC  38 C0 FF FF */	li r6, -1
/* 80046AB0  48 00 0A 65 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80046AB4  7C 7E 1B 78 */	mr r30, r3
/* 80046AB8  38 60 00 00 */	li r3, 0
/* 80046ABC  7F C4 F3 78 */	mr r4, r30
/* 80046AC0  38 A0 00 FF */	li r5, 0xff
/* 80046AC4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80046AC8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80046ACC  38 E0 00 05 */	li r7, 5
/* 80046AD0  39 00 00 01 */	li r8, 1
/* 80046AD4  4B FD 4B A9 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80046AD8  48 00 00 D0 */	b lbl_80046BA8
lbl_80046ADC:
/* 80046ADC  2C 00 FF FF */	cmpwi r0, -1
/* 80046AE0  41 82 00 4C */	beq lbl_80046B2C
/* 80046AE4  2C 00 00 FF */	cmpwi r0, 0xff
/* 80046AE8  41 82 00 44 */	beq lbl_80046B2C
/* 80046AEC  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80046AF0  7F E3 FB 78 */	mr r3, r31
/* 80046AF4  38 80 00 00 */	li r4, 0
/* 80046AF8  7F A5 EB 78 */	mr r5, r29
/* 80046AFC  38 C0 FF FF */	li r6, -1
/* 80046B00  48 00 0A 15 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80046B04  7C 7E 1B 78 */	mr r30, r3
/* 80046B08  38 60 00 00 */	li r3, 0
/* 80046B0C  7F A4 EB 78 */	mr r4, r29
/* 80046B10  7F C5 F3 78 */	mr r5, r30
/* 80046B14  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80046B18  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80046B1C  38 E0 00 01 */	li r7, 1
/* 80046B20  39 00 00 05 */	li r8, 5
/* 80046B24  4B FD 4D BD */	bl fopAcM_orderMapToolAutoNextEvent__FP10fopAc_ac_cUcsUsUsUs
/* 80046B28  48 00 00 80 */	b lbl_80046BA8
lbl_80046B2C:
/* 80046B2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80046B30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80046B34  A8 04 4E 08 */	lha r0, 0x4e08(r4)
/* 80046B38  2C 00 FF FE */	cmpwi r0, -2
/* 80046B3C  41 82 00 10 */	beq lbl_80046B4C
/* 80046B40  7C 00 07 34 */	extsh r0, r0
/* 80046B44  2C 00 FF FD */	cmpwi r0, -3
/* 80046B48  40 82 00 60 */	bne lbl_80046BA8
lbl_80046B4C:
/* 80046B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80046B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80046B54  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80046B58  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80046B5C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80046B60  7F E3 FB 78 */	mr r3, r31
/* 80046B64  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha
/* 80046B68  38 A4 9F 60 */	addi r5, r4, d_event_d_event_manager__stringBase0@l
/* 80046B6C  38 85 01 3A */	addi r4, r5, 0x13a
/* 80046B70  41 82 00 08 */	beq lbl_80046B78
/* 80046B74  38 85 01 24 */	addi r4, r5, 0x124
lbl_80046B78:
/* 80046B78  38 A0 00 FF */	li r5, 0xff
/* 80046B7C  38 C0 FF FF */	li r6, -1
/* 80046B80  48 00 09 95 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80046B84  7C 7E 1B 78 */	mr r30, r3
/* 80046B88  38 60 00 00 */	li r3, 0
/* 80046B8C  7F C4 F3 78 */	mr r4, r30
/* 80046B90  38 A0 00 FF */	li r5, 0xff
/* 80046B94  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80046B98  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80046B9C  38 E0 00 05 */	li r7, 5
/* 80046BA0  39 00 00 01 */	li r8, 1
/* 80046BA4  4B FD 4A D9 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80046BA8:
/* 80046BA8  2C 03 00 00 */	cmpwi r3, 0
/* 80046BAC  40 82 00 44 */	bne lbl_80046BF0
/* 80046BB0  7F E3 FB 78 */	mr r3, r31
/* 80046BB4  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha
/* 80046BB8  38 84 9F 60 */	addi r4, r4, d_event_d_event_manager__stringBase0@l
/* 80046BBC  38 84 00 10 */	addi r4, r4, 0x10
/* 80046BC0  38 A0 00 FF */	li r5, 0xff
/* 80046BC4  38 C0 FF FF */	li r6, -1
/* 80046BC8  48 00 09 4D */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80046BCC  7C 7E 1B 78 */	mr r30, r3
/* 80046BD0  38 60 00 00 */	li r3, 0
/* 80046BD4  7F C4 F3 78 */	mr r4, r30
/* 80046BD8  38 A0 00 FF */	li r5, 0xff
/* 80046BDC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80046BE0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80046BE4  38 E0 00 05 */	li r7, 5
/* 80046BE8  39 00 00 01 */	li r8, 1
/* 80046BEC  4B FD 4A 91 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80046BF0:
/* 80046BF0  7F C3 07 34 */	extsh r3, r30
lbl_80046BF4:
/* 80046BF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80046BF8  48 31 B6 31 */	bl _restgpr_29
/* 80046BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80046C00  7C 08 03 A6 */	mtlr r0
/* 80046C04  38 21 00 20 */	addi r1, r1, 0x20
/* 80046C08  4E 80 00 20 */	blr 

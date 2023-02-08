lbl_80041A20:
/* 80041A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80041A24  7C 08 02 A6 */	mflr r0
/* 80041A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80041A2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80041A30  48 32 07 AD */	bl _savegpr_29
/* 80041A34  7C 7F 1B 78 */	mr r31, r3
/* 80041A38  3C 60 80 38 */	lis r3, d_event_d_event__stringBase0@ha /* 0x80379D80@ha */
/* 80041A3C  38 63 9D 80 */	addi r3, r3, d_event_d_event__stringBase0@l /* 0x80379D80@l */
/* 80041A40  3B C3 00 0B */	addi r30, r3, 0xb
/* 80041A44  83 A4 00 0C */	lwz r29, 0xc(r4)
/* 80041A48  A8 7D 00 08 */	lha r3, 8(r29)
/* 80041A4C  2C 03 02 C1 */	cmpwi r3, 0x2c1
/* 80041A50  40 82 00 10 */	bne lbl_80041A60
/* 80041A54  88 1D 05 6D */	lbz r0, 0x56d(r29)
/* 80041A58  28 00 00 FF */	cmplwi r0, 0xff
/* 80041A5C  41 82 00 20 */	beq lbl_80041A7C
lbl_80041A60:
/* 80041A60  2C 03 02 C4 */	cmpwi r3, 0x2c4
/* 80041A64  40 82 00 10 */	bne lbl_80041A74
/* 80041A68  88 1D 05 6B */	lbz r0, 0x56b(r29)
/* 80041A6C  28 00 00 FF */	cmplwi r0, 0xff
/* 80041A70  41 82 00 0C */	beq lbl_80041A7C
lbl_80041A74:
/* 80041A74  2C 03 00 FF */	cmpwi r3, 0xff
/* 80041A78  40 82 00 38 */	bne lbl_80041AB0
lbl_80041A7C:
/* 80041A7C  80 AD 8A 98 */	lwz r5, m_midnaActor__9daPy_py_c(r13)
/* 80041A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80041A84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80041A88  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80041A8C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80041A90  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80041A94  41 82 00 10 */	beq lbl_80041AA4
/* 80041A98  80 05 08 90 */	lwz r0, 0x890(r5)
/* 80041A9C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80041AA0  41 82 00 10 */	beq lbl_80041AB0
lbl_80041AA4:
/* 80041AA4  3C 60 80 38 */	lis r3, d_event_d_event__stringBase0@ha /* 0x80379D80@ha */
/* 80041AA8  38 63 9D 80 */	addi r3, r3, d_event_d_event__stringBase0@l /* 0x80379D80@l */
/* 80041AAC  3B C3 00 18 */	addi r30, r3, 0x18
lbl_80041AB0:
/* 80041AB0  7F E3 FB 78 */	mr r3, r31
/* 80041AB4  38 A0 00 01 */	li r5, 1
/* 80041AB8  38 C0 00 01 */	li r6, 1
/* 80041ABC  4B FF FE ED */	bl commonCheck__14dEvt_control_cFP12dEvt_order_cUsUs
/* 80041AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80041AC4  41 82 00 78 */	beq lbl_80041B3C
/* 80041AC8  38 00 00 01 */	li r0, 1
/* 80041ACC  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80041AD0  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80041AD4  2C 00 FF FF */	cmpwi r0, -1
/* 80041AD8  40 82 00 48 */	bne lbl_80041B20
/* 80041ADC  28 1D 00 00 */	cmplwi r29, 0
/* 80041AE0  41 82 00 20 */	beq lbl_80041B00
/* 80041AE4  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 80041AE8  48 00 19 99 */	bl getEventName__11dEvt_info_cFv
/* 80041AEC  28 03 00 00 */	cmplwi r3, 0
/* 80041AF0  41 82 00 10 */	beq lbl_80041B00
/* 80041AF4  A8 1D 00 FC */	lha r0, 0xfc(r29)
/* 80041AF8  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 80041AFC  48 00 00 24 */	b lbl_80041B20
lbl_80041B00:
/* 80041B00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80041B04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80041B08  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80041B0C  7F C4 F3 78 */	mr r4, r30
/* 80041B10  38 A0 00 FF */	li r5, 0xff
/* 80041B14  38 C0 FF FF */	li r6, -1
/* 80041B18  48 00 59 FD */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80041B1C  B0 7F 00 DE */	sth r3, 0xde(r31)
lbl_80041B20:
/* 80041B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80041B24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80041B28  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80041B2C  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 80041B30  48 00 5E 55 */	bl order__16dEvent_manager_cFs
/* 80041B34  38 60 00 01 */	li r3, 1
/* 80041B38  48 00 00 08 */	b lbl_80041B40
lbl_80041B3C:
/* 80041B3C  38 60 00 00 */	li r3, 0
lbl_80041B40:
/* 80041B40  39 61 00 20 */	addi r11, r1, 0x20
/* 80041B44  48 32 06 E5 */	bl _restgpr_29
/* 80041B48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80041B4C  7C 08 03 A6 */	mtlr r0
/* 80041B50  38 21 00 20 */	addi r1, r1, 0x20
/* 80041B54  4E 80 00 20 */	blr 

lbl_8014997C:
/* 8014997C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80149980  7C 08 02 A6 */	mflr r0
/* 80149984  90 01 00 24 */	stw r0, 0x24(r1)
/* 80149988  39 61 00 20 */	addi r11, r1, 0x20
/* 8014998C  48 21 88 4D */	bl _savegpr_28
/* 80149990  7C 7E 1B 78 */	mr r30, r3
/* 80149994  3B E0 00 00 */	li r31, 0
/* 80149998  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014999C  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801499A0  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 801499A4  28 00 00 00 */	cmplwi r0, 0
/* 801499A8  41 82 01 C4 */	beq lbl_80149B6C
/* 801499AC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 801499B0  28 00 00 01 */	cmplwi r0, 1
/* 801499B4  40 82 00 38 */	bne lbl_801499EC
/* 801499B8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 801499BC  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 801499C0  7D 89 03 A6 */	mtctr r12
/* 801499C4  4E 80 04 21 */	bctrl 
/* 801499C8  2C 03 00 00 */	cmpwi r3, 0
/* 801499CC  40 82 00 18 */	bne lbl_801499E4
/* 801499D0  7F C3 F3 78 */	mr r3, r30
/* 801499D4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 801499D8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801499DC  7D 89 03 A6 */	mtctr r12
/* 801499E0  4E 80 04 21 */	bctrl 
lbl_801499E4:
/* 801499E4  3B E0 00 01 */	li r31, 1
/* 801499E8  48 00 00 B8 */	b lbl_80149AA0
lbl_801499EC:
/* 801499EC  28 00 00 02 */	cmplwi r0, 2
/* 801499F0  40 82 00 48 */	bne lbl_80149A38
/* 801499F4  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 801499F8  A8 9E 0E 1C */	lha r4, 0xe1c(r30)
/* 801499FC  4B EF E0 7D */	bl endCheck__16dEvent_manager_cFs
/* 80149A00  2C 03 00 00 */	cmpwi r3, 0
/* 80149A04  41 82 00 34 */	beq lbl_80149A38
/* 80149A08  7F C3 F3 78 */	mr r3, r30
/* 80149A0C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80149A10  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80149A14  7D 89 03 A6 */	mtctr r12
/* 80149A18  4E 80 04 21 */	bctrl 
/* 80149A1C  2C 03 00 00 */	cmpwi r3, 0
/* 80149A20  41 82 00 80 */	beq lbl_80149AA0
/* 80149A24  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80149A28  4B EF 8A 41 */	bl reset__14dEvt_control_cFv
/* 80149A2C  38 00 FF FF */	li r0, -1
/* 80149A30  B0 1E 0E 1C */	sth r0, 0xe1c(r30)
/* 80149A34  48 00 00 6C */	b lbl_80149AA0
lbl_80149A38:
/* 80149A38  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80149A3C  4B EF E9 AD */	bl getRunEventName__16dEvent_manager_cFv
/* 80149A40  3C 80 80 39 */	lis r4, d_a_d_a_npc__stringBase0@ha /* 0x80392710@ha */
/* 80149A44  38 84 27 10 */	addi r4, r4, d_a_d_a_npc__stringBase0@l /* 0x80392710@l */
/* 80149A48  48 21 EF 4D */	bl strcmp
/* 80149A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80149A50  40 82 00 38 */	bne lbl_80149A88
/* 80149A54  80 7E 0D 90 */	lwz r3, 0xd90(r30)
/* 80149A58  3C 03 00 01 */	addis r0, r3, 1
/* 80149A5C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80149A60  41 82 00 28 */	beq lbl_80149A88
/* 80149A64  3B BD 4E C8 */	addi r29, r29, 0x4ec8
/* 80149A68  7F A3 EB 78 */	mr r3, r29
/* 80149A6C  38 80 00 00 */	li r4, 0
/* 80149A70  4B EF 9C 1D */	bl setPtT__14dEvt_control_cFPv
/* 80149A74  7F A3 EB 78 */	mr r3, r29
/* 80149A78  80 9E 0D 90 */	lwz r4, 0xd90(r30)
/* 80149A7C  4B EF 9C 71 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80149A80  38 00 FF FF */	li r0, -1
/* 80149A84  90 1E 0D 90 */	stw r0, 0xd90(r30)
lbl_80149A88:
/* 80149A88  7F C3 F3 78 */	mr r3, r30
/* 80149A8C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80149A90  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80149A94  7D 89 03 A6 */	mtctr r12
/* 80149A98  4E 80 04 21 */	bctrl 
/* 80149A9C  7C 7F 1B 78 */	mr r31, r3
lbl_80149AA0:
/* 80149AA0  83 9E 0D B4 */	lwz r28, 0xdb4(r30)
/* 80149AA4  7F C3 F3 78 */	mr r3, r30
/* 80149AA8  38 81 00 0C */	addi r4, r1, 0xc
/* 80149AAC  38 A1 00 08 */	addi r5, r1, 8
/* 80149AB0  7F C6 F3 78 */	mr r6, r30
/* 80149AB4  88 FE 0E 2D */	lbz r7, 0xe2d(r30)
/* 80149AB8  4B FF F9 01 */	bl ctrlMsgAnm__8daNpcT_cFPiPiP10fopAc_ac_ci
/* 80149ABC  2C 03 00 00 */	cmpwi r3, 0
/* 80149AC0  41 82 00 78 */	beq lbl_80149B38
/* 80149AC4  88 1E 0E 26 */	lbz r0, 0xe26(r30)
/* 80149AC8  28 00 00 00 */	cmplwi r0, 0
/* 80149ACC  41 82 00 94 */	beq lbl_80149B60
/* 80149AD0  83 9E 0B 5C */	lwz r28, 0xb5c(r30)
/* 80149AD4  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80149AD8  2C 1D 00 00 */	cmpwi r29, 0
/* 80149ADC  41 80 00 20 */	blt lbl_80149AFC
/* 80149AE0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80149AE4  4B FF BD B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80149AE8  93 9E 0B 5C */	stw r28, 0xb5c(r30)
/* 80149AEC  7C 1D E2 14 */	add r0, r29, r28
/* 80149AF0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80149AF4  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 80149AF8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80149AFC:
/* 80149AFC  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80149B00  80 01 00 08 */	lwz r0, 8(r1)
/* 80149B04  2C 00 00 00 */	cmpwi r0, 0
/* 80149B08  41 80 00 58 */	blt lbl_80149B60
/* 80149B0C  7F A0 E2 14 */	add r29, r0, r28
/* 80149B10  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80149B14  7C 1D 00 00 */	cmpw r29, r0
/* 80149B18  41 82 00 48 */	beq lbl_80149B60
/* 80149B1C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80149B20  4B FF BD 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80149B24  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80149B28  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80149B2C  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 80149B30  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80149B34  48 00 00 2C */	b lbl_80149B60
lbl_80149B38:
/* 80149B38  2C 1C 00 00 */	cmpwi r28, 0
/* 80149B3C  41 82 00 24 */	beq lbl_80149B60
/* 80149B40  88 1E 0E 26 */	lbz r0, 0xe26(r30)
/* 80149B44  28 00 00 00 */	cmplwi r0, 0
/* 80149B48  41 82 00 18 */	beq lbl_80149B60
/* 80149B4C  7F C3 F3 78 */	mr r3, r30
/* 80149B50  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80149B54  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80149B58  7D 89 03 A6 */	mtctr r12
/* 80149B5C  4E 80 04 21 */	bctrl 
lbl_80149B60:
/* 80149B60  38 00 00 01 */	li r0, 1
/* 80149B64  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80149B68  48 00 00 30 */	b lbl_80149B98
lbl_80149B6C:
/* 80149B6C  80 1E 0D AC */	lwz r0, 0xdac(r30)
/* 80149B70  2C 00 FF FF */	cmpwi r0, -1
/* 80149B74  41 82 00 14 */	beq lbl_80149B88
/* 80149B78  38 00 00 01 */	li r0, 1
/* 80149B7C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80149B80  38 00 FF FF */	li r0, -1
/* 80149B84  90 1E 0D AC */	stw r0, 0xdac(r30)
lbl_80149B88:
/* 80149B88  38 00 00 00 */	li r0, 0
/* 80149B8C  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80149B90  38 00 00 01 */	li r0, 1
/* 80149B94  98 1E 0E 26 */	stb r0, 0xe26(r30)
lbl_80149B98:
/* 80149B98  7F E3 FB 78 */	mr r3, r31
/* 80149B9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80149BA0  48 21 86 85 */	bl _restgpr_28
/* 80149BA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80149BA8  7C 08 03 A6 */	mtlr r0
/* 80149BAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80149BB0  4E 80 00 20 */	blr 

lbl_809D4BBC:
/* 809D4BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D4BC0  7C 08 02 A6 */	mflr r0
/* 809D4BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D4BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 809D4BCC  4B 98 D6 0D */	bl _savegpr_28
/* 809D4BD0  7C 7E 1B 78 */	mr r30, r3
/* 809D4BD4  3B E0 00 00 */	li r31, 0
/* 809D4BD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D4BDC  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D4BE0  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 809D4BE4  28 00 00 00 */	cmplwi r0, 0
/* 809D4BE8  41 82 01 FC */	beq lbl_809D4DE4
/* 809D4BEC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 809D4BF0  28 00 00 01 */	cmplwi r0, 1
/* 809D4BF4  40 82 00 38 */	bne lbl_809D4C2C
/* 809D4BF8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809D4BFC  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 809D4C00  7D 89 03 A6 */	mtctr r12
/* 809D4C04  4E 80 04 21 */	bctrl 
/* 809D4C08  2C 03 00 00 */	cmpwi r3, 0
/* 809D4C0C  40 82 00 18 */	bne lbl_809D4C24
/* 809D4C10  7F C3 F3 78 */	mr r3, r30
/* 809D4C14  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D4C18  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 809D4C1C  7D 89 03 A6 */	mtctr r12
/* 809D4C20  4E 80 04 21 */	bctrl 
lbl_809D4C24:
/* 809D4C24  3B E0 00 01 */	li r31, 1
/* 809D4C28  48 00 00 BC */	b lbl_809D4CE4
lbl_809D4C2C:
/* 809D4C2C  28 00 00 02 */	cmplwi r0, 2
/* 809D4C30  40 82 00 48 */	bne lbl_809D4C78
/* 809D4C34  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 809D4C38  A8 9E 0E 1C */	lha r4, 0xe1c(r30)
/* 809D4C3C  4B 67 2E 3D */	bl endCheck__16dEvent_manager_cFs
/* 809D4C40  2C 03 00 00 */	cmpwi r3, 0
/* 809D4C44  41 82 00 34 */	beq lbl_809D4C78
/* 809D4C48  7F C3 F3 78 */	mr r3, r30
/* 809D4C4C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D4C50  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 809D4C54  7D 89 03 A6 */	mtctr r12
/* 809D4C58  4E 80 04 21 */	bctrl 
/* 809D4C5C  2C 03 00 00 */	cmpwi r3, 0
/* 809D4C60  41 82 00 84 */	beq lbl_809D4CE4
/* 809D4C64  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 809D4C68  4B 66 D8 01 */	bl reset__14dEvt_control_cFv
/* 809D4C6C  38 00 FF FF */	li r0, -1
/* 809D4C70  B0 1E 0E 1C */	sth r0, 0xe1c(r30)
/* 809D4C74  48 00 00 70 */	b lbl_809D4CE4
lbl_809D4C78:
/* 809D4C78  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 809D4C7C  4B 67 37 6D */	bl getRunEventName__16dEvent_manager_cFv
/* 809D4C80  3C 80 80 9D */	lis r4, d_a_npc_grm__stringBase0@ha /* 0x809D6E60@ha */
/* 809D4C84  38 84 6E 60 */	addi r4, r4, d_a_npc_grm__stringBase0@l /* 0x809D6E60@l */
/* 809D4C88  38 84 00 01 */	addi r4, r4, 1
/* 809D4C8C  4B 99 3D 09 */	bl strcmp
/* 809D4C90  2C 03 00 00 */	cmpwi r3, 0
/* 809D4C94  40 82 00 38 */	bne lbl_809D4CCC
/* 809D4C98  80 7E 0D 90 */	lwz r3, 0xd90(r30)
/* 809D4C9C  3C 03 00 01 */	addis r0, r3, 1
/* 809D4CA0  28 00 FF FF */	cmplwi r0, 0xffff
/* 809D4CA4  41 82 00 28 */	beq lbl_809D4CCC
/* 809D4CA8  3B BD 4E C8 */	addi r29, r29, 0x4ec8
/* 809D4CAC  7F A3 EB 78 */	mr r3, r29
/* 809D4CB0  38 80 00 00 */	li r4, 0
/* 809D4CB4  4B 66 E9 D9 */	bl setPtT__14dEvt_control_cFPv
/* 809D4CB8  7F A3 EB 78 */	mr r3, r29
/* 809D4CBC  80 9E 0D 90 */	lwz r4, 0xd90(r30)
/* 809D4CC0  4B 66 EA 2D */	bl setPtI_Id__14dEvt_control_cFUi
/* 809D4CC4  38 00 FF FF */	li r0, -1
/* 809D4CC8  90 1E 0D 90 */	stw r0, 0xd90(r30)
lbl_809D4CCC:
/* 809D4CCC  7F C3 F3 78 */	mr r3, r30
/* 809D4CD0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D4CD4  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 809D4CD8  7D 89 03 A6 */	mtctr r12
/* 809D4CDC  4E 80 04 21 */	bctrl 
/* 809D4CE0  7C 7F 1B 78 */	mr r31, r3
lbl_809D4CE4:
/* 809D4CE4  83 9E 0D B4 */	lwz r28, 0xdb4(r30)
/* 809D4CE8  7F C3 F3 78 */	mr r3, r30
/* 809D4CEC  38 81 00 0C */	addi r4, r1, 0xc
/* 809D4CF0  38 A1 00 08 */	addi r5, r1, 8
/* 809D4CF4  7F C6 F3 78 */	mr r6, r30
/* 809D4CF8  88 FE 0E 2D */	lbz r7, 0xe2d(r30)
/* 809D4CFC  4B 77 46 BD */	bl ctrlMsgAnm__8daNpcT_cFPiPiP10fopAc_ac_ci
/* 809D4D00  2C 03 00 00 */	cmpwi r3, 0
/* 809D4D04  41 82 00 6C */	beq lbl_809D4D70
/* 809D4D08  88 1E 0E 26 */	lbz r0, 0xe26(r30)
/* 809D4D0C  28 00 00 00 */	cmplwi r0, 0
/* 809D4D10  41 82 00 88 */	beq lbl_809D4D98
/* 809D4D14  83 81 00 0C */	lwz r28, 0xc(r1)
/* 809D4D18  2C 1C 00 00 */	cmpwi r28, 0
/* 809D4D1C  41 80 00 24 */	blt lbl_809D4D40
/* 809D4D20  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809D4D24  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809D4D28  4B 77 0B 71 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D4D2C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809D4D30  93 9E 0B 58 */	stw r28, 0xb58(r30)
/* 809D4D34  3C 60 80 9D */	lis r3, lit_4560@ha /* 0x809D6E30@ha */
/* 809D4D38  C0 03 6E 30 */	lfs f0, lit_4560@l(r3)  /* 0x809D6E30@l */
/* 809D4D3C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809D4D40:
/* 809D4D40  83 81 00 08 */	lwz r28, 8(r1)
/* 809D4D44  2C 1C 00 00 */	cmpwi r28, 0
/* 809D4D48  41 80 00 50 */	blt lbl_809D4D98
/* 809D4D4C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809D4D50  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809D4D54  4B 77 0B 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D4D58  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809D4D5C  93 9E 0B 7C */	stw r28, 0xb7c(r30)
/* 809D4D60  3C 60 80 9D */	lis r3, lit_4560@ha /* 0x809D6E30@ha */
/* 809D4D64  C0 03 6E 30 */	lfs f0, lit_4560@l(r3)  /* 0x809D6E30@l */
/* 809D4D68  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809D4D6C  48 00 00 2C */	b lbl_809D4D98
lbl_809D4D70:
/* 809D4D70  2C 1C 00 00 */	cmpwi r28, 0
/* 809D4D74  41 82 00 24 */	beq lbl_809D4D98
/* 809D4D78  88 1E 0E 26 */	lbz r0, 0xe26(r30)
/* 809D4D7C  28 00 00 00 */	cmplwi r0, 0
/* 809D4D80  41 82 00 18 */	beq lbl_809D4D98
/* 809D4D84  7F C3 F3 78 */	mr r3, r30
/* 809D4D88  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D4D8C  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 809D4D90  7D 89 03 A6 */	mtctr r12
/* 809D4D94  4E 80 04 21 */	bctrl 
lbl_809D4D98:
/* 809D4D98  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809D4D9C  2C 00 00 00 */	cmpwi r0, 0
/* 809D4DA0  41 82 00 08 */	beq lbl_809D4DA8
/* 809D4DA4  48 00 00 6C */	b lbl_809D4E10
lbl_809D4DA8:
/* 809D4DA8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809D4DAC  2C 00 00 03 */	cmpwi r0, 3
/* 809D4DB0  41 82 00 0C */	beq lbl_809D4DBC
/* 809D4DB4  2C 00 00 04 */	cmpwi r0, 4
/* 809D4DB8  40 82 00 58 */	bne lbl_809D4E10
lbl_809D4DBC:
/* 809D4DBC  80 1E 0B 60 */	lwz r0, 0xb60(r30)
/* 809D4DC0  2C 00 00 00 */	cmpwi r0, 0
/* 809D4DC4  41 82 00 10 */	beq lbl_809D4DD4
/* 809D4DC8  80 1E 0B 84 */	lwz r0, 0xb84(r30)
/* 809D4DCC  2C 00 00 00 */	cmpwi r0, 0
/* 809D4DD0  40 82 00 40 */	bne lbl_809D4E10
lbl_809D4DD4:
/* 809D4DD4  80 1E 0D 98 */	lwz r0, 0xd98(r30)
/* 809D4DD8  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 809D4DDC  90 1E 0D 98 */	stw r0, 0xd98(r30)
/* 809D4DE0  48 00 00 30 */	b lbl_809D4E10
lbl_809D4DE4:
/* 809D4DE4  80 1E 0D AC */	lwz r0, 0xdac(r30)
/* 809D4DE8  2C 00 FF FF */	cmpwi r0, -1
/* 809D4DEC  41 82 00 14 */	beq lbl_809D4E00
/* 809D4DF0  38 00 00 01 */	li r0, 1
/* 809D4DF4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809D4DF8  38 00 FF FF */	li r0, -1
/* 809D4DFC  90 1E 0D AC */	stw r0, 0xdac(r30)
lbl_809D4E00:
/* 809D4E00  38 00 00 00 */	li r0, 0
/* 809D4E04  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 809D4E08  38 00 00 01 */	li r0, 1
/* 809D4E0C  98 1E 0E 26 */	stb r0, 0xe26(r30)
lbl_809D4E10:
/* 809D4E10  7F E3 FB 78 */	mr r3, r31
/* 809D4E14  39 61 00 20 */	addi r11, r1, 0x20
/* 809D4E18  4B 98 D4 0D */	bl _restgpr_28
/* 809D4E1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D4E20  7C 08 03 A6 */	mtlr r0
/* 809D4E24  38 21 00 20 */	addi r1, r1, 0x20
/* 809D4E28  4E 80 00 20 */	blr 

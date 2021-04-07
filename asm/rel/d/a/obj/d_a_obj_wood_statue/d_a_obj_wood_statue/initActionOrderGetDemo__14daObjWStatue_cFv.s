lbl_80D3AB9C:
/* 80D3AB9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3ABA0  7C 08 02 A6 */	mflr r0
/* 80D3ABA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3ABA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3ABAC  4B 62 76 31 */	bl _savegpr_29
/* 80D3ABB0  7C 7D 1B 78 */	mr r29, r3
/* 80D3ABB4  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80D3ABB8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D3ABBC  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80D3ABC0  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80D3ABC4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D3ABC8  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80D3ABCC  4B 2F CE 99 */	bl hide__12daItemBase_cFv
/* 80D3ABD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3ABD4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3ABD8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80D3ABDC  7F A4 EB 78 */	mr r4, r29
/* 80D3ABE0  3C A0 80 D4 */	lis r5, d_a_obj_wood_statue__stringBase0@ha /* 0x80D3B6D4@ha */
/* 80D3ABE4  38 A5 B6 D4 */	addi r5, r5, d_a_obj_wood_statue__stringBase0@l /* 0x80D3B6D4@l */
/* 80D3ABE8  38 A5 00 17 */	addi r5, r5, 0x17
/* 80D3ABEC  38 C0 00 FF */	li r6, 0xff
/* 80D3ABF0  4B 30 CB 69 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D3ABF4  7C 7E 1B 78 */	mr r30, r3
/* 80D3ABF8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D3ABFC  7F A4 EB 78 */	mr r4, r29
/* 80D3AC00  4B 30 79 19 */	bl reset__14dEvt_control_cFPv
/* 80D3AC04  7F A3 EB 78 */	mr r3, r29
/* 80D3AC08  7F C4 F3 78 */	mr r4, r30
/* 80D3AC0C  38 A0 00 01 */	li r5, 1
/* 80D3AC10  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D3AC14  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D3AC18  4B 2E 09 CD */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D3AC1C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D3AC20  88 9D 09 2A */	lbz r4, 0x92a(r29)
/* 80D3AC24  38 A0 FF FF */	li r5, -1
/* 80D3AC28  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D3AC2C  7C 06 07 74 */	extsb r6, r0
/* 80D3AC30  38 E0 00 00 */	li r7, 0
/* 80D3AC34  39 00 00 00 */	li r8, 0
/* 80D3AC38  4B 2E 10 3D */	bl fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 80D3AC3C  90 7D 09 2C */	stw r3, 0x92c(r29)
/* 80D3AC40  38 00 00 01 */	li r0, 1
/* 80D3AC44  98 1D 09 38 */	stb r0, 0x938(r29)
/* 80D3AC48  38 60 00 01 */	li r3, 1
/* 80D3AC4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3AC50  4B 62 75 D9 */	bl _restgpr_29
/* 80D3AC54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3AC58  7C 08 03 A6 */	mtlr r0
/* 80D3AC5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3AC60  4E 80 00 20 */	blr 

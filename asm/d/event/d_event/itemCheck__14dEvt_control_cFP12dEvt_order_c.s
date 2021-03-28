lbl_8004212C:
/* 8004212C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80042130  7C 08 02 A6 */	mflr r0
/* 80042134  90 01 00 24 */	stw r0, 0x24(r1)
/* 80042138  39 61 00 20 */	addi r11, r1, 0x20
/* 8004213C  48 32 00 A1 */	bl _savegpr_29
/* 80042140  7C 7D 1B 78 */	mr r29, r3
/* 80042144  3C A0 80 38 */	lis r5, d_event_d_event__stringBase0@ha
/* 80042148  38 A5 9D 80 */	addi r5, r5, d_event_d_event__stringBase0@l
/* 8004214C  3B C5 00 33 */	addi r30, r5, 0x33
/* 80042150  38 A0 00 08 */	li r5, 8
/* 80042154  38 C0 00 04 */	li r6, 4
/* 80042158  4B FF F8 51 */	bl commonCheck__14dEvt_control_cFP12dEvt_order_cUsUs
/* 8004215C  2C 03 00 00 */	cmpwi r3, 0
/* 80042160  41 82 00 44 */	beq lbl_800421A4
/* 80042164  38 00 00 02 */	li r0, 2
/* 80042168  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8004216C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80042170  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80042174  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80042178  7F E3 FB 78 */	mr r3, r31
/* 8004217C  7F C4 F3 78 */	mr r4, r30
/* 80042180  38 A0 00 FF */	li r5, 0xff
/* 80042184  38 C0 FF FF */	li r6, -1
/* 80042188  48 00 53 8D */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 8004218C  B0 7D 00 DE */	sth r3, 0xde(r29)
/* 80042190  7F E3 FB 78 */	mr r3, r31
/* 80042194  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 80042198  48 00 57 ED */	bl order__16dEvent_manager_cFs
/* 8004219C  38 60 00 01 */	li r3, 1
/* 800421A0  48 00 00 08 */	b lbl_800421A8
lbl_800421A4:
/* 800421A4  38 60 00 00 */	li r3, 0
lbl_800421A8:
/* 800421A8  39 61 00 20 */	addi r11, r1, 0x20
/* 800421AC  48 32 00 7D */	bl _restgpr_29
/* 800421B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800421B4  7C 08 03 A6 */	mtlr r0
/* 800421B8  38 21 00 20 */	addi r1, r1, 0x20
/* 800421BC  4E 80 00 20 */	blr 

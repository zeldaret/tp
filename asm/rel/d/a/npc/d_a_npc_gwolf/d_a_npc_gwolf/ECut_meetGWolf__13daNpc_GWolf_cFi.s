lbl_809F70EC:
/* 809F70EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F70F0  7C 08 02 A6 */	mflr r0
/* 809F70F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F70F8  39 61 00 20 */	addi r11, r1, 0x20
/* 809F70FC  4B 96 B0 D9 */	bl _savegpr_27
/* 809F7100  7C 7B 1B 78 */	mr r27, r3
/* 809F7104  7C 9C 23 78 */	mr r28, r4
/* 809F7108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F710C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F7110  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 809F7114  3B A0 FF FF */	li r29, -1
/* 809F7118  7F C3 F3 78 */	mr r3, r30
/* 809F711C  3C A0 80 A0 */	lis r5, d_a_npc_gwolf__stringBase0@ha /* 0x809F871C@ha */
/* 809F7120  38 A5 87 1C */	addi r5, r5, d_a_npc_gwolf__stringBase0@l /* 0x809F871C@l */
/* 809F7124  38 A5 00 D3 */	addi r5, r5, 0xd3
/* 809F7128  38 C0 00 03 */	li r6, 3
/* 809F712C  4B 65 0F C1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809F7130  28 03 00 00 */	cmplwi r3, 0
/* 809F7134  41 82 00 08 */	beq lbl_809F713C
/* 809F7138  83 A3 00 00 */	lwz r29, 0(r3)
lbl_809F713C:
/* 809F713C  7F C3 F3 78 */	mr r3, r30
/* 809F7140  7F 84 E3 78 */	mr r4, r28
/* 809F7144  4B 65 0C 09 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809F7148  2C 03 00 00 */	cmpwi r3, 0
/* 809F714C  41 82 00 64 */	beq lbl_809F71B0
/* 809F7150  2C 1D 00 00 */	cmpwi r29, 0
/* 809F7154  41 82 00 08 */	beq lbl_809F715C
/* 809F7158  48 00 00 58 */	b lbl_809F71B0
lbl_809F715C:
/* 809F715C  7F 63 DB 78 */	mr r3, r27
/* 809F7160  38 80 00 00 */	li r4, 0
/* 809F7164  3C A0 80 A0 */	lis r5, lit_4803@ha /* 0x809F85B0@ha */
/* 809F7168  C0 25 85 B0 */	lfs f1, lit_4803@l(r5)  /* 0x809F85B0@l */
/* 809F716C  38 A0 00 00 */	li r5, 0
/* 809F7170  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809F7174  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F7178  7D 89 03 A6 */	mtctr r12
/* 809F717C  4E 80 04 21 */	bctrl 
/* 809F7180  7F 63 DB 78 */	mr r3, r27
/* 809F7184  38 80 00 02 */	li r4, 2
/* 809F7188  4B FF E9 D9 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F718C  3B DF 4E C8 */	addi r30, r31, 0x4ec8
/* 809F7190  7F C3 F3 78 */	mr r3, r30
/* 809F7194  7F 64 DB 78 */	mr r4, r27
/* 809F7198  3C A0 80 9F */	lis r5, callback_proc__FPvi@ha /* 0x809F7084@ha */
/* 809F719C  38 A5 70 84 */	addi r5, r5, callback_proc__FPvi@l /* 0x809F7084@l */
/* 809F71A0  38 C0 00 00 */	li r6, 0
/* 809F71A4  4B 64 B7 71 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 809F71A8  7F C3 F3 78 */	mr r3, r30
/* 809F71AC  4B 64 B7 FD */	bl onSkipFade__14dEvt_control_cFv
lbl_809F71B0:
/* 809F71B0  2C 1D 00 00 */	cmpwi r29, 0
/* 809F71B4  41 82 00 08 */	beq lbl_809F71BC
/* 809F71B8  48 00 00 0C */	b lbl_809F71C4
lbl_809F71BC:
/* 809F71BC  38 60 00 01 */	li r3, 1
/* 809F71C0  48 00 00 08 */	b lbl_809F71C8
lbl_809F71C4:
/* 809F71C4  38 60 00 01 */	li r3, 1
lbl_809F71C8:
/* 809F71C8  39 61 00 20 */	addi r11, r1, 0x20
/* 809F71CC  4B 96 B0 55 */	bl _restgpr_27
/* 809F71D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F71D4  7C 08 03 A6 */	mtlr r0
/* 809F71D8  38 21 00 20 */	addi r1, r1, 0x20
/* 809F71DC  4E 80 00 20 */	blr 

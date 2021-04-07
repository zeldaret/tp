lbl_80A6DC48:
/* 80A6DC48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6DC4C  7C 08 02 A6 */	mflr r0
/* 80A6DC50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6DC54  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6DC58  4B 8F 45 7D */	bl _savegpr_27
/* 80A6DC5C  7C 7B 1B 78 */	mr r27, r3
/* 80A6DC60  7C 9C 23 78 */	mr r28, r4
/* 80A6DC64  3B C0 00 00 */	li r30, 0
/* 80A6DC68  3B A0 FF FF */	li r29, -1
/* 80A6DC6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6DC70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6DC74  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A6DC78  7F E3 FB 78 */	mr r3, r31
/* 80A6DC7C  3C A0 80 A7 */	lis r5, d_a_npc_lud__stringBase0@ha /* 0x80A6FECC@ha */
/* 80A6DC80  38 A5 FE CC */	addi r5, r5, d_a_npc_lud__stringBase0@l /* 0x80A6FECC@l */
/* 80A6DC84  38 A5 00 A5 */	addi r5, r5, 0xa5
/* 80A6DC88  38 C0 00 03 */	li r6, 3
/* 80A6DC8C  4B 5D A4 61 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6DC90  28 03 00 00 */	cmplwi r3, 0
/* 80A6DC94  41 82 00 08 */	beq lbl_80A6DC9C
/* 80A6DC98  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A6DC9C:
/* 80A6DC9C  7F E3 FB 78 */	mr r3, r31
/* 80A6DCA0  7F 84 E3 78 */	mr r4, r28
/* 80A6DCA4  4B 5D A0 A9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A6DCA8  2C 1D 00 00 */	cmpwi r29, 0
/* 80A6DCAC  41 82 00 08 */	beq lbl_80A6DCB4
/* 80A6DCB0  48 00 00 1C */	b lbl_80A6DCCC
lbl_80A6DCB4:
/* 80A6DCB4  7F 63 DB 78 */	mr r3, r27
/* 80A6DCB8  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80A6DCBC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A6DCC0  7D 89 03 A6 */	mtctr r12
/* 80A6DCC4  4E 80 04 21 */	bctrl 
/* 80A6DCC8  3B C0 00 01 */	li r30, 1
lbl_80A6DCCC:
/* 80A6DCCC  7F C3 F3 78 */	mr r3, r30
/* 80A6DCD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6DCD4  4B 8F 45 4D */	bl _restgpr_27
/* 80A6DCD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6DCDC  7C 08 03 A6 */	mtlr r0
/* 80A6DCE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6DCE4  4E 80 00 20 */	blr 

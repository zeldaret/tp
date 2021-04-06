lbl_80557C6C:
/* 80557C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557C70  7C 08 02 A6 */	mflr r0
/* 80557C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80557C7C  4B E0 A5 5D */	bl _savegpr_28
/* 80557C80  7C 7C 1B 78 */	mr r28, r3
/* 80557C84  7C 9D 23 78 */	mr r29, r4
/* 80557C88  3B C0 FF FF */	li r30, -1
/* 80557C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80557C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80557C94  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80557C98  7F E3 FB 78 */	mr r3, r31
/* 80557C9C  3C A0 80 56 */	lis r5, d_a_npc_kolin__stringBase0@ha /* 0x8055A77C@ha */
/* 80557CA0  38 A5 A7 7C */	addi r5, r5, d_a_npc_kolin__stringBase0@l /* 0x8055A77C@l */
/* 80557CA4  38 A5 01 39 */	addi r5, r5, 0x139
/* 80557CA8  38 C0 00 03 */	li r6, 3
/* 80557CAC  4B AF 04 41 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80557CB0  28 03 00 00 */	cmplwi r3, 0
/* 80557CB4  41 82 00 08 */	beq lbl_80557CBC
/* 80557CB8  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80557CBC:
/* 80557CBC  7F E3 FB 78 */	mr r3, r31
/* 80557CC0  7F A4 EB 78 */	mr r4, r29
/* 80557CC4  4B AF 00 89 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80557CC8  2C 1E 00 00 */	cmpwi r30, 0
/* 80557CCC  41 82 00 08 */	beq lbl_80557CD4
/* 80557CD0  48 00 00 18 */	b lbl_80557CE8
lbl_80557CD4:
/* 80557CD4  7F 83 E3 78 */	mr r3, r28
/* 80557CD8  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80557CDC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80557CE0  7D 89 03 A6 */	mtctr r12
/* 80557CE4  4E 80 04 21 */	bctrl 
lbl_80557CE8:
/* 80557CE8  38 60 00 00 */	li r3, 0
/* 80557CEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80557CF0  4B E0 A5 35 */	bl _restgpr_28
/* 80557CF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557CF8  7C 08 03 A6 */	mtlr r0
/* 80557CFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80557D00  4E 80 00 20 */	blr 

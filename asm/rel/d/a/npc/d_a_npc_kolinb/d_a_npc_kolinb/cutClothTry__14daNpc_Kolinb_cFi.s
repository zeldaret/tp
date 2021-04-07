lbl_80A472EC:
/* 80A472EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A472F0  7C 08 02 A6 */	mflr r0
/* 80A472F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A472F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A472FC  4B 91 AE D9 */	bl _savegpr_27
/* 80A47300  7C 7B 1B 78 */	mr r27, r3
/* 80A47304  7C 9C 23 78 */	mr r28, r4
/* 80A47308  3B C0 00 00 */	li r30, 0
/* 80A4730C  3B A0 FF FF */	li r29, -1
/* 80A47310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A47314  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A47318  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A4731C  7F E3 FB 78 */	mr r3, r31
/* 80A47320  3C A0 80 A5 */	lis r5, d_a_npc_kolinb__stringBase0@ha /* 0x80A487DC@ha */
/* 80A47324  38 A5 87 DC */	addi r5, r5, d_a_npc_kolinb__stringBase0@l /* 0x80A487DC@l */
/* 80A47328  38 A5 00 71 */	addi r5, r5, 0x71
/* 80A4732C  38 C0 00 03 */	li r6, 3
/* 80A47330  4B 60 0D BD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A47334  28 03 00 00 */	cmplwi r3, 0
/* 80A47338  41 82 00 08 */	beq lbl_80A47340
/* 80A4733C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A47340:
/* 80A47340  7F E3 FB 78 */	mr r3, r31
/* 80A47344  7F 84 E3 78 */	mr r4, r28
/* 80A47348  4B 60 0A 05 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A4734C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A47350  41 82 00 08 */	beq lbl_80A47358
/* 80A47354  48 00 00 1C */	b lbl_80A47370
lbl_80A47358:
/* 80A47358  7F 63 DB 78 */	mr r3, r27
/* 80A4735C  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80A47360  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A47364  7D 89 03 A6 */	mtctr r12
/* 80A47368  4E 80 04 21 */	bctrl 
/* 80A4736C  3B C0 00 01 */	li r30, 1
lbl_80A47370:
/* 80A47370  7F C3 F3 78 */	mr r3, r30
/* 80A47374  39 61 00 20 */	addi r11, r1, 0x20
/* 80A47378  4B 91 AE A9 */	bl _restgpr_27
/* 80A4737C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A47380  7C 08 03 A6 */	mtlr r0
/* 80A47384  38 21 00 20 */	addi r1, r1, 0x20
/* 80A47388  4E 80 00 20 */	blr 

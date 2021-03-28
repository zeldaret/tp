lbl_809B5340:
/* 809B5340  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B5344  7C 08 02 A6 */	mflr r0
/* 809B5348  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B534C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B5350  4B 9A CE 88 */	b _savegpr_28
/* 809B5354  7C 7C 1B 78 */	mr r28, r3
/* 809B5358  7C 9D 23 78 */	mr r29, r4
/* 809B535C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B5360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B5364  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809B5368  7F C3 F3 78 */	mr r3, r30
/* 809B536C  3C A0 80 9C */	lis r5, struct_809B94CC+0x0@ha
/* 809B5370  38 A5 94 CC */	addi r5, r5, struct_809B94CC+0x0@l
/* 809B5374  38 A5 00 FE */	addi r5, r5, 0xfe
/* 809B5378  38 C0 00 03 */	li r6, 3
/* 809B537C  4B 69 2D 70 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809B5380  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B5384  40 82 00 0C */	bne lbl_809B5390
/* 809B5388  38 60 00 01 */	li r3, 1
/* 809B538C  48 00 00 30 */	b lbl_809B53BC
lbl_809B5390:
/* 809B5390  7F C3 F3 78 */	mr r3, r30
/* 809B5394  7F A4 EB 78 */	mr r4, r29
/* 809B5398  4B 69 29 B4 */	b getIsAddvance__16dEvent_manager_cFi
/* 809B539C  2C 03 00 00 */	cmpwi r3, 0
/* 809B53A0  41 82 00 10 */	beq lbl_809B53B0
/* 809B53A4  7F 83 E3 78 */	mr r3, r28
/* 809B53A8  7F E4 FB 78 */	mr r4, r31
/* 809B53AC  48 00 00 29 */	bl _cutAppear_30F_01_Init__13daNpc_Fairy_cFRCi
lbl_809B53B0:
/* 809B53B0  7F 83 E3 78 */	mr r3, r28
/* 809B53B4  7F E4 FB 78 */	mr r4, r31
/* 809B53B8  48 00 01 3D */	bl _cutAppear_30F_01_Main__13daNpc_Fairy_cFRCi
lbl_809B53BC:
/* 809B53BC  39 61 00 20 */	addi r11, r1, 0x20
/* 809B53C0  4B 9A CE 64 */	b _restgpr_28
/* 809B53C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B53C8  7C 08 03 A6 */	mtlr r0
/* 809B53CC  38 21 00 20 */	addi r1, r1, 0x20
/* 809B53D0  4E 80 00 20 */	blr 

lbl_80BBA20C:
/* 80BBA20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA210  7C 08 02 A6 */	mflr r0
/* 80BBA214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBA21C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBA220  7C 7E 1B 78 */	mr r30, r3
/* 80BBA224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBA228  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBA22C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80BBA230  A8 9E 05 AC */	lha r4, 0x5ac(r30)
/* 80BBA234  4B 48 D8 45 */	bl endCheck__16dEvent_manager_cFs
/* 80BBA238  2C 03 00 00 */	cmpwi r3, 0
/* 80BBA23C  41 82 00 14 */	beq lbl_80BBA250
/* 80BBA240  38 00 00 03 */	li r0, 3
/* 80BBA244  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80BBA248  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80BBA24C  4B 48 82 1D */	bl reset__14dEvt_control_cFv
lbl_80BBA250:
/* 80BBA250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBA254  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBA258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA25C  7C 08 03 A6 */	mtlr r0
/* 80BBA260  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA264  4E 80 00 20 */	blr 

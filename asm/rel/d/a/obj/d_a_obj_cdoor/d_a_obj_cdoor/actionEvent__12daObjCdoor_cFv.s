lbl_80BC7B9C:
/* 80BC7B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7BA0  7C 08 02 A6 */	mflr r0
/* 80BC7BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC7BAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC7BB0  7C 7E 1B 78 */	mr r30, r3
/* 80BC7BB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC7BB8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC7BBC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80BC7BC0  A8 9E 05 B4 */	lha r4, 0x5b4(r30)
/* 80BC7BC4  4B 47 FE B5 */	bl endCheck__16dEvent_manager_cFs
/* 80BC7BC8  2C 03 00 00 */	cmpwi r3, 0
/* 80BC7BCC  41 82 00 14 */	beq lbl_80BC7BE0
/* 80BC7BD0  38 00 00 03 */	li r0, 3
/* 80BC7BD4  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 80BC7BD8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80BC7BDC  4B 47 A8 8D */	bl reset__14dEvt_control_cFv
lbl_80BC7BE0:
/* 80BC7BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC7BE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC7BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7BEC  7C 08 03 A6 */	mtlr r0
/* 80BC7BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7BF4  4E 80 00 20 */	blr 

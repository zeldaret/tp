lbl_8045BD50:
/* 8045BD50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045BD54  7C 08 02 A6 */	mflr r0
/* 8045BD58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045BD5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045BD60  93 C1 00 08 */	stw r30, 8(r1)
/* 8045BD64  7C 7E 1B 78 */	mr r30, r3
/* 8045BD68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045BD6C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8045BD70  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8045BD74  A8 9E 0C C6 */	lha r4, 0xcc6(r30)
/* 8045BD78  4B BE BD 00 */	b endCheck__16dEvent_manager_cFs
/* 8045BD7C  2C 03 00 00 */	cmpwi r3, 0
/* 8045BD80  41 82 00 14 */	beq lbl_8045BD94
/* 8045BD84  38 00 00 03 */	li r0, 3
/* 8045BD88  98 1E 0C C5 */	stb r0, 0xcc5(r30)
/* 8045BD8C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8045BD90  4B BE 66 D8 */	b reset__14dEvt_control_cFv
lbl_8045BD94:
/* 8045BD94  38 60 00 01 */	li r3, 1
/* 8045BD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045BD9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045BDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045BDA4  7C 08 03 A6 */	mtlr r0
/* 8045BDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045BDAC  4E 80 00 20 */	blr 

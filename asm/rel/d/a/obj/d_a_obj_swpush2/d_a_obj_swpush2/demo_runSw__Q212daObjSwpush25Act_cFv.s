lbl_80CFF50C:
/* 80CFF50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFF510  7C 08 02 A6 */	mflr r0
/* 80CFF514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFF518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFF51C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFF520  7C 7E 1B 78 */	mr r30, r3
/* 80CFF524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF528  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CFF52C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CFF530  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 80CFF534  4B 34 85 44 */	b endCheck__16dEvent_manager_cFs
/* 80CFF538  2C 03 00 00 */	cmpwi r3, 0
/* 80CFF53C  41 82 00 14 */	beq lbl_80CFF550
/* 80CFF540  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CFF544  4B 34 2F 24 */	b reset__14dEvt_control_cFv
/* 80CFF548  7F C3 F3 78 */	mr r3, r30
/* 80CFF54C  4B FF FD 01 */	bl demo_non_init__Q212daObjSwpush25Act_cFv
lbl_80CFF550:
/* 80CFF550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFF554  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFF558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFF55C  7C 08 03 A6 */	mtlr r0
/* 80CFF560  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFF564  4E 80 00 20 */	blr 

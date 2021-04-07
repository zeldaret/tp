lbl_80484834:
/* 80484834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484838  7C 08 02 A6 */	mflr r0
/* 8048483C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80484844  93 C1 00 08 */	stw r30, 8(r1)
/* 80484848  7C 7E 1B 78 */	mr r30, r3
/* 8048484C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80484850  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80484854  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80484858  A8 9E 05 BA */	lha r4, 0x5ba(r30)
/* 8048485C  4B BC 32 1D */	bl endCheck__16dEvent_manager_cFs
/* 80484860  2C 03 00 00 */	cmpwi r3, 0
/* 80484864  41 82 00 14 */	beq lbl_80484878
/* 80484868  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8048486C  4B BB DB FD */	bl reset__14dEvt_control_cFv
/* 80484870  7F C3 F3 78 */	mr r3, r30
/* 80484874  4B FF FC FD */	bl demo_non_init__Q211daObjSwpush5Act_cFv
lbl_80484878:
/* 80484878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048487C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80484880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484884  7C 08 03 A6 */	mtlr r0
/* 80484888  38 21 00 10 */	addi r1, r1, 0x10
/* 8048488C  4E 80 00 20 */	blr 

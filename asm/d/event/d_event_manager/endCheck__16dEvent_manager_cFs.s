lbl_80047A78:
/* 80047A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047A7C  7C 08 02 A6 */	mflr r0
/* 80047A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80047A88  7C 7F 1B 78 */	mr r31, r3
/* 80047A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80047A90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80047A94  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80047A98  4B FF BB 75 */	bl runningEventID__14dEvt_control_cFs
/* 80047A9C  7C 64 1B 78 */	mr r4, r3
/* 80047AA0  7F E3 FB 78 */	mr r3, r31
/* 80047AA4  4B FF FA 19 */	bl getEventData__16dEvent_manager_cFs
/* 80047AA8  28 03 00 00 */	cmplwi r3, 0
/* 80047AAC  40 82 00 0C */	bne lbl_80047AB8
/* 80047AB0  38 60 00 00 */	li r3, 0
/* 80047AB4  48 00 00 14 */	b lbl_80047AC8
lbl_80047AB8:
/* 80047AB8  80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 80047ABC  20 00 00 02 */	subfic r0, r0, 2
/* 80047AC0  7C 00 00 34 */	cntlzw r0, r0
/* 80047AC4  54 03 D9 7E */	srwi r3, r0, 5
lbl_80047AC8:
/* 80047AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80047ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047AD0  7C 08 03 A6 */	mtlr r0
/* 80047AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80047AD8  4E 80 00 20 */	blr 

lbl_809AC96C:
/* 809AC96C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AC970  7C 08 02 A6 */	mflr r0
/* 809AC974  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AC978  4B FF EB 85 */	bl Draw__14daNpcDoorBoy_cFv
/* 809AC97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AC980  7C 08 03 A6 */	mtlr r0
/* 809AC984  38 21 00 10 */	addi r1, r1, 0x10
/* 809AC988  4E 80 00 20 */	blr 

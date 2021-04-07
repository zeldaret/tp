lbl_8025987C:
/* 8025987C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80259880  7C 08 02 A6 */	mflr r0
/* 80259884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025988C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80259890  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80259894  4B DF 27 C1 */	bl cleanup__13dPa_control_cFv
/* 80259898  38 60 00 01 */	li r3, 1
/* 8025989C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802598A0  7C 08 03 A6 */	mtlr r0
/* 802598A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802598A8  4E 80 00 20 */	blr 

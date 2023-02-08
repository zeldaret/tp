lbl_809F70A8:
/* 809F70A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F70AC  7C 08 02 A6 */	mflr r0
/* 809F70B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F70B4  38 00 00 00 */	li r0, 0
/* 809F70B8  B0 03 09 E6 */	sth r0, 0x9e6(r3)
/* 809F70BC  38 00 FF FF */	li r0, -1
/* 809F70C0  B0 03 09 D4 */	sth r0, 0x9d4(r3)
/* 809F70C4  38 00 00 01 */	li r0, 1
/* 809F70C8  98 03 0E 1D */	stb r0, 0xe1d(r3)
/* 809F70CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F70D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F70D4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809F70D8  4B 64 B3 91 */	bl reset__14dEvt_control_cFv
/* 809F70DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F70E0  7C 08 03 A6 */	mtlr r0
/* 809F70E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809F70E8  4E 80 00 20 */	blr 

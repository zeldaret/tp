lbl_800515CC:
/* 800515CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800515D0  7C 08 02 A6 */	mflr r0
/* 800515D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800515D8  7C 66 1B 78 */	mr r6, r3
/* 800515DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800515E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800515E4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800515E8  38 63 02 10 */	addi r3, r3, 0x210
/* 800515EC  54 80 20 36 */	slwi r0, r4, 4
/* 800515F0  7C 86 02 14 */	add r4, r6, r0
/* 800515F4  54 A0 10 3A */	slwi r0, r5, 2
/* 800515F8  7C 84 02 14 */	add r4, r4, r0
/* 800515FC  80 84 00 80 */	lwz r4, 0x80(r4)
/* 80051600  4B FF A3 19 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80051604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051608  7C 08 03 A6 */	mtlr r0
/* 8005160C  38 21 00 10 */	addi r1, r1, 0x10
/* 80051610  4E 80 00 20 */	blr 

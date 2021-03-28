lbl_80051584:
/* 80051584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051588  7C 08 02 A6 */	mflr r0
/* 8005158C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051590  7C 66 1B 78 */	mr r6, r3
/* 80051594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80051598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005159C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800515A0  38 63 02 10 */	addi r3, r3, 0x210
/* 800515A4  54 80 20 36 */	slwi r0, r4, 4
/* 800515A8  7C 86 02 14 */	add r4, r6, r0
/* 800515AC  54 A0 10 3A */	slwi r0, r5, 2
/* 800515B0  7C 84 02 14 */	add r4, r4, r0
/* 800515B4  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 800515B8  4B FF A3 61 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 800515BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800515C0  7C 08 03 A6 */	mtlr r0
/* 800515C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800515C8  4E 80 00 20 */	blr 

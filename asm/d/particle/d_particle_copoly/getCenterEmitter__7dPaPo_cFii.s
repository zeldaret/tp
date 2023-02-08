lbl_80051524:
/* 80051524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051528  7C 08 02 A6 */	mflr r0
/* 8005152C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051530  7C 66 1B 78 */	mr r6, r3
/* 80051534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80051538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005153C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80051540  38 63 02 10 */	addi r3, r3, 0x210
/* 80051544  54 80 20 36 */	slwi r0, r4, 4
/* 80051548  7C 86 02 14 */	add r4, r6, r0
/* 8005154C  54 A0 10 3A */	slwi r0, r5, 2
/* 80051550  7C 84 02 14 */	add r4, r4, r0
/* 80051554  80 84 00 08 */	lwz r4, 8(r4)
/* 80051558  4B FF A3 C1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8005155C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051560  7C 08 03 A6 */	mtlr r0
/* 80051564  38 21 00 10 */	addi r1, r1, 0x10
/* 80051568  4E 80 00 20 */	blr 

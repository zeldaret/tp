lbl_8002E3D0:
/* 8002E3D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002E3D4  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 8002E3D8  88 05 5E 8F */	lbz r0, 0x5e8f(r5)
/* 8002E3DC  28 00 00 05 */	cmplwi r0, 5
/* 8002E3E0  40 82 00 40 */	bne lbl_8002E420
/* 8002E3E4  38 C0 00 00 */	li r6, 0
/* 8002E3E8  38 00 00 02 */	li r0, 2
/* 8002E3EC  7C 09 03 A6 */	mtctr r0
lbl_8002E3F0:
/* 8002E3F0  7C 85 32 14 */	add r4, r5, r6
/* 8002E3F4  88 04 5E 90 */	lbz r0, 0x5e90(r4)
/* 8002E3F8  7C 03 00 00 */	cmpw r3, r0
/* 8002E3FC  40 82 00 1C */	bne lbl_8002E418
/* 8002E400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E408  54 C0 10 3A */	slwi r0, r6, 2
/* 8002E40C  7C 63 02 14 */	add r3, r3, r0
/* 8002E410  80 63 5E C0 */	lwz r3, 0x5ec0(r3)
/* 8002E414  4E 80 00 20 */	blr 
lbl_8002E418:
/* 8002E418  38 C6 00 01 */	addi r6, r6, 1
/* 8002E41C  42 00 FF D4 */	bdnz lbl_8002E3F0
lbl_8002E420:
/* 8002E420  38 60 00 00 */	li r3, 0
/* 8002E424  4E 80 00 20 */	blr 

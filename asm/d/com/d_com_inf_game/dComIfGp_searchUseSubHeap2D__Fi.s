lbl_8002E388:
/* 8002E388  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002E38C  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002E390  88 05 5E 8F */	lbz r0, 0x5e8f(r5)
/* 8002E394  28 00 00 05 */	cmplwi r0, 5
/* 8002E398  40 82 00 30 */	bne lbl_8002E3C8
/* 8002E39C  38 C0 00 00 */	li r6, 0
/* 8002E3A0  38 00 00 02 */	li r0, 2
/* 8002E3A4  7C 09 03 A6 */	mtctr r0
lbl_8002E3A8:
/* 8002E3A8  7C 85 32 14 */	add r4, r5, r6
/* 8002E3AC  88 04 5E 90 */	lbz r0, 0x5e90(r4)
/* 8002E3B0  7C 03 00 00 */	cmpw r3, r0
/* 8002E3B4  40 82 00 0C */	bne lbl_8002E3C0
/* 8002E3B8  7C C3 33 78 */	mr r3, r6
/* 8002E3BC  4E 80 00 20 */	blr 
lbl_8002E3C0:
/* 8002E3C0  38 C6 00 01 */	addi r6, r6, 1
/* 8002E3C4  42 00 FF E4 */	bdnz lbl_8002E3A8
lbl_8002E3C8:
/* 8002E3C8  38 60 FF FF */	li r3, -1
/* 8002E3CC  4E 80 00 20 */	blr 

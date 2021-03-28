lbl_8054A458:
/* 8054A458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A45C  7C 08 02 A6 */	mflr r0
/* 8054A460  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A464  7C 60 1B 78 */	mr r0, r3
/* 8054A468  7C 85 23 78 */	mr r5, r4
/* 8054A46C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054A470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054A474  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8054A478  7C 04 03 78 */	mr r4, r0
/* 8054A47C  4B AE A5 64 */	b setEventReg__11dSv_event_cFUsUc
/* 8054A480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A484  7C 08 03 A6 */	mtlr r0
/* 8054A488  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A48C  4E 80 00 20 */	blr 

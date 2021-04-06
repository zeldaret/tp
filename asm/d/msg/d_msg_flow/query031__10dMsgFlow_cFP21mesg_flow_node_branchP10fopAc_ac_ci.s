lbl_8024BB18:
/* 8024BB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BB1C  7C 08 02 A6 */	mflr r0
/* 8024BB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024BB28  A3 E4 00 04 */	lhz r31, 4(r4)
/* 8024BB2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024BB30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024BB34  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8024BB38  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FF1F@ha */
/* 8024BB3C  38 84 FF 1F */	addi r4, r4, 0xFF1F /* 0x0000FF1F@l */
/* 8024BB40  4B DE 8E C5 */	bl getEventReg__11dSv_event_cCFUs
/* 8024BB44  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024BB48  20 00 00 14 */	subfic r0, r0, 0x14
/* 8024BB4C  7F E0 02 78 */	xor r0, r31, r0
/* 8024BB50  7C 03 0E 70 */	srawi r3, r0, 1
/* 8024BB54  7C 00 F8 38 */	and r0, r0, r31
/* 8024BB58  7C 00 18 50 */	subf r0, r0, r3
/* 8024BB5C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8024BB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024BB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024BB68  7C 08 03 A6 */	mtlr r0
/* 8024BB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024BB70  4E 80 00 20 */	blr 

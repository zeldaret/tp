lbl_802386C8:
/* 802386C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802386CC  7C 08 02 A6 */	mflr r0
/* 802386D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802386D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802386D8  93 C1 00 08 */	stw r30, 8(r1)
/* 802386DC  7C 60 1B 78 */	mr r0, r3
/* 802386E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802386E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802386E8  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 802386EC  7F C3 F3 78 */	mr r3, r30
/* 802386F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FEFF@ha */
/* 802386F4  38 84 FE FF */	addi r4, r4, 0xFEFF /* 0x0000FEFF@l */
/* 802386F8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 802386FC  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 80238700  4B DF C2 E1 */	bl setEventReg__11dSv_event_cFUsUc
/* 80238704  7F C3 F3 78 */	mr r3, r30
/* 80238708  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FDFF@ha */
/* 8023870C  38 84 FD FF */	addi r4, r4, 0xFDFF /* 0x0000FDFF@l */
/* 80238710  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80238714  4B DF C2 CD */	bl setEventReg__11dSv_event_cFUsUc
/* 80238718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023871C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80238720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238724  7C 08 03 A6 */	mtlr r0
/* 80238728  38 21 00 10 */	addi r1, r1, 0x10
/* 8023872C  4E 80 00 20 */	blr 

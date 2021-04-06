lbl_8023882C:
/* 8023882C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238830  7C 08 02 A6 */	mflr r0
/* 80238834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023883C  93 C1 00 08 */	stw r30, 8(r1)
/* 80238840  7C 60 1B 78 */	mr r0, r3
/* 80238844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023884C  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80238850  7F C3 F3 78 */	mr r3, r30
/* 80238854  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FCFF@ha */
/* 80238858  38 84 FC FF */	addi r4, r4, 0xFCFF /* 0x0000FCFF@l */
/* 8023885C  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 80238860  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 80238864  4B DF C1 7D */	bl setEventReg__11dSv_event_cFUsUc
/* 80238868  7F C3 F3 78 */	mr r3, r30
/* 8023886C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 80238870  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 80238874  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80238878  4B DF C1 69 */	bl setEventReg__11dSv_event_cFUsUc
/* 8023887C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80238880  83 C1 00 08 */	lwz r30, 8(r1)
/* 80238884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238888  7C 08 03 A6 */	mtlr r0
/* 8023888C  38 21 00 10 */	addi r1, r1, 0x10
/* 80238890  4E 80 00 20 */	blr 

lbl_804641EC:
/* 804641EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804641F0  7C 08 02 A6 */	mflr r0
/* 804641F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804641F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804641FC  7C 7F 1B 78 */	mr r31, r3
/* 80464200  48 00 04 39 */	bl setDoorAngleSpec__10daDoor20_cFv
/* 80464204  7F E3 FB 78 */	mr r3, r31
/* 80464208  48 00 1C 85 */	bl setStop__10daDoor20_cFv
/* 8046420C  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80464210  7F E4 FB 78 */	mr r4, r31
/* 80464214  48 00 1E E1 */	bl calcMtx__12dDoor_stop_cFP10daDoor20_c
/* 80464218  7F E3 FB 78 */	mr r3, r31
/* 8046421C  4B FF FD A1 */	bl actionWait__10daDoor20_cFv
/* 80464220  38 00 00 01 */	li r0, 1
/* 80464224  98 1F 06 90 */	stb r0, 0x690(r31)
/* 80464228  38 60 00 01 */	li r3, 1
/* 8046422C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80464230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80464234  7C 08 03 A6 */	mtlr r0
/* 80464238  38 21 00 10 */	addi r1, r1, 0x10
/* 8046423C  4E 80 00 20 */	blr 

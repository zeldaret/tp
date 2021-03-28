lbl_8029C7E0:
/* 8029C7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C7E4  7C 08 02 A6 */	mflr r0
/* 8029C7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029C7F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8029C7F4  7C 7E 1B 78 */	mr r30, r3
/* 8029C7F8  7C 9F 23 78 */	mr r31, r4
/* 8029C7FC  80 8D 8D 28 */	lwz r4, sDspDacReadBuffer__9JASDriver(r13)
/* 8029C800  38 A4 00 01 */	addi r5, r4, 1
/* 8029C804  88 6D 82 28 */	lbz r3, data_804507A8(r13)
/* 8029C808  7C 05 18 00 */	cmpw r5, r3
/* 8029C80C  40 82 00 08 */	bne lbl_8029C814
/* 8029C810  38 A0 00 00 */	li r5, 0
lbl_8029C814:
/* 8029C814  80 0D 8D 24 */	lwz r0, sDspDacWriteBuffer__9JASDriver(r13)
/* 8029C818  7C 05 00 00 */	cmpw r5, r0
/* 8029C81C  40 82 00 90 */	bne lbl_8029C8AC
/* 8029C820  28 03 00 03 */	cmplwi r3, 3
/* 8029C824  41 80 00 88 */	blt lbl_8029C8AC
/* 8029C828  80 6D 8D 20 */	lwz r3, sDspDacBuffer__9JASDriver(r13)
/* 8029C82C  54 80 10 3A */	slwi r0, r4, 2
/* 8029C830  7C 63 00 2E */	lwzx r3, r3, r0
/* 8029C834  38 63 FF FE */	addi r3, r3, -2
/* 8029C838  57 E0 00 3C */	rlwinm r0, r31, 0, 0, 0x1e
/* 8029C83C  7C A3 02 AE */	lhax r5, r3, r0
/* 8029C840  57 E6 08 3C */	slwi r6, r31, 1
/* 8029C844  7C E3 32 AE */	lhax r7, r3, r6
/* 8029C848  38 60 00 00 */	li r3, 0
/* 8029C84C  7F E9 03 A6 */	mtctr r31
/* 8029C850  28 1F 00 00 */	cmplwi r31, 0
/* 8029C854  40 81 00 20 */	ble lbl_8029C874
lbl_8029C858:
/* 8029C858  80 8D 8D 20 */	lwz r4, sDspDacBuffer__9JASDriver(r13)
/* 8029C85C  80 0D 8D 28 */	lwz r0, sDspDacReadBuffer__9JASDriver(r13)
/* 8029C860  54 00 10 3A */	slwi r0, r0, 2
/* 8029C864  7C 84 00 2E */	lwzx r4, r4, r0
/* 8029C868  7C A4 1B 2E */	sthx r5, r4, r3
/* 8029C86C  38 63 00 02 */	addi r3, r3, 2
/* 8029C870  42 00 FF E8 */	bdnz lbl_8029C858
lbl_8029C874:
/* 8029C874  7C E5 07 34 */	extsh r5, r7
/* 8029C878  57 E3 08 3C */	slwi r3, r31, 1
/* 8029C87C  7C 1F 30 50 */	subf r0, r31, r6
/* 8029C880  7C 09 03 A6 */	mtctr r0
/* 8029C884  7C 1F 30 40 */	cmplw r31, r6
/* 8029C888  40 80 00 3C */	bge lbl_8029C8C4
lbl_8029C88C:
/* 8029C88C  80 8D 8D 20 */	lwz r4, sDspDacBuffer__9JASDriver(r13)
/* 8029C890  80 0D 8D 28 */	lwz r0, sDspDacReadBuffer__9JASDriver(r13)
/* 8029C894  54 00 10 3A */	slwi r0, r0, 2
/* 8029C898  7C 84 00 2E */	lwzx r4, r4, r0
/* 8029C89C  7C A4 1B 2E */	sthx r5, r4, r3
/* 8029C8A0  38 63 00 02 */	addi r3, r3, 2
/* 8029C8A4  42 00 FF E8 */	bdnz lbl_8029C88C
/* 8029C8A8  48 00 00 1C */	b lbl_8029C8C4
lbl_8029C8AC:
/* 8029C8AC  90 AD 8D 28 */	stw r5, sDspDacReadBuffer__9JASDriver(r13)
/* 8029C8B0  80 6D 8D 20 */	lwz r3, sDspDacBuffer__9JASDriver(r13)
/* 8029C8B4  54 A0 10 3A */	slwi r0, r5, 2
/* 8029C8B8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8029C8BC  57 E4 10 3A */	slwi r4, r31, 2
/* 8029C8C0  48 09 EC C1 */	bl DCInvalidateRange
lbl_8029C8C4:
/* 8029C8C4  80 6D 8D 20 */	lwz r3, sDspDacBuffer__9JASDriver(r13)
/* 8029C8C8  80 0D 8D 28 */	lwz r0, sDspDacReadBuffer__9JASDriver(r13)
/* 8029C8CC  54 00 10 3A */	slwi r0, r0, 2
/* 8029C8D0  7C 83 00 2E */	lwzx r4, r3, r0
/* 8029C8D4  57 E0 08 3C */	slwi r0, r31, 1
/* 8029C8D8  7C 64 02 14 */	add r3, r4, r0
/* 8029C8DC  7F C5 F3 78 */	mr r5, r30
/* 8029C8E0  7F E6 FB 78 */	mr r6, r31
/* 8029C8E4  4B FF 2A 05 */	bl imixcopy__7JASCalcFPCsPCsPsUl
/* 8029C8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029C8EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029C8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C8F4  7C 08 03 A6 */	mtlr r0
/* 8029C8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C8FC  4E 80 00 20 */	blr 

lbl_802DA35C:
/* 802DA35C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DA360  7C 08 02 A6 */	mflr r0
/* 802DA364  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DA368  39 61 00 20 */	addi r11, r1, 0x20
/* 802DA36C  48 08 7E 71 */	bl _savegpr_29
/* 802DA370  7C 9D 23 78 */	mr r29, r4
/* 802DA374  38 80 00 00 */	li r4, 0
/* 802DA378  38 00 00 00 */	li r0, 0
/* 802DA37C  3B C0 00 00 */	li r30, 0
/* 802DA380  88 A3 00 00 */	lbz r5, 0(r3)
/* 802DA384  2C 05 00 59 */	cmpwi r5, 0x59
/* 802DA388  40 82 00 28 */	bne lbl_802DA3B0
/* 802DA38C  88 A3 00 01 */	lbz r5, 1(r3)
/* 802DA390  2C 05 00 61 */	cmpwi r5, 0x61
/* 802DA394  40 82 00 1C */	bne lbl_802DA3B0
/* 802DA398  88 A3 00 02 */	lbz r5, 2(r3)
/* 802DA39C  2C 05 00 7A */	cmpwi r5, 0x7a
/* 802DA3A0  40 82 00 10 */	bne lbl_802DA3B0
/* 802DA3A4  88 A3 00 03 */	lbz r5, 3(r3)
/* 802DA3A8  2C 05 00 30 */	cmpwi r5, 0x30
/* 802DA3AC  41 82 00 0C */	beq lbl_802DA3B8
lbl_802DA3B0:
/* 802DA3B0  38 60 FF FF */	li r3, -1
/* 802DA3B4  48 00 02 40 */	b lbl_802DA5F4
lbl_802DA3B8:
/* 802DA3B8  80 CD 8E CC */	lwz r6, fileOffset(r13)
/* 802DA3BC  80 A3 00 04 */	lwz r5, 4(r3)
/* 802DA3C0  7C A6 28 50 */	subf r5, r6, r5
/* 802DA3C4  7F FD 2A 14 */	add r31, r29, r5
/* 802DA3C8  80 AD 8E D4 */	lwz r5, maxDest(r13)
/* 802DA3CC  7C BD 2A 14 */	add r5, r29, r5
/* 802DA3D0  7C 1F 28 40 */	cmplw r31, r5
/* 802DA3D4  40 81 00 08 */	ble lbl_802DA3DC
/* 802DA3D8  7C BF 2B 78 */	mr r31, r5
lbl_802DA3DC:
/* 802DA3DC  38 63 00 10 */	addi r3, r3, 0x10
lbl_802DA3E0:
/* 802DA3E0  2C 04 00 00 */	cmpwi r4, 0
/* 802DA3E4  40 82 00 3C */	bne lbl_802DA420
/* 802DA3E8  80 0D 8E C4 */	lwz r0, srcLimit(r13)
/* 802DA3EC  7C 03 00 40 */	cmplw r3, r0
/* 802DA3F0  40 81 00 24 */	ble lbl_802DA414
/* 802DA3F4  80 0D 8E C0 */	lwz r0, transLeft(r13)
/* 802DA3F8  28 00 00 00 */	cmplwi r0, 0
/* 802DA3FC  41 82 00 18 */	beq lbl_802DA414
/* 802DA400  48 00 02 D9 */	bl nextSrcData__FPUc
/* 802DA404  28 03 00 00 */	cmplwi r3, 0
/* 802DA408  40 82 00 0C */	bne lbl_802DA414
/* 802DA40C  38 60 FF FF */	li r3, -1
/* 802DA410  48 00 01 E4 */	b lbl_802DA5F4
lbl_802DA414:
/* 802DA414  88 03 00 00 */	lbz r0, 0(r3)
/* 802DA418  38 80 00 08 */	li r4, 8
/* 802DA41C  38 63 00 01 */	addi r3, r3, 1
lbl_802DA420:
/* 802DA420  54 05 06 31 */	rlwinm. r5, r0, 0, 0x18, 0x18
/* 802DA424  41 82 00 94 */	beq lbl_802DA4B8
/* 802DA428  80 CD 8E CC */	lwz r6, fileOffset(r13)
/* 802DA42C  28 06 00 00 */	cmplwi r6, 0
/* 802DA430  41 82 00 5C */	beq lbl_802DA48C
/* 802DA434  80 AD 8E D0 */	lwz r5, readCount(r13)
/* 802DA438  7C 05 30 40 */	cmplw r5, r6
/* 802DA43C  41 80 00 1C */	blt lbl_802DA458
/* 802DA440  88 A3 00 00 */	lbz r5, 0(r3)
/* 802DA444  98 BD 00 00 */	stb r5, 0(r29)
/* 802DA448  3B BD 00 01 */	addi r29, r29, 1
/* 802DA44C  7C 1D F8 40 */	cmplw r29, r31
/* 802DA450  3B DE 00 01 */	addi r30, r30, 1
/* 802DA454  41 82 01 94 */	beq lbl_802DA5E8
lbl_802DA458:
/* 802DA458  88 E3 00 00 */	lbz r7, 0(r3)
/* 802DA45C  80 CD 8E B8 */	lwz r6, refCurrent(r13)
/* 802DA460  38 A6 00 01 */	addi r5, r6, 1
/* 802DA464  90 AD 8E B8 */	stw r5, refCurrent(r13)
/* 802DA468  98 E6 00 00 */	stb r7, 0(r6)
/* 802DA46C  80 CD 8E B8 */	lwz r6, refCurrent(r13)
/* 802DA470  80 AD 8E B4 */	lwz r5, refEnd(r13)
/* 802DA474  7C 06 28 40 */	cmplw r6, r5
/* 802DA478  40 82 00 0C */	bne lbl_802DA484
/* 802DA47C  80 AD 8E B0 */	lwz r5, refBuf(r13)
/* 802DA480  90 AD 8E B8 */	stw r5, refCurrent(r13)
lbl_802DA484:
/* 802DA484  38 63 00 01 */	addi r3, r3, 1
/* 802DA488  48 00 00 20 */	b lbl_802DA4A8
lbl_802DA48C:
/* 802DA48C  88 A3 00 00 */	lbz r5, 0(r3)
/* 802DA490  98 BD 00 00 */	stb r5, 0(r29)
/* 802DA494  3B BD 00 01 */	addi r29, r29, 1
/* 802DA498  7C 1D F8 40 */	cmplw r29, r31
/* 802DA49C  38 63 00 01 */	addi r3, r3, 1
/* 802DA4A0  3B DE 00 01 */	addi r30, r30, 1
/* 802DA4A4  41 82 01 44 */	beq lbl_802DA5E8
lbl_802DA4A8:
/* 802DA4A8  80 AD 8E D0 */	lwz r5, readCount(r13)
/* 802DA4AC  38 A5 00 01 */	addi r5, r5, 1
/* 802DA4B0  90 AD 8E D0 */	stw r5, readCount(r13)
/* 802DA4B4  48 00 01 24 */	b lbl_802DA5D8
lbl_802DA4B8:
/* 802DA4B8  88 C3 00 00 */	lbz r6, 0(r3)
/* 802DA4BC  88 E3 00 01 */	lbz r7, 1(r3)
/* 802DA4C0  50 C7 45 2E */	rlwimi r7, r6, 8, 0x14, 0x17
/* 802DA4C4  7C C5 26 70 */	srawi r5, r6, 4
/* 802DA4C8  81 0D 8E CC */	lwz r8, fileOffset(r13)
/* 802DA4CC  28 08 00 00 */	cmplwi r8, 0
/* 802DA4D0  38 63 00 02 */	addi r3, r3, 2
/* 802DA4D4  41 82 00 2C */	beq lbl_802DA500
/* 802DA4D8  80 CD 8E B8 */	lwz r6, refCurrent(r13)
/* 802DA4DC  7C C7 30 50 */	subf r6, r7, r6
/* 802DA4E0  39 26 FF FF */	addi r9, r6, -1
/* 802DA4E4  80 ED 8E B0 */	lwz r7, refBuf(r13)
/* 802DA4E8  7C 09 38 40 */	cmplw r9, r7
/* 802DA4EC  40 80 00 1C */	bge lbl_802DA508
/* 802DA4F0  80 CD 8E B4 */	lwz r6, refEnd(r13)
/* 802DA4F4  7C C7 30 50 */	subf r6, r7, r6
/* 802DA4F8  7D 29 32 14 */	add r9, r9, r6
/* 802DA4FC  48 00 00 0C */	b lbl_802DA508
lbl_802DA500:
/* 802DA500  7C C7 E8 50 */	subf r6, r7, r29
/* 802DA504  39 26 FF FF */	addi r9, r6, -1
lbl_802DA508:
/* 802DA508  2C 05 00 00 */	cmpwi r5, 0
/* 802DA50C  40 82 00 14 */	bne lbl_802DA520
/* 802DA510  88 A3 00 00 */	lbz r5, 0(r3)
/* 802DA514  38 A5 00 12 */	addi r5, r5, 0x12
/* 802DA518  38 63 00 01 */	addi r3, r3, 1
/* 802DA51C  48 00 00 08 */	b lbl_802DA524
lbl_802DA520:
/* 802DA520  38 A5 00 02 */	addi r5, r5, 2
lbl_802DA524:
/* 802DA524  28 08 00 00 */	cmplwi r8, 0
/* 802DA528  41 82 00 80 */	beq lbl_802DA5A8
lbl_802DA52C:
/* 802DA52C  80 ED 8E D0 */	lwz r7, readCount(r13)
/* 802DA530  80 CD 8E CC */	lwz r6, fileOffset(r13)
/* 802DA534  7C 07 30 40 */	cmplw r7, r6
/* 802DA538  41 80 00 1C */	blt lbl_802DA554
/* 802DA53C  88 C9 00 00 */	lbz r6, 0(r9)
/* 802DA540  98 DD 00 00 */	stb r6, 0(r29)
/* 802DA544  3B BD 00 01 */	addi r29, r29, 1
/* 802DA548  7C 1D F8 40 */	cmplw r29, r31
/* 802DA54C  3B DE 00 01 */	addi r30, r30, 1
/* 802DA550  41 82 00 88 */	beq lbl_802DA5D8
lbl_802DA554:
/* 802DA554  89 09 00 00 */	lbz r8, 0(r9)
/* 802DA558  80 ED 8E B8 */	lwz r7, refCurrent(r13)
/* 802DA55C  38 C7 00 01 */	addi r6, r7, 1
/* 802DA560  90 CD 8E B8 */	stw r6, refCurrent(r13)
/* 802DA564  99 07 00 00 */	stb r8, 0(r7)
/* 802DA568  80 CD 8E B8 */	lwz r6, refCurrent(r13)
/* 802DA56C  80 ED 8E B4 */	lwz r7, refEnd(r13)
/* 802DA570  7C 06 38 40 */	cmplw r6, r7
/* 802DA574  40 82 00 0C */	bne lbl_802DA580
/* 802DA578  80 CD 8E B0 */	lwz r6, refBuf(r13)
/* 802DA57C  90 CD 8E B8 */	stw r6, refCurrent(r13)
lbl_802DA580:
/* 802DA580  39 29 00 01 */	addi r9, r9, 1
/* 802DA584  7C 09 38 40 */	cmplw r9, r7
/* 802DA588  40 82 00 08 */	bne lbl_802DA590
/* 802DA58C  81 2D 8E B0 */	lwz r9, refBuf(r13)
lbl_802DA590:
/* 802DA590  80 CD 8E D0 */	lwz r6, readCount(r13)
/* 802DA594  38 C6 00 01 */	addi r6, r6, 1
/* 802DA598  90 CD 8E D0 */	stw r6, readCount(r13)
/* 802DA59C  34 A5 FF FF */	addic. r5, r5, -1
/* 802DA5A0  40 82 FF 8C */	bne lbl_802DA52C
/* 802DA5A4  48 00 00 34 */	b lbl_802DA5D8
lbl_802DA5A8:
/* 802DA5A8  88 C9 00 00 */	lbz r6, 0(r9)
/* 802DA5AC  98 DD 00 00 */	stb r6, 0(r29)
/* 802DA5B0  3B BD 00 01 */	addi r29, r29, 1
/* 802DA5B4  7C 1D F8 40 */	cmplw r29, r31
/* 802DA5B8  3B DE 00 01 */	addi r30, r30, 1
/* 802DA5BC  41 82 00 1C */	beq lbl_802DA5D8
/* 802DA5C0  80 CD 8E D0 */	lwz r6, readCount(r13)
/* 802DA5C4  38 C6 00 01 */	addi r6, r6, 1
/* 802DA5C8  90 CD 8E D0 */	stw r6, readCount(r13)
/* 802DA5CC  34 A5 FF FF */	addic. r5, r5, -1
/* 802DA5D0  39 29 00 01 */	addi r9, r9, 1
/* 802DA5D4  40 82 FF D4 */	bne lbl_802DA5A8
lbl_802DA5D8:
/* 802DA5D8  54 00 08 3C */	slwi r0, r0, 1
/* 802DA5DC  7C 1D F8 40 */	cmplw r29, r31
/* 802DA5E0  38 84 FF FF */	addi r4, r4, -1
/* 802DA5E4  41 80 FD FC */	blt lbl_802DA3E0
lbl_802DA5E8:
/* 802DA5E8  80 6D 8E DC */	lwz r3, tsPtr(r13)
/* 802DA5EC  93 C3 00 00 */	stw r30, 0(r3)
/* 802DA5F0  38 60 00 00 */	li r3, 0
lbl_802DA5F4:
/* 802DA5F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DA5F8  48 08 7C 31 */	bl _restgpr_29
/* 802DA5FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DA600  7C 08 03 A6 */	mtlr r0
/* 802DA604  38 21 00 20 */	addi r1, r1, 0x20
/* 802DA608  4E 80 00 20 */	blr 

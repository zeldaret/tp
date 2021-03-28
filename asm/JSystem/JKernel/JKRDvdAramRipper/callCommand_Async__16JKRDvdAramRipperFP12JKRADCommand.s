lbl_802DAA74:
/* 802DAA74  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802DAA78  7C 08 02 A6 */	mflr r0
/* 802DAA7C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802DAA80  39 61 00 70 */	addi r11, r1, 0x70
/* 802DAA84  48 08 77 49 */	bl _savegpr_25
/* 802DAA88  7C 7D 1B 78 */	mr r29, r3
/* 802DAA8C  3B E0 00 01 */	li r31, 1
/* 802DAA90  83 C3 00 28 */	lwz r30, 0x28(r3)
/* 802DAA94  3B 40 00 00 */	li r26, 0
/* 802DAA98  38 7E 00 34 */	addi r3, r30, 0x34
/* 802DAA9C  48 06 45 A5 */	bl OSLockMutex
/* 802DAAA0  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 802DAAA4  28 03 00 00 */	cmplwi r3, 0
/* 802DAAA8  41 82 00 0C */	beq lbl_802DAAB4
/* 802DAAAC  38 00 00 00 */	li r0, 0
/* 802DAAB0  90 03 00 00 */	stw r0, 0(r3)
lbl_802DAAB4:
/* 802DAAB4  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 802DAAB8  28 00 00 00 */	cmplwi r0, 0
/* 802DAABC  41 82 00 0C */	beq lbl_802DAAC8
/* 802DAAC0  3B E0 00 00 */	li r31, 0
/* 802DAAC4  48 00 02 DC */	b lbl_802DADA0
lbl_802DAAC8:
/* 802DAAC8  48 06 61 BD */	bl OSGetCurrentThread
/* 802DAACC  90 7E 00 50 */	stw r3, 0x50(r30)
/* 802DAAD0  38 60 00 10 */	li r3, 0x10
/* 802DAAD4  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802DAAD8  38 A0 FF FC */	li r5, -4
/* 802DAADC  4B FF 41 BD */	bl __nw__FUlP7JKRHeapi
/* 802DAAE0  7C 7C 1B 79 */	or. r28, r3, r3
/* 802DAAE4  41 82 00 10 */	beq lbl_802DAAF4
/* 802DAAE8  7F C4 F3 78 */	mr r4, r30
/* 802DAAEC  48 00 1B 4D */	bl __ct__18JSUFileInputStreamFP7JKRFile
/* 802DAAF0  7C 7C 1B 78 */	mr r28, r3
lbl_802DAAF4:
/* 802DAAF4  93 9E 00 54 */	stw r28, 0x54(r30)
/* 802DAAF8  7F C3 F3 78 */	mr r3, r30
/* 802DAAFC  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DAB00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DAB04  7D 89 03 A6 */	mtctr r12
/* 802DAB08  4E 80 04 21 */	bctrl 
/* 802DAB0C  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 802DAB10  28 00 00 00 */	cmplwi r0, 0
/* 802DAB14  41 82 00 10 */	beq lbl_802DAB24
/* 802DAB18  7C 03 00 40 */	cmplw r3, r0
/* 802DAB1C  40 81 00 08 */	ble lbl_802DAB24
/* 802DAB20  7C 03 03 78 */	mr r3, r0
lbl_802DAB24:
/* 802DAB24  38 03 00 1F */	addi r0, r3, 0x1f
/* 802DAB28  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802DAB2C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802DAB30  2C 00 00 01 */	cmpwi r0, 1
/* 802DAB34  40 82 00 C8 */	bne lbl_802DABFC
/* 802DAB38  38 01 00 27 */	addi r0, r1, 0x27
/* 802DAB3C  54 19 00 34 */	rlwinm r25, r0, 0, 0, 0x1a
lbl_802DAB40:
/* 802DAB40  38 7E 00 5C */	addi r3, r30, 0x5c
/* 802DAB44  7F 24 CB 78 */	mr r4, r25
/* 802DAB48  38 A0 00 20 */	li r5, 0x20
/* 802DAB4C  38 C0 00 00 */	li r6, 0
/* 802DAB50  38 E0 00 02 */	li r7, 2
/* 802DAB54  48 06 E2 F1 */	bl DVDReadPrio
/* 802DAB58  2C 03 00 00 */	cmpwi r3, 0
/* 802DAB5C  40 80 00 40 */	bge lbl_802DAB9C
/* 802DAB60  88 0D 83 50 */	lbz r0, data_804508D0(r13)
/* 802DAB64  28 00 00 00 */	cmplwi r0, 0
/* 802DAB68  40 82 00 2C */	bne lbl_802DAB94
/* 802DAB6C  28 1C 00 00 */	cmplwi r28, 0
/* 802DAB70  41 82 00 1C */	beq lbl_802DAB8C
/* 802DAB74  7F 83 E3 78 */	mr r3, r28
/* 802DAB78  38 80 00 01 */	li r4, 1
/* 802DAB7C  81 9C 00 00 */	lwz r12, 0(r28)
/* 802DAB80  81 8C 00 08 */	lwz r12, 8(r12)
/* 802DAB84  7D 89 03 A6 */	mtctr r12
/* 802DAB88  4E 80 04 21 */	bctrl 
lbl_802DAB8C:
/* 802DAB8C  38 60 00 00 */	li r3, 0
/* 802DAB90  48 00 02 30 */	b lbl_802DADC0
lbl_802DAB94:
/* 802DAB94  48 07 1E 31 */	bl VIWaitForRetrace
/* 802DAB98  4B FF FF A8 */	b lbl_802DAB40
lbl_802DAB9C:
/* 802DAB9C  7F 23 CB 78 */	mr r3, r25
/* 802DABA0  38 80 00 20 */	li r4, 0x20
/* 802DABA4  48 06 09 DD */	bl DCInvalidateRange
/* 802DABA8  7F 23 CB 78 */	mr r3, r25
/* 802DABAC  48 00 11 4D */	bl checkCompressed__9JKRDecompFPUc
/* 802DABB0  2C 03 00 03 */	cmpwi r3, 3
/* 802DABB4  40 82 00 08 */	bne lbl_802DABBC
/* 802DABB8  38 60 00 00 */	li r3, 0
lbl_802DABBC:
/* 802DABBC  7C 7A 1B 78 */	mr r26, r3
/* 802DABC0  88 B9 00 07 */	lbz r5, 7(r25)
/* 802DABC4  88 99 00 06 */	lbz r4, 6(r25)
/* 802DABC8  88 79 00 04 */	lbz r3, 4(r25)
/* 802DABCC  88 19 00 05 */	lbz r0, 5(r25)
/* 802DABD0  54 00 80 1E */	slwi r0, r0, 0x10
/* 802DABD4  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802DABD8  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802DABDC  7C A0 03 78 */	or r0, r5, r0
/* 802DABE0  7C 19 03 78 */	mr r25, r0
/* 802DABE4  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 802DABE8  28 03 00 00 */	cmplwi r3, 0
/* 802DABEC  41 82 00 10 */	beq lbl_802DABFC
/* 802DABF0  7C 00 18 40 */	cmplw r0, r3
/* 802DABF4  40 81 00 08 */	ble lbl_802DABFC
/* 802DABF8  7C 79 1B 78 */	mr r25, r3
lbl_802DABFC:
/* 802DABFC  2C 1A 00 00 */	cmpwi r26, 0
/* 802DAC00  40 82 00 0C */	bne lbl_802DAC0C
/* 802DAC04  38 00 00 00 */	li r0, 0
/* 802DAC08  90 1D 00 34 */	stw r0, 0x34(r29)
lbl_802DAC0C:
/* 802DAC0C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802DAC10  2C 00 00 01 */	cmpwi r0, 1
/* 802DAC14  40 82 00 80 */	bne lbl_802DAC94
/* 802DAC18  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 802DAC1C  28 00 00 00 */	cmplwi r0, 0
/* 802DAC20  40 82 00 44 */	bne lbl_802DAC64
/* 802DAC24  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 802DAC28  28 00 00 00 */	cmplwi r0, 0
/* 802DAC2C  40 82 00 38 */	bne lbl_802DAC64
/* 802DAC30  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802DAC34  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802DAC38  7F 24 CB 78 */	mr r4, r25
/* 802DAC3C  38 A0 00 00 */	li r5, 0
/* 802DAC40  4B FF 83 7D */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 802DAC44  90 7D 00 30 */	stw r3, 0x30(r29)
/* 802DAC48  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802DAC4C  28 03 00 00 */	cmplwi r3, 0
/* 802DAC50  41 82 00 0C */	beq lbl_802DAC5C
/* 802DAC54  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802DAC58  90 1D 00 2C */	stw r0, 0x2c(r29)
lbl_802DAC5C:
/* 802DAC5C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 802DAC60  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_802DAC64:
/* 802DAC64  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802DAC68  28 03 00 00 */	cmplwi r3, 0
/* 802DAC6C  41 82 00 0C */	beq lbl_802DAC78
/* 802DAC70  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802DAC74  90 1D 00 2C */	stw r0, 0x2c(r29)
lbl_802DAC78:
/* 802DAC78  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 802DAC7C  28 00 00 00 */	cmplwi r0, 0
/* 802DAC80  40 82 00 74 */	bne lbl_802DACF4
/* 802DAC84  38 00 00 00 */	li r0, 0
/* 802DAC88  90 1E 00 50 */	stw r0, 0x50(r30)
/* 802DAC8C  38 60 00 00 */	li r3, 0
/* 802DAC90  48 00 01 30 */	b lbl_802DADC0
lbl_802DAC94:
/* 802DAC94  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 802DAC98  28 00 00 00 */	cmplwi r0, 0
/* 802DAC9C  40 82 00 28 */	bne lbl_802DACC4
/* 802DACA0  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 802DACA4  28 00 00 00 */	cmplwi r0, 0
/* 802DACA8  40 82 00 1C */	bne lbl_802DACC4
/* 802DACAC  80 6D 8E 48 */	lwz r3, sAramObject__7JKRAram(r13)
/* 802DACB0  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802DACB4  7F 64 DB 78 */	mr r4, r27
/* 802DACB8  38 A0 00 00 */	li r5, 0
/* 802DACBC  4B FF 83 01 */	bl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
/* 802DACC0  90 7D 00 30 */	stw r3, 0x30(r29)
lbl_802DACC4:
/* 802DACC4  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802DACC8  28 03 00 00 */	cmplwi r3, 0
/* 802DACCC  41 82 00 0C */	beq lbl_802DACD8
/* 802DACD0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802DACD4  90 1D 00 2C */	stw r0, 0x2c(r29)
lbl_802DACD8:
/* 802DACD8  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 802DACDC  28 00 00 00 */	cmplwi r0, 0
/* 802DACE0  40 82 00 14 */	bne lbl_802DACF4
/* 802DACE4  38 00 00 00 */	li r0, 0
/* 802DACE8  90 1E 00 50 */	stw r0, 0x50(r30)
/* 802DACEC  38 60 00 00 */	li r3, 0
/* 802DACF0  48 00 00 D0 */	b lbl_802DADC0
lbl_802DACF4:
/* 802DACF4  2C 1A 00 00 */	cmpwi r26, 0
/* 802DACF8  40 82 00 24 */	bne lbl_802DAD1C
/* 802DACFC  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 802DAD00  80 DD 00 3C */	lwz r6, 0x3c(r29)
/* 802DAD04  7F 83 E3 78 */	mr r3, r28
/* 802DAD08  7C A6 D8 50 */	subf r5, r6, r27
/* 802DAD0C  80 FD 00 44 */	lwz r7, 0x44(r29)
/* 802DAD10  4B FF 91 C1 */	bl write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUlPUl
/* 802DAD14  90 7D 00 50 */	stw r3, 0x50(r29)
/* 802DAD18  48 00 00 5C */	b lbl_802DAD74
lbl_802DAD1C:
/* 802DAD1C  2C 1A 00 01 */	cmpwi r26, 1
/* 802DAD20  40 82 00 24 */	bne lbl_802DAD44
/* 802DAD24  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 802DAD28  80 DD 00 3C */	lwz r6, 0x3c(r29)
/* 802DAD2C  7F 83 E3 78 */	mr r3, r28
/* 802DAD30  7C A6 D8 50 */	subf r5, r6, r27
/* 802DAD34  80 FD 00 44 */	lwz r7, 0x44(r29)
/* 802DAD38  4B FF 91 99 */	bl write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUlPUl
/* 802DAD3C  90 7D 00 50 */	stw r3, 0x50(r29)
/* 802DAD40  48 00 00 34 */	b lbl_802DAD74
lbl_802DAD44:
/* 802DAD44  2C 1A 00 02 */	cmpwi r26, 2
/* 802DAD48  40 82 00 2C */	bne lbl_802DAD74
/* 802DAD4C  38 00 00 00 */	li r0, 0
/* 802DAD50  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802DAD54  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 802DAD58  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 802DAD5C  7F 65 DB 78 */	mr r5, r27
/* 802DAD60  7F 26 CB 78 */	mr r6, r25
/* 802DAD64  80 FD 00 3C */	lwz r7, 0x3c(r29)
/* 802DAD68  39 00 00 00 */	li r8, 0
/* 802DAD6C  81 3D 00 44 */	lwz r9, 0x44(r29)
/* 802DAD70  48 00 02 79 */	bl JKRDecompressFromDVDToAram__FP10JKRDvdFileUlUlUlUlUlPUl
lbl_802DAD74:
/* 802DAD74  81 9D 00 38 */	lwz r12, 0x38(r29)
/* 802DAD78  28 0C 00 00 */	cmplwi r12, 0
/* 802DAD7C  40 82 00 18 */	bne lbl_802DAD94
/* 802DAD80  3C 60 80 43 */	lis r3, sDvdAramAsyncList__16JKRDvdAramRipper@ha
/* 802DAD84  38 63 43 B4 */	addi r3, r3, sDvdAramAsyncList__16JKRDvdAramRipper@l
/* 802DAD88  7F A4 EB 78 */	mr r4, r29
/* 802DAD8C  48 00 11 C1 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802DAD90  48 00 00 10 */	b lbl_802DADA0
lbl_802DAD94:
/* 802DAD94  7F A3 EB 78 */	mr r3, r29
/* 802DAD98  7D 89 03 A6 */	mtctr r12
/* 802DAD9C  4E 80 04 21 */	bctrl 
lbl_802DADA0:
/* 802DADA0  38 7E 00 34 */	addi r3, r30, 0x34
/* 802DADA4  48 06 43 79 */	bl OSUnlockMutex
/* 802DADA8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802DADAC  28 00 00 01 */	cmplwi r0, 1
/* 802DADB0  40 82 00 0C */	bne lbl_802DADBC
/* 802DADB4  7F A3 EB 78 */	mr r3, r29
/* 802DADB8  48 00 00 08 */	b lbl_802DADC0
lbl_802DADBC:
/* 802DADBC  38 60 00 00 */	li r3, 0
lbl_802DADC0:
/* 802DADC0  39 61 00 70 */	addi r11, r1, 0x70
/* 802DADC4  48 08 74 55 */	bl _restgpr_25
/* 802DADC8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802DADCC  7C 08 03 A6 */	mtlr r0
/* 802DADD0  38 21 00 70 */	addi r1, r1, 0x70
/* 802DADD4  4E 80 00 20 */	blr 

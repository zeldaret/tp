lbl_802DB160:
/* 802DB160  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DB164  7C 08 02 A6 */	mflr r0
/* 802DB168  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DB16C  39 61 00 30 */	addi r11, r1, 0x30
/* 802DB170  48 08 70 55 */	bl _savegpr_23
/* 802DB174  7C 98 23 78 */	mr r24, r4
/* 802DB178  3B A0 00 00 */	li r29, 0
/* 802DB17C  3B 80 00 00 */	li r28, 0
/* 802DB180  3B 40 00 00 */	li r26, 0
/* 802DB184  7F 19 C3 78 */	mr r25, r24
/* 802DB188  88 03 00 00 */	lbz r0, 0(r3)
/* 802DB18C  2C 00 00 59 */	cmpwi r0, 0x59
/* 802DB190  40 82 00 28 */	bne lbl_802DB1B8
/* 802DB194  88 03 00 01 */	lbz r0, 1(r3)
/* 802DB198  2C 00 00 61 */	cmpwi r0, 0x61
/* 802DB19C  40 82 00 1C */	bne lbl_802DB1B8
/* 802DB1A0  88 03 00 02 */	lbz r0, 2(r3)
/* 802DB1A4  2C 00 00 7A */	cmpwi r0, 0x7a
/* 802DB1A8  40 82 00 10 */	bne lbl_802DB1B8
/* 802DB1AC  88 03 00 03 */	lbz r0, 3(r3)
/* 802DB1B0  2C 00 00 30 */	cmpwi r0, 0x30
/* 802DB1B4  41 82 00 0C */	beq lbl_802DB1C0
lbl_802DB1B8:
/* 802DB1B8  38 60 FF FF */	li r3, -1
/* 802DB1BC  48 00 02 14 */	b lbl_802DB3D0
lbl_802DB1C0:
/* 802DB1C0  80 8D 8F 18 */	lwz r4, fileOffset(r13)
/* 802DB1C4  80 03 00 04 */	lwz r0, 4(r3)
/* 802DB1C8  7C 04 00 50 */	subf r0, r4, r0
/* 802DB1CC  7F F8 02 14 */	add r31, r24, r0
/* 802DB1D0  80 0D 8F 20 */	lwz r0, maxDest(r13)
/* 802DB1D4  7C 18 02 14 */	add r0, r24, r0
/* 802DB1D8  7C 1F 00 40 */	cmplw r31, r0
/* 802DB1DC  40 81 00 08 */	ble lbl_802DB1E4
/* 802DB1E0  7C 1F 03 78 */	mr r31, r0
lbl_802DB1E4:
/* 802DB1E4  3A E3 00 10 */	addi r23, r3, 0x10
lbl_802DB1E8:
/* 802DB1E8  2C 1D 00 00 */	cmpwi r29, 0
/* 802DB1EC  40 82 00 34 */	bne lbl_802DB220
/* 802DB1F0  80 0D 8F 10 */	lwz r0, srcLimit(r13)
/* 802DB1F4  7C 17 00 40 */	cmplw r23, r0
/* 802DB1F8  40 81 00 1C */	ble lbl_802DB214
/* 802DB1FC  80 0D 8F 0C */	lwz r0, transLeft(r13)
/* 802DB200  28 00 00 00 */	cmplwi r0, 0
/* 802DB204  41 82 00 10 */	beq lbl_802DB214
/* 802DB208  7E E3 BB 78 */	mr r3, r23
/* 802DB20C  48 00 02 91 */	bl nextSrcData__FPUc
/* 802DB210  7C 77 1B 78 */	mr r23, r3
lbl_802DB214:
/* 802DB214  8B 97 00 00 */	lbz r28, 0(r23)
/* 802DB218  3B A0 00 08 */	li r29, 8
/* 802DB21C  3A F7 00 01 */	addi r23, r23, 1
lbl_802DB220:
/* 802DB220  57 80 06 31 */	rlwinm. r0, r28, 0, 0x18, 0x18
/* 802DB224  41 82 00 94 */	beq lbl_802DB2B8
/* 802DB228  80 6D 8F 1C */	lwz r3, readCount(r13)
/* 802DB22C  80 0D 8F 18 */	lwz r0, fileOffset(r13)
/* 802DB230  7C 03 00 40 */	cmplw r3, r0
/* 802DB234  41 80 00 44 */	blt lbl_802DB278
/* 802DB238  88 97 00 00 */	lbz r4, 0(r23)
/* 802DB23C  80 6D 8F 04 */	lwz r3, dmaCurrent(r13)
/* 802DB240  38 03 00 01 */	addi r0, r3, 1
/* 802DB244  90 0D 8F 04 */	stw r0, dmaCurrent(r13)
/* 802DB248  98 83 00 00 */	stb r4, 0(r3)
/* 802DB24C  80 6D 8F 04 */	lwz r3, dmaCurrent(r13)
/* 802DB250  80 0D 8F 00 */	lwz r0, dmaEnd(r13)
/* 802DB254  7C 03 00 40 */	cmplw r3, r0
/* 802DB258  3B 18 00 01 */	addi r24, r24, 1
/* 802DB25C  3B 5A 00 01 */	addi r26, r26, 1
/* 802DB260  40 82 00 10 */	bne lbl_802DB270
/* 802DB264  7F 23 CB 78 */	mr r3, r25
/* 802DB268  48 00 03 19 */	bl dmaBufferFlush__FUl
/* 802DB26C  7F 39 1A 14 */	add r25, r25, r3
lbl_802DB270:
/* 802DB270  7C 18 F8 40 */	cmplw r24, r31
/* 802DB274  41 82 01 48 */	beq lbl_802DB3BC
lbl_802DB278:
/* 802DB278  88 97 00 00 */	lbz r4, 0(r23)
/* 802DB27C  80 6D 8E F8 */	lwz r3, refCurrent(r13)
/* 802DB280  38 03 00 01 */	addi r0, r3, 1
/* 802DB284  90 0D 8E F8 */	stw r0, refCurrent(r13)
/* 802DB288  98 83 00 00 */	stb r4, 0(r3)
/* 802DB28C  80 6D 8E F8 */	lwz r3, refCurrent(r13)
/* 802DB290  80 0D 8E F4 */	lwz r0, refEnd(r13)
/* 802DB294  7C 03 00 40 */	cmplw r3, r0
/* 802DB298  40 82 00 0C */	bne lbl_802DB2A4
/* 802DB29C  80 0D 8E F0 */	lwz r0, refBuf(r13)
/* 802DB2A0  90 0D 8E F8 */	stw r0, refCurrent(r13)
lbl_802DB2A4:
/* 802DB2A4  80 6D 8F 1C */	lwz r3, readCount(r13)
/* 802DB2A8  38 03 00 01 */	addi r0, r3, 1
/* 802DB2AC  90 0D 8F 1C */	stw r0, readCount(r13)
/* 802DB2B0  3A F7 00 01 */	addi r23, r23, 1
/* 802DB2B4  48 00 00 F8 */	b lbl_802DB3AC
lbl_802DB2B8:
/* 802DB2B8  88 77 00 00 */	lbz r3, 0(r23)
/* 802DB2BC  88 97 00 01 */	lbz r4, 1(r23)
/* 802DB2C0  50 64 45 2E */	rlwimi r4, r3, 8, 0x14, 0x17
/* 802DB2C4  7C 7B 26 70 */	srawi r27, r3, 4
/* 802DB2C8  80 0D 8E F8 */	lwz r0, refCurrent(r13)
/* 802DB2CC  7C 64 00 50 */	subf r3, r4, r0
/* 802DB2D0  3B C3 FF FF */	addi r30, r3, -1
/* 802DB2D4  80 6D 8E F0 */	lwz r3, refBuf(r13)
/* 802DB2D8  7C 1E 18 40 */	cmplw r30, r3
/* 802DB2DC  3A F7 00 02 */	addi r23, r23, 2
/* 802DB2E0  40 80 00 10 */	bge lbl_802DB2F0
/* 802DB2E4  80 0D 8E F4 */	lwz r0, refEnd(r13)
/* 802DB2E8  7C 03 00 50 */	subf r0, r3, r0
/* 802DB2EC  7F DE 02 14 */	add r30, r30, r0
lbl_802DB2F0:
/* 802DB2F0  2C 1B 00 00 */	cmpwi r27, 0
/* 802DB2F4  40 82 00 14 */	bne lbl_802DB308
/* 802DB2F8  88 77 00 00 */	lbz r3, 0(r23)
/* 802DB2FC  3B 63 00 12 */	addi r27, r3, 0x12
/* 802DB300  3A F7 00 01 */	addi r23, r23, 1
/* 802DB304  48 00 00 08 */	b lbl_802DB30C
lbl_802DB308:
/* 802DB308  3B 7B 00 02 */	addi r27, r27, 2
lbl_802DB30C:
/* 802DB30C  80 6D 8F 1C */	lwz r3, readCount(r13)
/* 802DB310  80 0D 8F 18 */	lwz r0, fileOffset(r13)
/* 802DB314  7C 03 00 40 */	cmplw r3, r0
/* 802DB318  41 80 00 44 */	blt lbl_802DB35C
/* 802DB31C  88 9E 00 00 */	lbz r4, 0(r30)
/* 802DB320  80 6D 8F 04 */	lwz r3, dmaCurrent(r13)
/* 802DB324  38 03 00 01 */	addi r0, r3, 1
/* 802DB328  90 0D 8F 04 */	stw r0, dmaCurrent(r13)
/* 802DB32C  98 83 00 00 */	stb r4, 0(r3)
/* 802DB330  80 6D 8F 04 */	lwz r3, dmaCurrent(r13)
/* 802DB334  80 0D 8F 00 */	lwz r0, dmaEnd(r13)
/* 802DB338  7C 03 00 40 */	cmplw r3, r0
/* 802DB33C  3B 18 00 01 */	addi r24, r24, 1
/* 802DB340  3B 5A 00 01 */	addi r26, r26, 1
/* 802DB344  40 82 00 10 */	bne lbl_802DB354
/* 802DB348  7F 23 CB 78 */	mr r3, r25
/* 802DB34C  48 00 02 35 */	bl dmaBufferFlush__FUl
/* 802DB350  7F 39 1A 14 */	add r25, r25, r3
lbl_802DB354:
/* 802DB354  7C 18 F8 40 */	cmplw r24, r31
/* 802DB358  41 82 00 54 */	beq lbl_802DB3AC
lbl_802DB35C:
/* 802DB35C  88 9E 00 00 */	lbz r4, 0(r30)
/* 802DB360  80 6D 8E F8 */	lwz r3, refCurrent(r13)
/* 802DB364  38 03 00 01 */	addi r0, r3, 1
/* 802DB368  90 0D 8E F8 */	stw r0, refCurrent(r13)
/* 802DB36C  98 83 00 00 */	stb r4, 0(r3)
/* 802DB370  80 0D 8E F8 */	lwz r0, refCurrent(r13)
/* 802DB374  80 6D 8E F4 */	lwz r3, refEnd(r13)
/* 802DB378  7C 00 18 40 */	cmplw r0, r3
/* 802DB37C  40 82 00 0C */	bne lbl_802DB388
/* 802DB380  80 0D 8E F0 */	lwz r0, refBuf(r13)
/* 802DB384  90 0D 8E F8 */	stw r0, refCurrent(r13)
lbl_802DB388:
/* 802DB388  3B DE 00 01 */	addi r30, r30, 1
/* 802DB38C  7C 1E 18 40 */	cmplw r30, r3
/* 802DB390  40 82 00 08 */	bne lbl_802DB398
/* 802DB394  83 CD 8E F0 */	lwz r30, refBuf(r13)
lbl_802DB398:
/* 802DB398  80 6D 8F 1C */	lwz r3, readCount(r13)
/* 802DB39C  38 03 00 01 */	addi r0, r3, 1
/* 802DB3A0  90 0D 8F 1C */	stw r0, readCount(r13)
/* 802DB3A4  37 7B FF FF */	addic. r27, r27, -1
/* 802DB3A8  40 82 FF 64 */	bne lbl_802DB30C
lbl_802DB3AC:
/* 802DB3AC  57 9C 08 3C */	slwi r28, r28, 1
/* 802DB3B0  7C 18 F8 40 */	cmplw r24, r31
/* 802DB3B4  3B BD FF FF */	addi r29, r29, -1
/* 802DB3B8  41 80 FE 30 */	blt lbl_802DB1E8
lbl_802DB3BC:
/* 802DB3BC  7F 23 CB 78 */	mr r3, r25
/* 802DB3C0  48 00 01 C1 */	bl dmaBufferFlush__FUl
/* 802DB3C4  80 6D 8F 28 */	lwz r3, tsPtr(r13)
/* 802DB3C8  93 43 00 00 */	stw r26, 0(r3)
/* 802DB3CC  38 60 00 00 */	li r3, 0
lbl_802DB3D0:
/* 802DB3D0  39 61 00 30 */	addi r11, r1, 0x30
/* 802DB3D4  48 08 6E 3D */	bl _restgpr_23
/* 802DB3D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DB3DC  7C 08 03 A6 */	mtlr r0
/* 802DB3E0  38 21 00 30 */	addi r1, r1, 0x30
/* 802DB3E4  4E 80 00 20 */	blr 

lbl_8036F098:
/* 8036F098  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036F09C  7C 08 02 A6 */	mflr r0
/* 8036F0A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8036F0A4  38 00 FF FF */	li r0, -1
/* 8036F0A8  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 8036F0AC  7C 96 23 78 */	mr r22, r4
/* 8036F0B0  3C 80 80 3A */	lis r4, lit_274@ha
/* 8036F0B4  7C 75 1B 78 */	mr r21, r3
/* 8036F0B8  7C F7 3B 78 */	mr r23, r7
/* 8036F0BC  3B 66 00 01 */	addi r27, r6, 1
/* 8036F0C0  3B E4 2A B8 */	addi r31, r4, lit_274@l
/* 8036F0C4  3B C0 00 00 */	li r30, 0
/* 8036F0C8  3B 00 00 01 */	li r24, 1
/* 8036F0CC  90 16 00 00 */	stw r0, 0(r22)
/* 8036F0D0  48 00 01 64 */	b lbl_8036F234
lbl_8036F0D4:
/* 8036F0D4  38 9F 00 00 */	addi r4, r31, 0
/* 8036F0D8  38 60 00 01 */	li r3, 1
/* 8036F0DC  4C C6 31 82 */	crclr 6
/* 8036F0E0  48 00 3B 75 */	bl MWTRACE
/* 8036F0E4  7E A3 AB 78 */	mr r3, r21
/* 8036F0E8  4B FF DE F1 */	bl TRKMessageSend
/* 8036F0EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8036F0F0  40 82 01 40 */	bne lbl_8036F230
/* 8036F0F4  2C 17 00 00 */	cmpwi r23, 0
/* 8036F0F8  41 82 00 08 */	beq lbl_8036F100
/* 8036F0FC  3B 80 00 00 */	li r28, 0
lbl_8036F100:
/* 8036F100  4B FF E8 D5 */	bl TRKTestForPacket
/* 8036F104  90 76 00 00 */	stw r3, 0(r22)
/* 8036F108  80 76 00 00 */	lwz r3, 0(r22)
/* 8036F10C  2C 03 FF FF */	cmpwi r3, -1
/* 8036F110  40 82 00 20 */	bne lbl_8036F130
/* 8036F114  2C 17 00 00 */	cmpwi r23, 0
/* 8036F118  41 82 FF E8 */	beq lbl_8036F100
/* 8036F11C  3C 80 04 C5 */	lis r4, 0x04C5 /* 0x04C4B3EC@ha */
/* 8036F120  3B 9C 00 01 */	addi r28, r28, 1
/* 8036F124  38 04 B3 EC */	addi r0, r4, 0xB3EC /* 0x04C4B3EC@l */
/* 8036F128  7C 1C 00 40 */	cmplw r28, r0
/* 8036F12C  41 80 FF D4 */	blt lbl_8036F100
lbl_8036F130:
/* 8036F130  2C 03 FF FF */	cmpwi r3, -1
/* 8036F134  41 82 00 5C */	beq lbl_8036F190
/* 8036F138  3B 00 00 00 */	li r24, 0
/* 8036F13C  4B FF E5 B5 */	bl TRKGetBuffer
/* 8036F140  38 80 00 00 */	li r4, 0
/* 8036F144  7C 7D 1B 78 */	mr r29, r3
/* 8036F148  4B FF E4 D5 */	bl TRKSetBufferPosition
/* 8036F14C  80 9D 00 08 */	lwz r4, 8(r29)
/* 8036F150  38 7D 00 10 */	addi r3, r29, 0x10
/* 8036F154  4B FF FB 89 */	bl OutputData
/* 8036F158  8B 5D 00 14 */	lbz r26, 0x14(r29)
/* 8036F15C  38 9F 00 18 */	addi r4, r31, 0x18
/* 8036F160  38 60 00 01 */	li r3, 1
/* 8036F164  7F 45 D3 78 */	mr r5, r26
/* 8036F168  7F 46 D3 78 */	mr r6, r26
/* 8036F16C  4C C6 31 82 */	crclr 6
/* 8036F170  48 00 3A E5 */	bl MWTRACE
/* 8036F174  28 1A 00 80 */	cmplwi r26, 0x80
/* 8036F178  40 80 00 18 */	bge lbl_8036F190
/* 8036F17C  80 76 00 00 */	lwz r3, 0(r22)
/* 8036F180  4B FF E7 A5 */	bl TRKProcessInput
/* 8036F184  38 00 FF FF */	li r0, -1
/* 8036F188  90 16 00 00 */	stw r0, 0(r22)
/* 8036F18C  4B FF FF 74 */	b lbl_8036F100
lbl_8036F190:
/* 8036F190  80 16 00 00 */	lwz r0, 0(r22)
/* 8036F194  2C 00 FF FF */	cmpwi r0, -1
/* 8036F198  41 82 00 98 */	beq lbl_8036F230
/* 8036F19C  80 1D 00 08 */	lwz r0, 8(r29)
/* 8036F1A0  28 00 00 40 */	cmplwi r0, 0x40
/* 8036F1A4  40 80 00 08 */	bge lbl_8036F1AC
/* 8036F1A8  3B 00 00 01 */	li r24, 1
lbl_8036F1AC:
/* 8036F1AC  2C 1E 00 00 */	cmpwi r30, 0
/* 8036F1B0  40 82 00 24 */	bne lbl_8036F1D4
/* 8036F1B4  2C 18 00 00 */	cmpwi r24, 0
/* 8036F1B8  40 82 00 1C */	bne lbl_8036F1D4
/* 8036F1BC  8B 3D 00 18 */	lbz r25, 0x18(r29)
/* 8036F1C0  38 9F 00 40 */	addi r4, r31, 0x40
/* 8036F1C4  38 60 00 01 */	li r3, 1
/* 8036F1C8  7F 25 CB 78 */	mr r5, r25
/* 8036F1CC  4C C6 31 82 */	crclr 6
/* 8036F1D0  48 00 3A 85 */	bl MWTRACE
lbl_8036F1D4:
/* 8036F1D4  2C 1E 00 00 */	cmpwi r30, 0
/* 8036F1D8  40 82 00 38 */	bne lbl_8036F210
/* 8036F1DC  2C 18 00 00 */	cmpwi r24, 0
/* 8036F1E0  40 82 00 30 */	bne lbl_8036F210
/* 8036F1E4  2C 1A 00 80 */	cmpwi r26, 0x80
/* 8036F1E8  7F 45 D3 78 */	mr r5, r26
/* 8036F1EC  40 82 00 0C */	bne lbl_8036F1F8
/* 8036F1F0  2C 19 00 00 */	cmpwi r25, 0
/* 8036F1F4  41 82 00 1C */	beq lbl_8036F210
lbl_8036F1F8:
/* 8036F1F8  7F 26 CB 78 */	mr r6, r25
/* 8036F1FC  38 9F 00 54 */	addi r4, r31, 0x54
/* 8036F200  38 60 00 08 */	li r3, 8
/* 8036F204  4C C6 31 82 */	crclr 6
/* 8036F208  48 00 3A 4D */	bl MWTRACE
/* 8036F20C  3B 00 00 01 */	li r24, 1
lbl_8036F210:
/* 8036F210  2C 1E 00 00 */	cmpwi r30, 0
/* 8036F214  40 82 00 0C */	bne lbl_8036F220
/* 8036F218  2C 18 00 00 */	cmpwi r24, 0
/* 8036F21C  41 82 00 14 */	beq lbl_8036F230
lbl_8036F220:
/* 8036F220  80 76 00 00 */	lwz r3, 0(r22)
/* 8036F224  4B FF E4 69 */	bl TRKReleaseBuffer
/* 8036F228  38 00 FF FF */	li r0, -1
/* 8036F22C  90 16 00 00 */	stw r0, 0(r22)
lbl_8036F230:
/* 8036F230  3B 7B FF FF */	addi r27, r27, -1
lbl_8036F234:
/* 8036F234  2C 1B 00 00 */	cmpwi r27, 0
/* 8036F238  41 82 00 18 */	beq lbl_8036F250
/* 8036F23C  80 16 00 00 */	lwz r0, 0(r22)
/* 8036F240  2C 00 FF FF */	cmpwi r0, -1
/* 8036F244  40 82 00 0C */	bne lbl_8036F250
/* 8036F248  2C 1E 00 00 */	cmpwi r30, 0
/* 8036F24C  41 82 FE 88 */	beq lbl_8036F0D4
lbl_8036F250:
/* 8036F250  80 16 00 00 */	lwz r0, 0(r22)
/* 8036F254  2C 00 FF FF */	cmpwi r0, -1
/* 8036F258  40 82 00 08 */	bne lbl_8036F260
/* 8036F25C  3B C0 08 00 */	li r30, 0x800
lbl_8036F260:
/* 8036F260  7F C3 F3 78 */	mr r3, r30
/* 8036F264  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 8036F268  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8036F26C  7C 08 03 A6 */	mtlr r0
/* 8036F270  38 21 00 40 */	addi r1, r1, 0x40
/* 8036F274  4E 80 00 20 */	blr 

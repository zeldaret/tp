lbl_802DD35C:
/* 802DD35C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802DD360  7C 08 02 A6 */	mflr r0
/* 802DD364  90 01 00 54 */	stw r0, 0x54(r1)
/* 802DD368  39 61 00 50 */	addi r11, r1, 0x50
/* 802DD36C  48 08 4E 35 */	bl _savegpr_14
/* 802DD370  7C 99 23 79 */	or. r25, r4, r4
/* 802DD374  7C BA 2B 78 */	mr r26, r5
/* 802DD378  7C DB 33 78 */	mr r27, r6
/* 802DD37C  7C FC 3B 78 */	mr r28, r7
/* 802DD380  7D 1D 43 78 */	mr r29, r8
/* 802DD384  7D 3E 4B 78 */	mr r30, r9
/* 802DD388  7D 5F 53 78 */	mr r31, r10
/* 802DD38C  81 E1 00 58 */	lwz r15, 0x58(r1)
/* 802DD390  40 82 00 0C */	bne lbl_802DD39C
/* 802DD394  38 60 00 00 */	li r3, 0
/* 802DD398  48 00 01 3C */	b lbl_802DD4D4
lbl_802DD39C:
/* 802DD39C  3B 00 00 00 */	li r24, 0
/* 802DD3A0  3A E0 00 00 */	li r23, 0
/* 802DD3A4  3A C0 00 00 */	li r22, 0
/* 802DD3A8  3A A0 00 00 */	li r21, 0
/* 802DD3AC  3A 80 00 00 */	li r20, 0
/* 802DD3B0  3A 60 00 00 */	li r19, 0
/* 802DD3B4  3A 40 00 00 */	li r18, 0
/* 802DD3B8  3A 39 00 20 */	addi r17, r25, 0x20
/* 802DD3BC  3A 00 00 00 */	li r16, 0
/* 802DD3C0  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415031@ha */
/* 802DD3C4  39 C3 50 31 */	addi r14, r3, 0x5031 /* 0x4D415031@l */
/* 802DD3C8  48 00 00 A8 */	b lbl_802DD470
lbl_802DD3CC:
/* 802DD3CC  80 91 00 00 */	lwz r4, 0(r17)
/* 802DD3D0  7C 04 70 00 */	cmpw r4, r14
/* 802DD3D4  41 82 00 74 */	beq lbl_802DD448
/* 802DD3D8  40 80 00 2C */	bge lbl_802DD404
/* 802DD3DC  3C 60 49 4E */	lis r3, 0x494E /* 0x494E4631@ha */
/* 802DD3E0  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x494E4631@l */
/* 802DD3E4  7C 04 00 00 */	cmpw r4, r0
/* 802DD3E8  41 82 00 7C */	beq lbl_802DD464
/* 802DD3EC  40 80 00 6C */	bge lbl_802DD458
/* 802DD3F0  3C 60 47 4C */	lis r3, 0x474C /* 0x474C5931@ha */
/* 802DD3F4  38 03 59 31 */	addi r0, r3, 0x5931 /* 0x474C5931@l */
/* 802DD3F8  7C 04 00 00 */	cmpw r4, r0
/* 802DD3FC  41 82 00 2C */	beq lbl_802DD428
/* 802DD400  48 00 00 58 */	b lbl_802DD458
lbl_802DD404:
/* 802DD404  3C 60 57 49 */	lis r3, 0x5749 /* 0x57494431@ha */
/* 802DD408  38 03 44 31 */	addi r0, r3, 0x4431 /* 0x57494431@l */
/* 802DD40C  7C 04 00 00 */	cmpw r4, r0
/* 802DD410  41 82 00 08 */	beq lbl_802DD418
/* 802DD414  48 00 00 44 */	b lbl_802DD458
lbl_802DD418:
/* 802DD418  80 11 00 04 */	lwz r0, 4(r17)
/* 802DD41C  7E B5 02 14 */	add r21, r21, r0
/* 802DD420  3B 18 00 01 */	addi r24, r24, 1
/* 802DD424  48 00 00 40 */	b lbl_802DD464
lbl_802DD428:
/* 802DD428  80 11 00 04 */	lwz r0, 4(r17)
/* 802DD42C  7E 94 02 14 */	add r20, r20, r0
/* 802DD430  80 11 00 10 */	lwz r0, 0x10(r17)
/* 802DD434  7C 00 90 40 */	cmplw r0, r18
/* 802DD438  3A F7 00 01 */	addi r23, r23, 1
/* 802DD43C  40 81 00 28 */	ble lbl_802DD464
/* 802DD440  7C 12 03 78 */	mr r18, r0
/* 802DD444  48 00 00 20 */	b lbl_802DD464
lbl_802DD448:
/* 802DD448  80 11 00 04 */	lwz r0, 4(r17)
/* 802DD44C  7E 73 02 14 */	add r19, r19, r0
/* 802DD450  3A D6 00 01 */	addi r22, r22, 1
/* 802DD454  48 00 00 10 */	b lbl_802DD464
lbl_802DD458:
/* 802DD458  3C 60 80 3A */	lis r3, JUTCacheFont__stringBase0@ha /* 0x8039D2F0@ha */
/* 802DD45C  38 63 D2 F0 */	addi r3, r3, JUTCacheFont__stringBase0@l /* 0x8039D2F0@l */
/* 802DD460  48 00 B1 E9 */	bl JUTReportConsole
lbl_802DD464:
/* 802DD464  80 11 00 04 */	lwz r0, 4(r17)
/* 802DD468  7E 31 02 14 */	add r17, r17, r0
/* 802DD46C  3A 10 00 01 */	addi r16, r16, 1
lbl_802DD470:
/* 802DD470  80 19 00 0C */	lwz r0, 0xc(r25)
/* 802DD474  7C 10 00 40 */	cmplw r16, r0
/* 802DD478  41 80 FF 54 */	blt lbl_802DD3CC
/* 802DD47C  28 1A 00 00 */	cmplwi r26, 0
/* 802DD480  41 82 00 08 */	beq lbl_802DD488
/* 802DD484  B3 1A 00 00 */	sth r24, 0(r26)
lbl_802DD488:
/* 802DD488  28 1C 00 00 */	cmplwi r28, 0
/* 802DD48C  41 82 00 08 */	beq lbl_802DD494
/* 802DD490  B2 FC 00 00 */	sth r23, 0(r28)
lbl_802DD494:
/* 802DD494  28 1E 00 00 */	cmplwi r30, 0
/* 802DD498  41 82 00 08 */	beq lbl_802DD4A0
/* 802DD49C  B2 DE 00 00 */	sth r22, 0(r30)
lbl_802DD4A0:
/* 802DD4A0  28 1B 00 00 */	cmplwi r27, 0
/* 802DD4A4  41 82 00 08 */	beq lbl_802DD4AC
/* 802DD4A8  92 BB 00 00 */	stw r21, 0(r27)
lbl_802DD4AC:
/* 802DD4AC  28 1D 00 00 */	cmplwi r29, 0
/* 802DD4B0  41 82 00 08 */	beq lbl_802DD4B8
/* 802DD4B4  92 9D 00 00 */	stw r20, 0(r29)
lbl_802DD4B8:
/* 802DD4B8  28 1F 00 00 */	cmplwi r31, 0
/* 802DD4BC  41 82 00 08 */	beq lbl_802DD4C4
/* 802DD4C0  92 7F 00 00 */	stw r19, 0(r31)
lbl_802DD4C4:
/* 802DD4C4  28 0F 00 00 */	cmplwi r15, 0
/* 802DD4C8  41 82 00 08 */	beq lbl_802DD4D0
/* 802DD4CC  92 4F 00 00 */	stw r18, 0(r15)
lbl_802DD4D0:
/* 802DD4D0  38 60 00 01 */	li r3, 1
lbl_802DD4D4:
/* 802DD4D4  39 61 00 50 */	addi r11, r1, 0x50
/* 802DD4D8  48 08 4D 15 */	bl _restgpr_14
/* 802DD4DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802DD4E0  7C 08 03 A6 */	mtlr r0
/* 802DD4E4  38 21 00 50 */	addi r1, r1, 0x50
/* 802DD4E8  4E 80 00 20 */	blr 

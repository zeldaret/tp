lbl_80372AA4:
/* 80372AA4  94 21 FA E0 */	stwu r1, -0x520(r1)
/* 80372AA8  7C 08 02 A6 */	mflr r0
/* 80372AAC  90 01 05 24 */	stw r0, 0x524(r1)
/* 80372AB0  BF 41 05 08 */	stmw r26, 0x508(r1)
/* 80372AB4  7C 7A 1B 78 */	mr r26, r3
/* 80372AB8  7C 9B 23 78 */	mr r27, r4
/* 80372ABC  3B 80 00 00 */	li r28, 0
/* 80372AC0  80 0D 94 48 */	lwz r0, gIsInitialized(r13)
/* 80372AC4  2C 00 00 00 */	cmpwi r0, 0
/* 80372AC8  40 82 00 0C */	bne lbl_80372AD4
/* 80372ACC  38 60 D8 EF */	li r3, -10001
/* 80372AD0  48 00 00 B4 */	b lbl_80372B84
lbl_80372AD4:
/* 80372AD4  3C 60 80 3A */	lis r3, lit_341@ha /* 0x803A2E4C@ha */
/* 80372AD8  7F 65 DB 78 */	mr r5, r27
/* 80372ADC  38 83 2E 4C */	addi r4, r3, lit_341@l /* 0x803A2E4C@l */
/* 80372AE0  7F 66 DB 78 */	mr r6, r27
/* 80372AE4  38 60 00 01 */	li r3, 1
/* 80372AE8  4C C6 31 82 */	crclr 6
/* 80372AEC  48 00 01 69 */	bl MWTRACE
/* 80372AF0  3C 60 80 45 */	lis r3, gRecvCB@ha /* 0x80450550@ha */
/* 80372AF4  7F 7D DB 78 */	mr r29, r27
/* 80372AF8  3B E3 05 50 */	addi r31, r3, gRecvCB@l /* 0x80450550@l */
/* 80372AFC  7F 7E DB 78 */	mr r30, r27
/* 80372B00  48 00 00 38 */	b lbl_80372B38
lbl_80372B04:
/* 80372B04  3B 80 00 00 */	li r28, 0
/* 80372B08  48 00 05 19 */	bl DBQueryData
/* 80372B0C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80372B10  41 82 00 28 */	beq lbl_80372B38
/* 80372B14  7F C4 F3 78 */	mr r4, r30
/* 80372B18  38 61 00 08 */	addi r3, r1, 8
/* 80372B1C  48 00 04 79 */	bl DBRead
/* 80372B20  7C 7C 1B 79 */	or. r28, r3, r3
/* 80372B24  40 82 00 14 */	bne lbl_80372B38
/* 80372B28  7F E3 FB 78 */	mr r3, r31
/* 80372B2C  7F 65 DB 78 */	mr r5, r27
/* 80372B30  38 81 00 08 */	addi r4, r1, 8
/* 80372B34  4B FF FC 75 */	bl CircleBufferWriteBytes
lbl_80372B38:
/* 80372B38  7F E3 FB 78 */	mr r3, r31
/* 80372B3C  4B FF FD C5 */	bl CBGetBytesAvailableForRead
/* 80372B40  7C 03 F0 40 */	cmplw r3, r30
/* 80372B44  41 80 FF C0 */	blt lbl_80372B04
/* 80372B48  28 1C 00 00 */	cmplwi r28, 0
/* 80372B4C  40 82 00 1C */	bne lbl_80372B68
/* 80372B50  3C 60 80 45 */	lis r3, gRecvCB@ha /* 0x80450550@ha */
/* 80372B54  7F 44 D3 78 */	mr r4, r26
/* 80372B58  38 63 05 50 */	addi r3, r3, gRecvCB@l /* 0x80450550@l */
/* 80372B5C  7F A5 EB 78 */	mr r5, r29
/* 80372B60  4B FF FB 41 */	bl CircleBufferReadBytes
/* 80372B64  48 00 00 1C */	b lbl_80372B80
lbl_80372B68:
/* 80372B68  3C 60 80 3A */	lis r3, lit_342@ha /* 0x803A2E74@ha */
/* 80372B6C  7F 85 E3 78 */	mr r5, r28
/* 80372B70  38 83 2E 74 */	addi r4, r3, lit_342@l /* 0x803A2E74@l */
/* 80372B74  38 60 00 08 */	li r3, 8
/* 80372B78  4C C6 31 82 */	crclr 6
/* 80372B7C  48 00 00 D9 */	bl MWTRACE
lbl_80372B80:
/* 80372B80  7F 83 E3 78 */	mr r3, r28
lbl_80372B84:
/* 80372B84  BB 41 05 08 */	lmw r26, 0x508(r1)
/* 80372B88  80 01 05 24 */	lwz r0, 0x524(r1)
/* 80372B8C  7C 08 03 A6 */	mtlr r0
/* 80372B90  38 21 05 20 */	addi r1, r1, 0x520
/* 80372B94  4E 80 00 20 */	blr 

lbl_80335CE4:
/* 80335CE4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80335CE8  7C 08 02 A6 */	mflr r0
/* 80335CEC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80335CF0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80335CF4  48 02 C4 E5 */	bl _savegpr_28
/* 80335CF8  7C 7E 1B 78 */	mr r30, r3
/* 80335CFC  7C 9C 23 78 */	mr r28, r4
/* 80335D00  7C BF 2B 78 */	mr r31, r5
/* 80335D04  38 61 00 08 */	addi r3, r1, 8
/* 80335D08  4B FF A2 E5 */	bl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
/* 80335D0C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80335D10  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335D14  B0 03 00 04 */	sth r0, 4(r3)
/* 80335D18  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80335D1C  28 00 00 00 */	cmplwi r0, 0
/* 80335D20  41 82 00 3C */	beq lbl_80335D5C
/* 80335D24  38 60 00 10 */	li r3, 0x10
/* 80335D28  4B F9 8F 25 */	bl __nw__FUl
/* 80335D2C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80335D30  41 82 00 20 */	beq lbl_80335D50
/* 80335D34  7F 83 E3 78 */	mr r3, r28
/* 80335D38  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 80335D3C  4B FD 47 F5 */	bl func_8030A530
/* 80335D40  7C 64 1B 78 */	mr r4, r3
/* 80335D44  7F A3 EB 78 */	mr r3, r29
/* 80335D48  4B FA 8C 99 */	bl __ct__10JUTNameTabFPC7ResNTAB
/* 80335D4C  7C 7D 1B 78 */	mr r29, r3
lbl_80335D50:
/* 80335D50  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335D54  93 A3 00 0C */	stw r29, 0xc(r3)
/* 80335D58  48 00 00 10 */	b lbl_80335D68
lbl_80335D5C:
/* 80335D5C  38 00 00 00 */	li r0, 0
/* 80335D60  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335D64  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80335D68:
/* 80335D68  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335D6C  A0 03 00 04 */	lhz r0, 4(r3)
/* 80335D70  54 03 10 3A */	slwi r3, r0, 2
/* 80335D74  4B F9 8F 51 */	bl __nwa__FUl
/* 80335D78  80 9E 00 08 */	lwz r4, 8(r30)
/* 80335D7C  90 64 00 08 */	stw r3, 8(r4)
/* 80335D80  3B A0 00 00 */	li r29, 0
/* 80335D84  48 00 00 30 */	b lbl_80335DB4
lbl_80335D88:
/* 80335D88  38 61 00 08 */	addi r3, r1, 8
/* 80335D8C  38 80 00 00 */	li r4, 0
/* 80335D90  38 A0 00 00 */	li r5, 0
/* 80335D94  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 80335D98  7F E7 FB 78 */	mr r7, r31
/* 80335D9C  4B FF A6 29 */	bl create__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80335DA0  80 9E 00 08 */	lwz r4, 8(r30)
/* 80335DA4  80 84 00 08 */	lwz r4, 8(r4)
/* 80335DA8  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 80335DAC  7C 64 01 2E */	stwx r3, r4, r0
/* 80335DB0  3B BD 00 01 */	addi r29, r29, 1
lbl_80335DB4:
/* 80335DB4  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 80335DB8  80 7E 00 08 */	lwz r3, 8(r30)
/* 80335DBC  A0 03 00 04 */	lhz r0, 4(r3)
/* 80335DC0  7C 04 00 40 */	cmplw r4, r0
/* 80335DC4  41 80 FF C4 */	blt lbl_80335D88
/* 80335DC8  38 C0 00 00 */	li r6, 0
/* 80335DCC  48 00 00 28 */	b lbl_80335DF4
lbl_80335DD0:
/* 80335DD0  80 A4 00 08 */	lwz r5, 8(r4)
/* 80335DD4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80335DD8  54 C0 0B FC */	rlwinm r0, r6, 1, 0xf, 0x1e
/* 80335DDC  7C 03 02 2E */	lhzx r0, r3, r0
/* 80335DE0  7C 85 02 14 */	add r4, r5, r0
/* 80335DE4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80335DE8  7C 65 00 2E */	lwzx r3, r5, r0
/* 80335DEC  90 83 00 20 */	stw r4, 0x20(r3)
/* 80335DF0  38 C6 00 01 */	addi r6, r6, 1
lbl_80335DF4:
/* 80335DF4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80335DF8  80 9E 00 08 */	lwz r4, 8(r30)
/* 80335DFC  A0 04 00 04 */	lhz r0, 4(r4)
/* 80335E00  7C 03 00 40 */	cmplw r3, r0
/* 80335E04  41 80 FF CC */	blt lbl_80335DD0
/* 80335E08  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80335E0C  48 02 C4 19 */	bl _restgpr_28
/* 80335E10  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80335E14  7C 08 03 A6 */	mtlr r0
/* 80335E18  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80335E1C  4E 80 00 20 */	blr 

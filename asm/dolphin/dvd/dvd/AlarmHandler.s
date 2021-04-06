lbl_80349DEC:
/* 80349DEC  7C 08 02 A6 */	mflr r0
/* 80349DF0  90 01 00 04 */	stw r0, 4(r1)
/* 80349DF4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80349DF8  48 00 13 41 */	bl DVDReset
/* 80349DFC  3C 60 80 45 */	lis r3, CurrDiskID@ha /* 0x8044C920@ha */
/* 80349E00  38 63 C9 20 */	addi r3, r3, CurrDiskID@l /* 0x8044C920@l */
/* 80349E04  38 80 00 20 */	li r4, 0x20
/* 80349E08  4B FF 17 79 */	bl DCInvalidateRange
/* 80349E0C  3C 80 80 35 */	lis r4, stateCoverClosed_CMD@ha /* 0x80349F04@ha */
/* 80349E10  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349E14  38 04 9F 04 */	addi r0, r4, stateCoverClosed_CMD@l /* 0x80349F04@l */
/* 80349E18  90 0D 92 40 */	stw r0, LastState(r13)
/* 80349E1C  48 00 00 E9 */	bl stateCoverClosed_CMD
/* 80349E20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80349E24  38 21 00 08 */	addi r1, r1, 8
/* 80349E28  7C 08 03 A6 */	mtlr r0
/* 80349E2C  4E 80 00 20 */	blr 

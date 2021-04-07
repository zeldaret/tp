lbl_80349F04:
/* 80349F04  7C 08 02 A6 */	mflr r0
/* 80349F08  3C 60 80 45 */	lis r3, CurrDiskID@ha /* 0x8044C920@ha */
/* 80349F0C  90 01 00 04 */	stw r0, 4(r1)
/* 80349F10  3C 80 80 35 */	lis r4, cbForStateCoverClosed@ha /* 0x80349F34@ha */
/* 80349F14  38 63 C9 20 */	addi r3, r3, CurrDiskID@l /* 0x8044C920@l */
/* 80349F18  94 21 FF F8 */	stwu r1, -8(r1)
/* 80349F1C  38 84 9F 34 */	addi r4, r4, cbForStateCoverClosed@l /* 0x80349F34@l */
/* 80349F20  4B FF E0 51 */	bl DVDLowReadDiskID
/* 80349F24  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80349F28  38 21 00 08 */	addi r1, r1, 8
/* 80349F2C  7C 08 03 A6 */	mtlr r0
/* 80349F30  4E 80 00 20 */	blr 

lbl_80348CF4:
/* 80348CF4  7C 08 02 A6 */	mflr r0
/* 80348CF8  90 01 00 04 */	stw r0, 4(r1)
/* 80348CFC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80348D00  4B FF F8 29 */	bl DVDConvertPathToEntrynum
/* 80348D04  2C 03 00 00 */	cmpwi r3, 0
/* 80348D08  41 80 00 2C */	blt lbl_80348D34
/* 80348D0C  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80348D10  80 8D 91 DC */	lwz r4, FstStart(r13)
/* 80348D14  7C 04 00 2E */	lwzx r0, r4, r0
/* 80348D18  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 80348D1C  40 82 00 0C */	bne lbl_80348D28
/* 80348D20  38 00 00 00 */	li r0, 0
/* 80348D24  48 00 00 08 */	b lbl_80348D2C
lbl_80348D28:
/* 80348D28  38 00 00 01 */	li r0, 1
lbl_80348D2C:
/* 80348D2C  2C 00 00 00 */	cmpwi r0, 0
/* 80348D30  40 82 00 0C */	bne lbl_80348D3C
lbl_80348D34:
/* 80348D34  38 60 00 00 */	li r3, 0
/* 80348D38  48 00 00 0C */	b lbl_80348D44
lbl_80348D3C:
/* 80348D3C  90 6D 91 E8 */	stw r3, currentDirectory(r13)
/* 80348D40  38 60 00 01 */	li r3, 1
lbl_80348D44:
/* 80348D44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80348D48  38 21 00 08 */	addi r1, r1, 8
/* 80348D4C  7C 08 03 A6 */	mtlr r0
/* 80348D50  4E 80 00 20 */	blr 

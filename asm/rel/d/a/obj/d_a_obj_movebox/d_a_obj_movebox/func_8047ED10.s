lbl_8047ED10:
/* 8047ED10  54 C8 07 BF */	clrlwi. r8, r6, 0x1e
/* 8047ED14  4D 82 00 20 */	beqlr 
/* 8047ED18  80 03 08 AC */	lwz r0, 0x8ac(r3)
/* 8047ED1C  1C E0 00 A0 */	mulli r7, r0, 0xa0
/* 8047ED20  3C 80 80 48 */	lis r4, M_attr__Q212daObjMovebox5Act_c@ha /* 0x80481168@ha */
/* 8047ED24  38 04 11 68 */	addi r0, r4, M_attr__Q212daObjMovebox5Act_c@l /* 0x80481168@l */
/* 8047ED28  7C 80 3A 14 */	add r4, r0, r7
/* 8047ED2C  88 04 00 9E */	lbz r0, 0x9e(r4)
/* 8047ED30  28 00 00 00 */	cmplwi r0, 0
/* 8047ED34  41 82 00 0C */	beq lbl_8047ED40
/* 8047ED38  54 C0 EF FE */	rlwinm r0, r6, 0x1d, 0x1f, 0x1f
/* 8047ED3C  48 00 00 08 */	b lbl_8047ED44
lbl_8047ED40:
/* 8047ED40  38 00 00 01 */	li r0, 1
lbl_8047ED44:
/* 8047ED44  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8047ED48  4D 82 00 20 */	beqlr 
/* 8047ED4C  A8 E3 04 B6 */	lha r7, 0x4b6(r3)
/* 8047ED50  55 00 07 BD */	rlwinm. r0, r8, 0, 0x1e, 0x1e
/* 8047ED54  7C A4 07 34 */	extsh r4, r5
/* 8047ED58  41 82 00 08 */	beq lbl_8047ED60
/* 8047ED5C  38 84 80 00 */	addi r4, r4, -32768
lbl_8047ED60:
/* 8047ED60  7C 80 07 34 */	extsh r0, r4
/* 8047ED64  7C 07 00 50 */	subf r0, r7, r0
/* 8047ED68  7C 00 07 34 */	extsh r0, r0
/* 8047ED6C  90 C3 08 EC */	stw r6, 0x8ec(r3)
/* 8047ED70  2C 00 E0 00 */	cmpwi r0, -8192
/* 8047ED74  41 80 00 14 */	blt lbl_8047ED88
/* 8047ED78  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8047ED7C  40 80 00 0C */	bge lbl_8047ED88
/* 8047ED80  39 00 00 00 */	li r8, 0
/* 8047ED84  48 00 00 38 */	b lbl_8047EDBC
lbl_8047ED88:
/* 8047ED88  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8047ED8C  41 80 00 14 */	blt lbl_8047EDA0
/* 8047ED90  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8047ED94  40 80 00 0C */	bge lbl_8047EDA0
/* 8047ED98  39 00 00 01 */	li r8, 1
/* 8047ED9C  48 00 00 20 */	b lbl_8047EDBC
lbl_8047EDA0:
/* 8047EDA0  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8047EDA4  40 80 00 0C */	bge lbl_8047EDB0
/* 8047EDA8  2C 00 A0 00 */	cmpwi r0, -24576
/* 8047EDAC  40 80 00 0C */	bge lbl_8047EDB8
lbl_8047EDB0:
/* 8047EDB0  39 00 00 02 */	li r8, 2
/* 8047EDB4  48 00 00 08 */	b lbl_8047EDBC
lbl_8047EDB8:
/* 8047EDB8  39 00 00 03 */	li r8, 3
lbl_8047EDBC:
/* 8047EDBC  39 20 00 00 */	li r9, 0
/* 8047EDC0  38 80 00 00 */	li r4, 0
/* 8047EDC4  7C 85 23 78 */	mr r5, r4
/* 8047EDC8  38 00 00 04 */	li r0, 4
/* 8047EDCC  7C 09 03 A6 */	mtctr r0
lbl_8047EDD0:
/* 8047EDD0  7C 09 40 00 */	cmpw r9, r8
/* 8047EDD4  40 82 00 18 */	bne lbl_8047EDEC
/* 8047EDD8  38 E4 08 F0 */	addi r7, r4, 0x8f0
/* 8047EDDC  7C C3 3A AE */	lhax r6, r3, r7
/* 8047EDE0  38 06 00 01 */	addi r0, r6, 1
/* 8047EDE4  7C 03 3B 2E */	sthx r0, r3, r7
/* 8047EDE8  48 00 00 0C */	b lbl_8047EDF4
lbl_8047EDEC:
/* 8047EDEC  38 04 08 F0 */	addi r0, r4, 0x8f0
/* 8047EDF0  7C A3 03 2E */	sthx r5, r3, r0
lbl_8047EDF4:
/* 8047EDF4  39 29 00 01 */	addi r9, r9, 1
/* 8047EDF8  38 84 00 02 */	addi r4, r4, 2
/* 8047EDFC  42 00 FF D4 */	bdnz lbl_8047EDD0
/* 8047EE00  38 00 00 01 */	li r0, 1
/* 8047EE04  98 03 08 FE */	stb r0, 0x8fe(r3)
/* 8047EE08  4E 80 00 20 */	blr 

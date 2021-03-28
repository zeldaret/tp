lbl_802D2248:
/* 802D2248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D224C  7C 08 02 A6 */	mflr r0
/* 802D2250  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2258  93 C1 00 08 */	stw r30, 8(r1)
/* 802D225C  7C BE 2B 78 */	mr r30, r5
/* 802D2260  7C DF 33 78 */	mr r31, r6
/* 802D2264  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 802D2268  41 82 00 28 */	beq lbl_802D2290
/* 802D226C  54 80 06 FF */	clrlwi. r0, r4, 0x1b
/* 802D2270  41 82 00 20 */	beq lbl_802D2290
/* 802D2274  3C 60 80 3A */	lis r3, JKRAram__stringBase0@ha
/* 802D2278  38 63 D0 78 */	addi r3, r3, JKRAram__stringBase0@l
/* 802D227C  38 80 00 DB */	li r4, 0xdb
/* 802D2280  38 A3 00 0C */	addi r5, r3, 0xc
/* 802D2284  38 C3 00 0F */	addi r6, r3, 0xf
/* 802D2288  4C C6 31 82 */	crclr 6
/* 802D228C  48 00 FF 71 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802D2290:
/* 802D2290  28 1E 00 00 */	cmplwi r30, 0
/* 802D2294  41 82 00 30 */	beq lbl_802D22C4
/* 802D2298  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802D229C  7C 1F 02 14 */	add r0, r31, r0
/* 802D22A0  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 802D22A4  41 82 00 20 */	beq lbl_802D22C4
/* 802D22A8  3C 60 80 3A */	lis r3, JKRAram__stringBase0@ha
/* 802D22AC  38 63 D0 78 */	addi r3, r3, JKRAram__stringBase0@l
/* 802D22B0  38 80 00 E3 */	li r4, 0xe3
/* 802D22B4  38 A3 00 0C */	addi r5, r3, 0xc
/* 802D22B8  38 C3 00 0F */	addi r6, r3, 0xf
/* 802D22BC  4C C6 31 82 */	crclr 6
/* 802D22C0  48 00 FF 3D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802D22C4:
/* 802D22C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D22C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D22CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D22D0  7C 08 03 A6 */	mtlr r0
/* 802D22D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D22D8  4E 80 00 20 */	blr 

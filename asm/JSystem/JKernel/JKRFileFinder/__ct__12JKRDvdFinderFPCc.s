lbl_802D4770:
/* 802D4770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4774  7C 08 02 A6 */	mflr r0
/* 802D4778  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D477C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4780  7C 7F 1B 78 */	mr r31, r3
/* 802D4784  3C 60 80 3D */	lis r3, __vt__13JKRFileFinder@ha
/* 802D4788  38 03 C2 28 */	addi r0, r3, __vt__13JKRFileFinder@l
/* 802D478C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802D4790  38 00 00 00 */	li r0, 0
/* 802D4794  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802D4798  98 1F 00 11 */	stb r0, 0x11(r31)
/* 802D479C  3C 60 80 3D */	lis r3, __vt__12JKRDvdFinder@ha
/* 802D47A0  38 03 C2 08 */	addi r0, r3, __vt__12JKRDvdFinder@l
/* 802D47A4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802D47A8  7C 83 23 78 */	mr r3, r4
/* 802D47AC  38 9F 00 14 */	addi r4, r31, 0x14
/* 802D47B0  48 07 47 D1 */	bl DVDOpenDir
/* 802D47B4  30 03 FF FF */	addic r0, r3, -1
/* 802D47B8  7C 00 19 10 */	subfe r0, r0, r3
/* 802D47BC  98 1F 00 20 */	stb r0, 0x20(r31)
/* 802D47C0  88 1F 00 20 */	lbz r0, 0x20(r31)
/* 802D47C4  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802D47C8  7F E3 FB 78 */	mr r3, r31
/* 802D47CC  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 802D47D0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D47D4  7D 89 03 A6 */	mtctr r12
/* 802D47D8  4E 80 04 21 */	bctrl 
/* 802D47DC  7F E3 FB 78 */	mr r3, r31
/* 802D47E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D47E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D47E8  7C 08 03 A6 */	mtlr r0
/* 802D47EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D47F0  4E 80 00 20 */	blr 

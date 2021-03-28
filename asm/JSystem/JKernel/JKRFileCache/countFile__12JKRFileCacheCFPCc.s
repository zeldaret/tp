lbl_802D52A0:
/* 802D52A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D52A4  7C 08 02 A6 */	mflr r0
/* 802D52A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D52AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802D52B0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802D52B4  3B E0 00 00 */	li r31, 0
/* 802D52B8  48 00 02 65 */	bl getDvdPathName__12JKRFileCacheCFPCc
/* 802D52BC  7C 7E 1B 78 */	mr r30, r3
/* 802D52C0  38 81 00 14 */	addi r4, r1, 0x14
/* 802D52C4  48 07 3C BD */	bl DVDOpenDir
/* 802D52C8  2C 03 00 00 */	cmpwi r3, 0
/* 802D52CC  41 82 00 28 */	beq lbl_802D52F4
/* 802D52D0  48 00 00 08 */	b lbl_802D52D8
lbl_802D52D4:
/* 802D52D4  3B FF 00 01 */	addi r31, r31, 1
lbl_802D52D8:
/* 802D52D8  38 61 00 14 */	addi r3, r1, 0x14
/* 802D52DC  38 81 00 08 */	addi r4, r1, 8
/* 802D52E0  48 07 3D 61 */	bl DVDReadDir
/* 802D52E4  2C 03 00 00 */	cmpwi r3, 0
/* 802D52E8  40 82 FF EC */	bne lbl_802D52D4
/* 802D52EC  38 61 00 14 */	addi r3, r1, 0x14
/* 802D52F0  48 07 3D F5 */	bl DVDCloseDir
lbl_802D52F4:
/* 802D52F4  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D52F8  7F C4 F3 78 */	mr r4, r30
/* 802D52FC  4B FF 92 4D */	bl free__7JKRHeapFPv
/* 802D5300  7F E3 FB 78 */	mr r3, r31
/* 802D5304  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802D5308  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802D530C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D5310  7C 08 03 A6 */	mtlr r0
/* 802D5314  38 21 00 30 */	addi r1, r1, 0x30
/* 802D5318  4E 80 00 20 */	blr 

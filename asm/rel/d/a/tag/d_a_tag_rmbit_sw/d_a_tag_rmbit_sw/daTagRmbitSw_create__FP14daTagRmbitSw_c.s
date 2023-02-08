lbl_80D5FEEC:
/* 80D5FEEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FEF0  7C 08 02 A6 */	mflr r0
/* 80D5FEF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FEF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5FEFC  7C 7F 1B 78 */	mr r31, r3
/* 80D5FF00  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5FF04  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5FF08  40 82 00 1C */	bne lbl_80D5FF24
/* 80D5FF0C  28 1F 00 00 */	cmplwi r31, 0
/* 80D5FF10  41 82 00 08 */	beq lbl_80D5FF18
/* 80D5FF14  4B FF FB E5 */	bl __ct__14daTagRmbitSw_cFv
lbl_80D5FF18:
/* 80D5FF18  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5FF1C  60 00 00 08 */	ori r0, r0, 8
/* 80D5FF20  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5FF24:
/* 80D5FF24  7F E3 FB 78 */	mr r3, r31
/* 80D5FF28  4B FF FC 6D */	bl create__14daTagRmbitSw_cFv
/* 80D5FF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5FF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FF34  7C 08 03 A6 */	mtlr r0
/* 80D5FF38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FF3C  4E 80 00 20 */	blr 

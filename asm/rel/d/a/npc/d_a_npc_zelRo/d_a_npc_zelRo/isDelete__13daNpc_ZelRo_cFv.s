lbl_80B729BC:
/* 80B729BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B729C0  7C 08 02 A6 */	mflr r0
/* 80B729C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B729C8  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B729CC  28 00 00 01 */	cmplwi r0, 1
/* 80B729D0  40 82 00 0C */	bne lbl_80B729DC
/* 80B729D4  38 60 00 00 */	li r3, 0
/* 80B729D8  48 00 00 28 */	b lbl_80B72A00
lbl_80B729DC:
/* 80B729DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B729E0  41 82 00 08 */	beq lbl_80B729E8
/* 80B729E4  48 00 00 18 */	b lbl_80B729FC
lbl_80B729E8:
/* 80B729E8  38 60 00 2D */	li r3, 0x2d
/* 80B729EC  4B 5D A0 C0 */	b daNpcT_chkEvtBit__FUl
/* 80B729F0  7C 60 00 34 */	cntlzw r0, r3
/* 80B729F4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B729F8  48 00 00 08 */	b lbl_80B72A00
lbl_80B729FC:
/* 80B729FC  38 60 00 01 */	li r3, 1
lbl_80B72A00:
/* 80B72A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B72A04  7C 08 03 A6 */	mtlr r0
/* 80B72A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80B72A0C  4E 80 00 20 */	blr 

lbl_8047D6E8:
/* 8047D6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D6EC  7C 08 02 A6 */	mflr r0
/* 8047D6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D6F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047D6F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8047D6FC  41 82 00 1C */	beq lbl_8047D718
/* 8047D700  3C A0 80 48 */	lis r5, __vt__8cM3dGSph@ha /* 0x8047D994@ha */
/* 8047D704  38 05 D9 94 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8047D994@l */
/* 8047D708  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8047D70C  7C 80 07 35 */	extsh. r0, r4
/* 8047D710  40 81 00 08 */	ble lbl_8047D718
/* 8047D714  4B E5 16 29 */	bl __dl__FPv
lbl_8047D718:
/* 8047D718  7F E3 FB 78 */	mr r3, r31
/* 8047D71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D724  7C 08 03 A6 */	mtlr r0
/* 8047D728  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D72C  4E 80 00 20 */	blr 

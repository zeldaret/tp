lbl_8046AEB8:
/* 8046AEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AEBC  7C 08 02 A6 */	mflr r0
/* 8046AEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AEC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046AEC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046AECC  41 82 00 1C */	beq lbl_8046AEE8
/* 8046AED0  3C A0 80 47 */	lis r5, __vt__8cM3dGAab@ha /* 0x8046B2D0@ha */
/* 8046AED4  38 05 B2 D0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8046B2D0@l */
/* 8046AED8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8046AEDC  7C 80 07 35 */	extsh. r0, r4
/* 8046AEE0  40 81 00 08 */	ble lbl_8046AEE8
/* 8046AEE4  4B E6 3E 59 */	bl __dl__FPv
lbl_8046AEE8:
/* 8046AEE8  7F E3 FB 78 */	mr r3, r31
/* 8046AEEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AEF4  7C 08 03 A6 */	mtlr r0
/* 8046AEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AEFC  4E 80 00 20 */	blr 

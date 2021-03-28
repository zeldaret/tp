lbl_806E51C4:
/* 806E51C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E51C8  7C 08 02 A6 */	mflr r0
/* 806E51CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E51D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E51D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E51D8  41 82 00 1C */	beq lbl_806E51F4
/* 806E51DC  3C A0 80 6E */	lis r5, __vt__8cM3dGSph@ha
/* 806E51E0  38 05 5B 70 */	addi r0, r5, __vt__8cM3dGSph@l
/* 806E51E4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806E51E8  7C 80 07 35 */	extsh. r0, r4
/* 806E51EC  40 81 00 08 */	ble lbl_806E51F4
/* 806E51F0  4B BE 9B 4C */	b __dl__FPv
lbl_806E51F4:
/* 806E51F4  7F E3 FB 78 */	mr r3, r31
/* 806E51F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E51FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E5200  7C 08 03 A6 */	mtlr r0
/* 806E5204  38 21 00 10 */	addi r1, r1, 0x10
/* 806E5208  4E 80 00 20 */	blr 

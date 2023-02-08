lbl_80693FC0:
/* 80693FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80693FC4  7C 08 02 A6 */	mflr r0
/* 80693FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80693FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80693FD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80693FD4  41 82 00 1C */	beq lbl_80693FF0
/* 80693FD8  3C A0 80 69 */	lis r5, __vt__8cM3dGSph@ha /* 0x80694904@ha */
/* 80693FDC  38 05 49 04 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80694904@l */
/* 80693FE0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80693FE4  7C 80 07 35 */	extsh. r0, r4
/* 80693FE8  40 81 00 08 */	ble lbl_80693FF0
/* 80693FEC  4B C3 AD 51 */	bl __dl__FPv
lbl_80693FF0:
/* 80693FF0  7F E3 FB 78 */	mr r3, r31
/* 80693FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80693FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80693FFC  7C 08 03 A6 */	mtlr r0
/* 80694000  38 21 00 10 */	addi r1, r1, 0x10
/* 80694004  4E 80 00 20 */	blr 

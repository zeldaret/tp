lbl_806A129C:
/* 806A129C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A12A0  7C 08 02 A6 */	mflr r0
/* 806A12A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A12A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A12AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A12B0  41 82 00 1C */	beq lbl_806A12CC
/* 806A12B4  3C A0 80 6A */	lis r5, __vt__8cM3dGSph@ha /* 0x806A1D58@ha */
/* 806A12B8  38 05 1D 58 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806A1D58@l */
/* 806A12BC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806A12C0  7C 80 07 35 */	extsh. r0, r4
/* 806A12C4  40 81 00 08 */	ble lbl_806A12CC
/* 806A12C8  4B C2 DA 75 */	bl __dl__FPv
lbl_806A12CC:
/* 806A12CC  7F E3 FB 78 */	mr r3, r31
/* 806A12D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A12D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A12D8  7C 08 03 A6 */	mtlr r0
/* 806A12DC  38 21 00 10 */	addi r1, r1, 0x10
/* 806A12E0  4E 80 00 20 */	blr 

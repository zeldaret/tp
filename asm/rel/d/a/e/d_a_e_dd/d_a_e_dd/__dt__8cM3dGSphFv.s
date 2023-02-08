lbl_806A6AF4:
/* 806A6AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6AF8  7C 08 02 A6 */	mflr r0
/* 806A6AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A6B04  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A6B08  41 82 00 1C */	beq lbl_806A6B24
/* 806A6B0C  3C A0 80 6A */	lis r5, __vt__8cM3dGSph@ha /* 0x806A7458@ha */
/* 806A6B10  38 05 74 58 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806A7458@l */
/* 806A6B14  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806A6B18  7C 80 07 35 */	extsh. r0, r4
/* 806A6B1C  40 81 00 08 */	ble lbl_806A6B24
/* 806A6B20  4B C2 82 1D */	bl __dl__FPv
lbl_806A6B24:
/* 806A6B24  7F E3 FB 78 */	mr r3, r31
/* 806A6B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6B30  7C 08 03 A6 */	mtlr r0
/* 806A6B34  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6B38  4E 80 00 20 */	blr 

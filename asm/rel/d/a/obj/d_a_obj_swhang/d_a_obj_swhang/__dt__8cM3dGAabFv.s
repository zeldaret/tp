lbl_80CFBFA8:
/* 80CFBFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFBFAC  7C 08 02 A6 */	mflr r0
/* 80CFBFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFBFB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFBFB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFBFBC  41 82 00 1C */	beq lbl_80CFBFD8
/* 80CFBFC0  3C A0 80 D0 */	lis r5, __vt__8cM3dGAab@ha
/* 80CFBFC4  38 05 D4 60 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CFBFC8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CFBFCC  7C 80 07 35 */	extsh. r0, r4
/* 80CFBFD0  40 81 00 08 */	ble lbl_80CFBFD8
/* 80CFBFD4  4B 5D 2D 68 */	b __dl__FPv
lbl_80CFBFD8:
/* 80CFBFD8  7F E3 FB 78 */	mr r3, r31
/* 80CFBFDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFBFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFBFE4  7C 08 03 A6 */	mtlr r0
/* 80CFBFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFBFEC  4E 80 00 20 */	blr 

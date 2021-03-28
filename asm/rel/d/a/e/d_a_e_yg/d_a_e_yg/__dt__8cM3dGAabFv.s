lbl_807FBF9C:
/* 807FBF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FBFA0  7C 08 02 A6 */	mflr r0
/* 807FBFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FBFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FBFAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807FBFB0  41 82 00 1C */	beq lbl_807FBFCC
/* 807FBFB4  3C A0 80 80 */	lis r5, __vt__8cM3dGAab@ha
/* 807FBFB8  38 05 CF DC */	addi r0, r5, __vt__8cM3dGAab@l
/* 807FBFBC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807FBFC0  7C 80 07 35 */	extsh. r0, r4
/* 807FBFC4  40 81 00 08 */	ble lbl_807FBFCC
/* 807FBFC8  4B AD 2D 74 */	b __dl__FPv
lbl_807FBFCC:
/* 807FBFCC  7F E3 FB 78 */	mr r3, r31
/* 807FBFD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FBFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FBFD8  7C 08 03 A6 */	mtlr r0
/* 807FBFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 807FBFE0  4E 80 00 20 */	blr 

lbl_806AD2A4:
/* 806AD2A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD2A8  7C 08 02 A6 */	mflr r0
/* 806AD2AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD2B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AD2B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AD2B8  41 82 00 1C */	beq lbl_806AD2D4
/* 806AD2BC  3C A0 80 6B */	lis r5, __vt__8cM3dGAab@ha
/* 806AD2C0  38 05 D7 A4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 806AD2C4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806AD2C8  7C 80 07 35 */	extsh. r0, r4
/* 806AD2CC  40 81 00 08 */	ble lbl_806AD2D4
/* 806AD2D0  4B C2 1A 6C */	b __dl__FPv
lbl_806AD2D4:
/* 806AD2D4  7F E3 FB 78 */	mr r3, r31
/* 806AD2D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AD2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD2E0  7C 08 03 A6 */	mtlr r0
/* 806AD2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD2E8  4E 80 00 20 */	blr 

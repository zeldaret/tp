lbl_806A9978:
/* 806A9978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A997C  7C 08 02 A6 */	mflr r0
/* 806A9980  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A9984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A9988  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A998C  41 82 00 1C */	beq lbl_806A99A8
/* 806A9990  3C A0 80 6B */	lis r5, __vt__8cM3dGAab@ha
/* 806A9994  38 05 A0 B0 */	addi r0, r5, __vt__8cM3dGAab@l
/* 806A9998  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806A999C  7C 80 07 35 */	extsh. r0, r4
/* 806A99A0  40 81 00 08 */	ble lbl_806A99A8
/* 806A99A4  4B C2 53 98 */	b __dl__FPv
lbl_806A99A8:
/* 806A99A8  7F E3 FB 78 */	mr r3, r31
/* 806A99AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A99B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A99B4  7C 08 03 A6 */	mtlr r0
/* 806A99B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806A99BC  4E 80 00 20 */	blr 

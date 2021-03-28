lbl_806566A8:
/* 806566A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806566AC  7C 08 02 A6 */	mflr r0
/* 806566B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806566B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806566B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806566BC  41 82 00 1C */	beq lbl_806566D8
/* 806566C0  3C A0 80 65 */	lis r5, __vt__16daBullet_Param_c@ha
/* 806566C4  38 05 68 A8 */	addi r0, r5, __vt__16daBullet_Param_c@l
/* 806566C8  90 1F 00 00 */	stw r0, 0(r31)
/* 806566CC  7C 80 07 35 */	extsh. r0, r4
/* 806566D0  40 81 00 08 */	ble lbl_806566D8
/* 806566D4  4B C7 86 68 */	b __dl__FPv
lbl_806566D8:
/* 806566D8  7F E3 FB 78 */	mr r3, r31
/* 806566DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806566E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806566E4  7C 08 03 A6 */	mtlr r0
/* 806566E8  38 21 00 10 */	addi r1, r1, 0x10
/* 806566EC  4E 80 00 20 */	blr 

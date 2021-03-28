lbl_806D07A0:
/* 806D07A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D07A4  7C 08 02 A6 */	mflr r0
/* 806D07A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D07AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D07B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D07B4  41 82 00 1C */	beq lbl_806D07D0
/* 806D07B8  3C A0 80 6D */	lis r5, __vt__8cM3dGAab@ha
/* 806D07BC  38 05 10 D8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 806D07C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806D07C4  7C 80 07 35 */	extsh. r0, r4
/* 806D07C8  40 81 00 08 */	ble lbl_806D07D0
/* 806D07CC  4B BF E5 70 */	b __dl__FPv
lbl_806D07D0:
/* 806D07D0  7F E3 FB 78 */	mr r3, r31
/* 806D07D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D07D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D07DC  7C 08 03 A6 */	mtlr r0
/* 806D07E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806D07E4  4E 80 00 20 */	blr 

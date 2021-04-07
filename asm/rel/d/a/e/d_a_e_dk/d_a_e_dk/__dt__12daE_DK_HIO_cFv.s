lbl_806AD490:
/* 806AD490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD494  7C 08 02 A6 */	mflr r0
/* 806AD498  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD49C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AD4A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AD4A4  41 82 00 1C */	beq lbl_806AD4C0
/* 806AD4A8  3C A0 80 6B */	lis r5, __vt__12daE_DK_HIO_c@ha /* 0x806AD7E0@ha */
/* 806AD4AC  38 05 D7 E0 */	addi r0, r5, __vt__12daE_DK_HIO_c@l /* 0x806AD7E0@l */
/* 806AD4B0  90 1F 00 00 */	stw r0, 0(r31)
/* 806AD4B4  7C 80 07 35 */	extsh. r0, r4
/* 806AD4B8  40 81 00 08 */	ble lbl_806AD4C0
/* 806AD4BC  4B C2 18 81 */	bl __dl__FPv
lbl_806AD4C0:
/* 806AD4C0  7F E3 FB 78 */	mr r3, r31
/* 806AD4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AD4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD4CC  7C 08 03 A6 */	mtlr r0
/* 806AD4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD4D4  4E 80 00 20 */	blr 

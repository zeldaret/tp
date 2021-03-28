lbl_806F9EE8:
/* 806F9EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F9EEC  7C 08 02 A6 */	mflr r0
/* 806F9EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F9EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F9EF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F9EFC  41 82 00 1C */	beq lbl_806F9F18
/* 806F9F00  3C A0 80 70 */	lis r5, __vt__12daE_KG_HIO_c@ha
/* 806F9F04  38 05 A5 D4 */	addi r0, r5, __vt__12daE_KG_HIO_c@l
/* 806F9F08  90 1F 00 00 */	stw r0, 0(r31)
/* 806F9F0C  7C 80 07 35 */	extsh. r0, r4
/* 806F9F10  40 81 00 08 */	ble lbl_806F9F18
/* 806F9F14  4B BD 4E 28 */	b __dl__FPv
lbl_806F9F18:
/* 806F9F18  7F E3 FB 78 */	mr r3, r31
/* 806F9F1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F9F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9F24  7C 08 03 A6 */	mtlr r0
/* 806F9F28  38 21 00 10 */	addi r1, r1, 0x10
/* 806F9F2C  4E 80 00 20 */	blr 

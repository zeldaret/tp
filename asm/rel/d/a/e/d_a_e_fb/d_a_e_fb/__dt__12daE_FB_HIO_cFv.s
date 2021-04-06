lbl_806B8EE4:
/* 806B8EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B8EE8  7C 08 02 A6 */	mflr r0
/* 806B8EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B8EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B8EF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806B8EF8  41 82 00 1C */	beq lbl_806B8F14
/* 806B8EFC  3C A0 80 6C */	lis r5, __vt__12daE_FB_HIO_c@ha /* 0x806B9198@ha */
/* 806B8F00  38 05 91 98 */	addi r0, r5, __vt__12daE_FB_HIO_c@l /* 0x806B9198@l */
/* 806B8F04  90 1F 00 00 */	stw r0, 0(r31)
/* 806B8F08  7C 80 07 35 */	extsh. r0, r4
/* 806B8F0C  40 81 00 08 */	ble lbl_806B8F14
/* 806B8F10  4B C1 5E 2D */	bl __dl__FPv
lbl_806B8F14:
/* 806B8F14  7F E3 FB 78 */	mr r3, r31
/* 806B8F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B8F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B8F20  7C 08 03 A6 */	mtlr r0
/* 806B8F24  38 21 00 10 */	addi r1, r1, 0x10
/* 806B8F28  4E 80 00 20 */	blr 

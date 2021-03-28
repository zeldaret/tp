lbl_806B5BDC:
/* 806B5BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5BE0  7C 08 02 A6 */	mflr r0
/* 806B5BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5BEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806B5BF0  41 82 00 1C */	beq lbl_806B5C0C
/* 806B5BF4  3C A0 80 6B */	lis r5, __vt__12daE_DT_HIO_c@ha
/* 806B5BF8  38 05 62 48 */	addi r0, r5, __vt__12daE_DT_HIO_c@l
/* 806B5BFC  90 1F 00 00 */	stw r0, 0(r31)
/* 806B5C00  7C 80 07 35 */	extsh. r0, r4
/* 806B5C04  40 81 00 08 */	ble lbl_806B5C0C
/* 806B5C08  4B C1 91 34 */	b __dl__FPv
lbl_806B5C0C:
/* 806B5C0C  7F E3 FB 78 */	mr r3, r31
/* 806B5C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5C18  7C 08 03 A6 */	mtlr r0
/* 806B5C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5C20  4E 80 00 20 */	blr 

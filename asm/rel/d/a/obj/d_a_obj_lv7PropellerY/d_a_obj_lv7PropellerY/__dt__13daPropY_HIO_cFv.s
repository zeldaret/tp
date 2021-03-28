lbl_80C86084:
/* 80C86084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86088  7C 08 02 A6 */	mflr r0
/* 80C8608C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C86094  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C86098  41 82 00 30 */	beq lbl_80C860C8
/* 80C8609C  3C 60 80 C8 */	lis r3, __vt__13daPropY_HIO_c@ha
/* 80C860A0  38 03 62 9C */	addi r0, r3, __vt__13daPropY_HIO_c@l
/* 80C860A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C860A8  41 82 00 10 */	beq lbl_80C860B8
/* 80C860AC  3C 60 80 C8 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C860B0  38 03 62 A8 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C860B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C860B8:
/* 80C860B8  7C 80 07 35 */	extsh. r0, r4
/* 80C860BC  40 81 00 0C */	ble lbl_80C860C8
/* 80C860C0  7F E3 FB 78 */	mr r3, r31
/* 80C860C4  4B 64 8C 78 */	b __dl__FPv
lbl_80C860C8:
/* 80C860C8  7F E3 FB 78 */	mr r3, r31
/* 80C860CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C860D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C860D4  7C 08 03 A6 */	mtlr r0
/* 80C860D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C860DC  4E 80 00 20 */	blr 

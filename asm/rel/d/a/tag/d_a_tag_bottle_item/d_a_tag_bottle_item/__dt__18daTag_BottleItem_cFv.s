lbl_80D565F0:
/* 80D565F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D565F4  7C 08 02 A6 */	mflr r0
/* 80D565F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D565FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D56600  93 C1 00 08 */	stw r30, 8(r1)
/* 80D56604  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D56608  7C 9F 23 78 */	mr r31, r4
/* 80D5660C  41 82 00 28 */	beq lbl_80D56634
/* 80D56610  3C 80 80 D5 */	lis r4, __vt__18daTag_BottleItem_c@ha /* 0x80D566CC@ha */
/* 80D56614  38 04 66 CC */	addi r0, r4, __vt__18daTag_BottleItem_c@l /* 0x80D566CC@l */
/* 80D56618  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80D5661C  38 80 00 00 */	li r4, 0
/* 80D56620  4B 2C 26 6D */	bl __dt__10fopAc_ac_cFv
/* 80D56624  7F E0 07 35 */	extsh. r0, r31
/* 80D56628  40 81 00 0C */	ble lbl_80D56634
/* 80D5662C  7F C3 F3 78 */	mr r3, r30
/* 80D56630  4B 57 87 0D */	bl __dl__FPv
lbl_80D56634:
/* 80D56634  7F C3 F3 78 */	mr r3, r30
/* 80D56638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5663C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D56640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56644  7C 08 03 A6 */	mtlr r0
/* 80D56648  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5664C  4E 80 00 20 */	blr 

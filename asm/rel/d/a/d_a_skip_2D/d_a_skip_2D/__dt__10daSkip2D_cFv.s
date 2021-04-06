lbl_80D4D674:
/* 80D4D674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D678  7C 08 02 A6 */	mflr r0
/* 80D4D67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4D684  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4D688  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4D68C  7C 9F 23 78 */	mr r31, r4
/* 80D4D690  41 82 00 28 */	beq lbl_80D4D6B8
/* 80D4D694  3C 80 80 D5 */	lis r4, __vt__10daSkip2D_c@ha /* 0x80D4D72C@ha */
/* 80D4D698  38 04 D7 2C */	addi r0, r4, __vt__10daSkip2D_c@l /* 0x80D4D72C@l */
/* 80D4D69C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D4D6A0  38 80 00 00 */	li r4, 0
/* 80D4D6A4  4B 2C B5 E9 */	bl __dt__10fopAc_ac_cFv
/* 80D4D6A8  7F E0 07 35 */	extsh. r0, r31
/* 80D4D6AC  40 81 00 0C */	ble lbl_80D4D6B8
/* 80D4D6B0  7F C3 F3 78 */	mr r3, r30
/* 80D4D6B4  4B 58 16 89 */	bl __dl__FPv
lbl_80D4D6B8:
/* 80D4D6B8  7F C3 F3 78 */	mr r3, r30
/* 80D4D6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4D6C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4D6C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D6C8  7C 08 03 A6 */	mtlr r0
/* 80D4D6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D6D0  4E 80 00 20 */	blr 

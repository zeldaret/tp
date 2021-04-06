lbl_8045BFBC:
/* 8045BFBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045BFC0  7C 08 02 A6 */	mflr r0
/* 8045BFC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045BFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8045BFCC  4B F0 62 0D */	bl _savegpr_28
/* 8045BFD0  7C 7E 1B 78 */	mr r30, r3
/* 8045BFD4  7C 9F 23 78 */	mr r31, r4
/* 8045BFD8  A0 03 0C D0 */	lhz r0, 0xcd0(r3)
/* 8045BFDC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8045BFE0  3C 80 80 46 */	lis r4, mExecuteFunc__9daBgObj_c@ha /* 0x8045CC2C@ha */
/* 8045BFE4  38 04 CC 2C */	addi r0, r4, mExecuteFunc__9daBgObj_c@l /* 0x8045CC2C@l */
/* 8045BFE8  7D 80 2A 14 */	add r12, r0, r5
/* 8045BFEC  4B F0 60 99 */	bl __ptmf_scall
/* 8045BFF0  60 00 00 00 */	nop 
/* 8045BFF4  3B 80 00 00 */	li r28, 0
/* 8045BFF8  3B A0 00 00 */	li r29, 0
lbl_8045BFFC:
/* 8045BFFC  88 1E 0C C8 */	lbz r0, 0xcc8(r30)
/* 8045C000  54 00 18 38 */	slwi r0, r0, 3
/* 8045C004  7C 60 EA 14 */	add r3, r0, r29
/* 8045C008  38 03 05 B8 */	addi r0, r3, 0x5b8
/* 8045C00C  7C 7E 00 2E */	lwzx r3, r30, r0
/* 8045C010  28 03 00 00 */	cmplwi r3, 0
/* 8045C014  41 82 00 08 */	beq lbl_8045C01C
/* 8045C018  4B BB 14 11 */	bl play__14mDoExt_baseAnmFv
lbl_8045C01C:
/* 8045C01C  88 1E 0C C8 */	lbz r0, 0xcc8(r30)
/* 8045C020  54 00 18 38 */	slwi r0, r0, 3
/* 8045C024  7C 60 EA 14 */	add r3, r0, r29
/* 8045C028  38 03 05 C8 */	addi r0, r3, 0x5c8
/* 8045C02C  7C 7E 00 2E */	lwzx r3, r30, r0
/* 8045C030  28 03 00 00 */	cmplwi r3, 0
/* 8045C034  41 82 00 08 */	beq lbl_8045C03C
/* 8045C038  4B BB 13 F1 */	bl play__14mDoExt_baseAnmFv
lbl_8045C03C:
/* 8045C03C  3B 9C 00 01 */	addi r28, r28, 1
/* 8045C040  2C 1C 00 02 */	cmpwi r28, 2
/* 8045C044  3B BD 00 04 */	addi r29, r29, 4
/* 8045C048  41 80 FF B4 */	blt lbl_8045BFFC
/* 8045C04C  38 1E 05 6C */	addi r0, r30, 0x56c
/* 8045C050  90 1F 00 00 */	stw r0, 0(r31)
/* 8045C054  7F C3 F3 78 */	mr r3, r30
/* 8045C058  4B FF DD 3D */	bl setBaseMtx__9daBgObj_cFv
/* 8045C05C  38 60 00 01 */	li r3, 1
/* 8045C060  39 61 00 20 */	addi r11, r1, 0x20
/* 8045C064  4B F0 61 C1 */	bl _restgpr_28
/* 8045C068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045C06C  7C 08 03 A6 */	mtlr r0
/* 8045C070  38 21 00 20 */	addi r1, r1, 0x20
/* 8045C074  4E 80 00 20 */	blr 

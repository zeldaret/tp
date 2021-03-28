lbl_8003BFB0:
/* 8003BFB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003BFB4  7C 08 02 A6 */	mflr r0
/* 8003BFB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003BFBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8003BFC0  48 32 62 19 */	bl _savegpr_28
/* 8003BFC4  7C 7C 1B 79 */	or. r28, r3, r3
/* 8003BFC8  7C 9D 23 78 */	mr r29, r4
/* 8003BFCC  41 82 00 90 */	beq lbl_8003C05C
/* 8003BFD0  3B C0 00 00 */	li r30, 0
/* 8003BFD4  3B E0 00 00 */	li r31, 0
lbl_8003BFD8:
/* 8003BFD8  7C 7C FA 14 */	add r3, r28, r31
/* 8003BFDC  38 80 FF FF */	li r4, -1
/* 8003BFE0  4B FF E2 A1 */	bl __dt__11dRes_info_cFv
/* 8003BFE4  3B DE 00 01 */	addi r30, r30, 1
/* 8003BFE8  2C 1E 00 80 */	cmpwi r30, 0x80
/* 8003BFEC  3B FF 00 24 */	addi r31, r31, 0x24
/* 8003BFF0  41 80 FF E8 */	blt lbl_8003BFD8
/* 8003BFF4  3B C0 00 00 */	li r30, 0
/* 8003BFF8  3B E0 00 00 */	li r31, 0
lbl_8003BFFC:
/* 8003BFFC  38 7F 12 00 */	addi r3, r31, 0x1200
/* 8003C000  7C 7C 1A 14 */	add r3, r28, r3
/* 8003C004  38 80 FF FF */	li r4, -1
/* 8003C008  4B FF E2 79 */	bl __dt__11dRes_info_cFv
/* 8003C00C  3B DE 00 01 */	addi r30, r30, 1
/* 8003C010  2C 1E 00 40 */	cmpwi r30, 0x40
/* 8003C014  3B FF 00 24 */	addi r31, r31, 0x24
/* 8003C018  41 80 FF E4 */	blt lbl_8003BFFC
/* 8003C01C  38 7C 12 00 */	addi r3, r28, 0x1200
/* 8003C020  3C 80 80 04 */	lis r4, __dt__11dRes_info_cFv@ha
/* 8003C024  38 84 A2 80 */	addi r4, r4, __dt__11dRes_info_cFv@l
/* 8003C028  38 A0 00 24 */	li r5, 0x24
/* 8003C02C  38 C0 00 40 */	li r6, 0x40
/* 8003C030  48 32 5C B9 */	bl __destroy_arr
/* 8003C034  7F 83 E3 78 */	mr r3, r28
/* 8003C038  3C 80 80 04 */	lis r4, __dt__11dRes_info_cFv@ha
/* 8003C03C  38 84 A2 80 */	addi r4, r4, __dt__11dRes_info_cFv@l
/* 8003C040  38 A0 00 24 */	li r5, 0x24
/* 8003C044  38 C0 00 80 */	li r6, 0x80
/* 8003C048  48 32 5C A1 */	bl __destroy_arr
/* 8003C04C  7F A0 07 35 */	extsh. r0, r29
/* 8003C050  40 81 00 0C */	ble lbl_8003C05C
/* 8003C054  7F 83 E3 78 */	mr r3, r28
/* 8003C058  48 29 2C E5 */	bl __dl__FPv
lbl_8003C05C:
/* 8003C05C  7F 83 E3 78 */	mr r3, r28
/* 8003C060  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C064  48 32 61 C1 */	bl _restgpr_28
/* 8003C068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003C06C  7C 08 03 A6 */	mtlr r0
/* 8003C070  38 21 00 20 */	addi r1, r1, 0x20
/* 8003C074  4E 80 00 20 */	blr 

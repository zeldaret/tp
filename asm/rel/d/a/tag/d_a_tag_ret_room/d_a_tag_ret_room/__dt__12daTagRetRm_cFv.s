lbl_80D5EED4:
/* 80D5EED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EED8  7C 08 02 A6 */	mflr r0
/* 80D5EEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5EEE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5EEE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5EEEC  7C 9F 23 78 */	mr r31, r4
/* 80D5EEF0  41 82 00 28 */	beq lbl_80D5EF18
/* 80D5EEF4  3C 80 80 D6 */	lis r4, __vt__12daTagRetRm_c@ha
/* 80D5EEF8  38 04 F2 64 */	addi r0, r4, __vt__12daTagRetRm_c@l
/* 80D5EEFC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D5EF00  38 80 00 00 */	li r4, 0
/* 80D5EF04  4B 2B 9D 88 */	b __dt__10fopAc_ac_cFv
/* 80D5EF08  7F E0 07 35 */	extsh. r0, r31
/* 80D5EF0C  40 81 00 0C */	ble lbl_80D5EF18
/* 80D5EF10  7F C3 F3 78 */	mr r3, r30
/* 80D5EF14  4B 56 FE 28 */	b __dl__FPv
lbl_80D5EF18:
/* 80D5EF18  7F C3 F3 78 */	mr r3, r30
/* 80D5EF1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5EF20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5EF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5EF28  7C 08 03 A6 */	mtlr r0
/* 80D5EF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5EF30  4E 80 00 20 */	blr 

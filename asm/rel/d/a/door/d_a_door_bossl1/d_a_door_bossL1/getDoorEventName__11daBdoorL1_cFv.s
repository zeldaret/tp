lbl_804E1E2C:
/* 804E1E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1E30  7C 08 02 A6 */	mflr r0
/* 804E1E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1E38  4B FF FF 61 */	bl getNowLevel__Fv
/* 804E1E3C  28 03 00 09 */	cmplwi r3, 9
/* 804E1E40  41 81 00 8C */	bgt lbl_804E1ECC
/* 804E1E44  3C 80 80 4E */	lis r4, lit_3700@ha
/* 804E1E48  38 84 4E 68 */	addi r4, r4, lit_3700@l
/* 804E1E4C  54 60 10 3A */	slwi r0, r3, 2
/* 804E1E50  7C 04 00 2E */	lwzx r0, r4, r0
/* 804E1E54  7C 09 03 A6 */	mtctr r0
/* 804E1E58  4E 80 04 20 */	bctr 
lbl_804E1E5C:
/* 804E1E5C  3C 60 80 4E */	lis r3, struct_804E4ADC+0x0@ha
/* 804E1E60  38 63 4A DC */	addi r3, r3, struct_804E4ADC+0x0@l
/* 804E1E64  38 63 00 96 */	addi r3, r3, 0x96
/* 804E1E68  48 00 00 70 */	b lbl_804E1ED8
lbl_804E1E6C:
/* 804E1E6C  3C 60 80 4E */	lis r3, struct_804E4ADC+0x0@ha
/* 804E1E70  38 63 4A DC */	addi r3, r3, struct_804E4ADC+0x0@l
/* 804E1E74  38 63 00 AE */	addi r3, r3, 0xae
/* 804E1E78  48 00 00 60 */	b lbl_804E1ED8
lbl_804E1E7C:
/* 804E1E7C  3C 60 80 4E */	lis r3, struct_804E4ADC+0x0@ha
/* 804E1E80  38 63 4A DC */	addi r3, r3, struct_804E4ADC+0x0@l
/* 804E1E84  38 63 00 C6 */	addi r3, r3, 0xc6
/* 804E1E88  48 00 00 50 */	b lbl_804E1ED8
lbl_804E1E8C:
/* 804E1E8C  3C 60 80 4E */	lis r3, struct_804E4ADC+0x0@ha
/* 804E1E90  38 63 4A DC */	addi r3, r3, struct_804E4ADC+0x0@l
/* 804E1E94  38 63 00 DE */	addi r3, r3, 0xde
/* 804E1E98  48 00 00 40 */	b lbl_804E1ED8
lbl_804E1E9C:
/* 804E1E9C  3C 60 80 4E */	lis r3, struct_804E4ADC+0x0@ha
/* 804E1EA0  38 63 4A DC */	addi r3, r3, struct_804E4ADC+0x0@l
/* 804E1EA4  38 63 00 F6 */	addi r3, r3, 0xf6
/* 804E1EA8  48 00 00 30 */	b lbl_804E1ED8
lbl_804E1EAC:
/* 804E1EAC  3C 60 80 4E */	lis r3, struct_804E4ADC+0x0@ha
/* 804E1EB0  38 63 4A DC */	addi r3, r3, struct_804E4ADC+0x0@l
/* 804E1EB4  38 63 01 0E */	addi r3, r3, 0x10e
/* 804E1EB8  48 00 00 20 */	b lbl_804E1ED8
lbl_804E1EBC:
/* 804E1EBC  3C 60 80 4E */	lis r3, struct_804E4ADC+0x0@ha
/* 804E1EC0  38 63 4A DC */	addi r3, r3, struct_804E4ADC+0x0@l
/* 804E1EC4  38 63 01 26 */	addi r3, r3, 0x126
/* 804E1EC8  48 00 00 10 */	b lbl_804E1ED8
lbl_804E1ECC:
/* 804E1ECC  3C 60 80 4E */	lis r3, struct_804E4ADC+0x0@ha
/* 804E1ED0  38 63 4A DC */	addi r3, r3, struct_804E4ADC+0x0@l
/* 804E1ED4  38 63 00 96 */	addi r3, r3, 0x96
lbl_804E1ED8:
/* 804E1ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1EDC  7C 08 03 A6 */	mtlr r0
/* 804E1EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1EE4  4E 80 00 20 */	blr 

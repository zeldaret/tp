lbl_804BAF78:
/* 804BAF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BAF7C  7C 08 02 A6 */	mflr r0
/* 804BAF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BAF84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BAF88  93 C1 00 08 */	stw r30, 8(r1)
/* 804BAF8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804BAF90  7C 9F 23 78 */	mr r31, r4
/* 804BAF94  41 82 00 28 */	beq lbl_804BAFBC
/* 804BAF98  3C 80 80 4C */	lis r4, __dt__4cXyzFv@ha
/* 804BAF9C  38 84 B1 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 804BAFA0  38 A0 00 0C */	li r5, 0xc
/* 804BAFA4  38 C0 00 02 */	li r6, 2
/* 804BAFA8  4B EA 6D 40 */	b __destroy_arr
/* 804BAFAC  7F E0 07 35 */	extsh. r0, r31
/* 804BAFB0  40 81 00 0C */	ble lbl_804BAFBC
/* 804BAFB4  7F C3 F3 78 */	mr r3, r30
/* 804BAFB8  4B E1 3D 84 */	b __dl__FPv
lbl_804BAFBC:
/* 804BAFBC  7F C3 F3 78 */	mr r3, r30
/* 804BAFC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BAFC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BAFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BAFCC  7C 08 03 A6 */	mtlr r0
/* 804BAFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804BAFD4  4E 80 00 20 */	blr 

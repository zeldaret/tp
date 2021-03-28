lbl_80ABF210:
/* 80ABF210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF214  7C 08 02 A6 */	mflr r0
/* 80ABF218  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF21C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF220  93 C1 00 08 */	stw r30, 8(r1)
/* 80ABF224  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ABF228  7C 9F 23 78 */	mr r31, r4
/* 80ABF22C  41 82 00 98 */	beq lbl_80ABF2C4
/* 80ABF230  3C 60 80 AC */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80ABF234  38 03 02 F4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80ABF238  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80ABF23C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80ABF240  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80ABF244  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80ABF248  38 A0 00 06 */	li r5, 6
/* 80ABF24C  38 C0 00 04 */	li r6, 4
/* 80ABF250  4B 8A 2A 98 */	b __destroy_arr
/* 80ABF254  38 7E 00 64 */	addi r3, r30, 0x64
/* 80ABF258  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80ABF25C  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80ABF260  38 A0 00 06 */	li r5, 6
/* 80ABF264  38 C0 00 04 */	li r6, 4
/* 80ABF268  4B 8A 2A 80 */	b __destroy_arr
/* 80ABF26C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80ABF270  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80ABF274  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80ABF278  38 A0 00 06 */	li r5, 6
/* 80ABF27C  38 C0 00 04 */	li r6, 4
/* 80ABF280  4B 8A 2A 68 */	b __destroy_arr
/* 80ABF284  38 7E 00 34 */	addi r3, r30, 0x34
/* 80ABF288  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80ABF28C  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80ABF290  38 A0 00 06 */	li r5, 6
/* 80ABF294  38 C0 00 04 */	li r6, 4
/* 80ABF298  4B 8A 2A 50 */	b __destroy_arr
/* 80ABF29C  7F C3 F3 78 */	mr r3, r30
/* 80ABF2A0  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha
/* 80ABF2A4  38 84 F3 20 */	addi r4, r4, __dt__4cXyzFv@l
/* 80ABF2A8  38 A0 00 0C */	li r5, 0xc
/* 80ABF2AC  38 C0 00 04 */	li r6, 4
/* 80ABF2B0  4B 8A 2A 38 */	b __destroy_arr
/* 80ABF2B4  7F E0 07 35 */	extsh. r0, r31
/* 80ABF2B8  40 81 00 0C */	ble lbl_80ABF2C4
/* 80ABF2BC  7F C3 F3 78 */	mr r3, r30
/* 80ABF2C0  4B 80 FA 7C */	b __dl__FPv
lbl_80ABF2C4:
/* 80ABF2C4  7F C3 F3 78 */	mr r3, r30
/* 80ABF2C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF2CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ABF2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF2D4  7C 08 03 A6 */	mtlr r0
/* 80ABF2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF2DC  4E 80 00 20 */	blr 

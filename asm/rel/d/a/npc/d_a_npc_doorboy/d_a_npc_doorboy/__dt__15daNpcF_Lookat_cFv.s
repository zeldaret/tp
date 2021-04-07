lbl_809AD154:
/* 809AD154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD158  7C 08 02 A6 */	mflr r0
/* 809AD15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD164  93 C1 00 08 */	stw r30, 8(r1)
/* 809AD168  7C 7E 1B 79 */	or. r30, r3, r3
/* 809AD16C  7C 9F 23 78 */	mr r31, r4
/* 809AD170  41 82 00 98 */	beq lbl_809AD208
/* 809AD174  3C 60 80 9B */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809ADD34@ha */
/* 809AD178  38 03 DD 34 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809ADD34@l */
/* 809AD17C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 809AD180  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809AD184  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha /* 0x809AD224@ha */
/* 809AD188  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809AD224@l */
/* 809AD18C  38 A0 00 06 */	li r5, 6
/* 809AD190  38 C0 00 04 */	li r6, 4
/* 809AD194  4B 9B 4B 55 */	bl __destroy_arr
/* 809AD198  38 7E 00 64 */	addi r3, r30, 0x64
/* 809AD19C  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha /* 0x809AD224@ha */
/* 809AD1A0  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809AD224@l */
/* 809AD1A4  38 A0 00 06 */	li r5, 6
/* 809AD1A8  38 C0 00 04 */	li r6, 4
/* 809AD1AC  4B 9B 4B 3D */	bl __destroy_arr
/* 809AD1B0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809AD1B4  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha /* 0x809AD224@ha */
/* 809AD1B8  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809AD224@l */
/* 809AD1BC  38 A0 00 06 */	li r5, 6
/* 809AD1C0  38 C0 00 04 */	li r6, 4
/* 809AD1C4  4B 9B 4B 25 */	bl __destroy_arr
/* 809AD1C8  38 7E 00 34 */	addi r3, r30, 0x34
/* 809AD1CC  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha /* 0x809AD224@ha */
/* 809AD1D0  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809AD224@l */
/* 809AD1D4  38 A0 00 06 */	li r5, 6
/* 809AD1D8  38 C0 00 04 */	li r6, 4
/* 809AD1DC  4B 9B 4B 0D */	bl __destroy_arr
/* 809AD1E0  7F C3 F3 78 */	mr r3, r30
/* 809AD1E4  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809AD264@ha */
/* 809AD1E8  38 84 D2 64 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809AD264@l */
/* 809AD1EC  38 A0 00 0C */	li r5, 0xc
/* 809AD1F0  38 C0 00 04 */	li r6, 4
/* 809AD1F4  4B 9B 4A F5 */	bl __destroy_arr
/* 809AD1F8  7F E0 07 35 */	extsh. r0, r31
/* 809AD1FC  40 81 00 0C */	ble lbl_809AD208
/* 809AD200  7F C3 F3 78 */	mr r3, r30
/* 809AD204  4B 92 1B 39 */	bl __dl__FPv
lbl_809AD208:
/* 809AD208  7F C3 F3 78 */	mr r3, r30
/* 809AD20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD210  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AD214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD218  7C 08 03 A6 */	mtlr r0
/* 809AD21C  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD220  4E 80 00 20 */	blr 

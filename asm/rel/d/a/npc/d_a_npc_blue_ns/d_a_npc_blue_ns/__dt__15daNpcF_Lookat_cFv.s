lbl_8096C014:
/* 8096C014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096C018  7C 08 02 A6 */	mflr r0
/* 8096C01C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096C020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096C024  93 C1 00 08 */	stw r30, 8(r1)
/* 8096C028  7C 7E 1B 79 */	or. r30, r3, r3
/* 8096C02C  7C 9F 23 78 */	mr r31, r4
/* 8096C030  41 82 00 98 */	beq lbl_8096C0C8
/* 8096C034  3C 60 80 97 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x8096CE68@ha */
/* 8096C038  38 03 CE 68 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x8096CE68@l */
/* 8096C03C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 8096C040  38 7E 00 7C */	addi r3, r30, 0x7c
/* 8096C044  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 8096C048  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 8096C04C  38 A0 00 06 */	li r5, 6
/* 8096C050  38 C0 00 04 */	li r6, 4
/* 8096C054  4B 9F 5C 95 */	bl __destroy_arr
/* 8096C058  38 7E 00 64 */	addi r3, r30, 0x64
/* 8096C05C  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 8096C060  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 8096C064  38 A0 00 06 */	li r5, 6
/* 8096C068  38 C0 00 04 */	li r6, 4
/* 8096C06C  4B 9F 5C 7D */	bl __destroy_arr
/* 8096C070  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8096C074  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 8096C078  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 8096C07C  38 A0 00 06 */	li r5, 6
/* 8096C080  38 C0 00 04 */	li r6, 4
/* 8096C084  4B 9F 5C 65 */	bl __destroy_arr
/* 8096C088  38 7E 00 34 */	addi r3, r30, 0x34
/* 8096C08C  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 8096C090  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 8096C094  38 A0 00 06 */	li r5, 6
/* 8096C098  38 C0 00 04 */	li r6, 4
/* 8096C09C  4B 9F 5C 4D */	bl __destroy_arr
/* 8096C0A0  7F C3 F3 78 */	mr r3, r30
/* 8096C0A4  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x8096C124@ha */
/* 8096C0A8  38 84 C1 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8096C124@l */
/* 8096C0AC  38 A0 00 0C */	li r5, 0xc
/* 8096C0B0  38 C0 00 04 */	li r6, 4
/* 8096C0B4  4B 9F 5C 35 */	bl __destroy_arr
/* 8096C0B8  7F E0 07 35 */	extsh. r0, r31
/* 8096C0BC  40 81 00 0C */	ble lbl_8096C0C8
/* 8096C0C0  7F C3 F3 78 */	mr r3, r30
/* 8096C0C4  4B 96 2C 79 */	bl __dl__FPv
lbl_8096C0C8:
/* 8096C0C8  7F C3 F3 78 */	mr r3, r30
/* 8096C0CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C0D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096C0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C0D8  7C 08 03 A6 */	mtlr r0
/* 8096C0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C0E0  4E 80 00 20 */	blr 

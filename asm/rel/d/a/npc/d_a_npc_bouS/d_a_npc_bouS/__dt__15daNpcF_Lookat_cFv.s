lbl_80977C44:
/* 80977C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80977C48  7C 08 02 A6 */	mflr r0
/* 80977C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80977C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80977C54  93 C1 00 08 */	stw r30, 8(r1)
/* 80977C58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80977C5C  7C 9F 23 78 */	mr r31, r4
/* 80977C60  41 82 00 98 */	beq lbl_80977CF8
/* 80977C64  3C 60 80 98 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80978B58@ha */
/* 80977C68  38 03 8B 58 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80978B58@l */
/* 80977C6C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80977C70  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80977C74  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x80977D14@ha */
/* 80977C78  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80977D14@l */
/* 80977C7C  38 A0 00 06 */	li r5, 6
/* 80977C80  38 C0 00 04 */	li r6, 4
/* 80977C84  4B 9E A0 65 */	bl __destroy_arr
/* 80977C88  38 7E 00 64 */	addi r3, r30, 0x64
/* 80977C8C  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x80977D14@ha */
/* 80977C90  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80977D14@l */
/* 80977C94  38 A0 00 06 */	li r5, 6
/* 80977C98  38 C0 00 04 */	li r6, 4
/* 80977C9C  4B 9E A0 4D */	bl __destroy_arr
/* 80977CA0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80977CA4  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x80977D14@ha */
/* 80977CA8  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80977D14@l */
/* 80977CAC  38 A0 00 06 */	li r5, 6
/* 80977CB0  38 C0 00 04 */	li r6, 4
/* 80977CB4  4B 9E A0 35 */	bl __destroy_arr
/* 80977CB8  38 7E 00 34 */	addi r3, r30, 0x34
/* 80977CBC  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x80977D14@ha */
/* 80977CC0  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80977D14@l */
/* 80977CC4  38 A0 00 06 */	li r5, 6
/* 80977CC8  38 C0 00 04 */	li r6, 4
/* 80977CCC  4B 9E A0 1D */	bl __destroy_arr
/* 80977CD0  7F C3 F3 78 */	mr r3, r30
/* 80977CD4  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x80977D54@ha */
/* 80977CD8  38 84 7D 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80977D54@l */
/* 80977CDC  38 A0 00 0C */	li r5, 0xc
/* 80977CE0  38 C0 00 04 */	li r6, 4
/* 80977CE4  4B 9E A0 05 */	bl __destroy_arr
/* 80977CE8  7F E0 07 35 */	extsh. r0, r31
/* 80977CEC  40 81 00 0C */	ble lbl_80977CF8
/* 80977CF0  7F C3 F3 78 */	mr r3, r30
/* 80977CF4  4B 95 70 49 */	bl __dl__FPv
lbl_80977CF8:
/* 80977CF8  7F C3 F3 78 */	mr r3, r30
/* 80977CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80977D00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80977D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80977D08  7C 08 03 A6 */	mtlr r0
/* 80977D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80977D10  4E 80 00 20 */	blr 

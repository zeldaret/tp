lbl_80985CD8:
/* 80985CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985CDC  7C 08 02 A6 */	mflr r0
/* 80985CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80985CE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80985CEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80985CF0  7C 9F 23 78 */	mr r31, r4
/* 80985CF4  41 82 00 98 */	beq lbl_80985D8C
/* 80985CF8  3C 60 80 99 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x8098BA5C@ha */
/* 80985CFC  38 03 BA 5C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x8098BA5C@l */
/* 80985D00  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80985D04  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80985D08  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80985D0C  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80985D10  38 A0 00 06 */	li r5, 6
/* 80985D14  38 C0 00 04 */	li r6, 4
/* 80985D18  4B 9D BF D1 */	bl __destroy_arr
/* 80985D1C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80985D20  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80985D24  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80985D28  38 A0 00 06 */	li r5, 6
/* 80985D2C  38 C0 00 04 */	li r6, 4
/* 80985D30  4B 9D BF B9 */	bl __destroy_arr
/* 80985D34  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80985D38  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80985D3C  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80985D40  38 A0 00 06 */	li r5, 6
/* 80985D44  38 C0 00 04 */	li r6, 4
/* 80985D48  4B 9D BF A1 */	bl __destroy_arr
/* 80985D4C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80985D50  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80985D54  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80985D58  38 A0 00 06 */	li r5, 6
/* 80985D5C  38 C0 00 04 */	li r6, 4
/* 80985D60  4B 9D BF 89 */	bl __destroy_arr
/* 80985D64  7F C3 F3 78 */	mr r3, r30
/* 80985D68  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80985D6C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80985D70  38 A0 00 0C */	li r5, 0xc
/* 80985D74  38 C0 00 04 */	li r6, 4
/* 80985D78  4B 9D BF 71 */	bl __destroy_arr
/* 80985D7C  7F E0 07 35 */	extsh. r0, r31
/* 80985D80  40 81 00 0C */	ble lbl_80985D8C
/* 80985D84  7F C3 F3 78 */	mr r3, r30
/* 80985D88  4B 94 8F B5 */	bl __dl__FPv
lbl_80985D8C:
/* 80985D8C  7F C3 F3 78 */	mr r3, r30
/* 80985D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80985D94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80985D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80985D9C  7C 08 03 A6 */	mtlr r0
/* 80985DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80985DA4  4E 80 00 20 */	blr 

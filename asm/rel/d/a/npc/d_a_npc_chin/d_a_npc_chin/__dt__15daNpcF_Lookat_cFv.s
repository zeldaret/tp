lbl_80990F50:
/* 80990F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990F54  7C 08 02 A6 */	mflr r0
/* 80990F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80990F60  93 C1 00 08 */	stw r30, 8(r1)
/* 80990F64  7C 7E 1B 79 */	or. r30, r3, r3
/* 80990F68  7C 9F 23 78 */	mr r31, r4
/* 80990F6C  41 82 00 98 */	beq lbl_80991004
/* 80990F70  3C 60 80 99 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80990F74  38 03 23 F8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80990F78  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80990F7C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80990F80  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha
/* 80990F84  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l
/* 80990F88  38 A0 00 06 */	li r5, 6
/* 80990F8C  38 C0 00 04 */	li r6, 4
/* 80990F90  4B 9D 0D 58 */	b __destroy_arr
/* 80990F94  38 7E 00 64 */	addi r3, r30, 0x64
/* 80990F98  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha
/* 80990F9C  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l
/* 80990FA0  38 A0 00 06 */	li r5, 6
/* 80990FA4  38 C0 00 04 */	li r6, 4
/* 80990FA8  4B 9D 0D 40 */	b __destroy_arr
/* 80990FAC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80990FB0  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha
/* 80990FB4  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l
/* 80990FB8  38 A0 00 06 */	li r5, 6
/* 80990FBC  38 C0 00 04 */	li r6, 4
/* 80990FC0  4B 9D 0D 28 */	b __destroy_arr
/* 80990FC4  38 7E 00 34 */	addi r3, r30, 0x34
/* 80990FC8  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha
/* 80990FCC  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l
/* 80990FD0  38 A0 00 06 */	li r5, 6
/* 80990FD4  38 C0 00 04 */	li r6, 4
/* 80990FD8  4B 9D 0D 10 */	b __destroy_arr
/* 80990FDC  7F C3 F3 78 */	mr r3, r30
/* 80990FE0  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha
/* 80990FE4  38 84 10 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80990FE8  38 A0 00 0C */	li r5, 0xc
/* 80990FEC  38 C0 00 04 */	li r6, 4
/* 80990FF0  4B 9D 0C F8 */	b __destroy_arr
/* 80990FF4  7F E0 07 35 */	extsh. r0, r31
/* 80990FF8  40 81 00 0C */	ble lbl_80991004
/* 80990FFC  7F C3 F3 78 */	mr r3, r30
/* 80991000  4B 93 DD 3C */	b __dl__FPv
lbl_80991004:
/* 80991004  7F C3 F3 78 */	mr r3, r30
/* 80991008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099100C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80991010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80991014  7C 08 03 A6 */	mtlr r0
/* 80991018  38 21 00 10 */	addi r1, r1, 0x10
/* 8099101C  4E 80 00 20 */	blr 

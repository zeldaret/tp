lbl_80A20800:
/* 80A20800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20804  7C 08 02 A6 */	mflr r0
/* 80A20808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2080C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20810  93 C1 00 08 */	stw r30, 8(r1)
/* 80A20814  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A20818  7C 9F 23 78 */	mr r31, r4
/* 80A2081C  41 82 00 98 */	beq lbl_80A208B4
/* 80A20820  3C 60 80 A2 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80A20824  38 03 17 E8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80A20828  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80A2082C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A20830  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A20834  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A20838  38 A0 00 06 */	li r5, 6
/* 80A2083C  38 C0 00 04 */	li r6, 4
/* 80A20840  4B 94 14 A8 */	b __destroy_arr
/* 80A20844  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A20848  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A2084C  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A20850  38 A0 00 06 */	li r5, 6
/* 80A20854  38 C0 00 04 */	li r6, 4
/* 80A20858  4B 94 14 90 */	b __destroy_arr
/* 80A2085C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A20860  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A20864  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A20868  38 A0 00 06 */	li r5, 6
/* 80A2086C  38 C0 00 04 */	li r6, 4
/* 80A20870  4B 94 14 78 */	b __destroy_arr
/* 80A20874  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A20878  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha
/* 80A2087C  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A20880  38 A0 00 06 */	li r5, 6
/* 80A20884  38 C0 00 04 */	li r6, 4
/* 80A20888  4B 94 14 60 */	b __destroy_arr
/* 80A2088C  7F C3 F3 78 */	mr r3, r30
/* 80A20890  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha
/* 80A20894  38 84 B0 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80A20898  38 A0 00 0C */	li r5, 0xc
/* 80A2089C  38 C0 00 04 */	li r6, 4
/* 80A208A0  4B 94 14 48 */	b __destroy_arr
/* 80A208A4  7F E0 07 35 */	extsh. r0, r31
/* 80A208A8  40 81 00 0C */	ble lbl_80A208B4
/* 80A208AC  7F C3 F3 78 */	mr r3, r30
/* 80A208B0  4B 8A E4 8C */	b __dl__FPv
lbl_80A208B4:
/* 80A208B4  7F C3 F3 78 */	mr r3, r30
/* 80A208B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A208BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A208C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A208C4  7C 08 03 A6 */	mtlr r0
/* 80A208C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A208CC  4E 80 00 20 */	blr 

lbl_80B929A8:
/* 80B929A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B929AC  7C 08 02 A6 */	mflr r0
/* 80B929B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B929B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B929B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B929BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B929C0  7C 9F 23 78 */	mr r31, r4
/* 80B929C4  41 82 00 98 */	beq lbl_80B92A5C
/* 80B929C8  3C 60 80 B9 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80B929CC  38 03 3B F0 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80B929D0  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80B929D4  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80B929D8  3C 80 80 B9 */	lis r4, __dt__5csXyzFv@ha
/* 80B929DC  38 84 2A 78 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B929E0  38 A0 00 06 */	li r5, 6
/* 80B929E4  38 C0 00 04 */	li r6, 4
/* 80B929E8  4B 7C F3 00 */	b __destroy_arr
/* 80B929EC  38 7E 00 64 */	addi r3, r30, 0x64
/* 80B929F0  3C 80 80 B9 */	lis r4, __dt__5csXyzFv@ha
/* 80B929F4  38 84 2A 78 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B929F8  38 A0 00 06 */	li r5, 6
/* 80B929FC  38 C0 00 04 */	li r6, 4
/* 80B92A00  4B 7C F2 E8 */	b __destroy_arr
/* 80B92A04  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80B92A08  3C 80 80 B9 */	lis r4, __dt__5csXyzFv@ha
/* 80B92A0C  38 84 2A 78 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B92A10  38 A0 00 06 */	li r5, 6
/* 80B92A14  38 C0 00 04 */	li r6, 4
/* 80B92A18  4B 7C F2 D0 */	b __destroy_arr
/* 80B92A1C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80B92A20  3C 80 80 B9 */	lis r4, __dt__5csXyzFv@ha
/* 80B92A24  38 84 2A 78 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B92A28  38 A0 00 06 */	li r5, 6
/* 80B92A2C  38 C0 00 04 */	li r6, 4
/* 80B92A30  4B 7C F2 B8 */	b __destroy_arr
/* 80B92A34  7F C3 F3 78 */	mr r3, r30
/* 80B92A38  3C 80 80 B9 */	lis r4, __dt__4cXyzFv@ha
/* 80B92A3C  38 84 2A B8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B92A40  38 A0 00 0C */	li r5, 0xc
/* 80B92A44  38 C0 00 04 */	li r6, 4
/* 80B92A48  4B 7C F2 A0 */	b __destroy_arr
/* 80B92A4C  7F E0 07 35 */	extsh. r0, r31
/* 80B92A50  40 81 00 0C */	ble lbl_80B92A5C
/* 80B92A54  7F C3 F3 78 */	mr r3, r30
/* 80B92A58  4B 73 C2 E4 */	b __dl__FPv
lbl_80B92A5C:
/* 80B92A5C  7F C3 F3 78 */	mr r3, r30
/* 80B92A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B92A64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B92A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B92A6C  7C 08 03 A6 */	mtlr r0
/* 80B92A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80B92A74  4E 80 00 20 */	blr 

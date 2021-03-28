lbl_8097F280:
/* 8097F280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097F284  7C 08 02 A6 */	mflr r0
/* 8097F288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097F28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097F290  93 C1 00 08 */	stw r30, 8(r1)
/* 8097F294  7C 7E 1B 79 */	or. r30, r3, r3
/* 8097F298  7C 9F 23 78 */	mr r31, r4
/* 8097F29C  41 82 00 B0 */	beq lbl_8097F34C
/* 8097F2A0  3C 60 80 98 */	lis r3, __vt__16dNpcLib_lookat_c@ha
/* 8097F2A4  38 03 06 CC */	addi r0, r3, __vt__16dNpcLib_lookat_c@l
/* 8097F2A8  90 1E 00 00 */	stw r0, 0(r30)
/* 8097F2AC  38 7E 00 94 */	addi r3, r30, 0x94
/* 8097F2B0  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F2B4  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F2B8  38 A0 00 06 */	li r5, 6
/* 8097F2BC  38 C0 00 04 */	li r6, 4
/* 8097F2C0  4B 9E 2A 28 */	b __destroy_arr
/* 8097F2C4  38 7E 00 7C */	addi r3, r30, 0x7c
/* 8097F2C8  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F2CC  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F2D0  38 A0 00 06 */	li r5, 6
/* 8097F2D4  38 C0 00 04 */	li r6, 4
/* 8097F2D8  4B 9E 2A 10 */	b __destroy_arr
/* 8097F2DC  38 7E 00 64 */	addi r3, r30, 0x64
/* 8097F2E0  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F2E4  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F2E8  38 A0 00 06 */	li r5, 6
/* 8097F2EC  38 C0 00 04 */	li r6, 4
/* 8097F2F0  4B 9E 29 F8 */	b __destroy_arr
/* 8097F2F4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8097F2F8  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F2FC  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F300  38 A0 00 06 */	li r5, 6
/* 8097F304  38 C0 00 04 */	li r6, 4
/* 8097F308  4B 9E 29 E0 */	b __destroy_arr
/* 8097F30C  38 7E 00 34 */	addi r3, r30, 0x34
/* 8097F310  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F314  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F318  38 A0 00 06 */	li r5, 6
/* 8097F31C  38 C0 00 04 */	li r6, 4
/* 8097F320  4B 9E 29 C8 */	b __destroy_arr
/* 8097F324  38 7E 00 04 */	addi r3, r30, 4
/* 8097F328  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha
/* 8097F32C  38 84 99 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8097F330  38 A0 00 0C */	li r5, 0xc
/* 8097F334  38 C0 00 04 */	li r6, 4
/* 8097F338  4B 9E 29 B0 */	b __destroy_arr
/* 8097F33C  7F E0 07 35 */	extsh. r0, r31
/* 8097F340  40 81 00 0C */	ble lbl_8097F34C
/* 8097F344  7F C3 F3 78 */	mr r3, r30
/* 8097F348  4B 94 F9 F4 */	b __dl__FPv
lbl_8097F34C:
/* 8097F34C  7F C3 F3 78 */	mr r3, r30
/* 8097F350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097F354  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097F358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097F35C  7C 08 03 A6 */	mtlr r0
/* 8097F360  38 21 00 10 */	addi r1, r1, 0x10
/* 8097F364  4E 80 00 20 */	blr 

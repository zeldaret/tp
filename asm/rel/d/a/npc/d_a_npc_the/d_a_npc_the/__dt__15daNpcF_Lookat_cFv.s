lbl_80AFB5DC:
/* 80AFB5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFB5E0  7C 08 02 A6 */	mflr r0
/* 80AFB5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFB5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFB5EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AFB5F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AFB5F4  7C 9F 23 78 */	mr r31, r4
/* 80AFB5F8  41 82 00 98 */	beq lbl_80AFB690
/* 80AFB5FC  3C 60 80 B0 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AFB600  38 03 C6 50 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AFB604  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80AFB608  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AFB60C  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80AFB610  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l
/* 80AFB614  38 A0 00 06 */	li r5, 6
/* 80AFB618  38 C0 00 04 */	li r6, 4
/* 80AFB61C  4B 86 66 CC */	b __destroy_arr
/* 80AFB620  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AFB624  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80AFB628  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l
/* 80AFB62C  38 A0 00 06 */	li r5, 6
/* 80AFB630  38 C0 00 04 */	li r6, 4
/* 80AFB634  4B 86 66 B4 */	b __destroy_arr
/* 80AFB638  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AFB63C  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80AFB640  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l
/* 80AFB644  38 A0 00 06 */	li r5, 6
/* 80AFB648  38 C0 00 04 */	li r6, 4
/* 80AFB64C  4B 86 66 9C */	b __destroy_arr
/* 80AFB650  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AFB654  3C 80 80 B0 */	lis r4, __dt__5csXyzFv@ha
/* 80AFB658  38 84 B6 AC */	addi r4, r4, __dt__5csXyzFv@l
/* 80AFB65C  38 A0 00 06 */	li r5, 6
/* 80AFB660  38 C0 00 04 */	li r6, 4
/* 80AFB664  4B 86 66 84 */	b __destroy_arr
/* 80AFB668  7F C3 F3 78 */	mr r3, r30
/* 80AFB66C  3C 80 80 B0 */	lis r4, __dt__4cXyzFv@ha
/* 80AFB670  38 84 B6 EC */	addi r4, r4, __dt__4cXyzFv@l
/* 80AFB674  38 A0 00 0C */	li r5, 0xc
/* 80AFB678  38 C0 00 04 */	li r6, 4
/* 80AFB67C  4B 86 66 6C */	b __destroy_arr
/* 80AFB680  7F E0 07 35 */	extsh. r0, r31
/* 80AFB684  40 81 00 0C */	ble lbl_80AFB690
/* 80AFB688  7F C3 F3 78 */	mr r3, r30
/* 80AFB68C  4B 7D 36 B0 */	b __dl__FPv
lbl_80AFB690:
/* 80AFB690  7F C3 F3 78 */	mr r3, r30
/* 80AFB694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFB698  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AFB69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFB6A0  7C 08 03 A6 */	mtlr r0
/* 80AFB6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFB6A8  4E 80 00 20 */	blr 

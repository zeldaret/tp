lbl_80A297F8:
/* 80A297F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A297FC  7C 08 02 A6 */	mflr r0
/* 80A29800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29808  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2980C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A29810  7C 9F 23 78 */	mr r31, r4
/* 80A29814  41 82 00 98 */	beq lbl_80A298AC
/* 80A29818  3C 60 80 A3 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80A2981C  38 03 A7 7C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80A29820  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80A29824  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A29828  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A2982C  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A29830  38 A0 00 06 */	li r5, 6
/* 80A29834  38 C0 00 04 */	li r6, 4
/* 80A29838  4B 93 84 B0 */	b __destroy_arr
/* 80A2983C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A29840  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A29844  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A29848  38 A0 00 06 */	li r5, 6
/* 80A2984C  38 C0 00 04 */	li r6, 4
/* 80A29850  4B 93 84 98 */	b __destroy_arr
/* 80A29854  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A29858  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A2985C  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A29860  38 A0 00 06 */	li r5, 6
/* 80A29864  38 C0 00 04 */	li r6, 4
/* 80A29868  4B 93 84 80 */	b __destroy_arr
/* 80A2986C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A29870  3C 80 80 A3 */	lis r4, __dt__5csXyzFv@ha
/* 80A29874  38 84 98 C8 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A29878  38 A0 00 06 */	li r5, 6
/* 80A2987C  38 C0 00 04 */	li r6, 4
/* 80A29880  4B 93 84 68 */	b __destroy_arr
/* 80A29884  7F C3 F3 78 */	mr r3, r30
/* 80A29888  3C 80 80 A3 */	lis r4, __dt__4cXyzFv@ha
/* 80A2988C  38 84 99 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A29890  38 A0 00 0C */	li r5, 0xc
/* 80A29894  38 C0 00 04 */	li r6, 4
/* 80A29898  4B 93 84 50 */	b __destroy_arr
/* 80A2989C  7F E0 07 35 */	extsh. r0, r31
/* 80A298A0  40 81 00 0C */	ble lbl_80A298AC
/* 80A298A4  7F C3 F3 78 */	mr r3, r30
/* 80A298A8  4B 8A 54 94 */	b __dl__FPv
lbl_80A298AC:
/* 80A298AC  7F C3 F3 78 */	mr r3, r30
/* 80A298B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A298B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A298B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A298BC  7C 08 03 A6 */	mtlr r0
/* 80A298C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A298C4  4E 80 00 20 */	blr 

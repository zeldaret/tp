lbl_80252094:
/* 80252094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252098  7C 08 02 A6 */	mflr r0
/* 8025209C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802520A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802520A4  93 C1 00 08 */	stw r30, 8(r1)
/* 802520A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802520AC  7C 9F 23 78 */	mr r31, r4
/* 802520B0  41 82 00 B0 */	beq lbl_80252160
/* 802520B4  3C 60 80 3C */	lis r3, __vt__16dNpcLib_lookat_c@ha
/* 802520B8  38 03 2B 88 */	addi r0, r3, __vt__16dNpcLib_lookat_c@l
/* 802520BC  90 1E 00 00 */	stw r0, 0(r30)
/* 802520C0  38 7E 00 94 */	addi r3, r30, 0x94
/* 802520C4  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha
/* 802520C8  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 802520CC  38 A0 00 06 */	li r5, 6
/* 802520D0  38 C0 00 04 */	li r6, 4
/* 802520D4  48 10 FC 15 */	bl __destroy_arr
/* 802520D8  38 7E 00 7C */	addi r3, r30, 0x7c
/* 802520DC  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha
/* 802520E0  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 802520E4  38 A0 00 06 */	li r5, 6
/* 802520E8  38 C0 00 04 */	li r6, 4
/* 802520EC  48 10 FB FD */	bl __destroy_arr
/* 802520F0  38 7E 00 64 */	addi r3, r30, 0x64
/* 802520F4  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha
/* 802520F8  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 802520FC  38 A0 00 06 */	li r5, 6
/* 80252100  38 C0 00 04 */	li r6, 4
/* 80252104  48 10 FB E5 */	bl __destroy_arr
/* 80252108  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8025210C  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha
/* 80252110  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80252114  38 A0 00 06 */	li r5, 6
/* 80252118  38 C0 00 04 */	li r6, 4
/* 8025211C  48 10 FB CD */	bl __destroy_arr
/* 80252120  38 7E 00 34 */	addi r3, r30, 0x34
/* 80252124  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha
/* 80252128  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 8025212C  38 A0 00 06 */	li r5, 6
/* 80252130  38 C0 00 04 */	li r6, 4
/* 80252134  48 10 FB B5 */	bl __destroy_arr
/* 80252138  38 7E 00 04 */	addi r3, r30, 4
/* 8025213C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80252140  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80252144  38 A0 00 0C */	li r5, 0xc
/* 80252148  38 C0 00 04 */	li r6, 4
/* 8025214C  48 10 FB 9D */	bl __destroy_arr
/* 80252150  7F E0 07 35 */	extsh. r0, r31
/* 80252154  40 81 00 0C */	ble lbl_80252160
/* 80252158  7F C3 F3 78 */	mr r3, r30
/* 8025215C  48 07 CB E1 */	bl __dl__FPv
lbl_80252160:
/* 80252160  7F C3 F3 78 */	mr r3, r30
/* 80252164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252168  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025216C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252170  7C 08 03 A6 */	mtlr r0
/* 80252174  38 21 00 10 */	addi r1, r1, 0x10
/* 80252178  4E 80 00 20 */	blr 

lbl_80070774:
/* 80070774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80070778  7C 08 02 A6 */	mflr r0
/* 8007077C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80070780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80070784  93 C1 00 08 */	stw r30, 8(r1)
/* 80070788  7C 7E 1B 79 */	or. r30, r3, r3
/* 8007078C  7C 9F 23 78 */	mr r31, r4
/* 80070790  41 82 00 98 */	beq lbl_80070828
/* 80070794  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80070798  28 03 00 00 */	cmplwi r3, 0
/* 8007079C  41 82 00 10 */	beq lbl_800707AC
/* 800707A0  4B F9 E9 ED */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 800707A4  38 00 00 00 */	li r0, 0
/* 800707A8  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_800707AC:
/* 800707AC  38 7E 04 C8 */	addi r3, r30, 0x4c8
/* 800707B0  38 80 FF FF */	li r4, -1
/* 800707B4  4B FF F9 5D */	bl __dt__11dAttParam_cFv
/* 800707B8  38 7E 04 38 */	addi r3, r30, 0x438
/* 800707BC  3C 80 80 03 */	lis r4, __dt__10dAttList_cFv@ha /* 0x800304D0@ha */
/* 800707C0  38 84 04 D0 */	addi r4, r4, __dt__10dAttList_cFv@l /* 0x800304D0@l */
/* 800707C4  38 A0 00 14 */	li r5, 0x14
/* 800707C8  38 C0 00 04 */	li r6, 4
/* 800707CC  48 2F 15 1D */	bl __destroy_arr
/* 800707D0  38 7E 03 E0 */	addi r3, r30, 0x3e0
/* 800707D4  3C 80 80 03 */	lis r4, __dt__10dAttList_cFv@ha /* 0x800304D0@ha */
/* 800707D8  38 84 04 D0 */	addi r4, r4, __dt__10dAttList_cFv@l /* 0x800304D0@l */
/* 800707DC  38 A0 00 14 */	li r5, 0x14
/* 800707E0  38 C0 00 04 */	li r6, 4
/* 800707E4  48 2F 15 05 */	bl __destroy_arr
/* 800707E8  38 7E 03 38 */	addi r3, r30, 0x338
/* 800707EC  3C 80 80 03 */	lis r4, __dt__10dAttList_cFv@ha /* 0x800304D0@ha */
/* 800707F0  38 84 04 D0 */	addi r4, r4, __dt__10dAttList_cFv@l /* 0x800304D0@l */
/* 800707F4  38 A0 00 14 */	li r5, 0x14
/* 800707F8  38 C0 00 08 */	li r6, 8
/* 800707FC  48 2F 14 ED */	bl __destroy_arr
/* 80070800  38 7E 00 28 */	addi r3, r30, 0x28
/* 80070804  3C 80 80 03 */	lis r4, __dt__10dAttDraw_cFv@ha /* 0x8003054C@ha */
/* 80070808  38 84 05 4C */	addi r4, r4, __dt__10dAttDraw_cFv@l /* 0x8003054C@l */
/* 8007080C  38 A0 01 78 */	li r5, 0x178
/* 80070810  38 C0 00 02 */	li r6, 2
/* 80070814  48 2F 14 D5 */	bl __destroy_arr
/* 80070818  7F E0 07 35 */	extsh. r0, r31
/* 8007081C  40 81 00 0C */	ble lbl_80070828
/* 80070820  7F C3 F3 78 */	mr r3, r30
/* 80070824  48 25 E5 19 */	bl __dl__FPv
lbl_80070828:
/* 80070828  7F C3 F3 78 */	mr r3, r30
/* 8007082C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80070830  83 C1 00 08 */	lwz r30, 8(r1)
/* 80070834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80070838  7C 08 03 A6 */	mtlr r0
/* 8007083C  38 21 00 10 */	addi r1, r1, 0x10
/* 80070840  4E 80 00 20 */	blr 

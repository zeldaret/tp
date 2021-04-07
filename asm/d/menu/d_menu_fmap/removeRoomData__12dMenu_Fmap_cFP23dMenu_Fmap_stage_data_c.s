lbl_801CC7A8:
/* 801CC7A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CC7AC  7C 08 02 A6 */	mflr r0
/* 801CC7B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CC7B4  39 61 00 20 */	addi r11, r1, 0x20
/* 801CC7B8  48 19 5A 21 */	bl _savegpr_28
/* 801CC7BC  7C 7C 1B 78 */	mr r28, r3
/* 801CC7C0  83 A4 00 0C */	lwz r29, 0xc(r4)
/* 801CC7C4  48 00 00 74 */	b lbl_801CC838
lbl_801CC7C8:
/* 801CC7C8  83 FD 00 08 */	lwz r31, 8(r29)
/* 801CC7CC  83 DD 00 00 */	lwz r30, 0(r29)
/* 801CC7D0  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 801CC7D4  28 04 00 00 */	cmplwi r4, 0
/* 801CC7D8  41 82 00 0C */	beq lbl_801CC7E4
/* 801CC7DC  80 7C 00 04 */	lwz r3, 4(r28)
/* 801CC7E0  48 10 1D 69 */	bl free__7JKRHeapFPv
lbl_801CC7E4:
/* 801CC7E4  28 1E 00 00 */	cmplwi r30, 0
/* 801CC7E8  41 82 00 0C */	beq lbl_801CC7F4
/* 801CC7EC  7F C3 F3 78 */	mr r3, r30
/* 801CC7F0  48 10 25 4D */	bl __dl__FPv
lbl_801CC7F4:
/* 801CC7F4  28 1D 00 00 */	cmplwi r29, 0
/* 801CC7F8  41 82 00 3C */	beq lbl_801CC834
/* 801CC7FC  83 DD 00 04 */	lwz r30, 4(r29)
/* 801CC800  28 1E 00 00 */	cmplwi r30, 0
/* 801CC804  41 82 00 28 */	beq lbl_801CC82C
/* 801CC808  41 82 00 24 */	beq lbl_801CC82C
/* 801CC80C  7F C3 F3 78 */	mr r3, r30
/* 801CC810  3C 80 80 04 */	lis r4, __dt__26fmpTresTypeGroupDataList_cFv@ha /* 0x8003EB10@ha */
/* 801CC814  38 84 EB 10 */	addi r4, r4, __dt__26fmpTresTypeGroupDataList_cFv@l /* 0x8003EB10@l */
/* 801CC818  38 A0 00 08 */	li r5, 8
/* 801CC81C  38 C0 00 11 */	li r6, 0x11
/* 801CC820  48 19 54 C9 */	bl __destroy_arr
/* 801CC824  7F C3 F3 78 */	mr r3, r30
/* 801CC828  48 10 25 15 */	bl __dl__FPv
lbl_801CC82C:
/* 801CC82C  7F A3 EB 78 */	mr r3, r29
/* 801CC830  48 10 25 0D */	bl __dl__FPv
lbl_801CC834:
/* 801CC834  7F FD FB 78 */	mr r29, r31
lbl_801CC838:
/* 801CC838  28 1D 00 00 */	cmplwi r29, 0
/* 801CC83C  40 82 FF 8C */	bne lbl_801CC7C8
/* 801CC840  38 60 00 01 */	li r3, 1
/* 801CC844  39 61 00 20 */	addi r11, r1, 0x20
/* 801CC848  48 19 59 DD */	bl _restgpr_28
/* 801CC84C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CC850  7C 08 03 A6 */	mtlr r0
/* 801CC854  38 21 00 20 */	addi r1, r1, 0x20
/* 801CC858  4E 80 00 20 */	blr 

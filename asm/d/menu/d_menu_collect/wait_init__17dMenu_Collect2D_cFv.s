lbl_801B473C:
/* 801B473C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4740  7C 08 02 A6 */	mflr r0
/* 801B4744  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B474C  93 C1 00 08 */	stw r30, 8(r1)
/* 801B4750  7C 7E 1B 78 */	mr r30, r3
/* 801B4754  80 63 00 08 */	lwz r3, 8(r3)
/* 801B4758  4B E5 AA 75 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B475C  7C 7F 1B 78 */	mr r31, r3
/* 801B4760  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4764  28 03 00 00 */	cmplwi r3, 0
/* 801B4768  41 82 00 38 */	beq lbl_801B47A0
/* 801B476C  48 03 C3 BD */	bl _delete__12dMenu_save_cFv
/* 801B4770  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4774  28 03 00 00 */	cmplwi r3, 0
/* 801B4778  41 82 00 18 */	beq lbl_801B4790
/* 801B477C  38 80 00 01 */	li r4, 1
/* 801B4780  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4784  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B4788  7D 89 03 A6 */	mtctr r12
/* 801B478C  4E 80 04 21 */	bctrl 
lbl_801B4790:
/* 801B4790  38 00 00 00 */	li r0, 0
/* 801B4794  90 1E 00 90 */	stw r0, 0x90(r30)
/* 801B4798  80 7E 00 08 */	lwz r3, 8(r30)
/* 801B479C  48 11 9E 31 */	bl freeAll__7JKRHeapFv
lbl_801B47A0:
/* 801B47A0  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B47A4  28 03 00 00 */	cmplwi r3, 0
/* 801B47A8  41 82 00 38 */	beq lbl_801B47E0
/* 801B47AC  48 02 E4 71 */	bl _delete__14dMenu_Option_cFv
/* 801B47B0  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B47B4  28 03 00 00 */	cmplwi r3, 0
/* 801B47B8  41 82 00 18 */	beq lbl_801B47D0
/* 801B47BC  38 80 00 01 */	li r4, 1
/* 801B47C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B47C4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B47C8  7D 89 03 A6 */	mtctr r12
/* 801B47CC  4E 80 04 21 */	bctrl 
lbl_801B47D0:
/* 801B47D0  38 00 00 00 */	li r0, 0
/* 801B47D4  90 1E 00 94 */	stw r0, 0x94(r30)
/* 801B47D8  80 7E 00 08 */	lwz r3, 8(r30)
/* 801B47DC  48 11 9D F1 */	bl freeAll__7JKRHeapFv
lbl_801B47E0:
/* 801B47E0  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801B47E4  28 03 00 00 */	cmplwi r3, 0
/* 801B47E8  41 82 00 2C */	beq lbl_801B4814
/* 801B47EC  41 82 00 18 */	beq lbl_801B4804
/* 801B47F0  38 80 00 01 */	li r4, 1
/* 801B47F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B47F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B47FC  7D 89 03 A6 */	mtctr r12
/* 801B4800  4E 80 04 21 */	bctrl 
lbl_801B4804:
/* 801B4804  38 00 00 00 */	li r0, 0
/* 801B4808  90 1E 00 98 */	stw r0, 0x98(r30)
/* 801B480C  80 7E 00 08 */	lwz r3, 8(r30)
/* 801B4810  48 11 9D BD */	bl freeAll__7JKRHeapFv
lbl_801B4814:
/* 801B4814  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 801B4818  28 03 00 00 */	cmplwi r3, 0
/* 801B481C  41 82 00 2C */	beq lbl_801B4848
/* 801B4820  41 82 00 18 */	beq lbl_801B4838
/* 801B4824  38 80 00 01 */	li r4, 1
/* 801B4828  81 83 00 00 */	lwz r12, 0(r3)
/* 801B482C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B4830  7D 89 03 A6 */	mtctr r12
/* 801B4834  4E 80 04 21 */	bctrl 
lbl_801B4838:
/* 801B4838  38 00 00 00 */	li r0, 0
/* 801B483C  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 801B4840  80 7E 00 08 */	lwz r3, 8(r30)
/* 801B4844  48 11 9D 89 */	bl freeAll__7JKRHeapFv
lbl_801B4848:
/* 801B4848  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 801B484C  28 03 00 00 */	cmplwi r3, 0
/* 801B4850  41 82 00 2C */	beq lbl_801B487C
/* 801B4854  41 82 00 18 */	beq lbl_801B486C
/* 801B4858  38 80 00 01 */	li r4, 1
/* 801B485C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4860  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B4864  7D 89 03 A6 */	mtctr r12
/* 801B4868  4E 80 04 21 */	bctrl 
lbl_801B486C:
/* 801B486C  38 00 00 00 */	li r0, 0
/* 801B4870  90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 801B4874  80 7E 00 08 */	lwz r3, 8(r30)
/* 801B4878  48 11 9D 55 */	bl freeAll__7JKRHeapFv
lbl_801B487C:
/* 801B487C  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 801B4880  28 03 00 00 */	cmplwi r3, 0
/* 801B4884  41 82 00 2C */	beq lbl_801B48B0
/* 801B4888  41 82 00 18 */	beq lbl_801B48A0
/* 801B488C  38 80 00 01 */	li r4, 1
/* 801B4890  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4894  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B4898  7D 89 03 A6 */	mtctr r12
/* 801B489C  4E 80 04 21 */	bctrl 
lbl_801B48A0:
/* 801B48A0  38 00 00 00 */	li r0, 0
/* 801B48A4  90 1E 00 A4 */	stw r0, 0xa4(r30)
/* 801B48A8  80 7E 00 08 */	lwz r3, 8(r30)
/* 801B48AC  48 11 9D 21 */	bl freeAll__7JKRHeapFv
lbl_801B48B0:
/* 801B48B0  7F E3 FB 78 */	mr r3, r31
/* 801B48B4  4B E5 A9 19 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B48B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B48BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B48C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B48C4  7C 08 03 A6 */	mtlr r0
/* 801B48C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B48CC  4E 80 00 20 */	blr 

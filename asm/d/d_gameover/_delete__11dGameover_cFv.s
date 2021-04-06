lbl_8019B864:
/* 8019B864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019B868  7C 08 02 A6 */	mflr r0
/* 8019B86C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019B870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019B874  93 C1 00 08 */	stw r30, 8(r1)
/* 8019B878  7C 7E 1B 78 */	mr r30, r3
/* 8019B87C  80 63 01 10 */	lwz r3, 0x110(r3)
/* 8019B880  4B E7 39 4D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8019B884  7C 7F 1B 78 */	mr r31, r3
/* 8019B888  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8019B88C  28 03 00 00 */	cmplwi r3, 0
/* 8019B890  41 82 00 24 */	beq lbl_8019B8B4
/* 8019B894  41 82 00 18 */	beq lbl_8019B8AC
/* 8019B898  38 80 00 01 */	li r4, 1
/* 8019B89C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019B8A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8019B8A4  7D 89 03 A6 */	mtctr r12
/* 8019B8A8  4E 80 04 21 */	bctrl 
lbl_8019B8AC:
/* 8019B8AC  38 00 00 00 */	li r0, 0
/* 8019B8B0  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_8019B8B4:
/* 8019B8B4  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 8019B8B8  48 05 52 71 */	bl _delete__12dMenu_save_cFv
/* 8019B8BC  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 8019B8C0  28 03 00 00 */	cmplwi r3, 0
/* 8019B8C4  41 82 00 18 */	beq lbl_8019B8DC
/* 8019B8C8  38 80 00 01 */	li r4, 1
/* 8019B8CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8019B8D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8019B8D4  7D 89 03 A6 */	mtctr r12
/* 8019B8D8  4E 80 04 21 */	bctrl 
lbl_8019B8DC:
/* 8019B8DC  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8019B8E0  28 03 00 00 */	cmplwi r3, 0
/* 8019B8E4  41 82 00 18 */	beq lbl_8019B8FC
/* 8019B8E8  38 80 00 01 */	li r4, 1
/* 8019B8EC  81 83 00 00 */	lwz r12, 0(r3)
/* 8019B8F0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8019B8F4  7D 89 03 A6 */	mtctr r12
/* 8019B8F8  4E 80 04 21 */	bctrl 
lbl_8019B8FC:
/* 8019B8FC  80 7E 01 10 */	lwz r3, 0x110(r30)
/* 8019B900  48 13 2C CD */	bl freeAll__7JKRHeapFv
/* 8019B904  38 60 00 00 */	li r3, 0
/* 8019B908  4B E9 28 81 */	bl dComIfGp_offHeapLockFlag__Fi
/* 8019B90C  7F E3 FB 78 */	mr r3, r31
/* 8019B910  4B E7 38 BD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8019B914  38 7E 01 08 */	addi r3, r30, 0x108
/* 8019B918  3C 80 80 39 */	lis r4, d_d_gameover__stringBase0@ha /* 0x80394C28@ha */
/* 8019B91C  38 84 4C 28 */	addi r4, r4, d_d_gameover__stringBase0@l /* 0x80394C28@l */
/* 8019B920  4B E9 16 E9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8019B924  38 60 00 01 */	li r3, 1
/* 8019B928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019B92C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019B930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019B934  7C 08 03 A6 */	mtlr r0
/* 8019B938  38 21 00 10 */	addi r1, r1, 0x10
/* 8019B93C  4E 80 00 20 */	blr 

lbl_8000B3EC:
/* 8000B3EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000B3F0  7C 08 02 A6 */	mflr r0
/* 8000B3F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000B3F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8000B3FC  48 35 6D DD */	bl _savegpr_28
/* 8000B400  7C 7F 1B 78 */	mr r31, r3
/* 8000B404  7C 9E 23 78 */	mr r30, r4
/* 8000B408  7C BD 2B 78 */	mr r29, r5
/* 8000B40C  3B 80 00 01 */	li r28, 1
/* 8000B410  81 83 00 00 */	lwz r12, 0(r3)
/* 8000B414  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000B418  7D 89 03 A6 */	mtctr r12
/* 8000B41C  4E 80 04 21 */	bctrl 
/* 8000B420  3C 03 AC B4 */	addis r0, r3, 0xacb4
/* 8000B424  28 00 49 44 */	cmplwi r0, 0x4944
/* 8000B428  40 82 00 08 */	bne lbl_8000B430
/* 8000B42C  3B 80 00 00 */	li r28, 0
lbl_8000B430:
/* 8000B430  2C 1C 00 00 */	cmpwi r28, 0
/* 8000B434  41 82 00 28 */	beq lbl_8000B45C
/* 8000B438  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000B43C  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000B440  38 63 00 6A */	addi r3, r3, 0x6a
/* 8000B444  7F C4 F3 78 */	mr r4, r30
/* 8000B448  7F C5 F3 78 */	mr r5, r30
/* 8000B44C  7F A6 EB 78 */	mr r6, r29
/* 8000B450  7F E7 FB 78 */	mr r7, r31
/* 8000B454  4C C6 31 82 */	crclr 6
/* 8000B458  4B FF B7 B5 */	bl OSReport_Error
lbl_8000B45C:
/* 8000B45C  7F E3 FB 78 */	mr r3, r31
/* 8000B460  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000B464  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000B468  7D 89 03 A6 */	mtctr r12
/* 8000B46C  4E 80 04 21 */	bctrl 
/* 8000B470  90 61 00 10 */	stw r3, 0x10(r1)
/* 8000B474  2C 1C 00 00 */	cmpwi r28, 0
/* 8000B478  41 82 00 60 */	beq lbl_8000B4D8
/* 8000B47C  83 9F 00 38 */	lwz r28, 0x38(r31)
/* 8000B480  7F E3 FB 78 */	mr r3, r31
/* 8000B484  4B FF FD 69 */	bl myGetHeapTypeByString__FP7JKRHeap
/* 8000B488  7C 7D 1B 78 */	mr r29, r3
/* 8000B48C  7F E3 FB 78 */	mr r3, r31
/* 8000B490  48 2C 32 F5 */	bl getTotalFreeSize__7JKRHeapFv
/* 8000B494  7C 7E 1B 78 */	mr r30, r3
/* 8000B498  7F E3 FB 78 */	mr r3, r31
/* 8000B49C  48 2C 32 91 */	bl getFreeSize__7JKRHeapFv
/* 8000B4A0  7C 64 1B 78 */	mr r4, r3
/* 8000B4A4  93 81 00 08 */	stw r28, 8(r1)
/* 8000B4A8  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8000B4AC  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000B4B0  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000B4B4  38 63 00 BB */	addi r3, r3, 0xbb
/* 8000B4B8  7F C5 F3 78 */	mr r5, r30
/* 8000B4BC  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8000B4C0  88 E1 00 10 */	lbz r7, 0x10(r1)
/* 8000B4C4  89 01 00 11 */	lbz r8, 0x11(r1)
/* 8000B4C8  89 21 00 12 */	lbz r9, 0x12(r1)
/* 8000B4CC  89 41 00 13 */	lbz r10, 0x13(r1)
/* 8000B4D0  4C C6 31 82 */	crclr 6
/* 8000B4D4  4B FF B7 39 */	bl OSReport_Error
lbl_8000B4D8:
/* 8000B4D8  80 0D 86 8C */	lwz r0, heapErrors(r13)
/* 8000B4DC  28 00 00 00 */	cmplwi r0, 0
/* 8000B4E0  40 82 00 18 */	bne lbl_8000B4F8
/* 8000B4E4  7F E3 FB 78 */	mr r3, r31
/* 8000B4E8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000B4EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8000B4F0  7D 89 03 A6 */	mtctr r12
/* 8000B4F4  4E 80 04 21 */	bctrl 
lbl_8000B4F8:
/* 8000B4F8  80 6D 86 8C */	lwz r3, heapErrors(r13)
/* 8000B4FC  38 03 00 01 */	addi r0, r3, 1
/* 8000B500  90 0D 86 8C */	stw r0, heapErrors(r13)
/* 8000B504  80 0D 86 AC */	lwz r0, zeldaHeap(r13)
/* 8000B508  7C 1F 00 40 */	cmplw r31, r0
/* 8000B50C  40 82 00 14 */	bne lbl_8000B520
/* 8000B510  80 6D 86 7C */	lwz r3, zeldaHeapErrors(r13)
/* 8000B514  38 03 00 01 */	addi r0, r3, 1
/* 8000B518  90 0D 86 7C */	stw r0, zeldaHeapErrors(r13)
/* 8000B51C  48 00 00 94 */	b lbl_8000B5B0
lbl_8000B520:
/* 8000B520  80 0D 86 A8 */	lwz r0, gameHeap(r13)
/* 8000B524  7C 1F 00 40 */	cmplw r31, r0
/* 8000B528  40 82 00 14 */	bne lbl_8000B53C
/* 8000B52C  80 6D 86 78 */	lwz r3, gameHeapErrors(r13)
/* 8000B530  38 03 00 01 */	addi r0, r3, 1
/* 8000B534  90 0D 86 78 */	stw r0, gameHeapErrors(r13)
/* 8000B538  48 00 00 78 */	b lbl_8000B5B0
lbl_8000B53C:
/* 8000B53C  80 0D 86 B0 */	lwz r0, commandHeap(r13)
/* 8000B540  7C 1F 00 40 */	cmplw r31, r0
/* 8000B544  40 82 00 14 */	bne lbl_8000B558
/* 8000B548  80 6D 86 80 */	lwz r3, commandHeapErrors(r13)
/* 8000B54C  38 03 00 01 */	addi r0, r3, 1
/* 8000B550  90 0D 86 80 */	stw r0, commandHeapErrors(r13)
/* 8000B554  48 00 00 5C */	b lbl_8000B5B0
lbl_8000B558:
/* 8000B558  80 0D 86 B4 */	lwz r0, archiveHeap(r13)
/* 8000B55C  7C 1F 00 40 */	cmplw r31, r0
/* 8000B560  40 82 00 14 */	bne lbl_8000B574
/* 8000B564  80 6D 86 84 */	lwz r3, archiveHeapErrors(r13)
/* 8000B568  38 03 00 01 */	addi r0, r3, 1
/* 8000B56C  90 0D 86 84 */	stw r0, archiveHeapErrors(r13)
/* 8000B570  48 00 00 40 */	b lbl_8000B5B0
lbl_8000B574:
/* 8000B574  7F E3 FB 78 */	mr r3, r31
/* 8000B578  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000B57C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000B580  7D 89 03 A6 */	mtctr r12
/* 8000B584  4E 80 04 21 */	bctrl 
/* 8000B588  3C 03 AC B4 */	addis r0, r3, 0xacb4
/* 8000B58C  28 00 49 44 */	cmplwi r0, 0x4944
/* 8000B590  40 82 00 14 */	bne lbl_8000B5A4
/* 8000B594  80 6D 86 74 */	lwz r3, solidHeapErrors(r13)
/* 8000B598  38 03 00 01 */	addi r0, r3, 1
/* 8000B59C  90 0D 86 74 */	stw r0, solidHeapErrors(r13)
/* 8000B5A0  48 00 00 10 */	b lbl_8000B5B0
lbl_8000B5A4:
/* 8000B5A4  80 6D 86 88 */	lwz r3, unknownHeapErrors(r13)
/* 8000B5A8  38 03 00 01 */	addi r0, r3, 1
/* 8000B5AC  90 0D 86 88 */	stw r0, unknownHeapErrors(r13)
lbl_8000B5B0:
/* 8000B5B0  39 61 00 30 */	addi r11, r1, 0x30
/* 8000B5B4  48 35 6C 71 */	bl _restgpr_28
/* 8000B5B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000B5BC  7C 08 03 A6 */	mtlr r0
/* 8000B5C0  38 21 00 30 */	addi r1, r1, 0x30
/* 8000B5C4  4E 80 00 20 */	blr 

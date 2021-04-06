lbl_8033A440:
/* 8033A440  7C 08 02 A6 */	mflr r0
/* 8033A444  90 01 00 04 */	stw r0, 4(r1)
/* 8033A448  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8033A44C  BE 81 00 08 */	stmw r20, 8(r1)
/* 8033A450  3C 60 80 00 */	lis r3, 0x8000 /* 0x80000060@ha */
/* 8033A454  80 03 00 60 */	lwz r0, 0x0060(r3)  /* 0x80000060@l */
/* 8033A458  3C 80 80 34 */	lis r4, __OSEVSetNumber@ha /* 0x8033A780@ha */
/* 8033A45C  3B C4 A7 80 */	addi r30, r4, __OSEVSetNumber@l /* 0x8033A780@l */
/* 8033A460  3C A0 80 34 */	lis r5, OSExceptionVector@ha /* 0x8033A718@ha */
/* 8033A464  83 3E 00 00 */	lwz r25, 0(r30)
/* 8033A468  3C 80 80 34 */	lis r4, __OSEVEnd@ha /* 0x8033A7B0@ha */
/* 8033A46C  38 A5 A7 18 */	addi r5, r5, OSExceptionVector@l /* 0x8033A718@l */
/* 8033A470  38 84 A7 B0 */	addi r4, r4, __OSEVEnd@l /* 0x8033A7B0@l */
/* 8033A474  3C C0 80 3D */	lis r6, lit_1@ha /* 0x803CF288@ha */
/* 8033A478  28 00 00 00 */	cmplwi r0, 0
/* 8033A47C  7C B8 2B 78 */	mr r24, r5
/* 8033A480  3B A6 F2 88 */	addi r29, r6, lit_1@l /* 0x803CF288@l */
/* 8033A484  7E E5 20 50 */	subf r23, r5, r4
/* 8033A488  3A 83 00 60 */	addi r20, r3, 0x60
/* 8033A48C  40 82 00 4C */	bne lbl_8033A4D8
/* 8033A490  38 7D 01 60 */	addi r3, r29, 0x160
/* 8033A494  4C C6 31 82 */	crclr 6
/* 8033A498  48 00 BF 9D */	bl DBPrintf
/* 8033A49C  3C 80 80 34 */	lis r4, __OSDBIntegrator@ha /* 0x8033A6C0@ha */
/* 8033A4A0  3C 60 80 34 */	lis r3, __OSDBJump@ha /* 0x8033A6E4@ha */
/* 8033A4A4  38 03 A6 E4 */	addi r0, r3, __OSDBJump@l /* 0x8033A6E4@l */
/* 8033A4A8  38 84 A6 C0 */	addi r4, r4, __OSDBIntegrator@l /* 0x8033A6C0@l */
/* 8033A4AC  7E A4 00 50 */	subf r21, r4, r0
/* 8033A4B0  7E 83 A3 78 */	mr r3, r20
/* 8033A4B4  7E A5 AB 78 */	mr r5, r21
/* 8033A4B8  4B CC 90 89 */	bl memcpy
/* 8033A4BC  7E 83 A3 78 */	mr r3, r20
/* 8033A4C0  7E A4 AB 78 */	mr r4, r21
/* 8033A4C4  48 00 11 49 */	bl DCFlushRangeNoSync
/* 8033A4C8  7C 00 04 AC */	sync
/* 8033A4CC  7E 83 A3 78 */	mr r3, r20
/* 8033A4D0  7E A4 AB 78 */	mr r4, r21
/* 8033A4D4  48 00 11 BD */	bl ICInvalidateRange
lbl_8033A4D8:
/* 8033A4D8  3C 80 80 34 */	lis r4, __OSDBJump@ha /* 0x8033A6E4@ha */
/* 8033A4DC  3C 60 80 34 */	lis r3, __OSSetExceptionHandler@ha /* 0x8033A6E8@ha */
/* 8033A4E0  3B E4 A6 E4 */	addi r31, r4, __OSDBJump@l /* 0x8033A6E4@l */
/* 8033A4E4  38 03 A6 E8 */	addi r0, r3, __OSSetExceptionHandler@l /* 0x8033A6E8@l */
/* 8033A4E8  3B 9D 01 24 */	addi r28, r29, 0x124
/* 8033A4EC  7F 7F 00 50 */	subf r27, r31, r0
/* 8033A4F0  3B 40 00 00 */	li r26, 0
/* 8033A4F4  48 00 00 04 */	b lbl_8033A4F8
lbl_8033A4F8:
/* 8033A4F8  3C 60 80 34 */	lis r3, __DBVECTOR@ha /* 0x8033A770@ha */
/* 8033A4FC  3A A3 A7 70 */	addi r21, r3, __DBVECTOR@l /* 0x8033A770@l */
/* 8033A500  3E C0 60 00 */	lis r22, 0x6000
/* 8033A504  48 00 00 04 */	b lbl_8033A508
lbl_8033A508:
/* 8033A508  48 00 01 48 */	b lbl_8033A650
lbl_8033A50C:
/* 8033A50C  80 6D 90 84 */	lwz r3, BI2DebugFlag(r13)
/* 8033A510  28 03 00 00 */	cmplwi r3, 0
/* 8033A514  41 82 00 34 */	beq lbl_8033A548
/* 8033A518  80 03 00 00 */	lwz r0, 0(r3)
/* 8033A51C  28 00 00 02 */	cmplwi r0, 2
/* 8033A520  41 80 00 28 */	blt lbl_8033A548
/* 8033A524  7F 43 D3 78 */	mr r3, r26
/* 8033A528  48 00 BE F1 */	bl __DBIsExceptionMarked
/* 8033A52C  2C 03 00 00 */	cmpwi r3, 0
/* 8033A530  41 82 00 18 */	beq lbl_8033A548
/* 8033A534  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8033A538  4C C6 31 82 */	crclr 6
/* 8033A53C  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 8033A540  48 00 BE F5 */	bl DBPrintf
/* 8033A544  48 00 01 04 */	b lbl_8033A648
lbl_8033A548:
/* 8033A548  57 54 06 3E */	clrlwi r20, r26, 0x18
/* 8033A54C  7F 20 A3 78 */	or r0, r25, r20
/* 8033A550  90 1E 00 00 */	stw r0, 0(r30)
/* 8033A554  7F 43 D3 78 */	mr r3, r26
/* 8033A558  48 00 BE C1 */	bl __DBIsExceptionMarked
/* 8033A55C  2C 03 00 00 */	cmpwi r3, 0
/* 8033A560  41 82 00 28 */	beq lbl_8033A588
/* 8033A564  7E 84 A3 78 */	mr r4, r20
/* 8033A568  4C C6 31 82 */	crclr 6
/* 8033A56C  38 7D 01 AC */	addi r3, r29, 0x1ac
/* 8033A570  48 00 BE C5 */	bl DBPrintf
/* 8033A574  7E A3 AB 78 */	mr r3, r21
/* 8033A578  7F E4 FB 78 */	mr r4, r31
/* 8033A57C  7F 65 DB 78 */	mr r5, r27
/* 8033A580  4B CC 8F C1 */	bl memcpy
/* 8033A584  48 00 00 90 */	b lbl_8033A614
lbl_8033A588:
/* 8033A588  7E A4 AB 78 */	mr r4, r21
/* 8033A58C  48 00 00 04 */	b lbl_8033A590
lbl_8033A590:
/* 8033A590  28 1B 00 00 */	cmplwi r27, 0
/* 8033A594  38 7B 00 03 */	addi r3, r27, 3
/* 8033A598  54 63 F0 BE */	srwi r3, r3, 2
/* 8033A59C  40 81 00 78 */	ble lbl_8033A614
/* 8033A5A0  54 60 E8 FE */	srwi r0, r3, 3
/* 8033A5A4  28 00 00 00 */	cmplwi r0, 0
/* 8033A5A8  7C 09 03 A6 */	mtctr r0
/* 8033A5AC  41 82 00 54 */	beq lbl_8033A600
/* 8033A5B0  48 00 00 04 */	b lbl_8033A5B4
lbl_8033A5B4:
/* 8033A5B4  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5B8  38 84 00 04 */	addi r4, r4, 4
/* 8033A5BC  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5C0  38 84 00 04 */	addi r4, r4, 4
/* 8033A5C4  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5C8  38 84 00 04 */	addi r4, r4, 4
/* 8033A5CC  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5D0  38 84 00 04 */	addi r4, r4, 4
/* 8033A5D4  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5D8  38 84 00 04 */	addi r4, r4, 4
/* 8033A5DC  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5E0  38 84 00 04 */	addi r4, r4, 4
/* 8033A5E4  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5E8  38 84 00 04 */	addi r4, r4, 4
/* 8033A5EC  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A5F0  38 84 00 04 */	addi r4, r4, 4
/* 8033A5F4  42 00 FF C0 */	bdnz lbl_8033A5B4
/* 8033A5F8  70 63 00 07 */	andi. r3, r3, 7
/* 8033A5FC  41 82 00 18 */	beq lbl_8033A614
lbl_8033A600:
/* 8033A600  7C 69 03 A6 */	mtctr r3
/* 8033A604  48 00 00 04 */	b lbl_8033A608
lbl_8033A608:
/* 8033A608  92 C4 00 00 */	stw r22, 0(r4)
/* 8033A60C  38 84 00 04 */	addi r4, r4, 4
/* 8033A610  42 00 FF F8 */	bdnz lbl_8033A608
lbl_8033A614:
/* 8033A614  80 7C 00 00 */	lwz r3, 0(r28)
/* 8033A618  7F 04 C3 78 */	mr r4, r24
/* 8033A61C  7E E5 BB 78 */	mr r5, r23
/* 8033A620  3E 83 80 00 */	addis r20, r3, 0x8000
/* 8033A624  7E 83 A3 78 */	mr r3, r20
/* 8033A628  4B CC 8F 19 */	bl memcpy
/* 8033A62C  7E 83 A3 78 */	mr r3, r20
/* 8033A630  7E E4 BB 78 */	mr r4, r23
/* 8033A634  48 00 0F D9 */	bl DCFlushRangeNoSync
/* 8033A638  7C 00 04 AC */	sync
/* 8033A63C  7E 83 A3 78 */	mr r3, r20
/* 8033A640  7E E4 BB 78 */	mr r4, r23
/* 8033A644  48 00 10 4D */	bl ICInvalidateRange
lbl_8033A648:
/* 8033A648  3B 9C 00 04 */	addi r28, r28, 4
/* 8033A64C  3B 5A 00 01 */	addi r26, r26, 1
lbl_8033A650:
/* 8033A650  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8033A654  28 00 00 0F */	cmplwi r0, 0xf
/* 8033A658  41 80 FE B4 */	blt lbl_8033A50C
/* 8033A65C  3C 60 80 00 */	lis r3, 0x8000 /* 0x80003000@ha */
/* 8033A660  38 03 30 00 */	addi r0, r3, 0x3000 /* 0x80003000@l */
/* 8033A664  90 0D 90 A4 */	stw r0, OSExceptionTable(r13)
/* 8033A668  3A 80 00 00 */	li r20, 0
/* 8033A66C  48 00 00 04 */	b lbl_8033A670
lbl_8033A670:
/* 8033A670  3C 60 80 34 */	lis r3, OSDefaultExceptionHandler@ha /* 0x8033A7B4@ha */
/* 8033A674  3A E3 A7 B4 */	addi r23, r3, OSDefaultExceptionHandler@l /* 0x8033A7B4@l */
/* 8033A678  48 00 00 04 */	b lbl_8033A67C
lbl_8033A67C:
/* 8033A67C  48 00 00 14 */	b lbl_8033A690
lbl_8033A680:
/* 8033A680  7E 83 A3 78 */	mr r3, r20
/* 8033A684  7E E4 BB 78 */	mr r4, r23
/* 8033A688  48 00 00 61 */	bl __OSSetExceptionHandler
/* 8033A68C  3A 94 00 01 */	addi r20, r20, 1
lbl_8033A690:
/* 8033A690  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 8033A694  28 00 00 0F */	cmplwi r0, 0xf
/* 8033A698  41 80 FF E8 */	blt lbl_8033A680
/* 8033A69C  93 3E 00 00 */	stw r25, 0(r30)
/* 8033A6A0  38 7D 01 DC */	addi r3, r29, 0x1dc
/* 8033A6A4  4C C6 31 82 */	crclr 6
/* 8033A6A8  48 00 BD 8D */	bl DBPrintf
/* 8033A6AC  BA 81 00 08 */	lmw r20, 8(r1)
/* 8033A6B0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8033A6B4  38 21 00 38 */	addi r1, r1, 0x38
/* 8033A6B8  7C 08 03 A6 */	mtlr r0
/* 8033A6BC  4E 80 00 20 */	blr 

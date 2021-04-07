lbl_801401F8:
/* 801401F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801401FC  7C 08 02 A6 */	mflr r0
/* 80140200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140208  93 C1 00 08 */	stw r30, 8(r1)
/* 8014020C  7C 7E 1B 78 */	mr r30, r3
/* 80140210  38 7E 21 04 */	addi r3, r30, 0x2104
/* 80140214  48 01 EF 55 */	bl setAnimeHeap__14daPy_anmHeap_cFv
/* 80140218  7C 7F 1B 78 */	mr r31, r3
/* 8014021C  80 7E 06 44 */	lwz r3, 0x644(r30)
/* 80140220  38 80 00 03 */	li r4, 3
/* 80140224  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80140228  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014022C  3C A5 00 02 */	addis r5, r5, 2
/* 80140230  38 C0 00 80 */	li r6, 0x80
/* 80140234  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80140238  4B EF C0 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8014023C  7C 64 1B 78 */	mr r4, r3
/* 80140240  7F C3 F3 78 */	mr r3, r30
/* 80140244  3C A0 00 08 */	lis r5, 8
/* 80140248  38 C0 00 00 */	li r6, 0
/* 8014024C  4B F6 3B 31 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80140250  90 7E 06 78 */	stw r3, 0x678(r30)
/* 80140254  7F E3 FB 78 */	mr r3, r31
/* 80140258  4B EC EF 75 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8014025C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140260  83 C1 00 08 */	lwz r30, 8(r1)
/* 80140264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140268  7C 08 03 A6 */	mtlr r0
/* 8014026C  38 21 00 10 */	addi r1, r1, 0x10
/* 80140270  4E 80 00 20 */	blr 

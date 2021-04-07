lbl_801B65A8:
/* 801B65A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B65AC  7C 08 02 A6 */	mflr r0
/* 801B65B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B65B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B65B8  7C 7F 1B 78 */	mr r31, r3
/* 801B65BC  80 63 00 04 */	lwz r3, 4(r3)
/* 801B65C0  48 11 81 C5 */	bl getTotalFreeSize__7JKRHeapFv
/* 801B65C4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00025800@ha */
/* 801B65C8  38 63 58 00 */	addi r3, r3, 0x5800 /* 0x00025800@l */
/* 801B65CC  80 9F 00 04 */	lwz r4, 4(r31)
/* 801B65D0  38 A0 00 20 */	li r5, 0x20
/* 801B65D4  4B E5 89 E9 */	bl mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl
/* 801B65D8  90 7F 00 08 */	stw r3, 8(r31)
/* 801B65DC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801B65E0  4B E5 8B ED */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B65E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B65E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B65EC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801B65F0  28 03 00 00 */	cmplwi r3, 0
/* 801B65F4  41 82 00 08 */	beq lbl_801B65FC
/* 801B65F8  4B F8 A0 B1 */	bl initStatusWindow__9daAlink_cFv
lbl_801B65FC:
/* 801B65FC  48 00 0F 09 */	bl getMaskMdlVisible__17dMenu_Collect3D_cFv
/* 801B6600  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B6604  28 00 00 02 */	cmplwi r0, 2
/* 801B6608  40 82 00 10 */	bne lbl_801B6618
/* 801B660C  7F E3 FB 78 */	mr r3, r31
/* 801B6610  48 00 0B B5 */	bl createMirrorModel__17dMenu_Collect3D_cFv
/* 801B6614  48 00 00 28 */	b lbl_801B663C
lbl_801B6618:
/* 801B6618  28 00 00 01 */	cmplwi r0, 1
/* 801B661C  40 82 00 10 */	bne lbl_801B662C
/* 801B6620  7F E3 FB 78 */	mr r3, r31
/* 801B6624  48 00 09 F1 */	bl createMaskModel__17dMenu_Collect3D_cFv
/* 801B6628  48 00 00 14 */	b lbl_801B663C
lbl_801B662C:
/* 801B662C  38 00 00 00 */	li r0, 0
/* 801B6630  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801B6634  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801B6638  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_801B663C:
/* 801B663C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801B6640  48 11 A5 B5 */	bl adjustSize__12JKRSolidHeapFv
/* 801B6644  4B E5 8B B1 */	bl mDoExt_restoreCurrentHeap__Fv
/* 801B6648  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 801B664C  28 00 00 00 */	cmplwi r0, 0
/* 801B6650  41 82 00 1C */	beq lbl_801B666C
/* 801B6654  38 7F 00 28 */	addi r3, r31, 0x28
/* 801B6658  38 80 FF FF */	li r4, -1
/* 801B665C  38 A0 00 FF */	li r5, 0xff
/* 801B6660  4B FF 22 8D */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 801B6664  7F E3 FB 78 */	mr r3, r31
/* 801B6668  48 00 06 C9 */	bl set_mtx__17dMenu_Collect3D_cFv
lbl_801B666C:
/* 801B666C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801B6670  88 A3 02 58 */	lbz r5, 0x258(r3)
/* 801B6674  88 83 02 57 */	lbz r4, 0x257(r3)
/* 801B6678  7F E3 FB 78 */	mr r3, r31
/* 801B667C  48 00 00 4D */	bl _move__17dMenu_Collect3D_cFUcUc
/* 801B6680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B6684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B6688  7C 08 03 A6 */	mtlr r0
/* 801B668C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B6690  4E 80 00 20 */	blr 

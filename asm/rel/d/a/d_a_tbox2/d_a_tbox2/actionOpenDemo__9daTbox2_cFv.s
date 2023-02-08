lbl_80497958:
/* 80497958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049795C  7C 08 02 A6 */	mflr r0
/* 80497960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80497964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80497968  93 C1 00 08 */	stw r30, 8(r1)
/* 8049796C  7C 7E 1B 78 */	mr r30, r3
/* 80497970  A8 83 00 FC */	lha r4, 0xfc(r3)
/* 80497974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80497978  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049797C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80497980  4B BB 00 F9 */	bl endCheck__16dEvent_manager_cFs
/* 80497984  2C 03 00 00 */	cmpwi r3, 0
/* 80497988  41 82 00 64 */	beq lbl_804979EC
/* 8049798C  3B FF 4E C8 */	addi r31, r31, 0x4ec8
/* 80497990  7F E3 FB 78 */	mr r3, r31
/* 80497994  4B BA AA D5 */	bl reset__14dEvt_control_cFv
/* 80497998  3C 60 80 4A */	lis r3, lit_3763@ha /* 0x804981D0@ha */
/* 8049799C  C0 23 81 D0 */	lfs f1, lit_3763@l(r3)  /* 0x804981D0@l */
/* 804979A0  4B D1 10 A5 */	bl dKy_set_allcol_ratio__Ff
/* 804979A4  7F E3 FB 78 */	mr r3, r31
/* 804979A8  38 80 00 00 */	li r4, 0
/* 804979AC  4B BA BD 11 */	bl setPtI__14dEvt_control_cFPv
/* 804979B0  88 1E 07 18 */	lbz r0, 0x718(r30)
/* 804979B4  28 00 00 00 */	cmplwi r0, 0
/* 804979B8  41 82 00 28 */	beq lbl_804979E0
/* 804979BC  3C 60 80 4A */	lis r3, lit_3715@ha /* 0x804981C0@ha */
/* 804979C0  C0 03 81 C0 */	lfs f0, lit_3715@l(r3)  /* 0x804981C0@l */
/* 804979C4  80 7E 07 28 */	lwz r3, 0x728(r30)
/* 804979C8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804979CC  80 7E 07 28 */	lwz r3, 0x728(r30)
/* 804979D0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804979D4  7F C3 F3 78 */	mr r3, r30
/* 804979D8  48 00 00 35 */	bl init_actionOpenWait__9daTbox2_cFv
/* 804979DC  48 00 00 18 */	b lbl_804979F4
lbl_804979E0:
/* 804979E0  7F C3 F3 78 */	mr r3, r30
/* 804979E4  4B FF FE E5 */	bl init_actionWait__9daTbox2_cFv
/* 804979E8  48 00 00 0C */	b lbl_804979F4
lbl_804979EC:
/* 804979EC  7F C3 F3 78 */	mr r3, r30
/* 804979F0  4B FF F8 5D */	bl demoProc__9daTbox2_cFv
lbl_804979F4:
/* 804979F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804979F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804979FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80497A00  7C 08 03 A6 */	mtlr r0
/* 80497A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80497A08  4E 80 00 20 */	blr 

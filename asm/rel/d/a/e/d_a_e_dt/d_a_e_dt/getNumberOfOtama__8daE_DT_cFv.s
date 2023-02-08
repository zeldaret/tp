lbl_806AFD30:
/* 806AFD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AFD34  7C 08 02 A6 */	mflr r0
/* 806AFD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AFD3C  7C 64 1B 78 */	mr r4, r3
/* 806AFD40  38 C0 00 00 */	li r6, 0
/* 806AFD44  3C 60 80 6B */	lis r3, mDt_OtamaNum__6E_DT_n@ha /* 0x806B62DC@ha */
/* 806AFD48  90 C3 62 DC */	stw r6, mDt_OtamaNum__6E_DT_n@l(r3)  /* 0x806B62DC@l */
/* 806AFD4C  7C C3 33 78 */	mr r3, r6
/* 806AFD50  3C A0 80 6B */	lis r5, mDt_OtamaNo__6E_DT_n@ha /* 0x806B62E0@ha */
/* 806AFD54  38 A5 62 E0 */	addi r5, r5, mDt_OtamaNo__6E_DT_n@l /* 0x806B62E0@l */
/* 806AFD58  38 00 00 14 */	li r0, 0x14
/* 806AFD5C  7C 09 03 A6 */	mtctr r0
lbl_806AFD60:
/* 806AFD60  7C C5 19 2E */	stwx r6, r5, r3
/* 806AFD64  38 63 00 04 */	addi r3, r3, 4
/* 806AFD68  42 00 FF F8 */	bdnz lbl_806AFD60
/* 806AFD6C  3C 60 80 6B */	lis r3, s_otama_todo__FPvPv@ha /* 0x806AFC98@ha */
/* 806AFD70  38 63 FC 98 */	addi r3, r3, s_otama_todo__FPvPv@l /* 0x806AFC98@l */
/* 806AFD74  4B 97 15 C5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806AFD78  3C 60 80 6B */	lis r3, mDt_OtamaNum__6E_DT_n@ha /* 0x806B62DC@ha */
/* 806AFD7C  38 63 62 DC */	addi r3, r3, mDt_OtamaNum__6E_DT_n@l /* 0x806B62DC@l */
/* 806AFD80  80 63 00 00 */	lwz r3, 0(r3)
/* 806AFD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AFD88  7C 08 03 A6 */	mtlr r0
/* 806AFD8C  38 21 00 10 */	addi r1, r1, 0x10
/* 806AFD90  4E 80 00 20 */	blr 

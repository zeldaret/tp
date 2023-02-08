lbl_80C0780C:
/* 80C0780C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C07810  7C 08 02 A6 */	mflr r0
/* 80C07814  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C07818  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C0781C  7C 7F 1B 78 */	mr r31, r3
/* 80C07820  38 80 00 01 */	li r4, 1
/* 80C07824  4B FF B2 B1 */	bl setLookMode__11daObj_GrA_cFi
/* 80C07828  7F E3 FB 78 */	mr r3, r31
/* 80C0782C  38 80 00 00 */	li r4, 0
/* 80C07830  3C A0 80 C1 */	lis r5, lit_4333@ha /* 0x80C0FB98@ha */
/* 80C07834  C0 25 FB 98 */	lfs f1, lit_4333@l(r5)  /* 0x80C0FB98@l */
/* 80C07838  4B FF 9F 55 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0783C  7F E3 FB 78 */	mr r3, r31
/* 80C07840  38 80 00 0D */	li r4, 0xd
/* 80C07844  3C A0 80 C1 */	lis r5, lit_4333@ha /* 0x80C0FB98@ha */
/* 80C07848  C0 25 FB 98 */	lfs f1, lit_4333@l(r5)  /* 0x80C0FB98@l */
/* 80C0784C  4B FF 9F 61 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C07850  38 00 00 00 */	li r0, 0
/* 80C07854  90 1F 10 9C */	stw r0, 0x109c(r31)
/* 80C07858  3C 60 80 C1 */	lis r3, lit_7324@ha /* 0x80C10244@ha */
/* 80C0785C  38 83 02 44 */	addi r4, r3, lit_7324@l /* 0x80C10244@l */
/* 80C07860  80 64 00 00 */	lwz r3, 0(r4)
/* 80C07864  80 04 00 04 */	lwz r0, 4(r4)
/* 80C07868  90 61 00 08 */	stw r3, 8(r1)
/* 80C0786C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C07870  80 04 00 08 */	lwz r0, 8(r4)
/* 80C07874  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C07878  7F E3 FB 78 */	mr r3, r31
/* 80C0787C  38 81 00 08 */	addi r4, r1, 8
/* 80C07880  4B FF A0 75 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C07884  38 00 00 00 */	li r0, 0
/* 80C07888  B0 1F 20 54 */	sth r0, 0x2054(r31)
/* 80C0788C  90 1F 20 9C */	stw r0, 0x209c(r31)
/* 80C07890  38 60 00 01 */	li r3, 1
/* 80C07894  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C07898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0789C  7C 08 03 A6 */	mtlr r0
/* 80C078A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C078A4  4E 80 00 20 */	blr 

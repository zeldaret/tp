lbl_80B6CD1C:
/* 80B6CD1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6CD20  7C 08 02 A6 */	mflr r0
/* 80B6CD24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6CD28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6CD2C  7C 7F 1B 78 */	mr r31, r3
/* 80B6CD30  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 80B6CD34  2C 00 00 00 */	cmpwi r0, 0
/* 80B6CD38  41 82 00 5C */	beq lbl_80B6CD94
/* 80B6CD3C  38 C0 00 00 */	li r6, 0
/* 80B6CD40  38 60 00 00 */	li r3, 0
/* 80B6CD44  7C C4 33 78 */	mr r4, r6
/* 80B6CD48  3C A0 80 B7 */	lis r5, lit_4176@ha /* 0x80B6EA48@ha */
/* 80B6CD4C  C0 05 EA 48 */	lfs f0, lit_4176@l(r5)  /* 0x80B6EA48@l */
/* 80B6CD50  38 00 00 02 */	li r0, 2
/* 80B6CD54  7C 09 03 A6 */	mtctr r0
lbl_80B6CD58:
/* 80B6CD58  7C BF 22 14 */	add r5, r31, r4
/* 80B6CD5C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B6CD60  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B6CD64  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B6CD68  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B6CD6C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B6CD70  38 63 00 04 */	addi r3, r3, 4
/* 80B6CD74  38 84 00 06 */	addi r4, r4, 6
/* 80B6CD78  42 00 FF E0 */	bdnz lbl_80B6CD58
/* 80B6CD7C  38 00 00 00 */	li r0, 0
/* 80B6CD80  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B6CD84  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B6CD88  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B6CD8C  38 00 00 01 */	li r0, 1
/* 80B6CD90  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6CD94:
/* 80B6CD94  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B6CD98  4B 7F 52 81 */	bl __ptmf_test
/* 80B6CD9C  2C 03 00 00 */	cmpwi r3, 0
/* 80B6CDA0  41 82 00 54 */	beq lbl_80B6CDF4
/* 80B6CDA4  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B6CDA8  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80B6CDAC  4B 7F 52 9D */	bl __ptmf_cmpr
/* 80B6CDB0  2C 03 00 00 */	cmpwi r3, 0
/* 80B6CDB4  40 82 00 1C */	bne lbl_80B6CDD0
/* 80B6CDB8  7F E3 FB 78 */	mr r3, r31
/* 80B6CDBC  38 80 00 00 */	li r4, 0
/* 80B6CDC0  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B6CDC4  4B 7F 52 C1 */	bl __ptmf_scall
/* 80B6CDC8  60 00 00 00 */	nop 
/* 80B6CDCC  48 00 00 28 */	b lbl_80B6CDF4
lbl_80B6CDD0:
/* 80B6CDD0  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80B6CDD4  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80B6CDD8  90 61 00 08 */	stw r3, 8(r1)
/* 80B6CDDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B6CDE0  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80B6CDE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B6CDE8  7F E3 FB 78 */	mr r3, r31
/* 80B6CDEC  38 81 00 08 */	addi r4, r1, 8
/* 80B6CDF0  48 00 04 A1 */	bl setAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i
lbl_80B6CDF4:
/* 80B6CDF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B6CDF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6CDFC  7C 08 03 A6 */	mtlr r0
/* 80B6CE00  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6CE04  4E 80 00 20 */	blr 

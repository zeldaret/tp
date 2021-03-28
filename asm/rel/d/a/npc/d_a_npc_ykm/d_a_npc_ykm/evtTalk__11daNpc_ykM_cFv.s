lbl_80B55254:
/* 80B55254  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B55258  7C 08 02 A6 */	mflr r0
/* 80B5525C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B55260  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B55264  7C 7F 1B 78 */	mr r31, r3
/* 80B55268  3C 80 80 B6 */	lis r4, lit_5117@ha
/* 80B5526C  38 A4 E8 68 */	addi r5, r4, lit_5117@l
/* 80B55270  80 85 00 00 */	lwz r4, 0(r5)
/* 80B55274  80 05 00 04 */	lwz r0, 4(r5)
/* 80B55278  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B5527C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B55280  80 05 00 08 */	lwz r0, 8(r5)
/* 80B55284  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B55288  38 81 00 14 */	addi r4, r1, 0x14
/* 80B5528C  48 00 16 C9 */	bl chkAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i
/* 80B55290  2C 03 00 00 */	cmpwi r3, 0
/* 80B55294  41 82 00 1C */	beq lbl_80B552B0
/* 80B55298  7F E3 FB 78 */	mr r3, r31
/* 80B5529C  38 80 00 00 */	li r4, 0
/* 80B552A0  39 9F 14 F0 */	addi r12, r31, 0x14f0
/* 80B552A4  4B 80 CD E0 */	b __ptmf_scall
/* 80B552A8  60 00 00 00 */	nop 
/* 80B552AC  48 00 00 30 */	b lbl_80B552DC
lbl_80B552B0:
/* 80B552B0  3C 60 80 B6 */	lis r3, lit_5122@ha
/* 80B552B4  38 83 E8 74 */	addi r4, r3, lit_5122@l
/* 80B552B8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B552BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B552C0  90 61 00 08 */	stw r3, 8(r1)
/* 80B552C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B552C8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B552CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B552D0  7F E3 FB 78 */	mr r3, r31
/* 80B552D4  38 81 00 08 */	addi r4, r1, 8
/* 80B552D8  48 00 16 A9 */	bl setAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i
lbl_80B552DC:
/* 80B552DC  38 60 00 01 */	li r3, 1
/* 80B552E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B552E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B552E8  7C 08 03 A6 */	mtlr r0
/* 80B552EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B552F0  4E 80 00 20 */	blr 

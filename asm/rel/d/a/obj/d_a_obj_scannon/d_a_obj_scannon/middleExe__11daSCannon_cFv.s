lbl_80CC7970:
/* 80CC7970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7974  7C 08 02 A6 */	mflr r0
/* 80CC7978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC797C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC7980  7C 7F 1B 78 */	mr r31, r3
/* 80CC7984  88 03 06 16 */	lbz r0, 0x616(r3)
/* 80CC7988  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80CC798C  3C 60 80 CD */	lis r3, s_exeProc__11daSCannon_c@ha
/* 80CC7990  38 03 93 78 */	addi r0, r3, s_exeProc__11daSCannon_c@l
/* 80CC7994  7C 60 22 14 */	add r3, r0, r4
/* 80CC7998  4B 69 A6 80 */	b __ptmf_test
/* 80CC799C  2C 03 00 00 */	cmpwi r3, 0
/* 80CC79A0  41 82 00 24 */	beq lbl_80CC79C4
/* 80CC79A4  7F E3 FB 78 */	mr r3, r31
/* 80CC79A8  88 1F 06 16 */	lbz r0, 0x616(r31)
/* 80CC79AC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80CC79B0  3C 80 80 CD */	lis r4, s_exeProc__11daSCannon_c@ha
/* 80CC79B4  38 04 93 78 */	addi r0, r4, s_exeProc__11daSCannon_c@l
/* 80CC79B8  7D 80 2A 14 */	add r12, r0, r5
/* 80CC79BC  4B 69 A6 C8 */	b __ptmf_scall
/* 80CC79C0  60 00 00 00 */	nop 
lbl_80CC79C4:
/* 80CC79C4  7F E3 FB 78 */	mr r3, r31
/* 80CC79C8  4B FF FB 41 */	bl setModelMtx__11daSCannon_cFv
/* 80CC79CC  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80CC79D0  2C 00 00 03 */	cmpwi r0, 3
/* 80CC79D4  41 82 00 0C */	beq lbl_80CC79E0
/* 80CC79D8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CC79DC  40 82 00 10 */	bne lbl_80CC79EC
lbl_80CC79E0:
/* 80CC79E0  38 7F 05 84 */	addi r3, r31, 0x584
/* 80CC79E4  4B 34 5A 44 */	b play__14mDoExt_baseAnmFv
/* 80CC79E8  48 00 00 14 */	b lbl_80CC79FC
lbl_80CC79EC:
/* 80CC79EC  2C 00 00 01 */	cmpwi r0, 1
/* 80CC79F0  40 82 00 0C */	bne lbl_80CC79FC
/* 80CC79F4  7F E3 FB 78 */	mr r3, r31
/* 80CC79F8  4B FF FB 81 */	bl setPtlModelMtx__11daSCannon_cFv
lbl_80CC79FC:
/* 80CC79FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC7A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC7A04  7C 08 03 A6 */	mtlr r0
/* 80CC7A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7A0C  4E 80 00 20 */	blr 

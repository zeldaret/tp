lbl_80B475EC:
/* 80B475EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B475F0  7C 08 02 A6 */	mflr r0
/* 80B475F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B475F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B475FC  7C 7F 1B 78 */	mr r31, r3
/* 80B47600  88 03 0D 20 */	lbz r0, 0xd20(r3)
/* 80B47604  2C 00 00 00 */	cmpwi r0, 0
/* 80B47608  41 82 00 5C */	beq lbl_80B47664
/* 80B4760C  38 C0 00 00 */	li r6, 0
/* 80B47610  38 60 00 00 */	li r3, 0
/* 80B47614  7C C4 33 78 */	mr r4, r6
/* 80B47618  3C A0 80 B5 */	lis r5, lit_4194@ha /* 0x80B49754@ha */
/* 80B4761C  C0 05 97 54 */	lfs f0, lit_4194@l(r5)  /* 0x80B49754@l */
/* 80B47620  38 00 00 02 */	li r0, 2
/* 80B47624  7C 09 03 A6 */	mtctr r0
lbl_80B47628:
/* 80B47628  7C BF 22 14 */	add r5, r31, r4
/* 80B4762C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B47630  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B47634  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B47638  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B4763C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B47640  38 63 00 04 */	addi r3, r3, 4
/* 80B47644  38 84 00 06 */	addi r4, r4, 6
/* 80B47648  42 00 FF E0 */	bdnz lbl_80B47628
/* 80B4764C  38 00 00 00 */	li r0, 0
/* 80B47650  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B47654  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B47658  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B4765C  38 00 00 01 */	li r0, 1
/* 80B47660  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B47664:
/* 80B47664  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B47668  4B 81 A9 B1 */	bl __ptmf_test
/* 80B4766C  2C 03 00 00 */	cmpwi r3, 0
/* 80B47670  41 82 00 54 */	beq lbl_80B476C4
/* 80B47674  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B47678  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80B4767C  4B 81 A9 CD */	bl __ptmf_cmpr
/* 80B47680  2C 03 00 00 */	cmpwi r3, 0
/* 80B47684  40 82 00 1C */	bne lbl_80B476A0
/* 80B47688  7F E3 FB 78 */	mr r3, r31
/* 80B4768C  38 80 00 00 */	li r4, 0
/* 80B47690  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B47694  4B 81 A9 F1 */	bl __ptmf_scall
/* 80B47698  60 00 00 00 */	nop 
/* 80B4769C  48 00 00 28 */	b lbl_80B476C4
lbl_80B476A0:
/* 80B476A0  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80B476A4  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80B476A8  90 61 00 08 */	stw r3, 8(r1)
/* 80B476AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B476B0  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80B476B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B476B8  7F E3 FB 78 */	mr r3, r31
/* 80B476BC  38 81 00 08 */	addi r4, r1, 8
/* 80B476C0  48 00 05 11 */	bl setAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i
lbl_80B476C4:
/* 80B476C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B476C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B476CC  7C 08 03 A6 */	mtlr r0
/* 80B476D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B476D4  4E 80 00 20 */	blr 

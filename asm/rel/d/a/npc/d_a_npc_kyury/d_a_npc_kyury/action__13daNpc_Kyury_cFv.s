lbl_80A6122C:
/* 80A6122C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A61230  7C 08 02 A6 */	mflr r0
/* 80A61234  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A61238  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A6123C  7C 7F 1B 78 */	mr r31, r3
/* 80A61240  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80A61244  38 A0 FF FF */	li r5, -1
/* 80A61248  4B 6E 97 F9 */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80A6124C  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80A61250  2C 00 00 00 */	cmpwi r0, 0
/* 80A61254  41 82 00 5C */	beq lbl_80A612B0
/* 80A61258  38 C0 00 00 */	li r6, 0
/* 80A6125C  38 60 00 00 */	li r3, 0
/* 80A61260  7C C4 33 78 */	mr r4, r6
/* 80A61264  3C A0 80 A6 */	lis r5, lit_4205@ha /* 0x80A6394C@ha */
/* 80A61268  C0 05 39 4C */	lfs f0, lit_4205@l(r5)  /* 0x80A6394C@l */
/* 80A6126C  38 00 00 02 */	li r0, 2
/* 80A61270  7C 09 03 A6 */	mtctr r0
lbl_80A61274:
/* 80A61274  7C BF 22 14 */	add r5, r31, r4
/* 80A61278  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80A6127C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80A61280  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80A61284  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A61288  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A6128C  38 63 00 04 */	addi r3, r3, 4
/* 80A61290  38 84 00 06 */	addi r4, r4, 6
/* 80A61294  42 00 FF E0 */	bdnz lbl_80A61274
/* 80A61298  38 00 00 00 */	li r0, 0
/* 80A6129C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A612A0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A612A4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A612A8  38 00 00 01 */	li r0, 1
/* 80A612AC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A612B0:
/* 80A612B0  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80A612B4  4B 90 0D 65 */	bl __ptmf_test
/* 80A612B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A612BC  41 82 00 54 */	beq lbl_80A61310
/* 80A612C0  38 7F 0F C8 */	addi r3, r31, 0xfc8
/* 80A612C4  38 9F 0F BC */	addi r4, r31, 0xfbc
/* 80A612C8  4B 90 0D 81 */	bl __ptmf_cmpr
/* 80A612CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A612D0  40 82 00 1C */	bne lbl_80A612EC
/* 80A612D4  7F E3 FB 78 */	mr r3, r31
/* 80A612D8  38 80 00 00 */	li r4, 0
/* 80A612DC  39 9F 0F C8 */	addi r12, r31, 0xfc8
/* 80A612E0  4B 90 0D A5 */	bl __ptmf_scall
/* 80A612E4  60 00 00 00 */	nop 
/* 80A612E8  48 00 00 28 */	b lbl_80A61310
lbl_80A612EC:
/* 80A612EC  80 7F 0F BC */	lwz r3, 0xfbc(r31)
/* 80A612F0  80 1F 0F C0 */	lwz r0, 0xfc0(r31)
/* 80A612F4  90 61 00 08 */	stw r3, 8(r1)
/* 80A612F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A612FC  80 1F 0F C4 */	lwz r0, 0xfc4(r31)
/* 80A61300  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A61304  7F E3 FB 78 */	mr r3, r31
/* 80A61308  38 81 00 08 */	addi r4, r1, 8
/* 80A6130C  48 00 07 21 */	bl setAction__13daNpc_Kyury_cFM13daNpc_Kyury_cFPCvPvPv_i
lbl_80A61310:
/* 80A61310  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A61314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A61318  7C 08 03 A6 */	mtlr r0
/* 80A6131C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A61320  4E 80 00 20 */	blr 

lbl_80AA9F60:
/* 80AA9F60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA9F64  7C 08 02 A6 */	mflr r0
/* 80AA9F68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA9F6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AA9F70  7C 7F 1B 78 */	mr r31, r3
/* 80AA9F74  38 9F 0E 50 */	addi r4, r31, 0xe50
/* 80AA9F78  38 A0 FF FF */	li r5, -1
/* 80AA9F7C  4B 6A 0A C4 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80AA9F80  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80AA9F84  2C 00 00 00 */	cmpwi r0, 0
/* 80AA9F88  41 82 00 5C */	beq lbl_80AA9FE4
/* 80AA9F8C  38 C0 00 00 */	li r6, 0
/* 80AA9F90  38 60 00 00 */	li r3, 0
/* 80AA9F94  7C C4 33 78 */	mr r4, r6
/* 80AA9F98  3C A0 80 AB */	lis r5, lit_4070@ha
/* 80AA9F9C  C0 05 D2 A0 */	lfs f0, lit_4070@l(r5)
/* 80AA9FA0  38 00 00 02 */	li r0, 2
/* 80AA9FA4  7C 09 03 A6 */	mtctr r0
lbl_80AA9FA8:
/* 80AA9FA8  7C BF 22 14 */	add r5, r31, r4
/* 80AA9FAC  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80AA9FB0  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80AA9FB4  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80AA9FB8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AA9FBC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AA9FC0  38 63 00 04 */	addi r3, r3, 4
/* 80AA9FC4  38 84 00 06 */	addi r4, r4, 6
/* 80AA9FC8  42 00 FF E0 */	bdnz lbl_80AA9FA8
/* 80AA9FCC  38 00 00 00 */	li r0, 0
/* 80AA9FD0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AA9FD4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AA9FD8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AA9FDC  38 00 00 01 */	li r0, 1
/* 80AA9FE0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AA9FE4:
/* 80AA9FE4  38 7F 0F D8 */	addi r3, r31, 0xfd8
/* 80AA9FE8  4B 8B 80 30 */	b __ptmf_test
/* 80AA9FEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AA9FF0  41 82 00 54 */	beq lbl_80AAA044
/* 80AA9FF4  38 7F 0F E4 */	addi r3, r31, 0xfe4
/* 80AA9FF8  38 9F 0F D8 */	addi r4, r31, 0xfd8
/* 80AA9FFC  4B 8B 80 4C */	b __ptmf_cmpr
/* 80AAA000  2C 03 00 00 */	cmpwi r3, 0
/* 80AAA004  40 82 00 1C */	bne lbl_80AAA020
/* 80AAA008  7F E3 FB 78 */	mr r3, r31
/* 80AAA00C  38 80 00 00 */	li r4, 0
/* 80AAA010  39 9F 0F E4 */	addi r12, r31, 0xfe4
/* 80AAA014  4B 8B 80 70 */	b __ptmf_scall
/* 80AAA018  60 00 00 00 */	nop 
/* 80AAA01C  48 00 00 28 */	b lbl_80AAA044
lbl_80AAA020:
/* 80AAA020  80 7F 0F D8 */	lwz r3, 0xfd8(r31)
/* 80AAA024  80 1F 0F DC */	lwz r0, 0xfdc(r31)
/* 80AAA028  90 61 00 08 */	stw r3, 8(r1)
/* 80AAA02C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AAA030  80 1F 0F E0 */	lwz r0, 0xfe0(r31)
/* 80AAA034  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AAA038  7F E3 FB 78 */	mr r3, r31
/* 80AAA03C  38 81 00 08 */	addi r4, r1, 8
/* 80AAA040  48 00 09 D1 */	bl setAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i
lbl_80AAA044:
/* 80AAA044  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AAA048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAA04C  7C 08 03 A6 */	mtlr r0
/* 80AAA050  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAA054  4E 80 00 20 */	blr 

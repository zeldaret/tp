lbl_80B90C34:
/* 80B90C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B90C38  7C 08 02 A6 */	mflr r0
/* 80B90C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B90C40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B90C44  7C 7F 1B 78 */	mr r31, r3
/* 80B90C48  2C 04 00 00 */	cmpwi r4, 0
/* 80B90C4C  41 82 00 5C */	beq lbl_80B90CA8
/* 80B90C50  38 9F 0C 94 */	addi r4, r31, 0xc94
/* 80B90C54  38 A0 00 01 */	li r5, 1
/* 80B90C58  38 C0 00 00 */	li r6, 0
/* 80B90C5C  4B 5C 29 1C */	b hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 80B90C60  2C 03 00 00 */	cmpwi r3, 0
/* 80B90C64  41 82 00 44 */	beq lbl_80B90CA8
/* 80B90C68  7F E3 FB 78 */	mr r3, r31
/* 80B90C6C  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 80B90C70  2C 00 00 08 */	cmpwi r0, 8
/* 80B90C74  40 82 00 0C */	bne lbl_80B90C80
/* 80B90C78  38 80 00 14 */	li r4, 0x14
/* 80B90C7C  48 00 00 10 */	b lbl_80B90C8C
lbl_80B90C80:
/* 80B90C80  3C 80 80 B9 */	lis r4, m__17daNpc_zrC_Param_c@ha
/* 80B90C84  38 84 31 FC */	addi r4, r4, m__17daNpc_zrC_Param_c@l
/* 80B90C88  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_80B90C8C:
/* 80B90C8C  38 A0 00 11 */	li r5, 0x11
/* 80B90C90  38 C0 00 00 */	li r6, 0
/* 80B90C94  4B 5C 29 C4 */	b setDamage__8daNpcF_cFiii
/* 80B90C98  7F E3 FB 78 */	mr r3, r31
/* 80B90C9C  38 80 00 01 */	li r4, 1
/* 80B90CA0  48 00 04 9D */	bl setLookMode__11daNpc_zrC_cFi
/* 80B90CA4  48 00 00 28 */	b lbl_80B90CCC
lbl_80B90CA8:
/* 80B90CA8  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80B90CAC  28 00 00 00 */	cmplwi r0, 0
/* 80B90CB0  41 82 00 1C */	beq lbl_80B90CCC
/* 80B90CB4  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80B90CB8  2C 00 00 00 */	cmpwi r0, 0
/* 80B90CBC  40 82 00 10 */	bne lbl_80B90CCC
/* 80B90CC0  38 00 00 00 */	li r0, 0
/* 80B90CC4  B0 1F 0E 26 */	sth r0, 0xe26(r31)
/* 80B90CC8  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_80B90CCC:
/* 80B90CCC  38 00 00 00 */	li r0, 0
/* 80B90CD0  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80B90CD4  38 7F 0D D0 */	addi r3, r31, 0xdd0
/* 80B90CD8  4B 7D 13 40 */	b __ptmf_test
/* 80B90CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B90CE0  41 82 00 54 */	beq lbl_80B90D34
/* 80B90CE4  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80B90CE8  38 9F 0D D0 */	addi r4, r31, 0xdd0
/* 80B90CEC  4B 7D 13 5C */	b __ptmf_cmpr
/* 80B90CF0  2C 03 00 00 */	cmpwi r3, 0
/* 80B90CF4  40 82 00 1C */	bne lbl_80B90D10
/* 80B90CF8  7F E3 FB 78 */	mr r3, r31
/* 80B90CFC  38 80 00 00 */	li r4, 0
/* 80B90D00  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80B90D04  4B 7D 13 80 */	b __ptmf_scall
/* 80B90D08  60 00 00 00 */	nop 
/* 80B90D0C  48 00 00 28 */	b lbl_80B90D34
lbl_80B90D10:
/* 80B90D10  80 7F 0D D0 */	lwz r3, 0xdd0(r31)
/* 80B90D14  80 1F 0D D4 */	lwz r0, 0xdd4(r31)
/* 80B90D18  90 61 00 08 */	stw r3, 8(r1)
/* 80B90D1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B90D20  80 1F 0D D8 */	lwz r0, 0xdd8(r31)
/* 80B90D24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B90D28  7F E3 FB 78 */	mr r3, r31
/* 80B90D2C  38 81 00 08 */	addi r4, r1, 8
/* 80B90D30  4B FF FD 69 */	bl setAction__11daNpc_zrC_cFM11daNpc_zrC_cFPCvPvPv_i
lbl_80B90D34:
/* 80B90D34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B90D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B90D3C  7C 08 03 A6 */	mtlr r0
/* 80B90D40  38 21 00 20 */	addi r1, r1, 0x20
/* 80B90D44  4E 80 00 20 */	blr 

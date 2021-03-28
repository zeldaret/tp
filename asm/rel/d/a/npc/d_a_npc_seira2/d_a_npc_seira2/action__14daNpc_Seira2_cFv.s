lbl_80AD1ED4:
/* 80AD1ED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD1ED8  7C 08 02 A6 */	mflr r0
/* 80AD1EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD1EE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD1EE4  7C 7F 1B 78 */	mr r31, r3
/* 80AD1EE8  88 03 10 ED */	lbz r0, 0x10ed(r3)
/* 80AD1EEC  28 00 00 00 */	cmplwi r0, 0
/* 80AD1EF0  40 82 00 68 */	bne lbl_80AD1F58
/* 80AD1EF4  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80AD1EF8  38 A0 FF FF */	li r5, -1
/* 80AD1EFC  4B 67 8B 44 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80AD1F00  7C 65 1B 79 */	or. r5, r3, r3
/* 80AD1F04  41 82 00 54 */	beq lbl_80AD1F58
/* 80AD1F08  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AD1F0C  7F E4 FB 78 */	mr r4, r31
/* 80AD1F10  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80AD1F14  4B 67 5E B8 */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80AD1F18  7F E3 FB 78 */	mr r3, r31
/* 80AD1F1C  38 80 00 00 */	li r4, 0
/* 80AD1F20  38 A0 00 0D */	li r5, 0xd
/* 80AD1F24  38 C0 00 0D */	li r6, 0xd
/* 80AD1F28  4B 67 8B A8 */	b setDamage__8daNpcT_cFiii
/* 80AD1F2C  38 80 00 00 */	li r4, 0
/* 80AD1F30  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD1F34  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD1F38  38 00 00 02 */	li r0, 2
/* 80AD1F3C  7C 09 03 A6 */	mtctr r0
lbl_80AD1F40:
/* 80AD1F40  38 04 0D 14 */	addi r0, r4, 0xd14
/* 80AD1F44  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AD1F48  38 84 00 04 */	addi r4, r4, 4
/* 80AD1F4C  42 00 FF F4 */	bdnz lbl_80AD1F40
/* 80AD1F50  38 00 00 00 */	li r0, 0
/* 80AD1F54  90 1F 0D B8 */	stw r0, 0xdb8(r31)
lbl_80AD1F58:
/* 80AD1F58  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80AD1F5C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD1F60  41 82 00 5C */	beq lbl_80AD1FBC
/* 80AD1F64  38 C0 00 00 */	li r6, 0
/* 80AD1F68  38 60 00 00 */	li r3, 0
/* 80AD1F6C  38 80 00 00 */	li r4, 0
/* 80AD1F70  3C A0 80 AD */	lis r5, lit_4055@ha
/* 80AD1F74  C0 05 4B 08 */	lfs f0, lit_4055@l(r5)
/* 80AD1F78  38 00 00 02 */	li r0, 2
/* 80AD1F7C  7C 09 03 A6 */	mtctr r0
lbl_80AD1F80:
/* 80AD1F80  7C BF 22 14 */	add r5, r31, r4
/* 80AD1F84  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80AD1F88  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80AD1F8C  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80AD1F90  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AD1F94  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AD1F98  38 63 00 04 */	addi r3, r3, 4
/* 80AD1F9C  38 84 00 06 */	addi r4, r4, 6
/* 80AD1FA0  42 00 FF E0 */	bdnz lbl_80AD1F80
/* 80AD1FA4  38 00 00 00 */	li r0, 0
/* 80AD1FA8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AD1FAC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AD1FB0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AD1FB4  38 00 00 01 */	li r0, 1
/* 80AD1FB8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD1FBC:
/* 80AD1FBC  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80AD1FC0  4B 89 00 58 */	b __ptmf_test
/* 80AD1FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1FC8  41 82 00 54 */	beq lbl_80AD201C
/* 80AD1FCC  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 80AD1FD0  38 9F 10 CC */	addi r4, r31, 0x10cc
/* 80AD1FD4  4B 89 00 74 */	b __ptmf_cmpr
/* 80AD1FD8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1FDC  40 82 00 1C */	bne lbl_80AD1FF8
/* 80AD1FE0  7F E3 FB 78 */	mr r3, r31
/* 80AD1FE4  38 80 00 00 */	li r4, 0
/* 80AD1FE8  39 9F 10 D8 */	addi r12, r31, 0x10d8
/* 80AD1FEC  4B 89 00 98 */	b __ptmf_scall
/* 80AD1FF0  60 00 00 00 */	nop 
/* 80AD1FF4  48 00 00 28 */	b lbl_80AD201C
lbl_80AD1FF8:
/* 80AD1FF8  80 7F 10 CC */	lwz r3, 0x10cc(r31)
/* 80AD1FFC  80 1F 10 D0 */	lwz r0, 0x10d0(r31)
/* 80AD2000  90 61 00 08 */	stw r3, 8(r1)
/* 80AD2004  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD2008  80 1F 10 D4 */	lwz r0, 0x10d4(r31)
/* 80AD200C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD2010  7F E3 FB 78 */	mr r3, r31
/* 80AD2014  38 81 00 08 */	addi r4, r1, 8
/* 80AD2018  48 00 08 85 */	bl setAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i
lbl_80AD201C:
/* 80AD201C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD2020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD2024  7C 08 03 A6 */	mtlr r0
/* 80AD2028  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD202C  4E 80 00 20 */	blr 

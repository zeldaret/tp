lbl_80B73044:
/* 80B73044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B73048  7C 08 02 A6 */	mflr r0
/* 80B7304C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B73050  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B73054  7C 7F 1B 78 */	mr r31, r3
/* 80B73058  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B7305C  38 A0 FF FF */	li r5, -1
/* 80B73060  4B 5D 79 E0 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80B73064  7C 65 1B 79 */	or. r5, r3, r3
/* 80B73068  41 82 00 54 */	beq lbl_80B730BC
/* 80B7306C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B73070  7F E4 FB 78 */	mr r4, r31
/* 80B73074  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80B73078  4B 5D 4D 54 */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80B7307C  7F E3 FB 78 */	mr r3, r31
/* 80B73080  38 80 00 00 */	li r4, 0
/* 80B73084  38 A0 00 01 */	li r5, 1
/* 80B73088  38 C0 00 00 */	li r6, 0
/* 80B7308C  4B 5D 7A 44 */	b setDamage__8daNpcT_cFiii
/* 80B73090  38 80 00 00 */	li r4, 0
/* 80B73094  3C 60 80 B7 */	lis r3, lit_4182@ha
/* 80B73098  C0 03 4C F8 */	lfs f0, lit_4182@l(r3)
/* 80B7309C  38 00 00 02 */	li r0, 2
/* 80B730A0  7C 09 03 A6 */	mtctr r0
lbl_80B730A4:
/* 80B730A4  38 04 0D 14 */	addi r0, r4, 0xd14
/* 80B730A8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B730AC  38 84 00 04 */	addi r4, r4, 4
/* 80B730B0  42 00 FF F4 */	bdnz lbl_80B730A4
/* 80B730B4  38 00 00 00 */	li r0, 0
/* 80B730B8  90 1F 0D B8 */	stw r0, 0xdb8(r31)
lbl_80B730BC:
/* 80B730BC  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80B730C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B730C4  41 82 00 5C */	beq lbl_80B73120
/* 80B730C8  38 C0 00 00 */	li r6, 0
/* 80B730CC  38 60 00 00 */	li r3, 0
/* 80B730D0  38 80 00 00 */	li r4, 0
/* 80B730D4  3C A0 80 B7 */	lis r5, lit_4182@ha
/* 80B730D8  C0 05 4C F8 */	lfs f0, lit_4182@l(r5)
/* 80B730DC  38 00 00 02 */	li r0, 2
/* 80B730E0  7C 09 03 A6 */	mtctr r0
lbl_80B730E4:
/* 80B730E4  7C BF 22 14 */	add r5, r31, r4
/* 80B730E8  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B730EC  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B730F0  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B730F4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B730F8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B730FC  38 63 00 04 */	addi r3, r3, 4
/* 80B73100  38 84 00 06 */	addi r4, r4, 6
/* 80B73104  42 00 FF E0 */	bdnz lbl_80B730E4
/* 80B73108  38 00 00 00 */	li r0, 0
/* 80B7310C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B73110  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B73114  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B73118  38 00 00 01 */	li r0, 1
/* 80B7311C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B73120:
/* 80B73120  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B73124  4B 7E EE F4 */	b __ptmf_test
/* 80B73128  2C 03 00 00 */	cmpwi r3, 0
/* 80B7312C  41 82 00 54 */	beq lbl_80B73180
/* 80B73130  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B73134  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80B73138  4B 7E EF 10 */	b __ptmf_cmpr
/* 80B7313C  2C 03 00 00 */	cmpwi r3, 0
/* 80B73140  40 82 00 1C */	bne lbl_80B7315C
/* 80B73144  7F E3 FB 78 */	mr r3, r31
/* 80B73148  38 80 00 00 */	li r4, 0
/* 80B7314C  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B73150  4B 7E EF 34 */	b __ptmf_scall
/* 80B73154  60 00 00 00 */	nop 
/* 80B73158  48 00 00 28 */	b lbl_80B73180
lbl_80B7315C:
/* 80B7315C  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80B73160  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80B73164  90 61 00 08 */	stw r3, 8(r1)
/* 80B73168  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B7316C  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80B73170  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B73174  7F E3 FB 78 */	mr r3, r31
/* 80B73178  38 81 00 08 */	addi r4, r1, 8
/* 80B7317C  48 00 04 5D */	bl setAction__13daNpc_ZelRo_cFM13daNpc_ZelRo_cFPCvPvPv_i
lbl_80B73180:
/* 80B73180  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B73184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B73188  7C 08 03 A6 */	mtlr r0
/* 80B7318C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B73190  4E 80 00 20 */	blr 

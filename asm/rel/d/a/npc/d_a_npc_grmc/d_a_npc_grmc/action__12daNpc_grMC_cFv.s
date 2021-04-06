lbl_809D823C:
/* 809D823C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D8240  7C 08 02 A6 */	mflr r0
/* 809D8244  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D8248  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D824C  7C 7F 1B 78 */	mr r31, r3
/* 809D8250  88 03 10 DD */	lbz r0, 0x10dd(r3)
/* 809D8254  28 00 00 00 */	cmplwi r0, 0
/* 809D8258  40 82 00 68 */	bne lbl_809D82C0
/* 809D825C  38 9F 0F 80 */	addi r4, r31, 0xf80
/* 809D8260  38 A0 FF FF */	li r5, -1
/* 809D8264  4B 77 27 DD */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 809D8268  7C 65 1B 79 */	or. r5, r3, r3
/* 809D826C  41 82 00 54 */	beq lbl_809D82C0
/* 809D8270  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809D8274  7F E4 FB 78 */	mr r4, r31
/* 809D8278  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 809D827C  4B 76 FB 51 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 809D8280  7F E3 FB 78 */	mr r3, r31
/* 809D8284  38 80 00 00 */	li r4, 0
/* 809D8288  38 A0 00 0D */	li r5, 0xd
/* 809D828C  38 C0 00 00 */	li r6, 0
/* 809D8290  4B 77 28 41 */	bl setDamage__8daNpcT_cFiii
/* 809D8294  38 80 00 00 */	li r4, 0
/* 809D8298  3C 60 80 9E */	lis r3, lit_4008@ha /* 0x809D9E18@ha */
/* 809D829C  C0 03 9E 18 */	lfs f0, lit_4008@l(r3)  /* 0x809D9E18@l */
/* 809D82A0  38 00 00 02 */	li r0, 2
/* 809D82A4  7C 09 03 A6 */	mtctr r0
lbl_809D82A8:
/* 809D82A8  38 04 0D 14 */	addi r0, r4, 0xd14
/* 809D82AC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809D82B0  38 84 00 04 */	addi r4, r4, 4
/* 809D82B4  42 00 FF F4 */	bdnz lbl_809D82A8
/* 809D82B8  38 00 00 00 */	li r0, 0
/* 809D82BC  90 1F 0D B8 */	stw r0, 0xdb8(r31)
lbl_809D82C0:
/* 809D82C0  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 809D82C4  2C 00 00 00 */	cmpwi r0, 0
/* 809D82C8  41 82 00 5C */	beq lbl_809D8324
/* 809D82CC  38 C0 00 00 */	li r6, 0
/* 809D82D0  38 60 00 00 */	li r3, 0
/* 809D82D4  38 80 00 00 */	li r4, 0
/* 809D82D8  3C A0 80 9E */	lis r5, lit_4008@ha /* 0x809D9E18@ha */
/* 809D82DC  C0 05 9E 18 */	lfs f0, lit_4008@l(r5)  /* 0x809D9E18@l */
/* 809D82E0  38 00 00 02 */	li r0, 2
/* 809D82E4  7C 09 03 A6 */	mtctr r0
lbl_809D82E8:
/* 809D82E8  7C BF 22 14 */	add r5, r31, r4
/* 809D82EC  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 809D82F0  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 809D82F4  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 809D82F8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809D82FC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809D8300  38 63 00 04 */	addi r3, r3, 4
/* 809D8304  38 84 00 06 */	addi r4, r4, 6
/* 809D8308  42 00 FF E0 */	bdnz lbl_809D82E8
/* 809D830C  38 00 00 00 */	li r0, 0
/* 809D8310  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809D8314  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809D8318  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809D831C  38 00 00 01 */	li r0, 1
/* 809D8320  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809D8324:
/* 809D8324  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 809D8328  4B 98 9C F1 */	bl __ptmf_test
/* 809D832C  2C 03 00 00 */	cmpwi r3, 0
/* 809D8330  41 82 00 54 */	beq lbl_809D8384
/* 809D8334  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 809D8338  38 9F 10 C0 */	addi r4, r31, 0x10c0
/* 809D833C  4B 98 9D 0D */	bl __ptmf_cmpr
/* 809D8340  2C 03 00 00 */	cmpwi r3, 0
/* 809D8344  40 82 00 1C */	bne lbl_809D8360
/* 809D8348  7F E3 FB 78 */	mr r3, r31
/* 809D834C  38 80 00 00 */	li r4, 0
/* 809D8350  39 9F 10 CC */	addi r12, r31, 0x10cc
/* 809D8354  4B 98 9D 31 */	bl __ptmf_scall
/* 809D8358  60 00 00 00 */	nop 
/* 809D835C  48 00 00 28 */	b lbl_809D8384
lbl_809D8360:
/* 809D8360  80 7F 10 C0 */	lwz r3, 0x10c0(r31)
/* 809D8364  80 1F 10 C4 */	lwz r0, 0x10c4(r31)
/* 809D8368  90 61 00 08 */	stw r3, 8(r1)
/* 809D836C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D8370  80 1F 10 C8 */	lwz r0, 0x10c8(r31)
/* 809D8374  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D8378  7F E3 FB 78 */	mr r3, r31
/* 809D837C  38 81 00 08 */	addi r4, r1, 8
/* 809D8380  48 00 04 FD */	bl setAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i
lbl_809D8384:
/* 809D8384  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D8388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D838C  7C 08 03 A6 */	mtlr r0
/* 809D8390  38 21 00 20 */	addi r1, r1, 0x20
/* 809D8394  4E 80 00 20 */	blr 

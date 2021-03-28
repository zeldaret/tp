lbl_80A94078:
/* 80A94078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9407C  7C 08 02 A6 */	mflr r0
/* 80A94080  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A94084  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A94088  7C 7F 1B 78 */	mr r31, r3
/* 80A9408C  38 A0 00 00 */	li r5, 0
/* 80A94090  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A94094  28 00 00 00 */	cmplwi r0, 0
/* 80A94098  40 82 00 14 */	bne lbl_80A940AC
/* 80A9409C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A940A0  38 A0 FF FF */	li r5, -1
/* 80A940A4  4B 6B 69 9C */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80A940A8  7C 65 1B 78 */	mr r5, r3
lbl_80A940AC:
/* 80A940AC  28 05 00 00 */	cmplwi r5, 0
/* 80A940B0  41 82 00 98 */	beq lbl_80A94148
/* 80A940B4  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A940B8  7F E4 FB 78 */	mr r4, r31
/* 80A940BC  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80A940C0  4B 6B 3D 0C */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80A940C4  7F E3 FB 78 */	mr r3, r31
/* 80A940C8  38 80 00 00 */	li r4, 0
/* 80A940CC  38 A0 00 0C */	li r5, 0xc
/* 80A940D0  38 C0 00 12 */	li r6, 0x12
/* 80A940D4  4B 6B 69 FC */	b setDamage__8daNpcT_cFiii
/* 80A940D8  38 80 00 00 */	li r4, 0
/* 80A940DC  3C 60 80 A9 */	lis r3, lit_4347@ha
/* 80A940E0  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)
/* 80A940E4  38 00 00 02 */	li r0, 2
/* 80A940E8  7C 09 03 A6 */	mtctr r0
lbl_80A940EC:
/* 80A940EC  38 04 0D 14 */	addi r0, r4, 0xd14
/* 80A940F0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A940F4  38 84 00 04 */	addi r4, r4, 4
/* 80A940F8  42 00 FF F4 */	bdnz lbl_80A940EC
/* 80A940FC  38 00 00 00 */	li r0, 0
/* 80A94100  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80A94104  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A94108  2C 00 00 00 */	cmpwi r0, 0
/* 80A9410C  41 82 00 28 */	beq lbl_80A94134
/* 80A94110  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A94114  4B 6B 15 E8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A94118  38 00 00 00 */	li r0, 0
/* 80A9411C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A94120  3C 60 80 A9 */	lis r3, lit_4347@ha
/* 80A94124  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)
/* 80A94128  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A9412C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A94130  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A94134:
/* 80A94134  38 00 00 00 */	li r0, 0
/* 80A94138  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80A9413C  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80A94140  38 00 00 01 */	li r0, 1
/* 80A94144  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A94148:
/* 80A94148  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80A9414C  2C 00 00 00 */	cmpwi r0, 0
/* 80A94150  41 82 00 5C */	beq lbl_80A941AC
/* 80A94154  38 C0 00 00 */	li r6, 0
/* 80A94158  38 60 00 00 */	li r3, 0
/* 80A9415C  38 80 00 00 */	li r4, 0
/* 80A94160  3C A0 80 A9 */	lis r5, lit_4347@ha
/* 80A94164  C0 05 6B 0C */	lfs f0, lit_4347@l(r5)
/* 80A94168  38 00 00 02 */	li r0, 2
/* 80A9416C  7C 09 03 A6 */	mtctr r0
lbl_80A94170:
/* 80A94170  7C BF 22 14 */	add r5, r31, r4
/* 80A94174  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80A94178  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80A9417C  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80A94180  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A94184  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A94188  38 63 00 04 */	addi r3, r3, 4
/* 80A9418C  38 84 00 06 */	addi r4, r4, 6
/* 80A94190  42 00 FF E0 */	bdnz lbl_80A94170
/* 80A94194  38 00 00 00 */	li r0, 0
/* 80A94198  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A9419C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A941A0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A941A4  38 00 00 01 */	li r0, 1
/* 80A941A8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A941AC:
/* 80A941AC  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80A941B0  4B 8C DE 68 */	b __ptmf_test
/* 80A941B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A941B8  41 82 00 54 */	beq lbl_80A9420C
/* 80A941BC  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80A941C0  38 9F 0F B0 */	addi r4, r31, 0xfb0
/* 80A941C4  4B 8C DE 84 */	b __ptmf_cmpr
/* 80A941C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A941CC  40 82 00 1C */	bne lbl_80A941E8
/* 80A941D0  7F E3 FB 78 */	mr r3, r31
/* 80A941D4  38 80 00 00 */	li r4, 0
/* 80A941D8  39 9F 0F BC */	addi r12, r31, 0xfbc
/* 80A941DC  4B 8C DE A8 */	b __ptmf_scall
/* 80A941E0  60 00 00 00 */	nop 
/* 80A941E4  48 00 00 28 */	b lbl_80A9420C
lbl_80A941E8:
/* 80A941E8  80 7F 0F B0 */	lwz r3, 0xfb0(r31)
/* 80A941EC  80 1F 0F B4 */	lwz r0, 0xfb4(r31)
/* 80A941F0  90 61 00 08 */	stw r3, 8(r1)
/* 80A941F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A941F8  80 1F 0F B8 */	lwz r0, 0xfb8(r31)
/* 80A941FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A94200  7F E3 FB 78 */	mr r3, r31
/* 80A94204  38 81 00 08 */	addi r4, r1, 8
/* 80A94208  48 00 04 C9 */	bl setAction__18daNpc_Pachi_Besu_cFM18daNpc_Pachi_Besu_cFPCvPvPv_i
lbl_80A9420C:
/* 80A9420C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A94210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A94214  7C 08 03 A6 */	mtlr r0
/* 80A94218  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9421C  4E 80 00 20 */	blr 

lbl_80953244:
/* 80953244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80953248  7C 08 02 A6 */	mflr r0
/* 8095324C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80953250  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80953254  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80953258  7C 7F 1B 78 */	mr r31, r3
/* 8095325C  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80953260  38 A0 FF FF */	li r5, -1
/* 80953264  4B 7F 77 DD */	bl hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80953268  7C 7E 1B 79 */	or. r30, r3, r3
/* 8095326C  41 82 00 90 */	beq lbl_809532FC
/* 80953270  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80953274  4B 73 12 85 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80953278  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8095327C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80953280  41 82 00 7C */	beq lbl_809532FC
/* 80953284  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80953288  7F E4 FB 78 */	mr r4, r31
/* 8095328C  7F C5 F3 78 */	mr r5, r30
/* 80953290  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80953294  4B 7F 4B 39 */	bl setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80953298  7F E3 FB 78 */	mr r3, r31
/* 8095329C  38 80 00 00 */	li r4, 0
/* 809532A0  38 A0 00 0C */	li r5, 0xc
/* 809532A4  38 C0 00 00 */	li r6, 0
/* 809532A8  4B 7F 78 29 */	bl setDamage__8daNpcT_cFiii
/* 809532AC  38 00 00 00 */	li r0, 0
/* 809532B0  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 809532B4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809532B8  2C 00 00 00 */	cmpwi r0, 0
/* 809532BC  41 82 00 28 */	beq lbl_809532E4
/* 809532C0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809532C4  4B 7F 24 39 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809532C8  38 00 00 00 */	li r0, 0
/* 809532CC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809532D0  3C 60 80 95 */	lis r3, lit_4100@ha /* 0x80957798@ha */
/* 809532D4  C0 03 77 98 */	lfs f0, lit_4100@l(r3)  /* 0x80957798@l */
/* 809532D8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809532DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809532E0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809532E4:
/* 809532E4  38 60 00 00 */	li r3, 0
/* 809532E8  B0 7F 0C D4 */	sth r3, 0xcd4(r31)
/* 809532EC  B0 7F 0C D6 */	sth r3, 0xcd6(r31)
/* 809532F0  38 00 00 01 */	li r0, 1
/* 809532F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809532F8  90 7F 0F C4 */	stw r3, 0xfc4(r31)
lbl_809532FC:
/* 809532FC  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80953300  2C 00 00 00 */	cmpwi r0, 0
/* 80953304  41 82 00 5C */	beq lbl_80953360
/* 80953308  38 C0 00 00 */	li r6, 0
/* 8095330C  38 60 00 00 */	li r3, 0
/* 80953310  7C C4 33 78 */	mr r4, r6
/* 80953314  3C A0 80 95 */	lis r5, lit_4100@ha /* 0x80957798@ha */
/* 80953318  C0 05 77 98 */	lfs f0, lit_4100@l(r5)  /* 0x80957798@l */
/* 8095331C  38 00 00 02 */	li r0, 2
/* 80953320  7C 09 03 A6 */	mtctr r0
lbl_80953324:
/* 80953324  7C BF 22 14 */	add r5, r31, r4
/* 80953328  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 8095332C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80953330  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80953334  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80953338  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8095333C  38 63 00 04 */	addi r3, r3, 4
/* 80953340  38 84 00 06 */	addi r4, r4, 6
/* 80953344  42 00 FF E0 */	bdnz lbl_80953324
/* 80953348  38 00 00 00 */	li r0, 0
/* 8095334C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80953350  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80953354  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80953358  38 00 00 01 */	li r0, 1
/* 8095335C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80953360:
/* 80953360  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80953364  4B A0 EC B5 */	bl __ptmf_test
/* 80953368  2C 03 00 00 */	cmpwi r3, 0
/* 8095336C  41 82 00 54 */	beq lbl_809533C0
/* 80953370  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80953374  38 9F 0F A4 */	addi r4, r31, 0xfa4
/* 80953378  4B A0 EC D1 */	bl __ptmf_cmpr
/* 8095337C  2C 03 00 00 */	cmpwi r3, 0
/* 80953380  40 82 00 1C */	bne lbl_8095339C
/* 80953384  7F E3 FB 78 */	mr r3, r31
/* 80953388  38 80 00 00 */	li r4, 0
/* 8095338C  39 9F 0F B0 */	addi r12, r31, 0xfb0
/* 80953390  4B A0 EC F5 */	bl __ptmf_scall
/* 80953394  60 00 00 00 */	nop 
/* 80953398  48 00 00 28 */	b lbl_809533C0
lbl_8095339C:
/* 8095339C  80 7F 0F A4 */	lwz r3, 0xfa4(r31)
/* 809533A0  80 1F 0F A8 */	lwz r0, 0xfa8(r31)
/* 809533A4  90 61 00 08 */	stw r3, 8(r1)
/* 809533A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809533AC  80 1F 0F AC */	lwz r0, 0xfac(r31)
/* 809533B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809533B4  7F E3 FB 78 */	mr r3, r31
/* 809533B8  38 81 00 08 */	addi r4, r1, 8
/* 809533BC  48 00 07 29 */	bl setAction__11daNpc_Aru_cFM11daNpc_Aru_cFPCvPvPv_i
lbl_809533C0:
/* 809533C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809533C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809533C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809533CC  7C 08 03 A6 */	mtlr r0
/* 809533D0  38 21 00 20 */	addi r1, r1, 0x20
/* 809533D4  4E 80 00 20 */	blr 

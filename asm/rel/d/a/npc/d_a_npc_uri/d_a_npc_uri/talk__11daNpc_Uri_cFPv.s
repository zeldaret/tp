lbl_80B2B7C0:
/* 80B2B7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2B7C4  7C 08 02 A6 */	mflr r0
/* 80B2B7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2B7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2B7D0  7C 7F 1B 78 */	mr r31, r3
/* 80B2B7D4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B2B7D8  2C 00 00 02 */	cmpwi r0, 2
/* 80B2B7DC  41 82 00 54 */	beq lbl_80B2B830
/* 80B2B7E0  40 80 02 10 */	bge lbl_80B2B9F0
/* 80B2B7E4  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B7E8  40 80 00 0C */	bge lbl_80B2B7F4
/* 80B2B7EC  48 00 02 04 */	b lbl_80B2B9F0
/* 80B2B7F0  48 00 02 00 */	b lbl_80B2B9F0
lbl_80B2B7F4:
/* 80B2B7F4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B2B7F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B7FC  40 82 00 34 */	bne lbl_80B2B830
/* 80B2B800  88 1F 10 0B */	lbz r0, 0x100b(r31)
/* 80B2B804  28 00 00 00 */	cmplwi r0, 0
/* 80B2B808  41 82 00 14 */	beq lbl_80B2B81C
/* 80B2B80C  38 80 00 13 */	li r4, 0x13
/* 80B2B810  38 A0 00 00 */	li r5, 0
/* 80B2B814  4B 62 03 DC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B2B818  48 00 00 10 */	b lbl_80B2B828
lbl_80B2B81C:
/* 80B2B81C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B2B820  38 A0 00 00 */	li r5, 0
/* 80B2B824  4B 62 03 CC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B2B828:
/* 80B2B828  38 00 00 02 */	li r0, 2
/* 80B2B82C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B2B830:
/* 80B2B830  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B2B834  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B838  40 82 01 B8 */	bne lbl_80B2B9F0
/* 80B2B83C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B2B840  28 00 00 00 */	cmplwi r0, 0
/* 80B2B844  40 82 00 2C */	bne lbl_80B2B870
/* 80B2B848  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80B2B84C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B2B850  7C 03 00 00 */	cmpw r3, r0
/* 80B2B854  41 82 00 1C */	beq lbl_80B2B870
/* 80B2B858  88 1F 10 0D */	lbz r0, 0x100d(r31)
/* 80B2B85C  28 00 00 00 */	cmplwi r0, 0
/* 80B2B860  40 82 00 10 */	bne lbl_80B2B870
/* 80B2B864  88 1F 10 0F */	lbz r0, 0x100f(r31)
/* 80B2B868  28 00 00 00 */	cmplwi r0, 0
/* 80B2B86C  41 82 01 00 */	beq lbl_80B2B96C
lbl_80B2B870:
/* 80B2B870  7F E3 FB 78 */	mr r3, r31
/* 80B2B874  38 80 00 00 */	li r4, 0
/* 80B2B878  38 A0 00 00 */	li r5, 0
/* 80B2B87C  38 C0 00 00 */	li r6, 0
/* 80B2B880  38 E0 00 00 */	li r7, 0
/* 80B2B884  4B 62 03 F4 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B2B888  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B88C  41 82 00 5C */	beq lbl_80B2B8E8
/* 80B2B890  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B2B894  28 00 00 01 */	cmplwi r0, 1
/* 80B2B898  40 82 00 50 */	bne lbl_80B2B8E8
/* 80B2B89C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B2B8A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B2B8A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B2B8A8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B2B8AC  4B 61 9E 34 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B2B8B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B2B8B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B2B8B8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B2B8BC  4B 51 6B AC */	b reset__14dEvt_control_cFv
/* 80B2B8C0  88 1F 10 0B */	lbz r0, 0x100b(r31)
/* 80B2B8C4  28 00 00 00 */	cmplwi r0, 0
/* 80B2B8C8  41 82 00 18 */	beq lbl_80B2B8E0
/* 80B2B8CC  38 00 00 00 */	li r0, 0
/* 80B2B8D0  98 1F 10 0B */	stb r0, 0x100b(r31)
/* 80B2B8D4  38 00 00 01 */	li r0, 1
/* 80B2B8D8  98 1F 10 0C */	stb r0, 0x100c(r31)
/* 80B2B8DC  98 1F 10 0D */	stb r0, 0x100d(r31)
lbl_80B2B8E0:
/* 80B2B8E0  38 00 00 03 */	li r0, 3
/* 80B2B8E4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B2B8E8:
/* 80B2B8E8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B2B8EC  2C 00 00 01 */	cmpwi r0, 1
/* 80B2B8F0  41 82 00 2C */	beq lbl_80B2B91C
/* 80B2B8F4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B2B8F8  4B 61 9E 04 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B8FC  38 00 00 00 */	li r0, 0
/* 80B2B900  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B2B904  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B2B908  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B2B90C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B2B910  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2B914  38 00 00 01 */	li r0, 1
/* 80B2B918  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B2B91C:
/* 80B2B91C  38 00 00 00 */	li r0, 0
/* 80B2B920  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2B924  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B2B928  28 00 00 00 */	cmplwi r0, 0
/* 80B2B92C  41 82 00 C4 */	beq lbl_80B2B9F0
/* 80B2B930  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B2B934  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B938  41 82 00 28 */	beq lbl_80B2B960
/* 80B2B93C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B2B940  4B 61 9D BC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B944  38 00 00 00 */	li r0, 0
/* 80B2B948  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B2B94C  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B2B950  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B2B954  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B2B958  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2B95C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B2B960:
/* 80B2B960  38 00 00 00 */	li r0, 0
/* 80B2B964  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2B968  48 00 00 88 */	b lbl_80B2B9F0
lbl_80B2B96C:
/* 80B2B96C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B2B970  2C 00 00 01 */	cmpwi r0, 1
/* 80B2B974  41 82 00 2C */	beq lbl_80B2B9A0
/* 80B2B978  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B2B97C  4B 61 9D 80 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B980  38 00 00 00 */	li r0, 0
/* 80B2B984  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B2B988  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B2B98C  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B2B990  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B2B994  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2B998  38 00 00 01 */	li r0, 1
/* 80B2B99C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B2B9A0:
/* 80B2B9A0  38 00 00 00 */	li r0, 0
/* 80B2B9A4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B2B9A8  88 1F 10 08 */	lbz r0, 0x1008(r31)
/* 80B2B9AC  28 00 00 00 */	cmplwi r0, 0
/* 80B2B9B0  41 82 00 24 */	beq lbl_80B2B9D4
/* 80B2B9B4  7F E3 FB 78 */	mr r3, r31
/* 80B2B9B8  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80B2B9BC  38 A0 00 11 */	li r5, 0x11
/* 80B2B9C0  38 C0 00 18 */	li r6, 0x18
/* 80B2B9C4  38 E0 00 0F */	li r7, 0xf
/* 80B2B9C8  39 00 00 00 */	li r8, 0
/* 80B2B9CC  4B 61 FC 7C */	b step__8daNpcT_cFsiiii
/* 80B2B9D0  48 00 00 20 */	b lbl_80B2B9F0
lbl_80B2B9D4:
/* 80B2B9D4  7F E3 FB 78 */	mr r3, r31
/* 80B2B9D8  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80B2B9DC  38 A0 FF FF */	li r5, -1
/* 80B2B9E0  38 C0 FF FF */	li r6, -1
/* 80B2B9E4  38 E0 00 0F */	li r7, 0xf
/* 80B2B9E8  39 00 00 00 */	li r8, 0
/* 80B2B9EC  4B 61 FC 5C */	b step__8daNpcT_cFsiiii
lbl_80B2B9F0:
/* 80B2B9F0  38 60 00 00 */	li r3, 0
/* 80B2B9F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2B9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2B9FC  7C 08 03 A6 */	mtlr r0
/* 80B2BA00  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BA04  4E 80 00 20 */	blr 

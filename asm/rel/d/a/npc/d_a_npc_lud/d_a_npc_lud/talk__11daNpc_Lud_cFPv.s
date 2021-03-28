lbl_80A6E7EC:
/* 80A6E7EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6E7F0  7C 08 02 A6 */	mflr r0
/* 80A6E7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6E7F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6E7FC  7C 7F 1B 78 */	mr r31, r3
/* 80A6E800  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A6E804  2C 00 00 02 */	cmpwi r0, 2
/* 80A6E808  41 82 00 38 */	beq lbl_80A6E840
/* 80A6E80C  40 80 01 D8 */	bge lbl_80A6E9E4
/* 80A6E810  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E814  40 80 00 0C */	bge lbl_80A6E820
/* 80A6E818  48 00 01 CC */	b lbl_80A6E9E4
/* 80A6E81C  48 00 01 C8 */	b lbl_80A6E9E4
lbl_80A6E820:
/* 80A6E820  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A6E824  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E828  40 82 00 18 */	bne lbl_80A6E840
/* 80A6E82C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80A6E830  38 A0 00 00 */	li r5, 0
/* 80A6E834  4B 6D D3 BC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A6E838  38 00 00 02 */	li r0, 2
/* 80A6E83C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A6E840:
/* 80A6E840  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A6E844  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E848  40 82 01 9C */	bne lbl_80A6E9E4
/* 80A6E84C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A6E850  28 00 00 00 */	cmplwi r0, 0
/* 80A6E854  40 82 00 40 */	bne lbl_80A6E894
/* 80A6E858  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80A6E85C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A6E860  7C 03 00 00 */	cmpw r3, r0
/* 80A6E864  41 82 00 30 */	beq lbl_80A6E894
/* 80A6E868  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6E86C  28 00 00 00 */	cmplwi r0, 0
/* 80A6E870  41 82 00 24 */	beq lbl_80A6E894
/* 80A6E874  28 00 00 02 */	cmplwi r0, 2
/* 80A6E878  41 82 00 1C */	beq lbl_80A6E894
/* 80A6E87C  28 00 00 04 */	cmplwi r0, 4
/* 80A6E880  41 82 00 14 */	beq lbl_80A6E894
/* 80A6E884  28 00 00 05 */	cmplwi r0, 5
/* 80A6E888  41 82 00 0C */	beq lbl_80A6E894
/* 80A6E88C  28 00 00 06 */	cmplwi r0, 6
/* 80A6E890  40 82 00 FC */	bne lbl_80A6E98C
lbl_80A6E894:
/* 80A6E894  7F E3 FB 78 */	mr r3, r31
/* 80A6E898  38 80 00 00 */	li r4, 0
/* 80A6E89C  38 A0 00 00 */	li r5, 0
/* 80A6E8A0  38 C0 00 00 */	li r6, 0
/* 80A6E8A4  38 E0 00 00 */	li r7, 0
/* 80A6E8A8  4B 6D D3 D0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A6E8AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E8B0  41 82 00 3C */	beq lbl_80A6E8EC
/* 80A6E8B4  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80A6E8B8  28 00 00 01 */	cmplwi r0, 1
/* 80A6E8BC  40 82 00 30 */	bne lbl_80A6E8EC
/* 80A6E8C0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A6E8C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A6E8C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A6E8CC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A6E8D0  4B 6D 6E 10 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A6E8D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6E8D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6E8DC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A6E8E0  4B 5D 3B 88 */	b reset__14dEvt_control_cFv
/* 80A6E8E4  38 00 00 03 */	li r0, 3
/* 80A6E8E8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A6E8EC:
/* 80A6E8EC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A6E8F0  2C 00 00 01 */	cmpwi r0, 1
/* 80A6E8F4  41 82 00 2C */	beq lbl_80A6E920
/* 80A6E8F8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A6E8FC  4B 6D 6E 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E900  38 00 00 00 */	li r0, 0
/* 80A6E904  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A6E908  3C 60 80 A7 */	lis r3, lit_4218@ha
/* 80A6E90C  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)
/* 80A6E910  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A6E914  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E918  38 00 00 01 */	li r0, 1
/* 80A6E91C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A6E920:
/* 80A6E920  38 00 00 00 */	li r0, 0
/* 80A6E924  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E928  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A6E92C  28 00 00 00 */	cmplwi r0, 0
/* 80A6E930  40 82 00 20 */	bne lbl_80A6E950
/* 80A6E934  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6E938  28 00 00 04 */	cmplwi r0, 4
/* 80A6E93C  41 82 00 14 */	beq lbl_80A6E950
/* 80A6E940  28 00 00 05 */	cmplwi r0, 5
/* 80A6E944  41 82 00 0C */	beq lbl_80A6E950
/* 80A6E948  28 00 00 06 */	cmplwi r0, 6
/* 80A6E94C  40 82 00 98 */	bne lbl_80A6E9E4
lbl_80A6E950:
/* 80A6E950  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A6E954  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E958  41 82 00 28 */	beq lbl_80A6E980
/* 80A6E95C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A6E960  4B 6D 6D 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E964  38 00 00 00 */	li r0, 0
/* 80A6E968  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A6E96C  3C 60 80 A7 */	lis r3, lit_4218@ha
/* 80A6E970  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)
/* 80A6E974  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A6E978  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E97C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A6E980:
/* 80A6E980  38 00 00 00 */	li r0, 0
/* 80A6E984  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E988  48 00 00 5C */	b lbl_80A6E9E4
lbl_80A6E98C:
/* 80A6E98C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A6E990  2C 00 00 01 */	cmpwi r0, 1
/* 80A6E994  41 82 00 2C */	beq lbl_80A6E9C0
/* 80A6E998  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A6E99C  4B 6D 6D 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E9A0  38 00 00 00 */	li r0, 0
/* 80A6E9A4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A6E9A8  3C 60 80 A7 */	lis r3, lit_4218@ha
/* 80A6E9AC  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)
/* 80A6E9B0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A6E9B4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E9B8  38 00 00 01 */	li r0, 1
/* 80A6E9BC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A6E9C0:
/* 80A6E9C0  38 00 00 00 */	li r0, 0
/* 80A6E9C4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E9C8  7F E3 FB 78 */	mr r3, r31
/* 80A6E9CC  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80A6E9D0  38 A0 00 12 */	li r5, 0x12
/* 80A6E9D4  38 C0 00 12 */	li r6, 0x12
/* 80A6E9D8  38 E0 00 0F */	li r7, 0xf
/* 80A6E9DC  39 00 00 00 */	li r8, 0
/* 80A6E9E0  4B 6D CC 68 */	b step__8daNpcT_cFsiiii
lbl_80A6E9E4:
/* 80A6E9E4  38 60 00 00 */	li r3, 0
/* 80A6E9E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6E9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6E9F0  7C 08 03 A6 */	mtlr r0
/* 80A6E9F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6E9F8  4E 80 00 20 */	blr 

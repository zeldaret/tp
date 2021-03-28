lbl_8053D078:
/* 8053D078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D07C  7C 08 02 A6 */	mflr r0
/* 8053D080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D088  7C 7F 1B 78 */	mr r31, r3
/* 8053D08C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8053D090  2C 00 00 02 */	cmpwi r0, 2
/* 8053D094  41 82 00 38 */	beq lbl_8053D0CC
/* 8053D098  40 80 01 EC */	bge lbl_8053D284
/* 8053D09C  2C 00 00 00 */	cmpwi r0, 0
/* 8053D0A0  40 80 00 0C */	bge lbl_8053D0AC
/* 8053D0A4  48 00 01 E0 */	b lbl_8053D284
/* 8053D0A8  48 00 01 DC */	b lbl_8053D284
lbl_8053D0AC:
/* 8053D0AC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8053D0B0  2C 00 00 00 */	cmpwi r0, 0
/* 8053D0B4  40 82 00 18 */	bne lbl_8053D0CC
/* 8053D0B8  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8053D0BC  38 A0 00 00 */	li r5, 0
/* 8053D0C0  4B C0 EB 30 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8053D0C4  38 00 00 02 */	li r0, 2
/* 8053D0C8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8053D0CC:
/* 8053D0CC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8053D0D0  2C 00 00 00 */	cmpwi r0, 0
/* 8053D0D4  40 82 01 B0 */	bne lbl_8053D284
/* 8053D0D8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8053D0DC  28 00 00 00 */	cmplwi r0, 0
/* 8053D0E0  40 82 00 30 */	bne lbl_8053D110
/* 8053D0E4  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 8053D0E8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 8053D0EC  7C 03 00 00 */	cmpw r3, r0
/* 8053D0F0  41 82 00 20 */	beq lbl_8053D110
/* 8053D0F4  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 8053D0F8  28 00 00 05 */	cmplwi r0, 5
/* 8053D0FC  41 82 00 14 */	beq lbl_8053D110
/* 8053D100  7F E3 FB 78 */	mr r3, r31
/* 8053D104  4B FF AE CD */	bl chkNurse__12daNpc_Besu_cFv
/* 8053D108  2C 03 00 00 */	cmpwi r3, 0
/* 8053D10C  41 82 00 F0 */	beq lbl_8053D1FC
lbl_8053D110:
/* 8053D110  7F E3 FB 78 */	mr r3, r31
/* 8053D114  38 80 00 00 */	li r4, 0
/* 8053D118  38 A0 00 00 */	li r5, 0
/* 8053D11C  38 C0 00 00 */	li r6, 0
/* 8053D120  38 E0 00 00 */	li r7, 0
/* 8053D124  4B C0 EB 54 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8053D128  2C 03 00 00 */	cmpwi r3, 0
/* 8053D12C  41 82 00 3C */	beq lbl_8053D168
/* 8053D130  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8053D134  28 00 00 01 */	cmplwi r0, 1
/* 8053D138  40 82 00 30 */	bne lbl_8053D168
/* 8053D13C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8053D140  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8053D144  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8053D148  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8053D14C  4B C0 85 94 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053D150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053D154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053D158  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8053D15C  4B B0 53 0C */	b reset__14dEvt_control_cFv
/* 8053D160  38 00 00 03 */	li r0, 3
/* 8053D164  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8053D168:
/* 8053D168  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8053D16C  2C 00 00 01 */	cmpwi r0, 1
/* 8053D170  41 82 00 2C */	beq lbl_8053D19C
/* 8053D174  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8053D178  4B C0 85 84 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053D17C  38 00 00 00 */	li r0, 0
/* 8053D180  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8053D184  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053D188  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053D18C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8053D190  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053D194  38 00 00 01 */	li r0, 1
/* 8053D198  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8053D19C:
/* 8053D19C  38 00 00 00 */	li r0, 0
/* 8053D1A0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053D1A4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8053D1A8  28 00 00 00 */	cmplwi r0, 0
/* 8053D1AC  40 82 00 14 */	bne lbl_8053D1C0
/* 8053D1B0  7F E3 FB 78 */	mr r3, r31
/* 8053D1B4  4B FF AE 1D */	bl chkNurse__12daNpc_Besu_cFv
/* 8053D1B8  2C 03 00 00 */	cmpwi r3, 0
/* 8053D1BC  41 82 00 C8 */	beq lbl_8053D284
lbl_8053D1C0:
/* 8053D1C0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8053D1C4  2C 00 00 00 */	cmpwi r0, 0
/* 8053D1C8  41 82 00 28 */	beq lbl_8053D1F0
/* 8053D1CC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8053D1D0  4B C0 85 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 8053D1D4  38 00 00 00 */	li r0, 0
/* 8053D1D8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8053D1DC  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053D1E0  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053D1E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8053D1E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053D1EC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8053D1F0:
/* 8053D1F0  38 00 00 00 */	li r0, 0
/* 8053D1F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053D1F8  48 00 00 8C */	b lbl_8053D284
lbl_8053D1FC:
/* 8053D1FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8053D200  2C 00 00 01 */	cmpwi r0, 1
/* 8053D204  41 82 00 2C */	beq lbl_8053D230
/* 8053D208  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8053D20C  4B C0 84 F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053D210  38 00 00 00 */	li r0, 0
/* 8053D214  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8053D218  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053D21C  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053D220  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8053D224  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053D228  38 00 00 01 */	li r0, 1
/* 8053D22C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8053D230:
/* 8053D230  38 00 00 00 */	li r0, 0
/* 8053D234  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053D238  7F E3 FB 78 */	mr r3, r31
/* 8053D23C  4B FF AD C1 */	bl chkBesu3__12daNpc_Besu_cFv
/* 8053D240  2C 03 00 00 */	cmpwi r3, 0
/* 8053D244  41 82 00 24 */	beq lbl_8053D268
/* 8053D248  7F E3 FB 78 */	mr r3, r31
/* 8053D24C  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 8053D250  38 A0 00 1C */	li r5, 0x1c
/* 8053D254  38 C0 00 1D */	li r6, 0x1d
/* 8053D258  38 E0 00 0F */	li r7, 0xf
/* 8053D25C  39 00 00 00 */	li r8, 0
/* 8053D260  4B C0 E3 E8 */	b step__8daNpcT_cFsiiii
/* 8053D264  48 00 00 20 */	b lbl_8053D284
lbl_8053D268:
/* 8053D268  7F E3 FB 78 */	mr r3, r31
/* 8053D26C  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 8053D270  38 A0 00 1C */	li r5, 0x1c
/* 8053D274  38 C0 00 11 */	li r6, 0x11
/* 8053D278  38 E0 00 0F */	li r7, 0xf
/* 8053D27C  39 00 00 00 */	li r8, 0
/* 8053D280  4B C0 E3 C8 */	b step__8daNpcT_cFsiiii
lbl_8053D284:
/* 8053D284  38 60 00 00 */	li r3, 0
/* 8053D288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D290  7C 08 03 A6 */	mtlr r0
/* 8053D294  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D298  4E 80 00 20 */	blr 

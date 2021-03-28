lbl_8099B284:
/* 8099B284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099B288  7C 08 02 A6 */	mflr r0
/* 8099B28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099B290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099B294  93 C1 00 08 */	stw r30, 8(r1)
/* 8099B298  7C 7F 1B 78 */	mr r31, r3
/* 8099B29C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8099B2A0  2C 00 00 02 */	cmpwi r0, 2
/* 8099B2A4  41 82 00 8C */	beq lbl_8099B330
/* 8099B2A8  40 80 02 18 */	bge lbl_8099B4C0
/* 8099B2AC  2C 00 00 00 */	cmpwi r0, 0
/* 8099B2B0  40 80 00 0C */	bge lbl_8099B2BC
/* 8099B2B4  48 00 02 0C */	b lbl_8099B4C0
/* 8099B2B8  48 00 02 08 */	b lbl_8099B4C0
lbl_8099B2BC:
/* 8099B2BC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8099B2C0  2C 00 00 00 */	cmpwi r0, 0
/* 8099B2C4  40 82 00 6C */	bne lbl_8099B330
/* 8099B2C8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8099B2CC  2C 00 00 01 */	cmpwi r0, 1
/* 8099B2D0  41 82 00 28 */	beq lbl_8099B2F8
/* 8099B2D4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8099B2D8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8099B2DC  4B 7A A5 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099B2E0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8099B2E4  38 00 00 01 */	li r0, 1
/* 8099B2E8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8099B2EC  3C 60 80 9A */	lis r3, lit_4829@ha
/* 8099B2F0  C0 03 D3 08 */	lfs f0, lit_4829@l(r3)
/* 8099B2F4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8099B2F8:
/* 8099B2F8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8099B2FC  2C 00 00 00 */	cmpwi r0, 0
/* 8099B300  41 82 00 28 */	beq lbl_8099B328
/* 8099B304  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8099B308  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8099B30C  4B 7A A5 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099B310  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8099B314  38 00 00 00 */	li r0, 0
/* 8099B318  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8099B31C  3C 60 80 9A */	lis r3, lit_4829@ha
/* 8099B320  C0 03 D3 08 */	lfs f0, lit_4829@l(r3)
/* 8099B324  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8099B328:
/* 8099B328  38 00 00 02 */	li r0, 2
/* 8099B32C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8099B330:
/* 8099B330  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8099B334  2C 00 00 00 */	cmpwi r0, 0
/* 8099B338  40 82 01 88 */	bne lbl_8099B4C0
/* 8099B33C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8099B340  4B 7A A3 C8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8099B344  28 03 00 00 */	cmplwi r3, 0
/* 8099B348  41 82 00 C8 */	beq lbl_8099B410
/* 8099B34C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8099B350  2C 00 00 00 */	cmpwi r0, 0
/* 8099B354  41 82 00 28 */	beq lbl_8099B37C
/* 8099B358  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099B35C  4B 7A A3 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8099B360  38 00 00 00 */	li r0, 0
/* 8099B364  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8099B368  3C 60 80 9A */	lis r3, lit_4123@ha
/* 8099B36C  C0 03 D2 F0 */	lfs f0, lit_4123@l(r3)
/* 8099B370  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099B374  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B378  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8099B37C:
/* 8099B37C  38 00 00 00 */	li r0, 0
/* 8099B380  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B384  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8099B388  4B 7A A3 80 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8099B38C  7C 64 1B 78 */	mr r4, r3
/* 8099B390  7F E3 FB 78 */	mr r3, r31
/* 8099B394  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 8099B398  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 8099B39C  4B 7A F8 34 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 8099B3A0  2C 03 00 00 */	cmpwi r3, 0
/* 8099B3A4  41 82 00 40 */	beq lbl_8099B3E4
/* 8099B3A8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8099B3AC  2C 00 00 01 */	cmpwi r0, 1
/* 8099B3B0  41 82 00 2C */	beq lbl_8099B3DC
/* 8099B3B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099B3B8  4B 7A A3 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 8099B3BC  38 00 00 00 */	li r0, 0
/* 8099B3C0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8099B3C4  3C 60 80 9A */	lis r3, lit_4123@ha
/* 8099B3C8  C0 03 D2 F0 */	lfs f0, lit_4123@l(r3)
/* 8099B3CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099B3D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B3D4  38 00 00 01 */	li r0, 1
/* 8099B3D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8099B3DC:
/* 8099B3DC  38 00 00 00 */	li r0, 0
/* 8099B3E0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_8099B3E4:
/* 8099B3E4  7F E3 FB 78 */	mr r3, r31
/* 8099B3E8  4B 7A FF 50 */	b srchPlayerActor__8daNpcT_cFv
/* 8099B3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8099B3F0  40 82 00 D0 */	bne lbl_8099B4C0
/* 8099B3F4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 8099B3F8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 8099B3FC  7C 03 00 00 */	cmpw r3, r0
/* 8099B400  40 82 00 C0 */	bne lbl_8099B4C0
/* 8099B404  38 00 00 01 */	li r0, 1
/* 8099B408  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 8099B40C  48 00 00 B4 */	b lbl_8099B4C0
lbl_8099B410:
/* 8099B410  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8099B414  2C 00 00 00 */	cmpwi r0, 0
/* 8099B418  41 82 00 28 */	beq lbl_8099B440
/* 8099B41C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099B420  4B 7A A2 DC */	b remove__18daNpcT_ActorMngr_cFv
/* 8099B424  38 00 00 00 */	li r0, 0
/* 8099B428  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8099B42C  3C 60 80 9A */	lis r3, lit_4123@ha
/* 8099B430  C0 03 D2 F0 */	lfs f0, lit_4123@l(r3)
/* 8099B434  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099B438  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B43C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8099B440:
/* 8099B440  38 00 00 00 */	li r0, 0
/* 8099B444  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B448  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8099B44C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 8099B450  7C 04 00 00 */	cmpw r4, r0
/* 8099B454  41 82 00 58 */	beq lbl_8099B4AC
/* 8099B458  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 8099B45C  28 00 00 00 */	cmplwi r0, 0
/* 8099B460  40 82 00 18 */	bne lbl_8099B478
/* 8099B464  7F E3 FB 78 */	mr r3, r31
/* 8099B468  4B 7A F5 B0 */	b setAngle__8daNpcT_cFs
/* 8099B46C  38 00 00 01 */	li r0, 1
/* 8099B470  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 8099B474  48 00 00 2C */	b lbl_8099B4A0
lbl_8099B478:
/* 8099B478  7F E3 FB 78 */	mr r3, r31
/* 8099B47C  38 A0 00 01 */	li r5, 1
/* 8099B480  38 C0 00 00 */	li r6, 0
/* 8099B484  38 E0 00 0F */	li r7, 0xf
/* 8099B488  39 00 00 00 */	li r8, 0
/* 8099B48C  4B 7B 01 BC */	b step__8daNpcT_cFsiiii
/* 8099B490  2C 03 00 00 */	cmpwi r3, 0
/* 8099B494  41 82 00 0C */	beq lbl_8099B4A0
/* 8099B498  38 00 00 01 */	li r0, 1
/* 8099B49C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8099B4A0:
/* 8099B4A0  38 00 00 00 */	li r0, 0
/* 8099B4A4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8099B4A8  48 00 00 18 */	b lbl_8099B4C0
lbl_8099B4AC:
/* 8099B4AC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8099B4B0  28 00 00 00 */	cmplwi r0, 0
/* 8099B4B4  40 82 00 0C */	bne lbl_8099B4C0
/* 8099B4B8  7F E3 FB 78 */	mr r3, r31
/* 8099B4BC  4B 7A FE 7C */	b srchPlayerActor__8daNpcT_cFv
lbl_8099B4C0:
/* 8099B4C0  38 60 00 01 */	li r3, 1
/* 8099B4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099B4C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099B4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099B4D0  7C 08 03 A6 */	mtlr r0
/* 8099B4D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8099B4D8  4E 80 00 20 */	blr 

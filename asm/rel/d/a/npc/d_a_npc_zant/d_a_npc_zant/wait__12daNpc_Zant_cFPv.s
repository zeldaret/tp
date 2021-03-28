lbl_80B6D338:
/* 80B6D338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6D33C  7C 08 02 A6 */	mflr r0
/* 80B6D340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6D344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6D348  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6D34C  7C 7F 1B 78 */	mr r31, r3
/* 80B6D350  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B6D354  2C 00 00 02 */	cmpwi r0, 2
/* 80B6D358  41 82 00 8C */	beq lbl_80B6D3E4
/* 80B6D35C  40 80 02 0C */	bge lbl_80B6D568
/* 80B6D360  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D364  40 80 00 0C */	bge lbl_80B6D370
/* 80B6D368  48 00 02 00 */	b lbl_80B6D568
/* 80B6D36C  48 00 01 FC */	b lbl_80B6D568
lbl_80B6D370:
/* 80B6D370  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6D374  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D378  40 82 00 6C */	bne lbl_80B6D3E4
/* 80B6D37C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B6D380  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D384  41 82 00 28 */	beq lbl_80B6D3AC
/* 80B6D388  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B6D38C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B6D390  4B 5D 85 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6D394  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B6D398  38 00 00 00 */	li r0, 0
/* 80B6D39C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B6D3A0  3C 60 80 B7 */	lis r3, lit_4447@ha
/* 80B6D3A4  C0 03 EA 58 */	lfs f0, lit_4447@l(r3)
/* 80B6D3A8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B6D3AC:
/* 80B6D3AC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B6D3B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D3B4  41 82 00 28 */	beq lbl_80B6D3DC
/* 80B6D3B8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B6D3BC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6D3C0  4B 5D 84 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6D3C4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B6D3C8  38 00 00 00 */	li r0, 0
/* 80B6D3CC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B6D3D0  3C 60 80 B7 */	lis r3, lit_4447@ha
/* 80B6D3D4  C0 03 EA 58 */	lfs f0, lit_4447@l(r3)
/* 80B6D3D8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B6D3DC:
/* 80B6D3DC  38 00 00 02 */	li r0, 2
/* 80B6D3E0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6D3E4:
/* 80B6D3E4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6D3E8  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D3EC  40 82 01 7C */	bne lbl_80B6D568
/* 80B6D3F0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6D3F4  4B 5D 83 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B6D3F8  28 03 00 00 */	cmplwi r3, 0
/* 80B6D3FC  41 82 00 C8 */	beq lbl_80B6D4C4
/* 80B6D400  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6D404  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D408  41 82 00 28 */	beq lbl_80B6D430
/* 80B6D40C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6D410  4B 5D 82 EC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6D414  38 00 00 00 */	li r0, 0
/* 80B6D418  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6D41C  3C 60 80 B7 */	lis r3, lit_4176@ha
/* 80B6D420  C0 03 EA 48 */	lfs f0, lit_4176@l(r3)
/* 80B6D424  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6D428  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D42C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6D430:
/* 80B6D430  38 00 00 00 */	li r0, 0
/* 80B6D434  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D438  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6D43C  4B 5D 82 CC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B6D440  7C 64 1B 78 */	mr r4, r3
/* 80B6D444  7F E3 FB 78 */	mr r3, r31
/* 80B6D448  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80B6D44C  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80B6D450  4B 5D D7 80 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B6D454  2C 03 00 00 */	cmpwi r3, 0
/* 80B6D458  41 82 00 40 */	beq lbl_80B6D498
/* 80B6D45C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6D460  2C 00 00 01 */	cmpwi r0, 1
/* 80B6D464  41 82 00 2C */	beq lbl_80B6D490
/* 80B6D468  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6D46C  4B 5D 82 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6D470  38 00 00 00 */	li r0, 0
/* 80B6D474  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6D478  3C 60 80 B7 */	lis r3, lit_4176@ha
/* 80B6D47C  C0 03 EA 48 */	lfs f0, lit_4176@l(r3)
/* 80B6D480  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6D484  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D488  38 00 00 01 */	li r0, 1
/* 80B6D48C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6D490:
/* 80B6D490  38 00 00 00 */	li r0, 0
/* 80B6D494  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B6D498:
/* 80B6D498  7F E3 FB 78 */	mr r3, r31
/* 80B6D49C  4B 5D DE 9C */	b srchPlayerActor__8daNpcT_cFv
/* 80B6D4A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B6D4A4  40 82 00 C4 */	bne lbl_80B6D568
/* 80B6D4A8  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80B6D4AC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B6D4B0  7C 03 00 00 */	cmpw r3, r0
/* 80B6D4B4  40 82 00 B4 */	bne lbl_80B6D568
/* 80B6D4B8  38 00 00 01 */	li r0, 1
/* 80B6D4BC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B6D4C0  48 00 00 A8 */	b lbl_80B6D568
lbl_80B6D4C4:
/* 80B6D4C4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6D4C8  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D4CC  41 82 00 28 */	beq lbl_80B6D4F4
/* 80B6D4D0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6D4D4  4B 5D 82 28 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6D4D8  38 00 00 00 */	li r0, 0
/* 80B6D4DC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6D4E0  3C 60 80 B7 */	lis r3, lit_4176@ha
/* 80B6D4E4  C0 03 EA 48 */	lfs f0, lit_4176@l(r3)
/* 80B6D4E8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6D4EC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D4F0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6D4F4:
/* 80B6D4F4  38 00 00 00 */	li r0, 0
/* 80B6D4F8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D4FC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B6D500  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B6D504  7C 04 00 00 */	cmpw r4, r0
/* 80B6D508  41 82 00 58 */	beq lbl_80B6D560
/* 80B6D50C  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80B6D510  28 00 00 00 */	cmplwi r0, 0
/* 80B6D514  40 82 00 18 */	bne lbl_80B6D52C
/* 80B6D518  7F E3 FB 78 */	mr r3, r31
/* 80B6D51C  4B 5D D4 FC */	b setAngle__8daNpcT_cFs
/* 80B6D520  38 00 00 01 */	li r0, 1
/* 80B6D524  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B6D528  48 00 00 2C */	b lbl_80B6D554
lbl_80B6D52C:
/* 80B6D52C  7F E3 FB 78 */	mr r3, r31
/* 80B6D530  38 A0 FF FF */	li r5, -1
/* 80B6D534  38 C0 FF FF */	li r6, -1
/* 80B6D538  38 E0 00 0F */	li r7, 0xf
/* 80B6D53C  39 00 00 00 */	li r8, 0
/* 80B6D540  4B 5D E1 08 */	b step__8daNpcT_cFsiiii
/* 80B6D544  2C 03 00 00 */	cmpwi r3, 0
/* 80B6D548  41 82 00 0C */	beq lbl_80B6D554
/* 80B6D54C  38 00 00 01 */	li r0, 1
/* 80B6D550  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6D554:
/* 80B6D554  38 00 00 00 */	li r0, 0
/* 80B6D558  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B6D55C  48 00 00 0C */	b lbl_80B6D568
lbl_80B6D560:
/* 80B6D560  7F E3 FB 78 */	mr r3, r31
/* 80B6D564  4B 5D DD D4 */	b srchPlayerActor__8daNpcT_cFv
lbl_80B6D568:
/* 80B6D568  38 60 00 01 */	li r3, 1
/* 80B6D56C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6D570  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6D574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6D578  7C 08 03 A6 */	mtlr r0
/* 80B6D57C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6D580  4E 80 00 20 */	blr 

lbl_805512E0:
/* 805512E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805512E4  7C 08 02 A6 */	mflr r0
/* 805512E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805512EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805512F0  93 C1 00 08 */	stw r30, 8(r1)
/* 805512F4  7C 7F 1B 78 */	mr r31, r3
/* 805512F8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 805512FC  2C 00 00 02 */	cmpwi r0, 2
/* 80551300  41 82 00 8C */	beq lbl_8055138C
/* 80551304  40 80 02 18 */	bge lbl_8055151C
/* 80551308  2C 00 00 00 */	cmpwi r0, 0
/* 8055130C  40 80 00 0C */	bge lbl_80551318
/* 80551310  48 00 02 0C */	b lbl_8055151C
/* 80551314  48 00 02 08 */	b lbl_8055151C
lbl_80551318:
/* 80551318  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8055131C  2C 00 00 00 */	cmpwi r0, 0
/* 80551320  40 82 00 6C */	bne lbl_8055138C
/* 80551324  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80551328  2C 00 00 0E */	cmpwi r0, 0xe
/* 8055132C  41 82 00 28 */	beq lbl_80551354
/* 80551330  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80551334  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80551338  4B BF 45 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055133C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80551340  38 00 00 0E */	li r0, 0xe
/* 80551344  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80551348  3C 60 80 55 */	lis r3, lit_4621@ha
/* 8055134C  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 80551350  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80551354:
/* 80551354  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80551358  2C 00 00 01 */	cmpwi r0, 1
/* 8055135C  41 82 00 28 */	beq lbl_80551384
/* 80551360  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80551364  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80551368  4B BF 45 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055136C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80551370  38 00 00 01 */	li r0, 1
/* 80551374  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80551378  3C 60 80 55 */	lis r3, lit_4621@ha
/* 8055137C  C0 03 35 50 */	lfs f0, lit_4621@l(r3)
/* 80551380  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80551384:
/* 80551384  38 00 00 02 */	li r0, 2
/* 80551388  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8055138C:
/* 8055138C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80551390  2C 00 00 00 */	cmpwi r0, 0
/* 80551394  40 82 01 88 */	bne lbl_8055151C
/* 80551398  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8055139C  4B BF 43 6C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 805513A0  28 03 00 00 */	cmplwi r3, 0
/* 805513A4  41 82 00 C8 */	beq lbl_8055146C
/* 805513A8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 805513AC  2C 00 00 01 */	cmpwi r0, 1
/* 805513B0  41 82 00 2C */	beq lbl_805513DC
/* 805513B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805513B8  4B BF 43 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 805513BC  38 00 00 00 */	li r0, 0
/* 805513C0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 805513C4  3C 60 80 55 */	lis r3, lit_4243@ha
/* 805513C8  C0 03 35 3C */	lfs f0, lit_4243@l(r3)
/* 805513CC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 805513D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805513D4  38 00 00 01 */	li r0, 1
/* 805513D8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_805513DC:
/* 805513DC  38 00 00 00 */	li r0, 0
/* 805513E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805513E4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 805513E8  4B BF 43 20 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 805513EC  7C 64 1B 78 */	mr r4, r3
/* 805513F0  7F E3 FB 78 */	mr r3, r31
/* 805513F4  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 805513F8  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 805513FC  4B BF 97 D4 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80551400  2C 03 00 00 */	cmpwi r3, 0
/* 80551404  40 82 00 3C */	bne lbl_80551440
/* 80551408  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8055140C  2C 00 00 00 */	cmpwi r0, 0
/* 80551410  41 82 00 28 */	beq lbl_80551438
/* 80551414  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80551418  4B BF 42 E4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055141C  38 00 00 00 */	li r0, 0
/* 80551420  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80551424  3C 60 80 55 */	lis r3, lit_4243@ha
/* 80551428  C0 03 35 3C */	lfs f0, lit_4243@l(r3)
/* 8055142C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80551430  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80551434  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80551438:
/* 80551438  38 00 00 00 */	li r0, 0
/* 8055143C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80551440:
/* 80551440  7F E3 FB 78 */	mr r3, r31
/* 80551444  4B BF 9E F4 */	b srchPlayerActor__8daNpcT_cFv
/* 80551448  2C 03 00 00 */	cmpwi r3, 0
/* 8055144C  40 82 00 D0 */	bne lbl_8055151C
/* 80551450  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80551454  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80551458  7C 03 00 00 */	cmpw r3, r0
/* 8055145C  40 82 00 C0 */	bne lbl_8055151C
/* 80551460  38 00 00 01 */	li r0, 1
/* 80551464  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80551468  48 00 00 B4 */	b lbl_8055151C
lbl_8055146C:
/* 8055146C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80551470  2C 00 00 00 */	cmpwi r0, 0
/* 80551474  41 82 00 28 */	beq lbl_8055149C
/* 80551478  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8055147C  4B BF 42 80 */	b remove__18daNpcT_ActorMngr_cFv
/* 80551480  38 00 00 00 */	li r0, 0
/* 80551484  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80551488  3C 60 80 55 */	lis r3, lit_4243@ha
/* 8055148C  C0 03 35 3C */	lfs f0, lit_4243@l(r3)
/* 80551490  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80551494  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80551498  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8055149C:
/* 8055149C  38 00 00 00 */	li r0, 0
/* 805514A0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805514A4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 805514A8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 805514AC  7C 04 00 00 */	cmpw r4, r0
/* 805514B0  41 82 00 58 */	beq lbl_80551508
/* 805514B4  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 805514B8  28 00 00 00 */	cmplwi r0, 0
/* 805514BC  41 82 00 30 */	beq lbl_805514EC
/* 805514C0  7F E3 FB 78 */	mr r3, r31
/* 805514C4  38 A0 FF FF */	li r5, -1
/* 805514C8  38 C0 FF FF */	li r6, -1
/* 805514CC  38 E0 00 0F */	li r7, 0xf
/* 805514D0  39 00 00 00 */	li r8, 0
/* 805514D4  4B BF A1 74 */	b step__8daNpcT_cFsiiii
/* 805514D8  2C 03 00 00 */	cmpwi r3, 0
/* 805514DC  41 82 00 20 */	beq lbl_805514FC
/* 805514E0  38 00 00 01 */	li r0, 1
/* 805514E4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 805514E8  48 00 00 14 */	b lbl_805514FC
lbl_805514EC:
/* 805514EC  7F E3 FB 78 */	mr r3, r31
/* 805514F0  4B BF 95 28 */	b setAngle__8daNpcT_cFs
/* 805514F4  38 00 00 01 */	li r0, 1
/* 805514F8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_805514FC:
/* 805514FC  38 00 00 00 */	li r0, 0
/* 80551500  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80551504  48 00 00 18 */	b lbl_8055151C
lbl_80551508:
/* 80551508  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8055150C  28 00 00 00 */	cmplwi r0, 0
/* 80551510  40 82 00 0C */	bne lbl_8055151C
/* 80551514  7F E3 FB 78 */	mr r3, r31
/* 80551518  4B BF 9E 20 */	b srchPlayerActor__8daNpcT_cFv
lbl_8055151C:
/* 8055151C  38 60 00 01 */	li r3, 1
/* 80551520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551524  83 C1 00 08 */	lwz r30, 8(r1)
/* 80551528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055152C  7C 08 03 A6 */	mtlr r0
/* 80551530  38 21 00 10 */	addi r1, r1, 0x10
/* 80551534  4E 80 00 20 */	blr 

lbl_80A722FC:
/* 80A722FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72300  7C 08 02 A6 */	mflr r0
/* 80A72304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7230C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A72310  7C 7F 1B 78 */	mr r31, r3
/* 80A72314  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A72318  2C 00 00 02 */	cmpwi r0, 2
/* 80A7231C  41 82 00 8C */	beq lbl_80A723A8
/* 80A72320  40 80 02 0C */	bge lbl_80A7252C
/* 80A72324  2C 00 00 00 */	cmpwi r0, 0
/* 80A72328  40 80 00 0C */	bge lbl_80A72334
/* 80A7232C  48 00 02 00 */	b lbl_80A7252C
/* 80A72330  48 00 01 FC */	b lbl_80A7252C
lbl_80A72334:
/* 80A72334  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A72338  2C 00 00 00 */	cmpwi r0, 0
/* 80A7233C  40 82 00 6C */	bne lbl_80A723A8
/* 80A72340  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A72344  2C 00 00 00 */	cmpwi r0, 0
/* 80A72348  41 82 00 28 */	beq lbl_80A72370
/* 80A7234C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A72350  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A72354  4B 6D 35 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A72358  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A7235C  38 00 00 00 */	li r0, 0
/* 80A72360  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A72364  3C 60 80 A7 */	lis r3, lit_4551@ha /* 0x80A73A70@ha */
/* 80A72368  C0 03 3A 70 */	lfs f0, lit_4551@l(r3)  /* 0x80A73A70@l */
/* 80A7236C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A72370:
/* 80A72370  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A72374  2C 00 00 00 */	cmpwi r0, 0
/* 80A72378  41 82 00 28 */	beq lbl_80A723A0
/* 80A7237C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A72380  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A72384  4B 6D 35 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A72388  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A7238C  38 00 00 00 */	li r0, 0
/* 80A72390  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A72394  3C 60 80 A7 */	lis r3, lit_4551@ha /* 0x80A73A70@ha */
/* 80A72398  C0 03 3A 70 */	lfs f0, lit_4551@l(r3)  /* 0x80A73A70@l */
/* 80A7239C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A723A0:
/* 80A723A0  38 00 00 02 */	li r0, 2
/* 80A723A4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A723A8:
/* 80A723A8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A723AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A723B0  40 82 01 7C */	bne lbl_80A7252C
/* 80A723B4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A723B8  4B 6D 33 51 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A723BC  28 03 00 00 */	cmplwi r3, 0
/* 80A723C0  41 82 00 C8 */	beq lbl_80A72488
/* 80A723C4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A723C8  2C 00 00 01 */	cmpwi r0, 1
/* 80A723CC  41 82 00 2C */	beq lbl_80A723F8
/* 80A723D0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A723D4  4B 6D 33 29 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A723D8  38 00 00 00 */	li r0, 0
/* 80A723DC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A723E0  3C 60 80 A7 */	lis r3, lit_4186@ha /* 0x80A73A60@ha */
/* 80A723E4  C0 03 3A 60 */	lfs f0, lit_4186@l(r3)  /* 0x80A73A60@l */
/* 80A723E8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A723EC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A723F0  38 00 00 01 */	li r0, 1
/* 80A723F4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A723F8:
/* 80A723F8  38 00 00 00 */	li r0, 0
/* 80A723FC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A72400  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A72404  4B 6D 33 05 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A72408  7C 64 1B 78 */	mr r4, r3
/* 80A7240C  7F E3 FB 78 */	mr r3, r31
/* 80A72410  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80A72414  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80A72418  4B 6D 87 B9 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A7241C  2C 03 00 00 */	cmpwi r3, 0
/* 80A72420  40 82 00 3C */	bne lbl_80A7245C
/* 80A72424  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A72428  2C 00 00 00 */	cmpwi r0, 0
/* 80A7242C  41 82 00 28 */	beq lbl_80A72454
/* 80A72430  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A72434  4B 6D 32 C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A72438  38 00 00 00 */	li r0, 0
/* 80A7243C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A72440  3C 60 80 A7 */	lis r3, lit_4186@ha /* 0x80A73A60@ha */
/* 80A72444  C0 03 3A 60 */	lfs f0, lit_4186@l(r3)  /* 0x80A73A60@l */
/* 80A72448  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A7244C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A72450  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A72454:
/* 80A72454  38 00 00 00 */	li r0, 0
/* 80A72458  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A7245C:
/* 80A7245C  7F E3 FB 78 */	mr r3, r31
/* 80A72460  4B 6D 8E D9 */	bl srchPlayerActor__8daNpcT_cFv
/* 80A72464  2C 03 00 00 */	cmpwi r3, 0
/* 80A72468  40 82 00 C4 */	bne lbl_80A7252C
/* 80A7246C  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A72470  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A72474  7C 03 00 00 */	cmpw r3, r0
/* 80A72478  40 82 00 B4 */	bne lbl_80A7252C
/* 80A7247C  38 00 00 01 */	li r0, 1
/* 80A72480  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80A72484  48 00 00 A8 */	b lbl_80A7252C
lbl_80A72488:
/* 80A72488  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A7248C  2C 00 00 00 */	cmpwi r0, 0
/* 80A72490  41 82 00 28 */	beq lbl_80A724B8
/* 80A72494  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A72498  4B 6D 32 65 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A7249C  38 00 00 00 */	li r0, 0
/* 80A724A0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A724A4  3C 60 80 A7 */	lis r3, lit_4186@ha /* 0x80A73A60@ha */
/* 80A724A8  C0 03 3A 60 */	lfs f0, lit_4186@l(r3)  /* 0x80A73A60@l */
/* 80A724AC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A724B0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A724B4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A724B8:
/* 80A724B8  38 00 00 00 */	li r0, 0
/* 80A724BC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A724C0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A724C4  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A724C8  7C 04 00 00 */	cmpw r4, r0
/* 80A724CC  41 82 00 58 */	beq lbl_80A72524
/* 80A724D0  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80A724D4  28 00 00 00 */	cmplwi r0, 0
/* 80A724D8  41 82 00 30 */	beq lbl_80A72508
/* 80A724DC  7F E3 FB 78 */	mr r3, r31
/* 80A724E0  38 A0 FF FF */	li r5, -1
/* 80A724E4  38 C0 FF FF */	li r6, -1
/* 80A724E8  38 E0 00 0F */	li r7, 0xf
/* 80A724EC  39 00 00 00 */	li r8, 0
/* 80A724F0  4B 6D 91 59 */	bl step__8daNpcT_cFsiiii
/* 80A724F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A724F8  41 82 00 20 */	beq lbl_80A72518
/* 80A724FC  38 00 00 01 */	li r0, 1
/* 80A72500  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80A72504  48 00 00 14 */	b lbl_80A72518
lbl_80A72508:
/* 80A72508  7F E3 FB 78 */	mr r3, r31
/* 80A7250C  4B 6D 85 0D */	bl setAngle__8daNpcT_cFs
/* 80A72510  38 00 00 01 */	li r0, 1
/* 80A72514  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A72518:
/* 80A72518  38 00 00 00 */	li r0, 0
/* 80A7251C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A72520  48 00 00 0C */	b lbl_80A7252C
lbl_80A72524:
/* 80A72524  7F E3 FB 78 */	mr r3, r31
/* 80A72528  4B 6D 8E 11 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80A7252C:
/* 80A7252C  38 60 00 01 */	li r3, 1
/* 80A72530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A72534  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A72538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7253C  7C 08 03 A6 */	mtlr r0
/* 80A72540  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72544  4E 80 00 20 */	blr 

lbl_80A99604:
/* 80A99604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A99608  7C 08 02 A6 */	mflr r0
/* 80A9960C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A99614  93 C1 00 08 */	stw r30, 8(r1)
/* 80A99618  7C 7F 1B 78 */	mr r31, r3
/* 80A9961C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A99620  2C 00 00 02 */	cmpwi r0, 2
/* 80A99624  41 82 00 94 */	beq lbl_80A996B8
/* 80A99628  40 80 02 28 */	bge lbl_80A99850
/* 80A9962C  2C 00 00 00 */	cmpwi r0, 0
/* 80A99630  40 80 00 0C */	bge lbl_80A9963C
/* 80A99634  48 00 02 1C */	b lbl_80A99850
/* 80A99638  48 00 02 18 */	b lbl_80A99850
lbl_80A9963C:
/* 80A9963C  38 00 00 00 */	li r0, 0
/* 80A99640  98 1F 0F 84 */	stb r0, 0xf84(r31)
/* 80A99644  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A99648  2C 00 00 00 */	cmpwi r0, 0
/* 80A9964C  40 82 00 6C */	bne lbl_80A996B8
/* 80A99650  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A99654  2C 00 00 09 */	cmpwi r0, 9
/* 80A99658  41 82 00 28 */	beq lbl_80A99680
/* 80A9965C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A99660  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A99664  4B 6A C2 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A99668  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A9966C  38 00 00 09 */	li r0, 9
/* 80A99670  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A99674  3C 60 80 AA */	lis r3, lit_4673@ha
/* 80A99678  C0 03 B9 4C */	lfs f0, lit_4673@l(r3)
/* 80A9967C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A99680:
/* 80A99680  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A99684  2C 00 00 00 */	cmpwi r0, 0
/* 80A99688  41 82 00 28 */	beq lbl_80A996B0
/* 80A9968C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A99690  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A99694  4B 6A C2 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A99698  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A9969C  38 00 00 00 */	li r0, 0
/* 80A996A0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A996A4  3C 60 80 AA */	lis r3, lit_4673@ha
/* 80A996A8  C0 03 B9 4C */	lfs f0, lit_4673@l(r3)
/* 80A996AC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A996B0:
/* 80A996B0  38 00 00 02 */	li r0, 2
/* 80A996B4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A996B8:
/* 80A996B8  38 00 00 00 */	li r0, 0
/* 80A996BC  98 1F 0F 84 */	stb r0, 0xf84(r31)
/* 80A996C0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A996C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A996C8  40 82 01 88 */	bne lbl_80A99850
/* 80A996CC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A996D0  4B 6A C0 38 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A996D4  28 03 00 00 */	cmplwi r3, 0
/* 80A996D8  41 82 00 C8 */	beq lbl_80A997A0
/* 80A996DC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A996E0  2C 00 00 01 */	cmpwi r0, 1
/* 80A996E4  41 82 00 2C */	beq lbl_80A99710
/* 80A996E8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A996EC  4B 6A C0 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A996F0  38 00 00 00 */	li r0, 0
/* 80A996F4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A996F8  3C 60 80 AA */	lis r3, lit_4346@ha
/* 80A996FC  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)
/* 80A99700  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A99704  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A99708  38 00 00 01 */	li r0, 1
/* 80A9970C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A99710:
/* 80A99710  38 00 00 00 */	li r0, 0
/* 80A99714  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A99718  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A9971C  4B 6A BF EC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A99720  7C 64 1B 78 */	mr r4, r3
/* 80A99724  7F E3 FB 78 */	mr r3, r31
/* 80A99728  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80A9972C  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80A99730  4B 6B 14 A0 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A99734  2C 03 00 00 */	cmpwi r3, 0
/* 80A99738  40 82 00 3C */	bne lbl_80A99774
/* 80A9973C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A99740  2C 00 00 00 */	cmpwi r0, 0
/* 80A99744  41 82 00 28 */	beq lbl_80A9976C
/* 80A99748  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9974C  4B 6A BF B0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A99750  38 00 00 00 */	li r0, 0
/* 80A99754  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A99758  3C 60 80 AA */	lis r3, lit_4346@ha
/* 80A9975C  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)
/* 80A99760  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A99764  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A99768  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A9976C:
/* 80A9976C  38 00 00 00 */	li r0, 0
/* 80A99770  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A99774:
/* 80A99774  7F E3 FB 78 */	mr r3, r31
/* 80A99778  4B 6B 1B C0 */	b srchPlayerActor__8daNpcT_cFv
/* 80A9977C  2C 03 00 00 */	cmpwi r3, 0
/* 80A99780  40 82 00 D0 */	bne lbl_80A99850
/* 80A99784  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A99788  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A9978C  7C 03 00 00 */	cmpw r3, r0
/* 80A99790  40 82 00 C0 */	bne lbl_80A99850
/* 80A99794  38 00 00 01 */	li r0, 1
/* 80A99798  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80A9979C  48 00 00 B4 */	b lbl_80A99850
lbl_80A997A0:
/* 80A997A0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A997A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A997A8  41 82 00 28 */	beq lbl_80A997D0
/* 80A997AC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A997B0  4B 6A BF 4C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A997B4  38 00 00 00 */	li r0, 0
/* 80A997B8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A997BC  3C 60 80 AA */	lis r3, lit_4346@ha
/* 80A997C0  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)
/* 80A997C4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A997C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A997CC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A997D0:
/* 80A997D0  38 00 00 00 */	li r0, 0
/* 80A997D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A997D8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A997DC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A997E0  7C 04 00 00 */	cmpw r4, r0
/* 80A997E4  41 82 00 58 */	beq lbl_80A9983C
/* 80A997E8  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80A997EC  28 00 00 00 */	cmplwi r0, 0
/* 80A997F0  41 82 00 30 */	beq lbl_80A99820
/* 80A997F4  7F E3 FB 78 */	mr r3, r31
/* 80A997F8  38 A0 00 09 */	li r5, 9
/* 80A997FC  38 C0 00 07 */	li r6, 7
/* 80A99800  38 E0 00 0F */	li r7, 0xf
/* 80A99804  39 00 00 00 */	li r8, 0
/* 80A99808  4B 6B 1E 40 */	b step__8daNpcT_cFsiiii
/* 80A9980C  2C 03 00 00 */	cmpwi r3, 0
/* 80A99810  41 82 00 20 */	beq lbl_80A99830
/* 80A99814  38 00 00 01 */	li r0, 1
/* 80A99818  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80A9981C  48 00 00 14 */	b lbl_80A99830
lbl_80A99820:
/* 80A99820  7F E3 FB 78 */	mr r3, r31
/* 80A99824  4B 6B 11 F4 */	b setAngle__8daNpcT_cFs
/* 80A99828  38 00 00 01 */	li r0, 1
/* 80A9982C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A99830:
/* 80A99830  38 00 00 00 */	li r0, 0
/* 80A99834  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A99838  48 00 00 18 */	b lbl_80A99850
lbl_80A9983C:
/* 80A9983C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A99840  28 00 00 00 */	cmplwi r0, 0
/* 80A99844  40 82 00 0C */	bne lbl_80A99850
/* 80A99848  7F E3 FB 78 */	mr r3, r31
/* 80A9984C  4B 6B 1A EC */	b srchPlayerActor__8daNpcT_cFv
lbl_80A99850:
/* 80A99850  38 60 00 01 */	li r3, 1
/* 80A99854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A99858  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9985C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A99860  7C 08 03 A6 */	mtlr r0
/* 80A99864  38 21 00 10 */	addi r1, r1, 0x10
/* 80A99868  4E 80 00 20 */	blr 

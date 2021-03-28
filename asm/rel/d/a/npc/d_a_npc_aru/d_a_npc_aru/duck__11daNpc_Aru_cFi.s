lbl_809543F8:
/* 809543F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809543FC  7C 08 02 A6 */	mflr r0
/* 80954400  90 01 00 44 */	stw r0, 0x44(r1)
/* 80954404  39 61 00 40 */	addi r11, r1, 0x40
/* 80954408  4B A0 DD CC */	b _savegpr_27
/* 8095440C  7C 7E 1B 78 */	mr r30, r3
/* 80954410  3C A0 80 95 */	lis r5, m__17daNpc_Aru_Param_c@ha
/* 80954414  3B E5 76 D0 */	addi r31, r5, m__17daNpc_Aru_Param_c@l
/* 80954418  38 BF 00 00 */	addi r5, r31, 0
/* 8095441C  AB 65 00 9A */	lha r27, 0x9a(r5)
/* 80954420  4B FF DF E1 */	bl getCowP__11daNpc_Aru_cFi
/* 80954424  7C 7C 1B 79 */	or. r28, r3, r3
/* 80954428  41 82 00 F4 */	beq lbl_8095451C
/* 8095442C  80 1E 0F C4 */	lwz r0, 0xfc4(r30)
/* 80954430  2C 00 00 00 */	cmpwi r0, 0
/* 80954434  40 82 00 5C */	bne lbl_80954490
/* 80954438  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8095443C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80954440  41 82 00 24 */	beq lbl_80954464
/* 80954444  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80954448  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8095444C  4B 7F 14 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80954450  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80954454  38 00 00 0C */	li r0, 0xc
/* 80954458  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8095445C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80954460  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80954464:
/* 80954464  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80954468  2C 00 00 0A */	cmpwi r0, 0xa
/* 8095446C  41 82 00 24 */	beq lbl_80954490
/* 80954470  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80954474  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80954478  4B 7F 14 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8095447C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80954480  38 00 00 0A */	li r0, 0xa
/* 80954484  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80954488  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8095448C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80954490:
/* 80954490  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 80954494  C8 7F 01 08 */	lfd f3, 0x108(r31)
/* 80954498  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 8095449C  90 61 00 0C */	stw r3, 0xc(r1)
/* 809544A0  3C 00 43 30 */	lis r0, 0x4330
/* 809544A4  90 01 00 08 */	stw r0, 8(r1)
/* 809544A8  C8 01 00 08 */	lfd f0, 8(r1)
/* 809544AC  EC 00 18 28 */	fsubs f0, f0, f3
/* 809544B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 809544B4  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 809544B8  90 61 00 14 */	stw r3, 0x14(r1)
/* 809544BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809544C0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 809544C4  EC 00 18 28 */	fsubs f0, f0, f3
/* 809544C8  EC 42 00 32 */	fmuls f2, f2, f0
/* 809544CC  48 00 2E E5 */	bl func_809573B0
/* 809544D0  FC 00 08 1E */	fctiwz f0, f1
/* 809544D4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809544D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809544DC  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 809544E0  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 809544E4  4B 7F 12 24 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809544E8  28 03 00 00 */	cmplwi r3, 0
/* 809544EC  41 82 00 24 */	beq lbl_80954510
/* 809544F0  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 809544F4  4B 7F 12 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809544F8  28 03 00 00 */	cmplwi r3, 0
/* 809544FC  41 82 00 20 */	beq lbl_8095451C
/* 80954500  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80954504  4B 7F 12 04 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80954508  7C 1C 18 40 */	cmplw r28, r3
/* 8095450C  41 82 00 10 */	beq lbl_8095451C
lbl_80954510:
/* 80954510  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80954514  7F 84 E3 78 */	mr r4, r28
/* 80954518  4B 7F 11 C8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8095451C:
/* 8095451C  80 1E 0F C4 */	lwz r0, 0xfc4(r30)
/* 80954520  2C 00 00 00 */	cmpwi r0, 0
/* 80954524  41 82 02 04 */	beq lbl_80954728
/* 80954528  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 8095452C  48 00 2E 69 */	bl func_80957394
/* 80954530  2C 03 00 00 */	cmpwi r3, 0
/* 80954534  41 82 01 94 */	beq lbl_809546C8
/* 80954538  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 8095453C  4B 7F 11 CC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80954540  7C 7D 1B 79 */	or. r29, r3, r3
/* 80954544  41 82 00 14 */	beq lbl_80954558
/* 80954548  7F C3 F3 78 */	mr r3, r30
/* 8095454C  7F A4 EB 78 */	mr r4, r29
/* 80954550  4B FF F7 35 */	bl srchActorDirection__11daNpc_Aru_cFP10fopAc_ac_c
/* 80954554  B0 7E 0F C8 */	sth r3, 0xfc8(r30)
lbl_80954558:
/* 80954558  7F C3 F3 78 */	mr r3, r30
/* 8095455C  4B FF F7 FD */	bl adjustMoveDir__11daNpc_Aru_cFv
/* 80954560  AB 7E 04 DE */	lha r27, 0x4de(r30)
/* 80954564  A8 1E 0F CA */	lha r0, 0xfca(r30)
/* 80954568  2C 00 00 06 */	cmpwi r0, 6
/* 8095456C  41 82 00 44 */	beq lbl_809545B0
/* 80954570  40 80 00 1C */	bge lbl_8095458C
/* 80954574  2C 00 00 02 */	cmpwi r0, 2
/* 80954578  41 82 00 30 */	beq lbl_809545A8
/* 8095457C  40 80 00 38 */	bge lbl_809545B4
/* 80954580  2C 00 00 01 */	cmpwi r0, 1
/* 80954584  40 80 00 14 */	bge lbl_80954598
/* 80954588  48 00 00 2C */	b lbl_809545B4
lbl_8095458C:
/* 8095458C  2C 00 00 08 */	cmpwi r0, 8
/* 80954590  40 80 00 24 */	bge lbl_809545B4
/* 80954594  48 00 00 0C */	b lbl_809545A0
lbl_80954598:
/* 80954598  3B 7B F0 00 */	addi r27, r27, -4096
/* 8095459C  48 00 00 18 */	b lbl_809545B4
lbl_809545A0:
/* 809545A0  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 809545A4  48 00 00 10 */	b lbl_809545B4
lbl_809545A8:
/* 809545A8  3B 7B C0 00 */	addi r27, r27, -16384
/* 809545AC  48 00 00 08 */	b lbl_809545B4
lbl_809545B0:
/* 809545B0  3B 7B 40 00 */	addi r27, r27, 0x4000
lbl_809545B4:
/* 809545B4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809545B8  4B 7F 11 50 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809545BC  7C 63 E8 50 */	subf r3, r3, r29
/* 809545C0  30 03 FF FF */	addic r0, r3, -1
/* 809545C4  7C 00 19 10 */	subfe r0, r0, r3
/* 809545C8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809545CC  40 82 00 10 */	bne lbl_809545DC
/* 809545D0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809545D4  2C 00 00 02 */	cmpwi r0, 2
/* 809545D8  41 82 00 30 */	beq lbl_80954608
lbl_809545DC:
/* 809545DC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809545E0  4B 7F 11 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 809545E4  38 00 00 00 */	li r0, 0
/* 809545E8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809545EC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809545F0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809545F4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809545F8  38 00 00 02 */	li r0, 2
/* 809545FC  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80954600  38 00 00 01 */	li r0, 1
/* 80954604  48 00 00 08 */	b lbl_8095460C
lbl_80954608:
/* 80954608  38 00 00 00 */	li r0, 0
lbl_8095460C:
/* 8095460C  2C 00 00 00 */	cmpwi r0, 0
/* 80954610  41 82 00 28 */	beq lbl_80954638
/* 80954614  7F A3 EB 78 */	mr r3, r29
/* 80954618  4B 6C 46 C8 */	b fopAc_IsActor__FPv
/* 8095461C  2C 03 00 00 */	cmpwi r3, 0
/* 80954620  41 82 00 18 */	beq lbl_80954638
/* 80954624  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80954628  7F A4 EB 78 */	mr r4, r29
/* 8095462C  4B 7F 10 B4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80954630  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80954634  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_80954638:
/* 80954638  38 00 00 00 */	li r0, 0
/* 8095463C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80954640  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80954644  7F 64 DB 78 */	mr r4, r27
/* 80954648  38 A0 00 06 */	li r5, 6
/* 8095464C  38 C0 08 00 */	li r6, 0x800
/* 80954650  4B 91 BF B8 */	b cLib_addCalcAngleS2__FPssss
/* 80954654  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80954658  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8095465C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80954660  B0 1E 0D 7A */	sth r0, 0xd7a(r30)
/* 80954664  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80954668  38 9F 00 00 */	addi r4, r31, 0
/* 8095466C  C0 24 00 90 */	lfs f1, 0x90(r4)
/* 80954670  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 80954674  4B 91 C0 CC */	b cLib_chaseF__FPfff
/* 80954678  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8095467C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80954680  A8 1E 0D CA */	lha r0, 0xdca(r30)
/* 80954684  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80954688  7C 63 02 14 */	add r3, r3, r0
/* 8095468C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80954690  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80954694  EC 00 00 72 */	fmuls f0, f0, f1
/* 80954698  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8095469C  A8 1E 0D CA */	lha r0, 0xdca(r30)
/* 809546A0  2C 00 00 00 */	cmpwi r0, 0
/* 809546A4  40 80 00 14 */	bge lbl_809546B8
/* 809546A8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809546AC  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 809546B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 809546B4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_809546B8:
/* 809546B8  38 00 00 25 */	li r0, 0x25
/* 809546BC  98 1E 08 78 */	stb r0, 0x878(r30)
/* 809546C0  38 60 00 01 */	li r3, 1
/* 809546C4  48 00 00 68 */	b lbl_8095472C
lbl_809546C8:
/* 809546C8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809546CC  2C 00 00 0C */	cmpwi r0, 0xc
/* 809546D0  41 82 00 24 */	beq lbl_809546F4
/* 809546D4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809546D8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809546DC  4B 7F 11 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809546E0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809546E4  38 00 00 0C */	li r0, 0xc
/* 809546E8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809546EC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 809546F0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809546F4:
/* 809546F4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809546F8  2C 00 00 00 */	cmpwi r0, 0
/* 809546FC  41 82 00 24 */	beq lbl_80954720
/* 80954700  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80954704  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80954708  4B 7F 11 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8095470C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80954710  38 00 00 00 */	li r0, 0
/* 80954714  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80954718  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8095471C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80954720:
/* 80954720  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80954724  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80954728:
/* 80954728  38 60 00 00 */	li r3, 0
lbl_8095472C:
/* 8095472C  39 61 00 40 */	addi r11, r1, 0x40
/* 80954730  4B A0 DA F0 */	b _restgpr_27
/* 80954734  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80954738  7C 08 03 A6 */	mtlr r0
/* 8095473C  38 21 00 40 */	addi r1, r1, 0x40
/* 80954740  4E 80 00 20 */	blr 

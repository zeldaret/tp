lbl_80B44628:
/* 80B44628  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4462C  7C 08 02 A6 */	mflr r0
/* 80B44630  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B44634  39 61 00 30 */	addi r11, r1, 0x30
/* 80B44638  4B 81 DB A5 */	bl _savegpr_29
/* 80B4463C  7C 7E 1B 78 */	mr r30, r3
/* 80B44640  3C 60 80 B4 */	lis r3, m__19daNpc_yamiD_Param_c@ha /* 0x80B4604C@ha */
/* 80B44644  3B E3 60 4C */	addi r31, r3, m__19daNpc_yamiD_Param_c@l /* 0x80B4604C@l */
/* 80B44648  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80B4464C  2C 00 00 02 */	cmpwi r0, 2
/* 80B44650  41 82 00 8C */	beq lbl_80B446DC
/* 80B44654  40 80 02 90 */	bge lbl_80B448E4
/* 80B44658  2C 00 00 00 */	cmpwi r0, 0
/* 80B4465C  40 80 00 0C */	bge lbl_80B44668
/* 80B44660  48 00 02 84 */	b lbl_80B448E4
/* 80B44664  48 00 02 80 */	b lbl_80B448E4
lbl_80B44668:
/* 80B44668  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B4466C  2C 00 00 00 */	cmpwi r0, 0
/* 80B44670  40 82 00 6C */	bne lbl_80B446DC
/* 80B44674  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B44678  2C 00 00 01 */	cmpwi r0, 1
/* 80B4467C  41 82 00 24 */	beq lbl_80B446A0
/* 80B44680  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B44684  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B44688  4B 60 12 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4468C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B44690  38 00 00 01 */	li r0, 1
/* 80B44694  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B44698  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B4469C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B446A0:
/* 80B446A0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B446A4  2C 00 00 00 */	cmpwi r0, 0
/* 80B446A8  41 82 00 24 */	beq lbl_80B446CC
/* 80B446AC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B446B0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B446B4  4B 60 11 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B446B8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B446BC  38 00 00 00 */	li r0, 0
/* 80B446C0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B446C4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B446C8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B446CC:
/* 80B446CC  38 00 00 00 */	li r0, 0
/* 80B446D0  98 1E 0F 82 */	stb r0, 0xf82(r30)
/* 80B446D4  38 00 00 02 */	li r0, 2
/* 80B446D8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B446DC:
/* 80B446DC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B446E0  2C 00 00 00 */	cmpwi r0, 0
/* 80B446E4  40 82 02 00 */	bne lbl_80B448E4
/* 80B446E8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B446EC  4B 60 10 1D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B446F0  28 03 00 00 */	cmplwi r3, 0
/* 80B446F4  41 82 01 4C */	beq lbl_80B44840
/* 80B446F8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B446FC  28 00 00 00 */	cmplwi r0, 0
/* 80B44700  40 82 01 40 */	bne lbl_80B44840
/* 80B44704  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B44708  2C 00 00 00 */	cmpwi r0, 0
/* 80B4470C  41 82 00 24 */	beq lbl_80B44730
/* 80B44710  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B44714  4B 60 0F E9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B44718  38 00 00 00 */	li r0, 0
/* 80B4471C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B44720  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B44724  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B44728  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B4472C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B44730:
/* 80B44730  38 00 00 00 */	li r0, 0
/* 80B44734  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B44738  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B4473C  4B 60 0F CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B44740  7C 64 1B 78 */	mr r4, r3
/* 80B44744  7F C3 F3 78 */	mr r3, r30
/* 80B44748  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80B4474C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B44750  4B 60 64 81 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B44754  2C 03 00 00 */	cmpwi r3, 0
/* 80B44758  41 82 00 B4 */	beq lbl_80B4480C
/* 80B4475C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B44760  2C 00 00 01 */	cmpwi r0, 1
/* 80B44764  41 82 00 28 */	beq lbl_80B4478C
/* 80B44768  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4476C  4B 60 0F 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B44770  38 00 00 00 */	li r0, 0
/* 80B44774  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B44778  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B4477C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B44780  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B44784  38 00 00 01 */	li r0, 1
/* 80B44788  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B4478C:
/* 80B4478C  38 00 00 00 */	li r0, 0
/* 80B44790  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B44794  88 1E 0F 82 */	lbz r0, 0xf82(r30)
/* 80B44798  7C 00 07 75 */	extsb. r0, r0
/* 80B4479C  40 82 00 70 */	bne lbl_80B4480C
/* 80B447A0  88 1E 0F 81 */	lbz r0, 0xf81(r30)
/* 80B447A4  7C 00 07 75 */	extsb. r0, r0
/* 80B447A8  40 82 00 64 */	bne lbl_80B4480C
/* 80B447AC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B447B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B447B4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B447B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B447BC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B447C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B447C4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005006F@ha */
/* 80B447C8  38 03 00 6F */	addi r0, r3, 0x006F /* 0x0005006F@l */
/* 80B447CC  90 01 00 08 */	stw r0, 8(r1)
/* 80B447D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B447D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B447D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B447DC  38 81 00 08 */	addi r4, r1, 8
/* 80B447E0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B447E4  38 C0 00 00 */	li r6, 0
/* 80B447E8  38 E0 00 00 */	li r7, 0
/* 80B447EC  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B447F0  FC 40 08 90 */	fmr f2, f1
/* 80B447F4  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 80B447F8  FC 80 18 90 */	fmr f4, f3
/* 80B447FC  39 00 00 00 */	li r8, 0
/* 80B44800  4B 76 71 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B44804  38 00 00 01 */	li r0, 1
/* 80B44808  98 1E 0F 82 */	stb r0, 0xf82(r30)
lbl_80B4480C:
/* 80B4480C  7F C3 F3 78 */	mr r3, r30
/* 80B44810  4B 60 6B 29 */	bl srchPlayerActor__8daNpcT_cFv
/* 80B44814  2C 03 00 00 */	cmpwi r3, 0
/* 80B44818  40 82 00 CC */	bne lbl_80B448E4
/* 80B4481C  38 00 00 00 */	li r0, 0
/* 80B44820  98 1E 0F 82 */	stb r0, 0xf82(r30)
/* 80B44824  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80B44828  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B4482C  7C 03 00 00 */	cmpw r3, r0
/* 80B44830  40 82 00 B4 */	bne lbl_80B448E4
/* 80B44834  38 00 00 01 */	li r0, 1
/* 80B44838  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B4483C  48 00 00 A8 */	b lbl_80B448E4
lbl_80B44840:
/* 80B44840  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B44844  2C 00 00 00 */	cmpwi r0, 0
/* 80B44848  41 82 00 24 */	beq lbl_80B4486C
/* 80B4484C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B44850  4B 60 0E AD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B44854  38 00 00 00 */	li r0, 0
/* 80B44858  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B4485C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B44860  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B44864  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B44868  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B4486C:
/* 80B4486C  38 00 00 00 */	li r0, 0
/* 80B44870  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B44874  98 1E 0F 82 */	stb r0, 0xf82(r30)
/* 80B44878  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80B4487C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B44880  7C 04 00 00 */	cmpw r4, r0
/* 80B44884  41 82 00 58 */	beq lbl_80B448DC
/* 80B44888  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80B4488C  28 00 00 00 */	cmplwi r0, 0
/* 80B44890  40 82 00 18 */	bne lbl_80B448A8
/* 80B44894  7F C3 F3 78 */	mr r3, r30
/* 80B44898  4B 60 61 81 */	bl setAngle__8daNpcT_cFs
/* 80B4489C  38 00 00 01 */	li r0, 1
/* 80B448A0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B448A4  48 00 00 2C */	b lbl_80B448D0
lbl_80B448A8:
/* 80B448A8  7F C3 F3 78 */	mr r3, r30
/* 80B448AC  38 A0 00 01 */	li r5, 1
/* 80B448B0  38 C0 00 01 */	li r6, 1
/* 80B448B4  38 E0 00 0F */	li r7, 0xf
/* 80B448B8  39 00 00 00 */	li r8, 0
/* 80B448BC  4B 60 6D 8D */	bl step__8daNpcT_cFsiiii
/* 80B448C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B448C4  41 82 00 0C */	beq lbl_80B448D0
/* 80B448C8  38 00 00 01 */	li r0, 1
/* 80B448CC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B448D0:
/* 80B448D0  38 00 00 00 */	li r0, 0
/* 80B448D4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B448D8  48 00 00 0C */	b lbl_80B448E4
lbl_80B448DC:
/* 80B448DC  7F C3 F3 78 */	mr r3, r30
/* 80B448E0  4B 60 6A 59 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B448E4:
/* 80B448E4  38 60 00 01 */	li r3, 1
/* 80B448E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B448EC  4B 81 D9 3D */	bl _restgpr_29
/* 80B448F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B448F4  7C 08 03 A6 */	mtlr r0
/* 80B448F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B448FC  4E 80 00 20 */	blr 

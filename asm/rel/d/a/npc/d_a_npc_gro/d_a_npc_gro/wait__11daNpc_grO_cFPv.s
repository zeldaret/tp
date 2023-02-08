lbl_809DD758:
/* 809DD758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DD75C  7C 08 02 A6 */	mflr r0
/* 809DD760  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DD764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DD768  93 C1 00 08 */	stw r30, 8(r1)
/* 809DD76C  7C 7F 1B 78 */	mr r31, r3
/* 809DD770  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809DD774  2C 00 00 02 */	cmpwi r0, 2
/* 809DD778  41 82 00 74 */	beq lbl_809DD7EC
/* 809DD77C  40 80 01 C8 */	bge lbl_809DD944
/* 809DD780  2C 00 00 00 */	cmpwi r0, 0
/* 809DD784  41 82 00 0C */	beq lbl_809DD790
/* 809DD788  48 00 01 BC */	b lbl_809DD944
/* 809DD78C  48 00 01 B8 */	b lbl_809DD944
lbl_809DD790:
/* 809DD790  38 80 00 0C */	li r4, 0xc
/* 809DD794  3C A0 80 9E */	lis r5, lit_4812@ha /* 0x809DF01C@ha */
/* 809DD798  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)  /* 0x809DF01C@l */
/* 809DD79C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809DD7A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DD7A4  7D 89 03 A6 */	mtctr r12
/* 809DD7A8  4E 80 04 21 */	bctrl 
/* 809DD7AC  7F E3 FB 78 */	mr r3, r31
/* 809DD7B0  38 80 00 00 */	li r4, 0
/* 809DD7B4  3C A0 80 9E */	lis r5, lit_4812@ha /* 0x809DF01C@ha */
/* 809DD7B8  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)  /* 0x809DF01C@l */
/* 809DD7BC  38 A0 00 00 */	li r5, 0
/* 809DD7C0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809DD7C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809DD7C8  7D 89 03 A6 */	mtctr r12
/* 809DD7CC  4E 80 04 21 */	bctrl 
/* 809DD7D0  7F E3 FB 78 */	mr r3, r31
/* 809DD7D4  38 80 00 00 */	li r4, 0
/* 809DD7D8  4B FF FC 01 */	bl setLookMode__11daNpc_grO_cFi
/* 809DD7DC  38 00 00 00 */	li r0, 0
/* 809DD7E0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809DD7E4  38 00 00 02 */	li r0, 2
/* 809DD7E8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809DD7EC:
/* 809DD7EC  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809DD7F0  28 00 00 00 */	cmplwi r0, 0
/* 809DD7F4  40 82 01 50 */	bne lbl_809DD944
/* 809DD7F8  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DD7FC  4B 77 2E F1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809DD800  30 03 FF FF */	addic r0, r3, -1
/* 809DD804  7C 00 19 10 */	subfe r0, r0, r3
/* 809DD808  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 809DD80C  7F E3 FB 78 */	mr r3, r31
/* 809DD810  7F C4 F3 78 */	mr r4, r30
/* 809DD814  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809DD818  4B 77 71 C9 */	bl chkFindPlayer2__8daNpcF_cFis
/* 809DD81C  2C 03 00 00 */	cmpwi r3, 0
/* 809DD820  41 82 00 2C */	beq lbl_809DD84C
/* 809DD824  2C 1E 00 00 */	cmpwi r30, 0
/* 809DD828  40 82 00 3C */	bne lbl_809DD864
/* 809DD82C  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DD830  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DD834  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DD838  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809DD83C  4B 77 2E 81 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809DD840  38 00 00 00 */	li r0, 0
/* 809DD844  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809DD848  48 00 00 1C */	b lbl_809DD864
lbl_809DD84C:
/* 809DD84C  2C 1E 00 00 */	cmpwi r30, 0
/* 809DD850  41 82 00 14 */	beq lbl_809DD864
/* 809DD854  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DD858  4B 77 2E 89 */	bl remove__18daNpcF_ActorMngr_cFv
/* 809DD85C  38 00 00 00 */	li r0, 0
/* 809DD860  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809DD864:
/* 809DD864  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DD868  4B 77 2E 85 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809DD86C  28 03 00 00 */	cmplwi r3, 0
/* 809DD870  41 82 00 14 */	beq lbl_809DD884
/* 809DD874  7F E3 FB 78 */	mr r3, r31
/* 809DD878  38 80 00 02 */	li r4, 2
/* 809DD87C  4B FF FB 5D */	bl setLookMode__11daNpc_grO_cFi
/* 809DD880  48 00 00 44 */	b lbl_809DD8C4
lbl_809DD884:
/* 809DD884  7F E3 FB 78 */	mr r3, r31
/* 809DD888  38 80 00 00 */	li r4, 0
/* 809DD88C  4B FF FB 4D */	bl setLookMode__11daNpc_grO_cFi
/* 809DD890  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809DD894  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809DD898  7C 04 00 00 */	cmpw r4, r0
/* 809DD89C  41 82 00 28 */	beq lbl_809DD8C4
/* 809DD8A0  7F E3 FB 78 */	mr r3, r31
/* 809DD8A4  38 A0 00 0C */	li r5, 0xc
/* 809DD8A8  38 C0 00 08 */	li r6, 8
/* 809DD8AC  38 E0 00 0F */	li r7, 0xf
/* 809DD8B0  4B 77 67 F5 */	bl step__8daNpcF_cFsiii
/* 809DD8B4  2C 03 00 00 */	cmpwi r3, 0
/* 809DD8B8  41 82 00 0C */	beq lbl_809DD8C4
/* 809DD8BC  38 00 00 00 */	li r0, 0
/* 809DD8C0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809DD8C4:
/* 809DD8C4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809DD8C8  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809DD8CC  7C 03 00 00 */	cmpw r3, r0
/* 809DD8D0  40 82 00 6C */	bne lbl_809DD93C
/* 809DD8D4  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DD8D8  4B 77 2E 15 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809DD8DC  30 03 FF FF */	addic r0, r3, -1
/* 809DD8E0  7C 00 19 10 */	subfe r0, r0, r3
/* 809DD8E4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809DD8E8  7F E3 FB 78 */	mr r3, r31
/* 809DD8EC  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha /* 0x80152654@ha */
/* 809DD8F0  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l /* 0x80152654@l */
/* 809DD8F4  3C C0 80 9E */	lis r6, m__17daNpc_grO_Param_c@ha /* 0x809DEF7C@ha */
/* 809DD8F8  38 C6 EF 7C */	addi r6, r6, m__17daNpc_grO_Param_c@l /* 0x809DEF7C@l */
/* 809DD8FC  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 809DD900  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 809DD904  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 809DD908  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 809DD90C  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 809DD910  38 E0 00 78 */	li r7, 0x78
/* 809DD914  39 00 00 01 */	li r8, 1
/* 809DD918  4B 77 6A 55 */	bl getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 809DD91C  7C 64 1B 79 */	or. r4, r3, r3
/* 809DD920  41 82 00 24 */	beq lbl_809DD944
/* 809DD924  38 7F 0C 84 */	addi r3, r31, 0xc84
/* 809DD928  4B 77 2D 95 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809DD92C  7F E3 FB 78 */	mr r3, r31
/* 809DD930  38 80 00 04 */	li r4, 4
/* 809DD934  4B FF FA A5 */	bl setLookMode__11daNpc_grO_cFi
/* 809DD938  48 00 00 0C */	b lbl_809DD944
lbl_809DD93C:
/* 809DD93C  38 00 00 00 */	li r0, 0
/* 809DD940  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_809DD944:
/* 809DD944  38 60 00 01 */	li r3, 1
/* 809DD948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DD94C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DD950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DD954  7C 08 03 A6 */	mtlr r0
/* 809DD958  38 21 00 10 */	addi r1, r1, 0x10
/* 809DD95C  4E 80 00 20 */	blr 

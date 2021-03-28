lbl_80B81788:
/* 80B81788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8178C  7C 08 02 A6 */	mflr r0
/* 80B81790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B81794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B81798  93 C1 00 08 */	stw r30, 8(r1)
/* 80B8179C  7C 7F 1B 78 */	mr r31, r3
/* 80B817A0  48 00 0B 61 */	bl calcModulation__11daNpc_zrA_cFv
/* 80B817A4  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80B817A8  2C 00 00 00 */	cmpwi r0, 0
/* 80B817AC  40 82 01 50 */	bne lbl_80B818FC
/* 80B817B0  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B817B4  4B 5C EF 38 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B817B8  30 03 FF FF */	addic r0, r3, -1
/* 80B817BC  7C 00 19 10 */	subfe r0, r0, r3
/* 80B817C0  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80B817C4  7F E3 FB 78 */	mr r3, r31
/* 80B817C8  7F C4 F3 78 */	mr r4, r30
/* 80B817CC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B817D0  4B 5D 32 10 */	b chkFindPlayer2__8daNpcF_cFis
/* 80B817D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B817D8  41 82 00 2C */	beq lbl_80B81804
/* 80B817DC  2C 1E 00 00 */	cmpwi r30, 0
/* 80B817E0  40 82 00 3C */	bne lbl_80B8181C
/* 80B817E4  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B817E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B817EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B817F0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B817F4  4B 5C EE C8 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B817F8  38 00 00 00 */	li r0, 0
/* 80B817FC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B81800  48 00 00 1C */	b lbl_80B8181C
lbl_80B81804:
/* 80B81804  2C 1E 00 00 */	cmpwi r30, 0
/* 80B81808  41 82 00 14 */	beq lbl_80B8181C
/* 80B8180C  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B81810  4B 5C EE D0 */	b remove__18daNpcF_ActorMngr_cFv
/* 80B81814  38 00 00 00 */	li r0, 0
/* 80B81818  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80B8181C:
/* 80B8181C  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B81820  4B 5C EE CC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B81824  28 03 00 00 */	cmplwi r3, 0
/* 80B81828  41 82 00 14 */	beq lbl_80B8183C
/* 80B8182C  7F E3 FB 78 */	mr r3, r31
/* 80B81830  38 80 00 02 */	li r4, 2
/* 80B81834  4B FF CE C1 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B81838  48 00 00 44 */	b lbl_80B8187C
lbl_80B8183C:
/* 80B8183C  7F E3 FB 78 */	mr r3, r31
/* 80B81840  38 80 00 00 */	li r4, 0
/* 80B81844  4B FF CE B1 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B81848  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B8184C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B81850  7C 04 00 00 */	cmpw r4, r0
/* 80B81854  41 82 00 28 */	beq lbl_80B8187C
/* 80B81858  7F E3 FB 78 */	mr r3, r31
/* 80B8185C  38 A0 FF FF */	li r5, -1
/* 80B81860  38 C0 FF FF */	li r6, -1
/* 80B81864  38 E0 00 0F */	li r7, 0xf
/* 80B81868  4B 5D 28 3C */	b step__8daNpcF_cFsiii
/* 80B8186C  2C 03 00 00 */	cmpwi r3, 0
/* 80B81870  41 82 00 0C */	beq lbl_80B8187C
/* 80B81874  38 00 00 00 */	li r0, 0
/* 80B81878  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B8187C:
/* 80B8187C  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80B81880  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B81884  7C 03 00 00 */	cmpw r3, r0
/* 80B81888  40 82 00 6C */	bne lbl_80B818F4
/* 80B8188C  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B81890  4B 5C EE 5C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B81894  30 03 FF FF */	addic r0, r3, -1
/* 80B81898  7C 00 19 10 */	subfe r0, r0, r3
/* 80B8189C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80B818A0  7F E3 FB 78 */	mr r3, r31
/* 80B818A4  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha
/* 80B818A8  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l
/* 80B818AC  3C C0 80 B9 */	lis r6, m__17daNpc_zrA_Param_c@ha
/* 80B818B0  38 C6 C4 58 */	addi r6, r6, m__17daNpc_zrA_Param_c@l
/* 80B818B4  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 80B818B8  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 80B818BC  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 80B818C0  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 80B818C4  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 80B818C8  38 E0 00 78 */	li r7, 0x78
/* 80B818CC  39 00 00 01 */	li r8, 1
/* 80B818D0  4B 5D 2A 9C */	b getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 80B818D4  7C 64 1B 79 */	or. r4, r3, r3
/* 80B818D8  41 82 00 24 */	beq lbl_80B818FC
/* 80B818DC  38 7F 13 24 */	addi r3, r31, 0x1324
/* 80B818E0  4B 5C ED DC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B818E4  7F E3 FB 78 */	mr r3, r31
/* 80B818E8  38 80 00 05 */	li r4, 5
/* 80B818EC  4B FF CE 09 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B818F0  48 00 00 0C */	b lbl_80B818FC
lbl_80B818F4:
/* 80B818F4  38 00 00 00 */	li r0, 0
/* 80B818F8  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_80B818FC:
/* 80B818FC  38 60 00 01 */	li r3, 1
/* 80B81900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B81904  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B81908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8190C  7C 08 03 A6 */	mtlr r0
/* 80B81910  38 21 00 10 */	addi r1, r1, 0x10
/* 80B81914  4E 80 00 20 */	blr 

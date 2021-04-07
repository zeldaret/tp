lbl_80A7838C:
/* 80A7838C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A78390  7C 08 02 A6 */	mflr r0
/* 80A78394  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A78398  39 61 00 50 */	addi r11, r1, 0x50
/* 80A7839C  4B 8E 9E 39 */	bl _savegpr_27
/* 80A783A0  7C 7D 1B 78 */	mr r29, r3
/* 80A783A4  7C 9B 23 78 */	mr r27, r4
/* 80A783A8  3B E0 00 00 */	li r31, 0
/* 80A783AC  3B C0 FF FF */	li r30, -1
/* 80A783B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A783B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A783B8  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A783BC  7F 83 E3 78 */	mr r3, r28
/* 80A783C0  3C A0 80 A8 */	lis r5, d_a_npc_moi__stringBase0@ha /* 0x80A7B0D8@ha */
/* 80A783C4  38 A5 B0 D8 */	addi r5, r5, d_a_npc_moi__stringBase0@l /* 0x80A7B0D8@l */
/* 80A783C8  38 A5 00 73 */	addi r5, r5, 0x73
/* 80A783CC  38 C0 00 03 */	li r6, 3
/* 80A783D0  4B 5C FD 1D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A783D4  28 03 00 00 */	cmplwi r3, 0
/* 80A783D8  41 82 00 08 */	beq lbl_80A783E0
/* 80A783DC  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A783E0:
/* 80A783E0  7F 83 E3 78 */	mr r3, r28
/* 80A783E4  7F 64 DB 78 */	mr r4, r27
/* 80A783E8  4B 5C F9 65 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A783EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A783F0  41 82 00 DC */	beq lbl_80A784CC
/* 80A783F4  2C 1E 00 01 */	cmpwi r30, 1
/* 80A783F8  41 82 00 10 */	beq lbl_80A78408
/* 80A783FC  40 80 00 D0 */	bge lbl_80A784CC
/* 80A78400  48 00 00 CC */	b lbl_80A784CC
/* 80A78404  48 00 00 C8 */	b lbl_80A784CC
lbl_80A78408:
/* 80A78408  80 7D 15 E8 */	lwz r3, 0x15e8(r29)
/* 80A7840C  80 83 00 08 */	lwz r4, 8(r3)
/* 80A78410  80 64 00 04 */	lwz r3, 4(r4)
/* 80A78414  80 04 00 08 */	lwz r0, 8(r4)
/* 80A78418  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A7841C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A78420  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A78424  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A78428  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80A7842C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A78430  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80A78434  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A78438  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A7843C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A78440  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80A78444  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A78448  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A7844C  7F A3 EB 78 */	mr r3, r29
/* 80A78450  38 81 00 14 */	addi r4, r1, 0x14
/* 80A78454  4B 6D 24 B5 */	bl setPos__8daNpcT_cF4cXyz
/* 80A78458  38 00 00 00 */	li r0, 0
/* 80A7845C  B0 1D 16 04 */	sth r0, 0x1604(r29)
/* 80A78460  38 7D 15 E8 */	addi r3, r29, 0x15e8
/* 80A78464  80 9D 15 E8 */	lwz r4, 0x15e8(r29)
/* 80A78468  A0 84 00 00 */	lhz r4, 0(r4)
/* 80A7846C  4B 6C D9 65 */	bl setNextIdx__13daNpcT_Path_cFi
/* 80A78470  A0 1D 16 04 */	lhz r0, 0x1604(r29)
/* 80A78474  80 7D 15 E8 */	lwz r3, 0x15e8(r29)
/* 80A78478  80 63 00 08 */	lwz r3, 8(r3)
/* 80A7847C  54 00 20 36 */	slwi r0, r0, 4
/* 80A78480  7C 83 02 14 */	add r4, r3, r0
/* 80A78484  80 64 00 04 */	lwz r3, 4(r4)
/* 80A78488  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7848C  90 61 00 08 */	stw r3, 8(r1)
/* 80A78490  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A78494  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A78498  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7849C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A784A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A784A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A784A8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A784AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A784B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A784B4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A784B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A784BC  4B 7F 87 49 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A784C0  7C 64 1B 78 */	mr r4, r3
/* 80A784C4  7F A3 EB 78 */	mr r3, r29
/* 80A784C8  4B 6D 25 51 */	bl setAngle__8daNpcT_cFs
lbl_80A784CC:
/* 80A784CC  2C 1E 00 01 */	cmpwi r30, 1
/* 80A784D0  41 82 00 60 */	beq lbl_80A78530
/* 80A784D4  40 80 00 10 */	bge lbl_80A784E4
/* 80A784D8  2C 1E 00 00 */	cmpwi r30, 0
/* 80A784DC  40 80 00 14 */	bge lbl_80A784F0
/* 80A784E0  48 00 01 00 */	b lbl_80A785E0
lbl_80A784E4:
/* 80A784E4  2C 1E 00 03 */	cmpwi r30, 3
/* 80A784E8  40 80 00 F8 */	bge lbl_80A785E0
/* 80A784EC  48 00 00 4C */	b lbl_80A78538
lbl_80A784F0:
/* 80A784F0  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A784F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A784F8  41 82 00 28 */	beq lbl_80A78520
/* 80A784FC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A78500  4B 6C D1 FD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A78504  38 00 00 00 */	li r0, 0
/* 80A78508  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A7850C  3C 60 80 A8 */	lis r3, lit_4115@ha /* 0x80A7AFD8@ha */
/* 80A78510  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)  /* 0x80A7AFD8@l */
/* 80A78514  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A78518  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A7851C  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80A78520:
/* 80A78520  38 00 00 00 */	li r0, 0
/* 80A78524  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A78528  3B E0 00 01 */	li r31, 1
/* 80A7852C  48 00 00 B4 */	b lbl_80A785E0
lbl_80A78530:
/* 80A78530  3B E0 00 01 */	li r31, 1
/* 80A78534  48 00 00 AC */	b lbl_80A785E0
lbl_80A78538:
/* 80A78538  38 7D 15 D8 */	addi r3, r29, 0x15d8
/* 80A7853C  4B 6C D1 CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A78540  7C 7C 1B 79 */	or. r28, r3, r3
/* 80A78544  41 82 00 98 */	beq lbl_80A785DC
/* 80A78548  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A7854C  4B 6C D1 BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A78550  7C 63 E0 50 */	subf r3, r3, r28
/* 80A78554  30 03 FF FF */	addic r0, r3, -1
/* 80A78558  7C 00 19 10 */	subfe r0, r0, r3
/* 80A7855C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A78560  40 82 00 10 */	bne lbl_80A78570
/* 80A78564  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A78568  2C 00 00 02 */	cmpwi r0, 2
/* 80A7856C  41 82 00 34 */	beq lbl_80A785A0
lbl_80A78570:
/* 80A78570  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A78574  4B 6C D1 89 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A78578  38 00 00 00 */	li r0, 0
/* 80A7857C  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A78580  3C 60 80 A8 */	lis r3, lit_4115@ha /* 0x80A7AFD8@ha */
/* 80A78584  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)  /* 0x80A7AFD8@l */
/* 80A78588  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A7858C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A78590  38 00 00 02 */	li r0, 2
/* 80A78594  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80A78598  38 00 00 01 */	li r0, 1
/* 80A7859C  48 00 00 08 */	b lbl_80A785A4
lbl_80A785A0:
/* 80A785A0  38 00 00 00 */	li r0, 0
lbl_80A785A4:
/* 80A785A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A785A8  41 82 00 2C */	beq lbl_80A785D4
/* 80A785AC  7F 83 E3 78 */	mr r3, r28
/* 80A785B0  4B 5A 07 31 */	bl fopAc_IsActor__FPv
/* 80A785B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A785B8  41 82 00 1C */	beq lbl_80A785D4
/* 80A785BC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A785C0  7F 84 E3 78 */	mr r4, r28
/* 80A785C4  4B 6C D1 1D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A785C8  3C 60 80 A8 */	lis r3, lit_4115@ha /* 0x80A7AFD8@ha */
/* 80A785CC  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)  /* 0x80A7AFD8@l */
/* 80A785D0  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
lbl_80A785D4:
/* 80A785D4  38 00 00 00 */	li r0, 0
/* 80A785D8  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_80A785DC:
/* 80A785DC  3B E0 00 01 */	li r31, 1
lbl_80A785E0:
/* 80A785E0  7F E3 FB 78 */	mr r3, r31
/* 80A785E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A785E8  4B 8E 9C 39 */	bl _restgpr_27
/* 80A785EC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A785F0  7C 08 03 A6 */	mtlr r0
/* 80A785F4  38 21 00 50 */	addi r1, r1, 0x50
/* 80A785F8  4E 80 00 20 */	blr 

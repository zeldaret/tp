lbl_80B65278:
/* 80B65278  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B6527C  7C 08 02 A6 */	mflr r0
/* 80B65280  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B65284  39 61 00 30 */	addi r11, r1, 0x30
/* 80B65288  4B 7F CF 54 */	b _savegpr_29
/* 80B6528C  7C 7F 1B 78 */	mr r31, r3
/* 80B65290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B65294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B65298  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80B6529C  A0 1F 0E 22 */	lhz r0, 0xe22(r31)
/* 80B652A0  2C 00 00 02 */	cmpwi r0, 2
/* 80B652A4  41 82 00 8C */	beq lbl_80B65330
/* 80B652A8  40 80 02 08 */	bge lbl_80B654B0
/* 80B652AC  2C 00 00 00 */	cmpwi r0, 0
/* 80B652B0  40 80 00 0C */	bge lbl_80B652BC
/* 80B652B4  48 00 01 FC */	b lbl_80B654B0
/* 80B652B8  48 00 01 F8 */	b lbl_80B654B0
lbl_80B652BC:
/* 80B652BC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B652C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B652C4  40 82 00 6C */	bne lbl_80B65330
/* 80B652C8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B652CC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B652D0  41 82 00 28 */	beq lbl_80B652F8
/* 80B652D4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B652D8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B652DC  4B 5E 05 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B652E0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B652E4  38 00 00 0D */	li r0, 0xd
/* 80B652E8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B652EC  3C 60 80 B6 */	lis r3, lit_5096@ha
/* 80B652F0  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)
/* 80B652F4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B652F8:
/* 80B652F8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B652FC  2C 00 00 01 */	cmpwi r0, 1
/* 80B65300  41 82 00 28 */	beq lbl_80B65328
/* 80B65304  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B65308  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6530C  4B 5E 05 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B65310  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B65314  38 00 00 01 */	li r0, 1
/* 80B65318  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B6531C  3C 60 80 B6 */	lis r3, lit_5096@ha
/* 80B65320  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)
/* 80B65324  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B65328:
/* 80B65328  38 00 00 02 */	li r0, 2
/* 80B6532C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B65330:
/* 80B65330  88 1F 10 62 */	lbz r0, 0x1062(r31)
/* 80B65334  28 00 00 00 */	cmplwi r0, 0
/* 80B65338  41 82 00 18 */	beq lbl_80B65350
/* 80B6533C  38 00 00 03 */	li r0, 3
/* 80B65340  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B65344  38 00 00 01 */	li r0, 1
/* 80B65348  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80B6534C  48 00 00 44 */	b lbl_80B65390
lbl_80B65350:
/* 80B65350  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B65354  4B 5E 03 B4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B65358  28 03 00 00 */	cmplwi r3, 0
/* 80B6535C  41 82 00 34 */	beq lbl_80B65390
/* 80B65360  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B65364  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B65368  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B6536C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B65370  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B65374  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B65378  38 81 00 08 */	addi r4, r1, 8
/* 80B6537C  48 00 28 49 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80B65380  2C 03 00 00 */	cmpwi r3, 0
/* 80B65384  41 82 00 0C */	beq lbl_80B65390
/* 80B65388  38 00 00 01 */	li r0, 1
/* 80B6538C  98 1F 0E 32 */	stb r0, 0xe32(r31)
lbl_80B65390:
/* 80B65390  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B65394  2C 00 00 00 */	cmpwi r0, 0
/* 80B65398  40 82 01 18 */	bne lbl_80B654B0
/* 80B6539C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B653A0  4B 5E 03 68 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B653A4  28 03 00 00 */	cmplwi r3, 0
/* 80B653A8  41 82 00 C8 */	beq lbl_80B65470
/* 80B653AC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B653B0  2C 00 00 01 */	cmpwi r0, 1
/* 80B653B4  41 82 00 2C */	beq lbl_80B653E0
/* 80B653B8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B653BC  4B 5E 03 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B653C0  38 00 00 00 */	li r0, 0
/* 80B653C4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B653C8  3C 60 80 B6 */	lis r3, lit_4358@ha
/* 80B653CC  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)
/* 80B653D0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B653D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B653D8  38 00 00 01 */	li r0, 1
/* 80B653DC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B653E0:
/* 80B653E0  38 00 00 00 */	li r0, 0
/* 80B653E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B653E8  38 60 00 5B */	li r3, 0x5b
/* 80B653EC  4B 5E 76 C0 */	b daNpcT_chkEvtBit__FUl
/* 80B653F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B653F4  41 82 00 14 */	beq lbl_80B65408
/* 80B653F8  38 60 00 5C */	li r3, 0x5c
/* 80B653FC  4B 5E 76 B0 */	b daNpcT_chkEvtBit__FUl
/* 80B65400  2C 03 00 00 */	cmpwi r3, 0
/* 80B65404  41 82 00 AC */	beq lbl_80B654B0
lbl_80B65408:
/* 80B65408  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6540C  4B 5E 02 FC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B65410  7C 64 1B 78 */	mr r4, r3
/* 80B65414  7F E3 FB 78 */	mr r3, r31
/* 80B65418  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80B6541C  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80B65420  4B 5E 57 B0 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B65424  2C 03 00 00 */	cmpwi r3, 0
/* 80B65428  40 82 00 3C */	bne lbl_80B65464
/* 80B6542C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B65430  2C 00 00 00 */	cmpwi r0, 0
/* 80B65434  41 82 00 28 */	beq lbl_80B6545C
/* 80B65438  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6543C  4B 5E 02 C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B65440  38 00 00 00 */	li r0, 0
/* 80B65444  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B65448  3C 60 80 B6 */	lis r3, lit_4358@ha
/* 80B6544C  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)
/* 80B65450  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B65454  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B65458  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6545C:
/* 80B6545C  38 00 00 00 */	li r0, 0
/* 80B65460  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B65464:
/* 80B65464  7F E3 FB 78 */	mr r3, r31
/* 80B65468  4B 5E 5E D0 */	b srchPlayerActor__8daNpcT_cFv
/* 80B6546C  48 00 00 44 */	b lbl_80B654B0
lbl_80B65470:
/* 80B65470  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B65474  2C 00 00 00 */	cmpwi r0, 0
/* 80B65478  41 82 00 28 */	beq lbl_80B654A0
/* 80B6547C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B65480  4B 5E 02 7C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B65484  38 00 00 00 */	li r0, 0
/* 80B65488  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6548C  3C 60 80 B6 */	lis r3, lit_4358@ha
/* 80B65490  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)
/* 80B65494  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B65498  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6549C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B654A0:
/* 80B654A0  38 00 00 00 */	li r0, 0
/* 80B654A4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B654A8  7F E3 FB 78 */	mr r3, r31
/* 80B654AC  4B 5E 5E 8C */	b srchPlayerActor__8daNpcT_cFv
lbl_80B654B0:
/* 80B654B0  38 60 00 01 */	li r3, 1
/* 80B654B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B654B8  4B 7F CD 70 */	b _restgpr_29
/* 80B654BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B654C0  7C 08 03 A6 */	mtlr r0
/* 80B654C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B654C8  4E 80 00 20 */	blr 

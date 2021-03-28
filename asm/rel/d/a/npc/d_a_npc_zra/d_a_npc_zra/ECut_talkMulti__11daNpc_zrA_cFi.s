lbl_80B806FC:
/* 80B806FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B80700  7C 08 02 A6 */	mflr r0
/* 80B80704  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B80708  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8070C  4B 7E 1A C8 */	b _savegpr_27
/* 80B80710  7C 7F 1B 78 */	mr r31, r3
/* 80B80714  7C 9B 23 78 */	mr r27, r4
/* 80B80718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B8071C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B80720  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B80724  3B A0 00 00 */	li r29, 0
/* 80B80728  3B 80 FF FF */	li r28, -1
/* 80B8072C  3C 60 80 B9 */	lis r3, lit_7164@ha
/* 80B80730  38 83 CB C0 */	addi r4, r3, lit_7164@l
/* 80B80734  80 64 00 00 */	lwz r3, 0(r4)
/* 80B80738  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8073C  90 61 00 08 */	stw r3, 8(r1)
/* 80B80740  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B80744  93 E1 00 08 */	stw r31, 8(r1)
/* 80B80748  38 7F 13 2C */	addi r3, r31, 0x132c
/* 80B8074C  4B 5C FF A0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B80750  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B80754  7F C3 F3 78 */	mr r3, r30
/* 80B80758  7F 64 DB 78 */	mr r4, r27
/* 80B8075C  3C A0 80 B9 */	lis r5, struct_80B8CD30+0x0@ha
/* 80B80760  38 A5 CD 30 */	addi r5, r5, struct_80B8CD30+0x0@l
/* 80B80764  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B80768  38 C0 00 03 */	li r6, 3
/* 80B8076C  4B 4C 79 80 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B80770  28 03 00 00 */	cmplwi r3, 0
/* 80B80774  41 82 00 08 */	beq lbl_80B8077C
/* 80B80778  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B8077C:
/* 80B8077C  7F C3 F3 78 */	mr r3, r30
/* 80B80780  7F 64 DB 78 */	mr r4, r27
/* 80B80784  4B 4C 75 C8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B80788  2C 03 00 00 */	cmpwi r3, 0
/* 80B8078C  41 82 00 38 */	beq lbl_80B807C4
/* 80B80790  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80B80794  41 82 00 20 */	beq lbl_80B807B4
/* 80B80798  40 80 00 2C */	bge lbl_80B807C4
/* 80B8079C  2C 1C 00 00 */	cmpwi r28, 0
/* 80B807A0  41 82 00 08 */	beq lbl_80B807A8
/* 80B807A4  48 00 00 20 */	b lbl_80B807C4
lbl_80B807A8:
/* 80B807A8  38 7F 13 2C */	addi r3, r31, 0x132c
/* 80B807AC  4B 5C FF 34 */	b remove__18daNpcF_ActorMngr_cFv
/* 80B807B0  48 00 00 14 */	b lbl_80B807C4
lbl_80B807B4:
/* 80B807B4  7F E3 FB 78 */	mr r3, r31
/* 80B807B8  80 9F 14 E0 */	lwz r4, 0x14e0(r31)
/* 80B807BC  38 A1 00 08 */	addi r5, r1, 8
/* 80B807C0  4B 5D 35 5C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80B807C4:
/* 80B807C4  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80B807C8  41 82 00 54 */	beq lbl_80B8081C
/* 80B807CC  40 80 00 74 */	bge lbl_80B80840
/* 80B807D0  2C 1C 00 00 */	cmpwi r28, 0
/* 80B807D4  41 82 00 08 */	beq lbl_80B807DC
/* 80B807D8  48 00 00 68 */	b lbl_80B80840
lbl_80B807DC:
/* 80B807DC  38 7F 13 2C */	addi r3, r31, 0x132c
/* 80B807E0  4B 5C FF 0C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B807E4  28 03 00 00 */	cmplwi r3, 0
/* 80B807E8  40 82 00 2C */	bne lbl_80B80814
/* 80B807EC  3C 60 80 B8 */	lis r3, s_subMulti__FPvPv@ha
/* 80B807F0  38 63 06 4C */	addi r3, r3, s_subMulti__FPvPv@l
/* 80B807F4  7F E4 FB 78 */	mr r4, r31
/* 80B807F8  4B 4A 0B 40 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B807FC  7C 64 1B 79 */	or. r4, r3, r3
/* 80B80800  41 82 00 44 */	beq lbl_80B80844
/* 80B80804  38 7F 13 2C */	addi r3, r31, 0x132c
/* 80B80808  4B 5C FE B4 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B8080C  3B A0 00 01 */	li r29, 1
/* 80B80810  48 00 00 34 */	b lbl_80B80844
lbl_80B80814:
/* 80B80814  3B A0 00 01 */	li r29, 1
/* 80B80818  48 00 00 2C */	b lbl_80B80844
lbl_80B8081C:
/* 80B8081C  7F E3 FB 78 */	mr r3, r31
/* 80B80820  38 80 00 00 */	li r4, 0
/* 80B80824  38 A0 00 00 */	li r5, 0
/* 80B80828  38 C1 00 08 */	addi r6, r1, 8
/* 80B8082C  4B 5D 35 58 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B80830  2C 03 00 00 */	cmpwi r3, 0
/* 80B80834  41 82 00 10 */	beq lbl_80B80844
/* 80B80838  3B A0 00 01 */	li r29, 1
/* 80B8083C  48 00 00 08 */	b lbl_80B80844
lbl_80B80840:
/* 80B80840  3B A0 00 01 */	li r29, 1
lbl_80B80844:
/* 80B80844  7F A3 EB 78 */	mr r3, r29
/* 80B80848  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8084C  4B 7E 19 D4 */	b _restgpr_27
/* 80B80850  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B80854  7C 08 03 A6 */	mtlr r0
/* 80B80858  38 21 00 30 */	addi r1, r1, 0x30
/* 80B8085C  4E 80 00 20 */	blr 

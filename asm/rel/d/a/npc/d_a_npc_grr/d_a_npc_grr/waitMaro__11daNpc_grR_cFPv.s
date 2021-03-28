lbl_809E29B8:
/* 809E29B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E29BC  7C 08 02 A6 */	mflr r0
/* 809E29C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E29C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E29C8  93 C1 00 08 */	stw r30, 8(r1)
/* 809E29CC  7C 7F 1B 78 */	mr r31, r3
/* 809E29D0  A0 03 0E 0E */	lhz r0, 0xe0e(r3)
/* 809E29D4  2C 00 00 02 */	cmpwi r0, 2
/* 809E29D8  41 82 00 7C */	beq lbl_809E2A54
/* 809E29DC  40 80 01 50 */	bge lbl_809E2B2C
/* 809E29E0  2C 00 00 00 */	cmpwi r0, 0
/* 809E29E4  41 82 00 0C */	beq lbl_809E29F0
/* 809E29E8  48 00 01 44 */	b lbl_809E2B2C
/* 809E29EC  48 00 01 40 */	b lbl_809E2B2C
lbl_809E29F0:
/* 809E29F0  38 80 00 02 */	li r4, 2
/* 809E29F4  3C A0 80 9E */	lis r5, lit_4718@ha
/* 809E29F8  C0 25 39 78 */	lfs f1, lit_4718@l(r5)
/* 809E29FC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809E2A00  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E2A04  7D 89 03 A6 */	mtctr r12
/* 809E2A08  4E 80 04 21 */	bctrl 
/* 809E2A0C  7F E3 FB 78 */	mr r3, r31
/* 809E2A10  38 80 00 02 */	li r4, 2
/* 809E2A14  3C A0 80 9E */	lis r5, lit_4718@ha
/* 809E2A18  C0 25 39 78 */	lfs f1, lit_4718@l(r5)
/* 809E2A1C  38 A0 00 00 */	li r5, 0
/* 809E2A20  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E2A24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E2A28  7D 89 03 A6 */	mtctr r12
/* 809E2A2C  4E 80 04 21 */	bctrl 
/* 809E2A30  7F E3 FB 78 */	mr r3, r31
/* 809E2A34  38 80 00 00 */	li r4, 0
/* 809E2A38  4B FF FA 49 */	bl setLookMode__11daNpc_grR_cFi
/* 809E2A3C  38 00 00 00 */	li r0, 0
/* 809E2A40  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809E2A44  38 00 00 01 */	li r0, 1
/* 809E2A48  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 809E2A4C  38 00 00 02 */	li r0, 2
/* 809E2A50  B0 1F 0E 0E */	sth r0, 0xe0e(r31)
lbl_809E2A54:
/* 809E2A54  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809E2A58  28 00 00 00 */	cmplwi r0, 0
/* 809E2A5C  40 82 00 D0 */	bne lbl_809E2B2C
/* 809E2A60  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809E2A64  4B 76 DC 88 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809E2A68  30 03 FF FF */	addic r0, r3, -1
/* 809E2A6C  7C 00 19 10 */	subfe r0, r0, r3
/* 809E2A70  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 809E2A74  7F E3 FB 78 */	mr r3, r31
/* 809E2A78  7F C4 F3 78 */	mr r4, r30
/* 809E2A7C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809E2A80  4B 77 1F 60 */	b chkFindPlayer2__8daNpcF_cFis
/* 809E2A84  2C 03 00 00 */	cmpwi r3, 0
/* 809E2A88  41 82 00 2C */	beq lbl_809E2AB4
/* 809E2A8C  2C 1E 00 00 */	cmpwi r30, 0
/* 809E2A90  40 82 00 3C */	bne lbl_809E2ACC
/* 809E2A94  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809E2A98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809E2A9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809E2AA0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809E2AA4  4B 76 DC 18 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809E2AA8  38 00 00 00 */	li r0, 0
/* 809E2AAC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809E2AB0  48 00 00 1C */	b lbl_809E2ACC
lbl_809E2AB4:
/* 809E2AB4  2C 1E 00 00 */	cmpwi r30, 0
/* 809E2AB8  41 82 00 14 */	beq lbl_809E2ACC
/* 809E2ABC  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809E2AC0  4B 76 DC 20 */	b remove__18daNpcF_ActorMngr_cFv
/* 809E2AC4  38 00 00 00 */	li r0, 0
/* 809E2AC8  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809E2ACC:
/* 809E2ACC  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809E2AD0  4B 76 DC 1C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809E2AD4  28 03 00 00 */	cmplwi r3, 0
/* 809E2AD8  41 82 00 14 */	beq lbl_809E2AEC
/* 809E2ADC  7F E3 FB 78 */	mr r3, r31
/* 809E2AE0  38 80 00 02 */	li r4, 2
/* 809E2AE4  4B FF F9 9D */	bl setLookMode__11daNpc_grR_cFi
/* 809E2AE8  48 00 00 44 */	b lbl_809E2B2C
lbl_809E2AEC:
/* 809E2AEC  7F E3 FB 78 */	mr r3, r31
/* 809E2AF0  38 80 00 00 */	li r4, 0
/* 809E2AF4  4B FF F9 8D */	bl setLookMode__11daNpc_grR_cFi
/* 809E2AF8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809E2AFC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809E2B00  7C 04 00 00 */	cmpw r4, r0
/* 809E2B04  41 82 00 28 */	beq lbl_809E2B2C
/* 809E2B08  7F E3 FB 78 */	mr r3, r31
/* 809E2B0C  38 A0 00 07 */	li r5, 7
/* 809E2B10  38 C0 00 0A */	li r6, 0xa
/* 809E2B14  38 E0 00 0F */	li r7, 0xf
/* 809E2B18  4B 77 15 8C */	b step__8daNpcF_cFsiii
/* 809E2B1C  2C 03 00 00 */	cmpwi r3, 0
/* 809E2B20  41 82 00 0C */	beq lbl_809E2B2C
/* 809E2B24  38 00 00 00 */	li r0, 0
/* 809E2B28  B0 1F 0E 0E */	sth r0, 0xe0e(r31)
lbl_809E2B2C:
/* 809E2B2C  38 60 00 01 */	li r3, 1
/* 809E2B30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E2B34  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E2B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E2B3C  7C 08 03 A6 */	mtlr r0
/* 809E2B40  38 21 00 10 */	addi r1, r1, 0x10
/* 809E2B44  4E 80 00 20 */	blr 

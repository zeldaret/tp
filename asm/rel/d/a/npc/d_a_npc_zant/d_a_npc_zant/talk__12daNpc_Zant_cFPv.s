lbl_80B6D584:
/* 80B6D584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6D588  7C 08 02 A6 */	mflr r0
/* 80B6D58C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6D590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6D594  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6D598  7C 7F 1B 78 */	mr r31, r3
/* 80B6D59C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B6D5A0  2C 00 00 02 */	cmpwi r0, 2
/* 80B6D5A4  41 82 00 4C */	beq lbl_80B6D5F0
/* 80B6D5A8  40 80 01 B8 */	bge lbl_80B6D760
/* 80B6D5AC  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D5B0  40 80 00 0C */	bge lbl_80B6D5BC
/* 80B6D5B4  48 00 01 AC */	b lbl_80B6D760
/* 80B6D5B8  48 00 01 A8 */	b lbl_80B6D760
lbl_80B6D5BC:
/* 80B6D5BC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6D5C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D5C4  40 82 00 2C */	bne lbl_80B6D5F0
/* 80B6D5C8  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B6D5CC  38 A0 00 00 */	li r5, 0
/* 80B6D5D0  4B 5D E6 20 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B6D5D4  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80B6D5D8  2C 00 00 01 */	cmpwi r0, 1
/* 80B6D5DC  40 82 00 0C */	bne lbl_80B6D5E8
/* 80B6D5E0  38 00 00 00 */	li r0, 0
/* 80B6D5E4  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_80B6D5E8:
/* 80B6D5E8  38 00 00 02 */	li r0, 2
/* 80B6D5EC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6D5F0:
/* 80B6D5F0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6D5F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D5F8  40 82 01 68 */	bne lbl_80B6D760
/* 80B6D5FC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B6D600  28 00 00 00 */	cmplwi r0, 0
/* 80B6D604  40 82 00 28 */	bne lbl_80B6D62C
/* 80B6D608  7F E3 FB 78 */	mr r3, r31
/* 80B6D60C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B6D610  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80B6D614  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B6D618  4B 4A D0 F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B6D61C  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B6D620  7C 60 07 34 */	extsh r0, r3
/* 80B6D624  7C 04 00 00 */	cmpw r4, r0
/* 80B6D628  40 82 00 D4 */	bne lbl_80B6D6FC
lbl_80B6D62C:
/* 80B6D62C  7F E3 FB 78 */	mr r3, r31
/* 80B6D630  38 80 00 00 */	li r4, 0
/* 80B6D634  38 A0 00 00 */	li r5, 0
/* 80B6D638  38 C0 00 00 */	li r6, 0
/* 80B6D63C  38 E0 00 00 */	li r7, 0
/* 80B6D640  4B 5D E6 38 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B6D644  2C 03 00 00 */	cmpwi r3, 0
/* 80B6D648  41 82 00 30 */	beq lbl_80B6D678
/* 80B6D64C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6D650  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B6D654  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B6D658  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B6D65C  4B 5D 80 84 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B6D660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6D664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6D668  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B6D66C  4B 4D 4D FC */	b reset__14dEvt_control_cFv
/* 80B6D670  38 00 00 03 */	li r0, 3
/* 80B6D674  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6D678:
/* 80B6D678  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6D67C  2C 00 00 01 */	cmpwi r0, 1
/* 80B6D680  41 82 00 2C */	beq lbl_80B6D6AC
/* 80B6D684  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6D688  4B 5D 80 74 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6D68C  38 00 00 00 */	li r0, 0
/* 80B6D690  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6D694  3C 60 80 B7 */	lis r3, lit_4176@ha
/* 80B6D698  C0 03 EA 48 */	lfs f0, lit_4176@l(r3)
/* 80B6D69C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6D6A0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D6A4  38 00 00 01 */	li r0, 1
/* 80B6D6A8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6D6AC:
/* 80B6D6AC  38 00 00 00 */	li r0, 0
/* 80B6D6B0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D6B4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B6D6B8  28 00 00 00 */	cmplwi r0, 0
/* 80B6D6BC  41 82 00 A4 */	beq lbl_80B6D760
/* 80B6D6C0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6D6C4  2C 00 00 00 */	cmpwi r0, 0
/* 80B6D6C8  41 82 00 28 */	beq lbl_80B6D6F0
/* 80B6D6CC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6D6D0  4B 5D 80 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6D6D4  38 00 00 00 */	li r0, 0
/* 80B6D6D8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6D6DC  3C 60 80 B7 */	lis r3, lit_4176@ha
/* 80B6D6E0  C0 03 EA 48 */	lfs f0, lit_4176@l(r3)
/* 80B6D6E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6D6E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D6EC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6D6F0:
/* 80B6D6F0  38 00 00 00 */	li r0, 0
/* 80B6D6F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D6F8  48 00 00 68 */	b lbl_80B6D760
lbl_80B6D6FC:
/* 80B6D6FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6D700  2C 00 00 01 */	cmpwi r0, 1
/* 80B6D704  41 82 00 2C */	beq lbl_80B6D730
/* 80B6D708  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6D70C  4B 5D 7F F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B6D710  38 00 00 00 */	li r0, 0
/* 80B6D714  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6D718  3C 60 80 B7 */	lis r3, lit_4176@ha
/* 80B6D71C  C0 03 EA 48 */	lfs f0, lit_4176@l(r3)
/* 80B6D720  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6D724  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D728  38 00 00 01 */	li r0, 1
/* 80B6D72C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6D730:
/* 80B6D730  38 00 00 00 */	li r0, 0
/* 80B6D734  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6D738  7F E3 FB 78 */	mr r3, r31
/* 80B6D73C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B6D740  4B 4A CF D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B6D744  7C 64 1B 78 */	mr r4, r3
/* 80B6D748  7F E3 FB 78 */	mr r3, r31
/* 80B6D74C  38 A0 FF FF */	li r5, -1
/* 80B6D750  38 C0 FF FF */	li r6, -1
/* 80B6D754  38 E0 00 0F */	li r7, 0xf
/* 80B6D758  39 00 00 00 */	li r8, 0
/* 80B6D75C  4B 5D DE EC */	b step__8daNpcT_cFsiiii
lbl_80B6D760:
/* 80B6D760  38 60 00 00 */	li r3, 0
/* 80B6D764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6D768  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6D76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6D770  7C 08 03 A6 */	mtlr r0
/* 80B6D774  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6D778  4E 80 00 20 */	blr 

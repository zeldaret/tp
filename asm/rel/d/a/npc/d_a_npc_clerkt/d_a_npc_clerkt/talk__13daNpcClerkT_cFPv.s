lbl_8099B60C:
/* 8099B60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099B610  7C 08 02 A6 */	mflr r0
/* 8099B614  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099B618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099B61C  93 C1 00 08 */	stw r30, 8(r1)
/* 8099B620  7C 7F 1B 78 */	mr r31, r3
/* 8099B624  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8099B628  2C 00 00 02 */	cmpwi r0, 2
/* 8099B62C  41 82 00 4C */	beq lbl_8099B678
/* 8099B630  40 80 01 B8 */	bge lbl_8099B7E8
/* 8099B634  2C 00 00 00 */	cmpwi r0, 0
/* 8099B638  40 80 00 0C */	bge lbl_8099B644
/* 8099B63C  48 00 01 AC */	b lbl_8099B7E8
/* 8099B640  48 00 01 A8 */	b lbl_8099B7E8
lbl_8099B644:
/* 8099B644  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8099B648  2C 00 00 00 */	cmpwi r0, 0
/* 8099B64C  40 82 00 2C */	bne lbl_8099B678
/* 8099B650  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8099B654  38 A0 00 00 */	li r5, 0
/* 8099B658  4B 7B 05 98 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8099B65C  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 8099B660  2C 00 00 01 */	cmpwi r0, 1
/* 8099B664  40 82 00 0C */	bne lbl_8099B670
/* 8099B668  38 00 00 00 */	li r0, 0
/* 8099B66C  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_8099B670:
/* 8099B670  38 00 00 02 */	li r0, 2
/* 8099B674  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8099B678:
/* 8099B678  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8099B67C  2C 00 00 00 */	cmpwi r0, 0
/* 8099B680  40 82 01 68 */	bne lbl_8099B7E8
/* 8099B684  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8099B688  28 00 00 00 */	cmplwi r0, 0
/* 8099B68C  40 82 00 28 */	bne lbl_8099B6B4
/* 8099B690  7F E3 FB 78 */	mr r3, r31
/* 8099B694  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8099B698  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8099B69C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8099B6A0  4B 67 F0 70 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8099B6A4  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 8099B6A8  7C 60 07 34 */	extsh r0, r3
/* 8099B6AC  7C 04 00 00 */	cmpw r4, r0
/* 8099B6B0  40 82 00 D4 */	bne lbl_8099B784
lbl_8099B6B4:
/* 8099B6B4  7F E3 FB 78 */	mr r3, r31
/* 8099B6B8  38 80 00 00 */	li r4, 0
/* 8099B6BC  38 A0 00 00 */	li r5, 0
/* 8099B6C0  38 C0 00 00 */	li r6, 0
/* 8099B6C4  38 E0 00 00 */	li r7, 0
/* 8099B6C8  4B 7B 05 B0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8099B6CC  2C 03 00 00 */	cmpwi r3, 0
/* 8099B6D0  41 82 00 30 */	beq lbl_8099B700
/* 8099B6D4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8099B6D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8099B6DC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8099B6E0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8099B6E4  4B 7A 9F FC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8099B6E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099B6EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099B6F0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8099B6F4  4B 6A 6D 74 */	b reset__14dEvt_control_cFv
/* 8099B6F8  38 00 00 03 */	li r0, 3
/* 8099B6FC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8099B700:
/* 8099B700  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8099B704  2C 00 00 01 */	cmpwi r0, 1
/* 8099B708  41 82 00 2C */	beq lbl_8099B734
/* 8099B70C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099B710  4B 7A 9F EC */	b remove__18daNpcT_ActorMngr_cFv
/* 8099B714  38 00 00 00 */	li r0, 0
/* 8099B718  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8099B71C  3C 60 80 9A */	lis r3, lit_4123@ha
/* 8099B720  C0 03 D2 F0 */	lfs f0, lit_4123@l(r3)
/* 8099B724  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099B728  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B72C  38 00 00 01 */	li r0, 1
/* 8099B730  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8099B734:
/* 8099B734  38 00 00 00 */	li r0, 0
/* 8099B738  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B73C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8099B740  28 00 00 00 */	cmplwi r0, 0
/* 8099B744  41 82 00 A4 */	beq lbl_8099B7E8
/* 8099B748  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8099B74C  2C 00 00 00 */	cmpwi r0, 0
/* 8099B750  41 82 00 28 */	beq lbl_8099B778
/* 8099B754  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099B758  4B 7A 9F A4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8099B75C  38 00 00 00 */	li r0, 0
/* 8099B760  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8099B764  3C 60 80 9A */	lis r3, lit_4123@ha
/* 8099B768  C0 03 D2 F0 */	lfs f0, lit_4123@l(r3)
/* 8099B76C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099B770  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B774  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8099B778:
/* 8099B778  38 00 00 00 */	li r0, 0
/* 8099B77C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B780  48 00 00 68 */	b lbl_8099B7E8
lbl_8099B784:
/* 8099B784  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8099B788  2C 00 00 01 */	cmpwi r0, 1
/* 8099B78C  41 82 00 2C */	beq lbl_8099B7B8
/* 8099B790  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099B794  4B 7A 9F 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 8099B798  38 00 00 00 */	li r0, 0
/* 8099B79C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8099B7A0  3C 60 80 9A */	lis r3, lit_4123@ha
/* 8099B7A4  C0 03 D2 F0 */	lfs f0, lit_4123@l(r3)
/* 8099B7A8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099B7AC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B7B0  38 00 00 01 */	li r0, 1
/* 8099B7B4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8099B7B8:
/* 8099B7B8  38 00 00 00 */	li r0, 0
/* 8099B7BC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099B7C0  7F E3 FB 78 */	mr r3, r31
/* 8099B7C4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8099B7C8  4B 67 EF 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8099B7CC  7C 64 1B 78 */	mr r4, r3
/* 8099B7D0  7F E3 FB 78 */	mr r3, r31
/* 8099B7D4  38 A0 00 01 */	li r5, 1
/* 8099B7D8  38 C0 00 00 */	li r6, 0
/* 8099B7DC  38 E0 00 0F */	li r7, 0xf
/* 8099B7E0  39 00 00 00 */	li r8, 0
/* 8099B7E4  4B 7A FE 64 */	b step__8daNpcT_cFsiiii
lbl_8099B7E8:
/* 8099B7E8  38 60 00 00 */	li r3, 0
/* 8099B7EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099B7F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099B7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099B7F8  7C 08 03 A6 */	mtlr r0
/* 8099B7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8099B800  4E 80 00 20 */	blr 

lbl_80C117D0:
/* 80C117D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C117D4  7C 08 02 A6 */	mflr r0
/* 80C117D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C117DC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C117E0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C117E4  7C 7E 1B 78 */	mr r30, r3
/* 80C117E8  3C 60 80 C1 */	lis r3, mCcDCyl__14daObjGraRock_c@ha
/* 80C117EC  3B E3 23 BC */	addi r31, r3, mCcDCyl__14daObjGraRock_c@l
/* 80C117F0  38 7E 08 38 */	addi r3, r30, 0x838
/* 80C117F4  4B 47 2C 6C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C117F8  28 03 00 00 */	cmplwi r3, 0
/* 80C117FC  41 82 01 3C */	beq lbl_80C11938
/* 80C11800  38 7E 08 38 */	addi r3, r30, 0x838
/* 80C11804  4B 47 2C F4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C11808  7C 64 1B 78 */	mr r4, r3
/* 80C1180C  7F C3 F3 78 */	mr r3, r30
/* 80C11810  48 00 01 55 */	bl checkHitAt__14daObjGraRock_cFP8cCcD_Obj
/* 80C11814  2C 03 00 00 */	cmpwi r3, 0
/* 80C11818  41 82 01 0C */	beq lbl_80C11924
/* 80C1181C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C11820  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C11824  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C11828  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C1182C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C11830  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C11834  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C11838  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1183C  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80C11840  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80C11844  A8 DE 04 E0 */	lha r6, 0x4e0(r30)
/* 80C11848  4B 3F A9 C0 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C1184C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C11850  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C11854  38 81 00 14 */	addi r4, r1, 0x14
/* 80C11858  7C 85 23 78 */	mr r5, r4
/* 80C1185C  4B 73 55 10 */	b PSMTXMultVec
/* 80C11860  38 61 00 14 */	addi r3, r1, 0x14
/* 80C11864  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C11868  7C 65 1B 78 */	mr r5, r3
/* 80C1186C  4B 73 58 24 */	b PSVECAdd
/* 80C11870  7F C3 F3 78 */	mr r3, r30
/* 80C11874  4B FF FD 09 */	bl bombParticleSet__14daObjGraRock_cFv
/* 80C11878  38 60 01 50 */	li r3, 0x150
/* 80C1187C  4B 54 3D F8 */	b daNpcF_onEvtBit__FUl
/* 80C11880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C11884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C11888  88 9E 09 C8 */	lbz r4, 0x9c8(r30)
/* 80C1188C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C11890  7C 05 07 74 */	extsb r5, r0
/* 80C11894  4B 42 39 6C */	b onSwitch__10dSv_info_cFii
/* 80C11898  80 1E 04 DC */	lwz r0, 0x4dc(r30)
/* 80C1189C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C118A0  A0 1E 04 E0 */	lhz r0, 0x4e0(r30)
/* 80C118A4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80C118A8  38 00 00 02 */	li r0, 2
/* 80C118AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80C118B0  38 60 02 34 */	li r3, 0x234
/* 80C118B4  3C 80 60 00 */	lis r4, 0x6000 /* 0x5FFFFF00@ha */
/* 80C118B8  38 84 FF 00 */	addi r4, r4, 0xFF00 /* 0x5FFFFF00@l */
/* 80C118BC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80C118C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C118C4  7C 06 07 74 */	extsb r6, r0
/* 80C118C8  38 E1 00 0C */	addi r7, r1, 0xc
/* 80C118CC  39 00 00 00 */	li r8, 0
/* 80C118D0  39 20 FF FF */	li r9, -1
/* 80C118D4  4B 40 84 C4 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C118D8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008029C@ha */
/* 80C118DC  38 03 02 9C */	addi r0, r3, 0x029C /* 0x0008029C@l */
/* 80C118E0  90 01 00 08 */	stw r0, 8(r1)
/* 80C118E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C118E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C118EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C118F0  38 81 00 08 */	addi r4, r1, 8
/* 80C118F4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C118F8  38 C0 00 00 */	li r6, 0
/* 80C118FC  38 E0 00 00 */	li r7, 0
/* 80C11900  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C11904  FC 40 08 90 */	fmr f2, f1
/* 80C11908  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C1190C  FC 80 18 90 */	fmr f4, f3
/* 80C11910  39 00 00 00 */	li r8, 0
/* 80C11914  4B 69 A0 70 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C11918  7F C3 F3 78 */	mr r3, r30
/* 80C1191C  4B 40 83 60 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C11920  48 00 00 2C */	b lbl_80C1194C
lbl_80C11924:
/* 80C11924  38 7E 08 38 */	addi r3, r30, 0x838
/* 80C11928  81 9E 08 74 */	lwz r12, 0x874(r30)
/* 80C1192C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C11930  7D 89 03 A6 */	mtctr r12
/* 80C11934  4E 80 04 21 */	bctrl 
lbl_80C11938:
/* 80C11938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1193C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C11940  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C11944  38 9E 08 38 */	addi r4, r30, 0x838
/* 80C11948  4B 65 32 60 */	b Set__4cCcSFP8cCcD_Obj
lbl_80C1194C:
/* 80C1194C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C11950  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C11954  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C11958  7C 08 03 A6 */	mtlr r0
/* 80C1195C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C11960  4E 80 00 20 */	blr 

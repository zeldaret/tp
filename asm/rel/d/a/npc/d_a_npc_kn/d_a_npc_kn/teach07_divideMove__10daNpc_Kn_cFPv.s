lbl_80A315D0:
/* 80A315D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A315D4  7C 08 02 A6 */	mflr r0
/* 80A315D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A315DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A315E0  4B 93 0B FD */	bl _savegpr_29
/* 80A315E4  7C 7E 1B 78 */	mr r30, r3
/* 80A315E8  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A315EC  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A315F0  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A315F4  2C 00 00 02 */	cmpwi r0, 2
/* 80A315F8  41 82 01 1C */	beq lbl_80A31714
/* 80A315FC  40 80 01 E0 */	bge lbl_80A317DC
/* 80A31600  2C 00 00 00 */	cmpwi r0, 0
/* 80A31604  40 80 00 0C */	bge lbl_80A31610
/* 80A31608  48 00 01 D4 */	b lbl_80A317DC
/* 80A3160C  48 00 01 D0 */	b lbl_80A317DC
lbl_80A31610:
/* 80A31610  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A31614  2C 00 00 01 */	cmpwi r0, 1
/* 80A31618  41 82 00 24 */	beq lbl_80A3163C
/* 80A3161C  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A31620  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A31624  4B 71 42 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31628  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3162C  38 00 00 01 */	li r0, 1
/* 80A31630  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A31634  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A31638  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3163C:
/* 80A3163C  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A31640  2C 00 00 09 */	cmpwi r0, 9
/* 80A31644  41 82 00 24 */	beq lbl_80A31668
/* 80A31648  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3164C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A31650  4B 71 42 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31654  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A31658  38 00 00 09 */	li r0, 9
/* 80A3165C  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A31660  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A31664  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A31668:
/* 80A31668  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A3166C  2C 00 00 01 */	cmpwi r0, 1
/* 80A31670  41 82 00 28 */	beq lbl_80A31698
/* 80A31674  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A31678  4B 71 40 85 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3167C  38 00 00 00 */	li r0, 0
/* 80A31680  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A31684  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A31688  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A3168C  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A31690  38 00 00 01 */	li r0, 1
/* 80A31694  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A31698:
/* 80A31698  38 00 00 00 */	li r0, 0
/* 80A3169C  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A316A0  88 1E 15 AD */	lbz r0, 0x15ad(r30)
/* 80A316A4  28 00 00 01 */	cmplwi r0, 1
/* 80A316A8  40 82 00 14 */	bne lbl_80A316BC
/* 80A316AC  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A316B0  38 03 D5 56 */	addi r0, r3, -10922
/* 80A316B4  B0 1E 17 10 */	sth r0, 0x1710(r30)
/* 80A316B8  48 00 00 10 */	b lbl_80A316C8
lbl_80A316BC:
/* 80A316BC  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A316C0  38 03 2A AA */	addi r0, r3, 0x2aaa
/* 80A316C4  B0 1E 17 10 */	sth r0, 0x1710(r30)
lbl_80A316C8:
/* 80A316C8  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A316CC  3C 63 00 01 */	addis r3, r3, 1
/* 80A316D0  38 03 80 00 */	addi r0, r3, -32768
/* 80A316D4  B0 1E 17 12 */	sth r0, 0x1712(r30)
/* 80A316D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A316DC  D0 1E 15 B0 */	stfs f0, 0x15b0(r30)
/* 80A316E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A316E4  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80A316E8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A316EC  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80A316F0  38 00 00 00 */	li r0, 0
/* 80A316F4  98 1E 15 BC */	stb r0, 0x15bc(r30)
/* 80A316F8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A316FC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A31700  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A31704  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A31708  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A3170C  38 00 00 02 */	li r0, 2
/* 80A31710  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A31714:
/* 80A31714  38 7E 17 12 */	addi r3, r30, 0x1712
/* 80A31718  A8 9E 17 10 */	lha r4, 0x1710(r30)
/* 80A3171C  38 A0 01 00 */	li r5, 0x100
/* 80A31720  4B 83 F4 71 */	bl cLib_chaseAngleS__FPsss
/* 80A31724  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A31728  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3172C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A31730  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A31734  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A31738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3173C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A31740  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A31744  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A31748  4B 5D B6 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A3174C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A31750  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A31754  A8 9E 17 12 */	lha r4, 0x1712(r30)
/* 80A31758  4B 5D AC DD */	bl mDoMtx_YrotM__FPA4_fs
/* 80A3175C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A31760  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A31764  38 81 00 14 */	addi r4, r1, 0x14
/* 80A31768  7C 85 23 78 */	mr r5, r4
/* 80A3176C  4B 91 56 01 */	bl PSMTXMultVec
/* 80A31770  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A31774  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A31778  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A3177C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A31780  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A31784  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A31788  7F C3 F3 78 */	mr r3, r30
/* 80A3178C  38 81 00 08 */	addi r4, r1, 8
/* 80A31790  48 00 92 C9 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A31794  7F C3 F3 78 */	mr r3, r30
/* 80A31798  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A3179C  4B 5E 8F 75 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A317A0  7C 64 1B 78 */	mr r4, r3
/* 80A317A4  38 7E 0D AE */	addi r3, r30, 0xdae
/* 80A317A8  38 A0 00 02 */	li r5, 2
/* 80A317AC  38 C0 08 00 */	li r6, 0x800
/* 80A317B0  4B 83 EE 59 */	bl cLib_addCalcAngleS2__FPssss
/* 80A317B4  7F C3 F3 78 */	mr r3, r30
/* 80A317B8  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A317BC  48 00 93 35 */	bl setAngle__10daNpc_Kn_cFs
/* 80A317C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A317C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A317C8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A317CC  28 00 00 00 */	cmplwi r0, 0
/* 80A317D0  40 82 00 0C */	bne lbl_80A317DC
/* 80A317D4  38 00 00 15 */	li r0, 0x15
/* 80A317D8  98 1E 15 AE */	stb r0, 0x15ae(r30)
lbl_80A317DC:
/* 80A317DC  38 60 00 01 */	li r3, 1
/* 80A317E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A317E4  4B 93 0A 45 */	bl _restgpr_29
/* 80A317E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A317EC  7C 08 03 A6 */	mtlr r0
/* 80A317F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80A317F4  4E 80 00 20 */	blr 

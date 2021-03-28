lbl_80A30398:
/* 80A30398  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A3039C  7C 08 02 A6 */	mflr r0
/* 80A303A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A303A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A303A8  4B 93 1E 34 */	b _savegpr_29
/* 80A303AC  7C 7E 1B 78 */	mr r30, r3
/* 80A303B0  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A303B4  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A303B8  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A303BC  2C 00 00 02 */	cmpwi r0, 2
/* 80A303C0  41 82 01 30 */	beq lbl_80A304F0
/* 80A303C4  40 80 01 C8 */	bge lbl_80A3058C
/* 80A303C8  2C 00 00 00 */	cmpwi r0, 0
/* 80A303CC  40 80 00 0C */	bge lbl_80A303D8
/* 80A303D0  48 00 01 BC */	b lbl_80A3058C
/* 80A303D4  48 00 01 B8 */	b lbl_80A3058C
lbl_80A303D8:
/* 80A303D8  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A303DC  2C 00 00 01 */	cmpwi r0, 1
/* 80A303E0  41 82 00 24 */	beq lbl_80A30404
/* 80A303E4  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A303E8  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A303EC  4B 71 54 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A303F0  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A303F4  38 00 00 01 */	li r0, 1
/* 80A303F8  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A303FC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A30400  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A30404:
/* 80A30404  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A30408  2C 00 00 09 */	cmpwi r0, 9
/* 80A3040C  41 82 00 24 */	beq lbl_80A30430
/* 80A30410  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A30414  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A30418  4B 71 54 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3041C  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A30420  38 00 00 09 */	li r0, 9
/* 80A30424  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A30428  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3042C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A30430:
/* 80A30430  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A30434  2C 00 00 01 */	cmpwi r0, 1
/* 80A30438  41 82 00 28 */	beq lbl_80A30460
/* 80A3043C  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A30440  4B 71 52 BC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A30444  38 00 00 00 */	li r0, 0
/* 80A30448  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A3044C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A30450  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A30454  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A30458  38 00 00 01 */	li r0, 1
/* 80A3045C  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A30460:
/* 80A30460  38 00 00 00 */	li r0, 0
/* 80A30464  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A30468  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3046C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A30470  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A30474  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80A30478  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3047C  88 1E 15 AD */	lbz r0, 0x15ad(r30)
/* 80A30480  28 00 00 01 */	cmplwi r0, 1
/* 80A30484  40 82 00 14 */	bne lbl_80A30498
/* 80A30488  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A3048C  38 03 EA AB */	addi r0, r3, -5461
/* 80A30490  7C 1D 07 34 */	extsh r29, r0
/* 80A30494  48 00 00 10 */	b lbl_80A304A4
lbl_80A30498:
/* 80A30498  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A3049C  38 03 15 55 */	addi r0, r3, 0x1555
/* 80A304A0  7C 1D 07 34 */	extsh r29, r0
lbl_80A304A4:
/* 80A304A4  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 80A304A8  4B 5D C8 BC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A304AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A304B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A304B4  7F A4 EB 78 */	mr r4, r29
/* 80A304B8  4B 5D BF 7C */	b mDoMtx_YrotM__FPA4_fs
/* 80A304BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A304C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A304C4  38 81 00 20 */	addi r4, r1, 0x20
/* 80A304C8  7C 85 23 78 */	mr r5, r4
/* 80A304CC  4B 91 68 A0 */	b PSMTXMultVec
/* 80A304D0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A304D4  D0 1E 15 B0 */	stfs f0, 0x15b0(r30)
/* 80A304D8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A304DC  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80A304E0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A304E4  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80A304E8  38 00 00 02 */	li r0, 2
/* 80A304EC  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A304F0:
/* 80A304F0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A304F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A304F8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A304FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A30500  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A30504  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A30508  38 61 00 14 */	addi r3, r1, 0x14
/* 80A3050C  38 9E 15 B0 */	addi r4, r30, 0x15b0
/* 80A30510  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A30514  4B 84 02 98 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80A30518  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A3051C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A30520  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A30524  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A30528  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A3052C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A30530  7F C3 F3 78 */	mr r3, r30
/* 80A30534  38 81 00 08 */	addi r4, r1, 8
/* 80A30538  48 00 A5 21 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A3053C  7F C3 F3 78 */	mr r3, r30
/* 80A30540  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A30544  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A30548  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3054C  4B 5E A1 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A30550  7C 64 1B 78 */	mr r4, r3
/* 80A30554  38 7E 0D AE */	addi r3, r30, 0xdae
/* 80A30558  38 A0 00 02 */	li r5, 2
/* 80A3055C  38 C0 08 00 */	li r6, 0x800
/* 80A30560  4B 84 00 A8 */	b cLib_addCalcAngleS2__FPssss
/* 80A30564  7F C3 F3 78 */	mr r3, r30
/* 80A30568  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A3056C  48 00 A5 85 */	bl setAngle__10daNpc_Kn_cFs
/* 80A30570  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A30574  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A30578  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A3057C  28 00 00 00 */	cmplwi r0, 0
/* 80A30580  40 82 00 0C */	bne lbl_80A3058C
/* 80A30584  38 00 00 0F */	li r0, 0xf
/* 80A30588  98 1E 15 AE */	stb r0, 0x15ae(r30)
lbl_80A3058C:
/* 80A3058C  38 60 00 01 */	li r3, 1
/* 80A30590  39 61 00 40 */	addi r11, r1, 0x40
/* 80A30594  4B 93 1C 94 */	b _restgpr_29
/* 80A30598  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3059C  7C 08 03 A6 */	mtlr r0
/* 80A305A0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A305A4  4E 80 00 20 */	blr 

lbl_80A3FFB4:
/* 80A3FFB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A3FFB8  7C 08 02 A6 */	mflr r0
/* 80A3FFBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A3FFC0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A3FFC4  4B 92 22 0D */	bl _savegpr_26
/* 80A3FFC8  7C 7C 1B 78 */	mr r28, r3
/* 80A3FFCC  7C 9A 23 78 */	mr r26, r4
/* 80A3FFD0  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A3FFD4  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A3FFD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3FFDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3FFE0  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A3FFE4  3B C0 00 00 */	li r30, 0
/* 80A3FFE8  3B A0 FF FF */	li r29, -1
/* 80A3FFEC  7F 63 DB 78 */	mr r3, r27
/* 80A3FFF0  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A3FFF4  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A3FFF8  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A3FFFC  38 C0 00 03 */	li r6, 3
/* 80A40000  4B 60 80 ED */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A40004  28 03 00 00 */	cmplwi r3, 0
/* 80A40008  41 82 00 08 */	beq lbl_80A40010
/* 80A4000C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A40010:
/* 80A40010  7F 63 DB 78 */	mr r3, r27
/* 80A40014  7F 44 D3 78 */	mr r4, r26
/* 80A40018  4B 60 7D 35 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A4001C  2C 03 00 00 */	cmpwi r3, 0
/* 80A40020  41 82 01 E0 */	beq lbl_80A40200
/* 80A40024  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A40028  41 82 00 E0 */	beq lbl_80A40108
/* 80A4002C  40 80 00 1C */	bge lbl_80A40048
/* 80A40030  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A40034  41 82 00 B8 */	beq lbl_80A400EC
/* 80A40038  40 80 01 C8 */	bge lbl_80A40200
/* 80A4003C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A40040  41 82 00 14 */	beq lbl_80A40054
/* 80A40044  48 00 01 BC */	b lbl_80A40200
lbl_80A40048:
/* 80A40048  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80A4004C  41 82 01 A4 */	beq lbl_80A401F0
/* 80A40050  48 00 01 B0 */	b lbl_80A40200
lbl_80A40054:
/* 80A40054  38 60 00 0B */	li r3, 0xb
/* 80A40058  4B 70 CA D5 */	bl daNpcT_offTmpBit__FUl
/* 80A4005C  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A40060  2C 00 00 01 */	cmpwi r0, 1
/* 80A40064  41 82 00 24 */	beq lbl_80A40088
/* 80A40068  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A4006C  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A40070  4B 70 58 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A40074  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A40078  38 00 00 01 */	li r0, 1
/* 80A4007C  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A40080  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A40084  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A40088:
/* 80A40088  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A4008C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A40090  4B 70 58 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A40094  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A40098  38 00 00 1C */	li r0, 0x1c
/* 80A4009C  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A400A0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A400A4  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A400A8  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A400AC  2C 00 00 01 */	cmpwi r0, 1
/* 80A400B0  41 82 00 28 */	beq lbl_80A400D8
/* 80A400B4  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A400B8  4B 70 56 45 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A400BC  38 00 00 00 */	li r0, 0
/* 80A400C0  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A400C4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A400C8  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A400CC  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A400D0  38 00 00 01 */	li r0, 1
/* 80A400D4  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A400D8:
/* 80A400D8  38 00 00 00 */	li r0, 0
/* 80A400DC  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A400E0  38 00 00 1E */	li r0, 0x1e
/* 80A400E4  90 1C 0D EC */	stw r0, 0xdec(r28)
/* 80A400E8  48 00 01 18 */	b lbl_80A40200
lbl_80A400EC:
/* 80A400EC  38 00 00 02 */	li r0, 2
/* 80A400F0  B0 1C 0D FE */	sth r0, 0xdfe(r28)
/* 80A400F4  7F 83 E3 78 */	mr r3, r28
/* 80A400F8  38 80 02 C2 */	li r4, 0x2c2
/* 80A400FC  38 A0 00 00 */	li r5, 0
/* 80A40100  4B FF B2 E9 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A40104  48 00 00 FC */	b lbl_80A40200
lbl_80A40108:
/* 80A40108  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A4010C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A40110  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A40114  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A40118  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A4011C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A40120  7F 83 E3 78 */	mr r3, r28
/* 80A40124  38 81 00 08 */	addi r4, r1, 8
/* 80A40128  4B FF A9 31 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A4012C  7F 83 E3 78 */	mr r3, r28
/* 80A40130  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A40134  4B FF A9 BD */	bl setAngle__10daNpc_Kn_cFs
/* 80A40138  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A4013C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A40140  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A40144  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 80A40148  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A4014C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80A40150  4B 5C CC 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A40154  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A40158  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A4015C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A40160  4B 5C C2 D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A40164  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A40168  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A4016C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A40170  7C 85 23 78 */	mr r5, r4
/* 80A40174  4B 90 6B F9 */	bl PSMTXMultVec
/* 80A40178  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A4017C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A40180  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80A40184  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A40188  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A4018C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A40190  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A40194  EC 01 00 2A */	fadds f0, f1, f0
/* 80A40198  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A4019C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A401A0  4B 5D DB 1D */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A401A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A401A8  41 82 00 10 */	beq lbl_80A401B8
/* 80A401AC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A401B0  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A401B4  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80A401B8:
/* 80A401B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A401BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A401C0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A401C4  38 81 00 20 */	addi r4, r1, 0x20
/* 80A401C8  A8 BC 04 B6 */	lha r5, 0x4b6(r28)
/* 80A401CC  3C A5 00 01 */	addis r5, r5, 1
/* 80A401D0  38 05 80 00 */	addi r0, r5, -32768
/* 80A401D4  7C 05 07 34 */	extsh r5, r0
/* 80A401D8  38 C0 00 00 */	li r6, 0
/* 80A401DC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A401E0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A401E4  7D 89 03 A6 */	mtctr r12
/* 80A401E8  4E 80 04 21 */	bctrl 
/* 80A401EC  48 00 00 14 */	b lbl_80A40200
lbl_80A401F0:
/* 80A401F0  7F 83 E3 78 */	mr r3, r28
/* 80A401F4  38 80 02 C2 */	li r4, 0x2c2
/* 80A401F8  38 A0 00 00 */	li r5, 0
/* 80A401FC  4B FF B1 ED */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
lbl_80A40200:
/* 80A40200  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A40204  41 82 01 5C */	beq lbl_80A40360
/* 80A40208  40 80 00 1C */	bge lbl_80A40224
/* 80A4020C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A40210  41 82 01 28 */	beq lbl_80A40338
/* 80A40214  40 80 01 84 */	bge lbl_80A40398
/* 80A40218  2C 1D 00 00 */	cmpwi r29, 0
/* 80A4021C  41 82 00 14 */	beq lbl_80A40230
/* 80A40220  48 00 01 78 */	b lbl_80A40398
lbl_80A40224:
/* 80A40224  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80A40228  41 82 01 40 */	beq lbl_80A40368
/* 80A4022C  48 00 01 6C */	b lbl_80A40398
lbl_80A40230:
/* 80A40230  38 7C 0D EC */	addi r3, r28, 0xdec
/* 80A40234  4B FF BB 15 */	bl func_80A3BD48
/* 80A40238  2C 03 00 00 */	cmpwi r3, 0
/* 80A4023C  40 82 00 F0 */	bne lbl_80A4032C
/* 80A40240  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A40244  D0 1C 15 B0 */	stfs f0, 0x15b0(r28)
/* 80A40248  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80A4024C  D0 1C 15 B4 */	stfs f0, 0x15b4(r28)
/* 80A40250  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A40254  D0 1C 15 B8 */	stfs f0, 0x15b8(r28)
/* 80A40258  38 00 00 00 */	li r0, 0
/* 80A4025C  98 1C 15 BC */	stb r0, 0x15bc(r28)
/* 80A40260  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A40264  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A40268  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80A4026C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80A40270  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80A40274  7F 83 E3 78 */	mr r3, r28
/* 80A40278  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4027C  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A40280  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A40284  4B 5D A4 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A40288  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A4028C  7C 60 07 34 */	extsh r0, r3
/* 80A40290  7C 04 00 00 */	cmpw r4, r0
/* 80A40294  40 82 00 0C */	bne lbl_80A402A0
/* 80A40298  3B C0 00 01 */	li r30, 1
/* 80A4029C  48 00 01 00 */	b lbl_80A4039C
lbl_80A402A0:
/* 80A402A0  7F 83 E3 78 */	mr r3, r28
/* 80A402A4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A402A8  4B 5D A4 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A402AC  7C 64 1B 78 */	mr r4, r3
/* 80A402B0  7F 83 E3 78 */	mr r3, r28
/* 80A402B4  38 A0 00 01 */	li r5, 1
/* 80A402B8  38 C0 00 20 */	li r6, 0x20
/* 80A402BC  38 E0 00 14 */	li r7, 0x14
/* 80A402C0  39 00 00 00 */	li r8, 0
/* 80A402C4  4B FF AF 5D */	bl step__10daNpc_Kn_cFsiiii
/* 80A402C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A402CC  41 82 00 D0 */	beq lbl_80A4039C
/* 80A402D0  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A402D4  2C 00 00 01 */	cmpwi r0, 1
/* 80A402D8  41 82 00 24 */	beq lbl_80A402FC
/* 80A402DC  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A402E0  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A402E4  4B 70 55 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A402E8  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A402EC  38 00 00 01 */	li r0, 1
/* 80A402F0  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A402F4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A402F8  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A402FC:
/* 80A402FC  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A40300  2C 00 00 00 */	cmpwi r0, 0
/* 80A40304  41 82 00 98 */	beq lbl_80A4039C
/* 80A40308  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A4030C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A40310  4B 70 55 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A40314  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A40318  38 00 00 00 */	li r0, 0
/* 80A4031C  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A40320  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A40324  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A40328  48 00 00 74 */	b lbl_80A4039C
lbl_80A4032C:
/* 80A4032C  7F 83 E3 78 */	mr r3, r28
/* 80A40330  4B FF 77 D9 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A40334  48 00 00 68 */	b lbl_80A4039C
lbl_80A40338:
/* 80A40338  7F 83 E3 78 */	mr r3, r28
/* 80A4033C  38 80 00 00 */	li r4, 0
/* 80A40340  38 A0 00 00 */	li r5, 0
/* 80A40344  38 C0 00 00 */	li r6, 0
/* 80A40348  38 E0 00 00 */	li r7, 0
/* 80A4034C  4B FF B0 FD */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A40350  2C 03 00 00 */	cmpwi r3, 0
/* 80A40354  41 82 00 48 */	beq lbl_80A4039C
/* 80A40358  3B C0 00 01 */	li r30, 1
/* 80A4035C  48 00 00 40 */	b lbl_80A4039C
lbl_80A40360:
/* 80A40360  3B C0 00 01 */	li r30, 1
/* 80A40364  48 00 00 38 */	b lbl_80A4039C
lbl_80A40368:
/* 80A40368  7F 83 E3 78 */	mr r3, r28
/* 80A4036C  38 80 00 00 */	li r4, 0
/* 80A40370  38 A0 00 00 */	li r5, 0
/* 80A40374  38 C0 00 00 */	li r6, 0
/* 80A40378  38 E0 00 00 */	li r7, 0
/* 80A4037C  4B FF B0 CD */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A40380  2C 03 00 00 */	cmpwi r3, 0
/* 80A40384  41 82 00 18 */	beq lbl_80A4039C
/* 80A40388  3B C0 00 01 */	li r30, 1
/* 80A4038C  38 00 00 07 */	li r0, 7
/* 80A40390  98 1C 15 AE */	stb r0, 0x15ae(r28)
/* 80A40394  48 00 00 08 */	b lbl_80A4039C
lbl_80A40398:
/* 80A40398  3B C0 00 01 */	li r30, 1
lbl_80A4039C:
/* 80A4039C  7F C3 F3 78 */	mr r3, r30
/* 80A403A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A403A4  4B 92 1E 79 */	bl _restgpr_26
/* 80A403A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A403AC  7C 08 03 A6 */	mtlr r0
/* 80A403B0  38 21 00 50 */	addi r1, r1, 0x50
/* 80A403B4  4E 80 00 20 */	blr 

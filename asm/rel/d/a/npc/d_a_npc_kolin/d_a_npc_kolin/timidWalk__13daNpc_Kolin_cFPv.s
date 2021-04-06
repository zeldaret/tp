lbl_80558698:
/* 80558698  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8055869C  7C 08 02 A6 */	mflr r0
/* 805586A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805586A4  39 61 00 50 */	addi r11, r1, 0x50
/* 805586A8  4B E0 9B 2D */	bl _savegpr_27
/* 805586AC  7C 7C 1B 78 */	mr r28, r3
/* 805586B0  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha /* 0x8055A5B4@ha */
/* 805586B4  3B E3 A5 B4 */	addi r31, r3, m__19daNpc_Kolin_Param_c@l /* 0x8055A5B4@l */
/* 805586B8  38 7F 00 00 */	addi r3, r31, 0
/* 805586BC  AB C3 00 98 */	lha r30, 0x98(r3)
/* 805586C0  AB A3 00 9A */	lha r29, 0x9a(r3)
/* 805586C4  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 805586C8  2C 00 00 02 */	cmpwi r0, 2
/* 805586CC  41 82 00 98 */	beq lbl_80558764
/* 805586D0  40 80 04 0C */	bge lbl_80558ADC
/* 805586D4  2C 00 00 00 */	cmpwi r0, 0
/* 805586D8  40 80 00 0C */	bge lbl_805586E4
/* 805586DC  48 00 04 00 */	b lbl_80558ADC
/* 805586E0  48 00 03 FC */	b lbl_80558ADC
lbl_805586E4:
/* 805586E4  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 805586E8  2C 00 00 00 */	cmpwi r0, 0
/* 805586EC  40 82 00 78 */	bne lbl_80558764
/* 805586F0  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 805586F4  2C 00 00 0D */	cmpwi r0, 0xd
/* 805586F8  41 82 00 24 */	beq lbl_8055871C
/* 805586FC  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80558700  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80558704  4B BE D1 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558708  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8055870C  38 00 00 0D */	li r0, 0xd
/* 80558710  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80558714  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558718  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8055871C:
/* 8055871C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80558720  2C 00 00 01 */	cmpwi r0, 1
/* 80558724  41 82 00 24 */	beq lbl_80558748
/* 80558728  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8055872C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80558730  4B BE D1 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558734  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80558738  38 00 00 01 */	li r0, 1
/* 8055873C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80558740  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558744  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80558748:
/* 80558748  38 00 00 01 */	li r0, 1
/* 8055874C  98 1C 10 16 */	stb r0, 0x1016(r28)
/* 80558750  38 00 00 00 */	li r0, 0
/* 80558754  90 1C 10 08 */	stw r0, 0x1008(r28)
/* 80558758  90 1C 10 04 */	stw r0, 0x1004(r28)
/* 8055875C  38 00 00 02 */	li r0, 2
/* 80558760  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80558764:
/* 80558764  38 60 00 0E */	li r3, 0xe
/* 80558768  4B BF 43 45 */	bl daNpcT_chkEvtBit__FUl
/* 8055876C  2C 03 00 00 */	cmpwi r3, 0
/* 80558770  40 82 00 50 */	bne lbl_805587C0
/* 80558774  38 7C 0F 88 */	addi r3, r28, 0xf88
/* 80558778  4B BE CF 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055877C  28 03 00 00 */	cmplwi r3, 0
/* 80558780  41 82 00 40 */	beq lbl_805587C0
/* 80558784  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80558788  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055878C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80558790  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80558794  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80558798  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8055879C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805587A0  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 805587A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805587A8  38 81 00 20 */	addi r4, r1, 0x20
/* 805587AC  48 00 1D 95 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 805587B0  2C 03 00 00 */	cmpwi r3, 0
/* 805587B4  41 82 00 0C */	beq lbl_805587C0
/* 805587B8  38 00 00 04 */	li r0, 4
/* 805587BC  B0 1C 0E 30 */	sth r0, 0xe30(r28)
lbl_805587C0:
/* 805587C0  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 805587C4  2C 00 00 00 */	cmpwi r0, 0
/* 805587C8  40 82 03 14 */	bne lbl_80558ADC
/* 805587CC  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 805587D0  4B BE CF 39 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805587D4  28 03 00 00 */	cmplwi r3, 0
/* 805587D8  41 82 00 B0 */	beq lbl_80558888
/* 805587DC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 805587E0  2C 00 00 01 */	cmpwi r0, 1
/* 805587E4  41 82 00 28 */	beq lbl_8055880C
/* 805587E8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 805587EC  4B BE CF 11 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805587F0  38 00 00 00 */	li r0, 0
/* 805587F4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 805587F8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805587FC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80558800  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80558804  38 00 00 01 */	li r0, 1
/* 80558808  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8055880C:
/* 8055880C  38 00 00 00 */	li r0, 0
/* 80558810  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80558814  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80558818  4B BE CE F1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055881C  7C 64 1B 78 */	mr r4, r3
/* 80558820  7F 83 E3 78 */	mr r3, r28
/* 80558824  C0 3C 0D F8 */	lfs f1, 0xdf8(r28)
/* 80558828  A8 BC 0D 7A */	lha r5, 0xd7a(r28)
/* 8055882C  4B BF 23 A5 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80558830  2C 03 00 00 */	cmpwi r3, 0
/* 80558834  40 82 00 38 */	bne lbl_8055886C
/* 80558838  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8055883C  2C 00 00 00 */	cmpwi r0, 0
/* 80558840  41 82 00 24 */	beq lbl_80558864
/* 80558844  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80558848  4B BE CE B5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055884C  38 00 00 00 */	li r0, 0
/* 80558850  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80558854  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80558858  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8055885C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80558860  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80558864:
/* 80558864  38 00 00 00 */	li r0, 0
/* 80558868  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_8055886C:
/* 8055886C  7F 83 E3 78 */	mr r3, r28
/* 80558870  4B BF 2A C9 */	bl srchPlayerActor__8daNpcT_cFv
/* 80558874  2C 03 00 00 */	cmpwi r3, 0
/* 80558878  40 82 02 64 */	bne lbl_80558ADC
/* 8055887C  38 00 00 01 */	li r0, 1
/* 80558880  B0 1C 0E 22 */	sth r0, 0xe22(r28)
/* 80558884  48 00 02 58 */	b lbl_80558ADC
lbl_80558888:
/* 80558888  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8055888C  2C 00 00 00 */	cmpwi r0, 0
/* 80558890  41 82 00 24 */	beq lbl_805588B4
/* 80558894  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80558898  4B BE CE 65 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055889C  38 00 00 00 */	li r0, 0
/* 805588A0  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 805588A4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805588A8  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 805588AC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 805588B0  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_805588B4:
/* 805588B4  38 00 00 00 */	li r0, 0
/* 805588B8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 805588BC  88 1C 10 16 */	lbz r0, 0x1016(r28)
/* 805588C0  28 00 00 00 */	cmplwi r0, 0
/* 805588C4  41 82 00 94 */	beq lbl_80558958
/* 805588C8  80 7C 10 08 */	lwz r3, 0x1008(r28)
/* 805588CC  2C 03 00 00 */	cmpwi r3, 0
/* 805588D0  40 82 00 7C */	bne lbl_8055894C
/* 805588D4  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 805588D8  2C 00 00 0D */	cmpwi r0, 0xd
/* 805588DC  41 82 00 24 */	beq lbl_80558900
/* 805588E0  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 805588E4  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 805588E8  4B BE CF B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805588EC  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 805588F0  38 00 00 0D */	li r0, 0xd
/* 805588F4  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 805588F8  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 805588FC  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80558900:
/* 80558900  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80558904  2C 00 00 0D */	cmpwi r0, 0xd
/* 80558908  41 82 00 24 */	beq lbl_8055892C
/* 8055890C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80558910  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80558914  4B BE CF 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558918  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8055891C  38 00 00 0D */	li r0, 0xd
/* 80558920  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80558924  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558928  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8055892C:
/* 8055892C  7F C0 0E 70 */	srawi r0, r30, 1
/* 80558930  7C 60 01 94 */	addze r3, r0
/* 80558934  7F C4 F3 78 */	mr r4, r30
/* 80558938  48 00 18 A9 */	bl func_8055A1E0
/* 8055893C  90 7C 10 04 */	stw r3, 0x1004(r28)
/* 80558940  38 00 00 00 */	li r0, 0
/* 80558944  98 1C 10 16 */	stb r0, 0x1016(r28)
/* 80558948  48 00 01 80 */	b lbl_80558AC8
lbl_8055894C:
/* 8055894C  38 03 FF FF */	addi r0, r3, -1
/* 80558950  90 1C 10 08 */	stw r0, 0x1008(r28)
/* 80558954  48 00 01 74 */	b lbl_80558AC8
lbl_80558958:
/* 80558958  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8055895C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80558960  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80558964  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80558968  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8055896C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80558970  38 7C 0F B0 */	addi r3, r28, 0xfb0
/* 80558974  38 81 00 14 */	addi r4, r1, 0x14
/* 80558978  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8055897C  80 DC 0F B0 */	lwz r6, 0xfb0(r28)
/* 80558980  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80558984  38 E0 00 04 */	li r7, 4
/* 80558988  4B BE D6 2D */	bl getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 8055898C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80558990  D0 01 00 08 */	stfs f0, 8(r1)
/* 80558994  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80558998  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8055899C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805589A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805589A4  7F 83 E3 78 */	mr r3, r28
/* 805589A8  38 81 00 08 */	addi r4, r1, 8
/* 805589AC  80 1C 10 04 */	lwz r0, 0x1004(r28)
/* 805589B0  7C 00 00 34 */	cntlzw r0, r0
/* 805589B4  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 805589B8  38 C0 00 04 */	li r6, 4
/* 805589BC  38 E0 02 00 */	li r7, 0x200
/* 805589C0  4B BF 2E 49 */	bl calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 805589C4  80 7C 10 04 */	lwz r3, 0x1004(r28)
/* 805589C8  2C 03 00 00 */	cmpwi r3, 0
/* 805589CC  40 82 00 F4 */	bne lbl_80558AC0
/* 805589D0  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 805589D4  FC 00 02 10 */	fabs f0, f0
/* 805589D8  FC 20 00 18 */	frsp f1, f0
/* 805589DC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 805589E0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 805589E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805589E8  40 80 00 E0 */	bge lbl_80558AC8
/* 805589EC  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 805589F0  2C 00 00 0D */	cmpwi r0, 0xd
/* 805589F4  41 82 00 24 */	beq lbl_80558A18
/* 805589F8  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 805589FC  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80558A00  4B BE CE 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558A04  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80558A08  38 00 00 0D */	li r0, 0xd
/* 80558A0C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80558A10  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558A14  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80558A18:
/* 80558A18  4B D0 EE 55 */	bl cM_rnd__Fv
/* 80558A1C  C0 1C 10 10 */	lfs f0, 0x1010(r28)
/* 80558A20  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80558A24  4C 40 13 82 */	cror 2, 0, 2
/* 80558A28  40 82 00 3C */	bne lbl_80558A64
/* 80558A2C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80558A30  2C 00 00 05 */	cmpwi r0, 5
/* 80558A34  41 82 00 24 */	beq lbl_80558A58
/* 80558A38  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80558A3C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80558A40  4B BE CE 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558A44  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80558A48  38 00 00 05 */	li r0, 5
/* 80558A4C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80558A50  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80558A54  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80558A58:
/* 80558A58  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80558A5C  D0 1C 10 10 */	stfs f0, 0x1010(r28)
/* 80558A60  48 00 00 40 */	b lbl_80558AA0
lbl_80558A64:
/* 80558A64  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80558A68  2C 00 00 02 */	cmpwi r0, 2
/* 80558A6C  41 82 00 24 */	beq lbl_80558A90
/* 80558A70  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80558A74  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80558A78  4B BE CE 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558A7C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80558A80  38 00 00 02 */	li r0, 2
/* 80558A84  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80558A88  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80558A8C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80558A90:
/* 80558A90  C0 3C 10 10 */	lfs f1, 0x1010(r28)
/* 80558A94  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80558A98  EC 01 00 28 */	fsubs f0, f1, f0
/* 80558A9C  D0 1C 10 10 */	stfs f0, 0x1010(r28)
lbl_80558AA0:
/* 80558AA0  7F A0 0E 70 */	srawi r0, r29, 1
/* 80558AA4  7C 60 01 94 */	addze r3, r0
/* 80558AA8  7F A4 EB 78 */	mr r4, r29
/* 80558AAC  48 00 17 35 */	bl func_8055A1E0
/* 80558AB0  90 7C 10 08 */	stw r3, 0x1008(r28)
/* 80558AB4  38 00 00 01 */	li r0, 1
/* 80558AB8  98 1C 10 16 */	stb r0, 0x1016(r28)
/* 80558ABC  48 00 00 0C */	b lbl_80558AC8
lbl_80558AC0:
/* 80558AC0  38 03 FF FF */	addi r0, r3, -1
/* 80558AC4  90 1C 10 04 */	stw r0, 0x1004(r28)
lbl_80558AC8:
/* 80558AC8  88 1C 0A 89 */	lbz r0, 0xa89(r28)
/* 80558ACC  28 00 00 00 */	cmplwi r0, 0
/* 80558AD0  40 82 00 0C */	bne lbl_80558ADC
/* 80558AD4  7F 83 E3 78 */	mr r3, r28
/* 80558AD8  4B BF 28 61 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80558ADC:
/* 80558ADC  38 60 00 01 */	li r3, 1
/* 80558AE0  39 61 00 50 */	addi r11, r1, 0x50
/* 80558AE4  4B E0 97 3D */	bl _restgpr_27
/* 80558AE8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80558AEC  7C 08 03 A6 */	mtlr r0
/* 80558AF0  38 21 00 50 */	addi r1, r1, 0x50
/* 80558AF4  4E 80 00 20 */	blr 

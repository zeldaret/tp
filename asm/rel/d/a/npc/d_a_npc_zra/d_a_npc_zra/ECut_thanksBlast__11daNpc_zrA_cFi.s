lbl_80B87510:
/* 80B87510  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 80B87514  7C 08 02 A6 */	mflr r0
/* 80B87518  90 01 02 44 */	stw r0, 0x244(r1)
/* 80B8751C  DB E1 02 30 */	stfd f31, 0x230(r1)
/* 80B87520  F3 E1 02 38 */	psq_st f31, 568(r1), 0, 0 /* qr0 */
/* 80B87524  DB C1 02 20 */	stfd f30, 0x220(r1)
/* 80B87528  F3 C1 02 28 */	psq_st f30, 552(r1), 0, 0 /* qr0 */
/* 80B8752C  39 61 02 20 */	addi r11, r1, 0x220
/* 80B87530  4B 7D AC 91 */	bl _savegpr_22
/* 80B87534  7C 78 1B 78 */	mr r24, r3
/* 80B87538  7C 96 23 78 */	mr r22, r4
/* 80B8753C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B87540  3B C3 C4 58 */	addi r30, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B87544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B87548  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B8754C  3A FF 4F F8 */	addi r23, r31, 0x4ff8
/* 80B87550  3B 60 00 00 */	li r27, 0
/* 80B87554  3B 40 FF FF */	li r26, -1
/* 80B87558  3B 9E 00 00 */	addi r28, r30, 0
/* 80B8755C  AB 3C 00 74 */	lha r25, 0x74(r28)
/* 80B87560  C3 D8 07 9C */	lfs f30, 0x79c(r24)
/* 80B87564  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B87568  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B8756C  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 80B87570  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B87574  D0 01 01 E8 */	stfs f0, 0x1e8(r1)
/* 80B87578  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B8757C  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 80B87580  7E E3 BB 78 */	mr r3, r23
/* 80B87584  3C A0 80 B9 */	lis r5, d_a_npc_zra__stringBase0@ha /* 0x80B8CD30@ha */
/* 80B87588  38 A5 CD 30 */	addi r5, r5, d_a_npc_zra__stringBase0@l /* 0x80B8CD30@l */
/* 80B8758C  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B87590  38 C0 00 03 */	li r6, 3
/* 80B87594  4B 4C 0B 59 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B87598  28 03 00 00 */	cmplwi r3, 0
/* 80B8759C  41 82 00 08 */	beq lbl_80B875A4
/* 80B875A0  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B875A4:
/* 80B875A4  7E E3 BB 78 */	mr r3, r23
/* 80B875A8  7E C4 B3 78 */	mr r4, r22
/* 80B875AC  4B 4C 07 A1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B875B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B875B4  41 82 04 78 */	beq lbl_80B87A2C
/* 80B875B8  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B875BC  41 82 03 74 */	beq lbl_80B87930
/* 80B875C0  40 80 00 34 */	bge lbl_80B875F4
/* 80B875C4  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B875C8  41 82 01 70 */	beq lbl_80B87738
/* 80B875CC  40 80 00 1C */	bge lbl_80B875E8
/* 80B875D0  2C 1A 00 01 */	cmpwi r26, 1
/* 80B875D4  41 82 00 BC */	beq lbl_80B87690
/* 80B875D8  40 80 04 54 */	bge lbl_80B87A2C
/* 80B875DC  2C 1A 00 00 */	cmpwi r26, 0
/* 80B875E0  40 80 00 44 */	bge lbl_80B87624
/* 80B875E4  48 00 04 48 */	b lbl_80B87A2C
lbl_80B875E8:
/* 80B875E8  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B875EC  41 82 01 60 */	beq lbl_80B8774C
/* 80B875F0  48 00 04 3C */	b lbl_80B87A2C
lbl_80B875F4:
/* 80B875F4  2C 1A 00 32 */	cmpwi r26, 0x32
/* 80B875F8  41 82 03 B8 */	beq lbl_80B879B0
/* 80B875FC  40 80 00 1C */	bge lbl_80B87618
/* 80B87600  2C 1A 00 28 */	cmpwi r26, 0x28
/* 80B87604  41 82 03 90 */	beq lbl_80B87994
/* 80B87608  40 80 04 24 */	bge lbl_80B87A2C
/* 80B8760C  2C 1A 00 20 */	cmpwi r26, 0x20
/* 80B87610  40 80 04 1C */	bge lbl_80B87A2C
/* 80B87614  48 00 03 30 */	b lbl_80B87944
lbl_80B87618:
/* 80B87618  2C 1A 00 3C */	cmpwi r26, 0x3c
/* 80B8761C  41 82 03 E8 */	beq lbl_80B87A04
/* 80B87620  48 00 04 0C */	b lbl_80B87A2C
lbl_80B87624:
/* 80B87624  38 60 00 0B */	li r3, 0xb
/* 80B87628  4B 5C E1 0D */	bl daNpcF_offTmpBit__FUl
/* 80B8762C  38 60 00 0C */	li r3, 0xc
/* 80B87630  4B 5C E1 05 */	bl daNpcF_offTmpBit__FUl
/* 80B87634  88 18 15 76 */	lbz r0, 0x1576(r24)
/* 80B87638  28 00 00 00 */	cmplwi r0, 0
/* 80B8763C  40 82 00 28 */	bne lbl_80B87664
/* 80B87640  7F 03 C3 78 */	mr r3, r24
/* 80B87644  38 80 00 17 */	li r4, 0x17
/* 80B87648  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B8764C  38 A0 00 00 */	li r5, 0
/* 80B87650  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B87654  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B87658  7D 89 03 A6 */	mtctr r12
/* 80B8765C  4E 80 04 21 */	bctrl 
/* 80B87660  48 00 00 24 */	b lbl_80B87684
lbl_80B87664:
/* 80B87664  7F 03 C3 78 */	mr r3, r24
/* 80B87668  38 80 00 16 */	li r4, 0x16
/* 80B8766C  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B87670  38 A0 00 00 */	li r5, 0
/* 80B87674  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B87678  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8767C  7D 89 03 A6 */	mtctr r12
/* 80B87680  4E 80 04 21 */	bctrl 
lbl_80B87684:
/* 80B87684  38 00 00 00 */	li r0, 0
/* 80B87688  90 18 09 6C */	stw r0, 0x96c(r24)
/* 80B8768C  48 00 03 A0 */	b lbl_80B87A2C
lbl_80B87690:
/* 80B87690  38 78 13 2C */	addi r3, r24, 0x132c
/* 80B87694  4B 5C 90 59 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B87698  28 03 00 00 */	cmplwi r3, 0
/* 80B8769C  41 82 00 4C */	beq lbl_80B876E8
/* 80B876A0  38 78 13 2C */	addi r3, r24, 0x132c
/* 80B876A4  4B 5C 90 49 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B876A8  A8 03 00 08 */	lha r0, 8(r3)
/* 80B876AC  2C 00 00 ED */	cmpwi r0, 0xed
/* 80B876B0  40 82 00 38 */	bne lbl_80B876E8
/* 80B876B4  38 78 13 2C */	addi r3, r24, 0x132c
/* 80B876B8  4B 5C 90 35 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B876BC  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002009F@ha */
/* 80B876C0  38 04 00 9F */	addi r0, r4, 0x009F /* 0x0002009F@l */
/* 80B876C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B876C8  38 81 00 24 */	addi r4, r1, 0x24
/* 80B876CC  38 A0 00 00 */	li r5, 0
/* 80B876D0  38 C0 FF FF */	li r6, -1
/* 80B876D4  81 83 14 2C */	lwz r12, 0x142c(r3)
/* 80B876D8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80B876DC  7D 89 03 A6 */	mtctr r12
/* 80B876E0  38 63 14 1C */	addi r3, r3, 0x141c
/* 80B876E4  4E 80 04 21 */	bctrl 
lbl_80B876E8:
/* 80B876E8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B876EC  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B876F0  28 00 00 2D */	cmplwi r0, 0x2d
/* 80B876F4  40 82 00 0C */	bne lbl_80B87700
/* 80B876F8  38 00 00 00 */	li r0, 0
/* 80B876FC  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_80B87700:
/* 80B87700  38 60 00 60 */	li r3, 0x60
/* 80B87704  4B 5C DF 31 */	bl daNpcF_chkEvtBit__FUl
/* 80B87708  2C 03 00 00 */	cmpwi r3, 0
/* 80B8770C  41 82 00 10 */	beq lbl_80B8771C
/* 80B87710  38 60 00 04 */	li r3, 4
/* 80B87714  4B 4A 80 89 */	bl dComIfG_TimerDeleteRequest__Fi
/* 80B87718  48 00 00 0C */	b lbl_80B87724
lbl_80B8771C:
/* 80B8771C  38 60 00 03 */	li r3, 3
/* 80B87720  4B 4A 80 7D */	bl dComIfG_TimerDeleteRequest__Fi
lbl_80B87724:
/* 80B87724  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80B87728  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80B8772C  38 80 00 00 */	li r4, 0
/* 80B87730  4B 69 69 95 */	bl resetMiniGameItem__13dMeter2Info_cFb
/* 80B87734  48 00 02 F8 */	b lbl_80B87A2C
lbl_80B87738:
/* 80B87738  7F 03 C3 78 */	mr r3, r24
/* 80B8773C  80 98 14 E0 */	lwz r4, 0x14e0(r24)
/* 80B87740  38 A0 00 00 */	li r5, 0
/* 80B87744  4B 5C C5 D9 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B87748  48 00 02 E4 */	b lbl_80B87A2C
lbl_80B8774C:
/* 80B8774C  38 00 00 01 */	li r0, 1
/* 80B87750  98 18 0C 1A */	stb r0, 0xc1a(r24)
/* 80B87754  80 78 0C 1C */	lwz r3, 0xc1c(r24)
/* 80B87758  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B8775C  38 03 FF FE */	addi r0, r3, -2
/* 80B87760  B0 18 0C 18 */	sth r0, 0xc18(r24)
/* 80B87764  C0 5E 08 7C */	lfs f2, 0x87c(r30)
/* 80B87768  D0 41 01 D8 */	stfs f2, 0x1d8(r1)
/* 80B8776C  C0 3E 08 80 */	lfs f1, 0x880(r30)
/* 80B87770  38 7E 00 00 */	addi r3, r30, 0
/* 80B87774  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B87778  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B8777C  C0 1E 07 C0 */	lfs f0, 0x7c0(r30)
/* 80B87780  EC 61 00 28 */	fsubs f3, f1, f0
/* 80B87784  D0 61 01 DC */	stfs f3, 0x1dc(r1)
/* 80B87788  C0 3E 08 84 */	lfs f1, 0x884(r30)
/* 80B8778C  D0 21 01 E0 */	stfs f1, 0x1e0(r1)
/* 80B87790  C0 1E 08 88 */	lfs f0, 0x888(r30)
/* 80B87794  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80B87798  D0 61 01 D0 */	stfs f3, 0x1d0(r1)
/* 80B8779C  D0 21 01 D4 */	stfs f1, 0x1d4(r1)
/* 80B877A0  D0 58 04 D0 */	stfs f2, 0x4d0(r24)
/* 80B877A4  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 80B877A8  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
/* 80B877AC  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 80B877B0  D0 18 04 D8 */	stfs f0, 0x4d8(r24)
/* 80B877B4  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 80B877B8  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 80B877BC  4B 6E 94 49 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B877C0  B0 78 04 DE */	sth r3, 0x4de(r24)
/* 80B877C4  7F 03 C3 78 */	mr r3, r24
/* 80B877C8  A8 98 04 DE */	lha r4, 0x4de(r24)
/* 80B877CC  4B 5C CA 85 */	bl setAngle__8daNpcF_cFs
/* 80B877D0  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B877D4  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80B877D8  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B877DC  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80B877E0  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B877E4  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80B877E8  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 80B877EC  38 81 00 34 */	addi r4, r1, 0x34
/* 80B877F0  4B 49 60 A1 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80B877F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B877F8  41 82 00 0C */	beq lbl_80B87804
/* 80B877FC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B87800  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
lbl_80B87804:
/* 80B87804  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87808  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80B8780C  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80B87810  38 7E 00 00 */	addi r3, r30, 0
/* 80B87814  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80B87818  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80B8781C  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 80B87820  38 81 01 CC */	addi r4, r1, 0x1cc
/* 80B87824  4B 6E 93 E1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B87828  7C 65 1B 78 */	mr r5, r3
/* 80B8782C  38 61 00 50 */	addi r3, r1, 0x50
/* 80B87830  38 80 00 00 */	li r4, 0
/* 80B87834  38 C0 00 00 */	li r6, 0
/* 80B87838  4B 6D FB BD */	bl __ct__5csXyzFsss
/* 80B8783C  38 61 00 50 */	addi r3, r1, 0x50
/* 80B87840  4B 48 56 CD */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B87844  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 80B87848  4B 48 55 8D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80B8784C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B87850  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B87854  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 80B87858  D0 18 15 9C */	stfs f0, 0x159c(r24)
/* 80B8785C  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 80B87860  D0 18 15 A0 */	stfs f0, 0x15a0(r24)
/* 80B87864  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 80B87868  D0 18 15 A4 */	stfs f0, 0x15a4(r24)
/* 80B8786C  38 78 15 9C */	addi r3, r24, 0x159c
/* 80B87870  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80B87874  7C 65 1B 78 */	mr r5, r3
/* 80B87878  4B 7B F8 19 */	bl PSVECAdd
/* 80B8787C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87880  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80B87884  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80B87888  38 7E 00 00 */	addi r3, r30, 0
/* 80B8788C  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80B87890  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80B87894  38 61 00 50 */	addi r3, r1, 0x50
/* 80B87898  4B 48 56 75 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B8789C  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 80B878A0  4B 48 55 35 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80B878A4  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 80B878A8  D0 18 15 A8 */	stfs f0, 0x15a8(r24)
/* 80B878AC  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 80B878B0  D0 18 15 AC */	stfs f0, 0x15ac(r24)
/* 80B878B4  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 80B878B8  D0 18 15 B0 */	stfs f0, 0x15b0(r24)
/* 80B878BC  38 78 15 A8 */	addi r3, r24, 0x15a8
/* 80B878C0  38 98 15 9C */	addi r4, r24, 0x159c
/* 80B878C4  7C 65 1B 78 */	mr r5, r3
/* 80B878C8  4B 7B F7 C9 */	bl PSVECAdd
/* 80B878CC  C0 18 15 A8 */	lfs f0, 0x15a8(r24)
/* 80B878D0  D0 18 15 B4 */	stfs f0, 0x15b4(r24)
/* 80B878D4  C0 18 15 AC */	lfs f0, 0x15ac(r24)
/* 80B878D8  D0 18 15 B8 */	stfs f0, 0x15b8(r24)
/* 80B878DC  C0 18 15 B0 */	lfs f0, 0x15b0(r24)
/* 80B878E0  D0 18 15 BC */	stfs f0, 0x15bc(r24)
/* 80B878E4  38 61 01 CC */	addi r3, r1, 0x1cc
/* 80B878E8  38 81 01 D8 */	addi r4, r1, 0x1d8
/* 80B878EC  4B 6E 93 19 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B878F0  A8 61 00 52 */	lha r3, 0x52(r1)
/* 80B878F4  3C 63 00 01 */	addis r3, r3, 1
/* 80B878F8  38 03 80 00 */	addi r0, r3, -32768
/* 80B878FC  7C 17 07 34 */	extsh r23, r0
/* 80B87900  38 78 13 2C */	addi r3, r24, 0x132c
/* 80B87904  4B 5C 8D E9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B87908  C0 18 15 A8 */	lfs f0, 0x15a8(r24)
/* 80B8790C  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80B87910  C0 18 15 AC */	lfs f0, 0x15ac(r24)
/* 80B87914  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80B87918  C0 18 15 B0 */	lfs f0, 0x15b0(r24)
/* 80B8791C  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80B87920  B2 E3 14 4A */	sth r23, 0x144a(r3)
/* 80B87924  38 00 00 01 */	li r0, 1
/* 80B87928  98 03 14 46 */	stb r0, 0x1446(r3)
/* 80B8792C  48 00 01 00 */	b lbl_80B87A2C
lbl_80B87930:
/* 80B87930  7F 03 C3 78 */	mr r3, r24
/* 80B87934  80 98 14 E0 */	lwz r4, 0x14e0(r24)
/* 80B87938  38 A0 00 00 */	li r5, 0
/* 80B8793C  4B 5C C3 E1 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B87940  48 00 00 EC */	b lbl_80B87A2C
lbl_80B87944:
/* 80B87944  38 00 00 00 */	li r0, 0
/* 80B87948  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B8794C  38 78 09 F8 */	addi r3, r24, 0x9f8
/* 80B87950  38 81 00 30 */	addi r4, r1, 0x30
/* 80B87954  4B 6C 2B D5 */	bl getEventId__10dMsgFlow_cFPi
/* 80B87958  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B8795C  28 00 00 01 */	cmplwi r0, 1
/* 80B87960  40 82 00 28 */	bne lbl_80B87988
/* 80B87964  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B87968  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80B8796C  38 A0 00 00 */	li r5, 0
/* 80B87970  38 C0 FF FF */	li r6, -1
/* 80B87974  38 E0 FF FF */	li r7, -1
/* 80B87978  39 00 00 00 */	li r8, 0
/* 80B8797C  39 20 00 00 */	li r9, 0
/* 80B87980  4B 49 42 69 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B87984  90 78 14 CC */	stw r3, 0x14cc(r24)
lbl_80B87988:
/* 80B87988  38 00 00 01 */	li r0, 1
/* 80B8798C  98 18 09 EB */	stb r0, 0x9eb(r24)
/* 80B87990  48 00 00 9C */	b lbl_80B87A2C
lbl_80B87994:
/* 80B87994  38 00 00 00 */	li r0, 0
/* 80B87998  98 18 09 EB */	stb r0, 0x9eb(r24)
/* 80B8799C  7F 03 C3 78 */	mr r3, r24
/* 80B879A0  80 98 14 E0 */	lwz r4, 0x14e0(r24)
/* 80B879A4  38 A0 00 00 */	li r5, 0
/* 80B879A8  4B 5C C3 75 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B879AC  48 00 00 80 */	b lbl_80B87A2C
lbl_80B879B0:
/* 80B879B0  88 18 15 76 */	lbz r0, 0x1576(r24)
/* 80B879B4  28 00 00 00 */	cmplwi r0, 0
/* 80B879B8  40 82 00 28 */	bne lbl_80B879E0
/* 80B879BC  7F 03 C3 78 */	mr r3, r24
/* 80B879C0  38 80 00 1B */	li r4, 0x1b
/* 80B879C4  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B879C8  38 A0 00 00 */	li r5, 0
/* 80B879CC  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B879D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B879D4  7D 89 03 A6 */	mtctr r12
/* 80B879D8  4E 80 04 21 */	bctrl 
/* 80B879DC  48 00 00 50 */	b lbl_80B87A2C
lbl_80B879E0:
/* 80B879E0  7F 03 C3 78 */	mr r3, r24
/* 80B879E4  38 80 00 19 */	li r4, 0x19
/* 80B879E8  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B879EC  38 A0 00 00 */	li r5, 0
/* 80B879F0  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B879F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B879F8  7D 89 03 A6 */	mtctr r12
/* 80B879FC  4E 80 04 21 */	bctrl 
/* 80B87A00  48 00 00 2C */	b lbl_80B87A2C
lbl_80B87A04:
/* 80B87A04  7F 03 C3 78 */	mr r3, r24
/* 80B87A08  4B FF A8 31 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B87A0C  38 00 00 78 */	li r0, 0x78
/* 80B87A10  90 18 09 60 */	stw r0, 0x960(r24)
/* 80B87A14  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B87A18  B0 18 15 36 */	sth r0, 0x1536(r24)
/* 80B87A1C  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B87A20  B0 18 15 38 */	sth r0, 0x1538(r24)
/* 80B87A24  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B87A28  B0 18 15 3A */	sth r0, 0x153a(r24)
lbl_80B87A2C:
/* 80B87A2C  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B87A30  41 82 0C 50 */	beq lbl_80B88680
/* 80B87A34  40 80 00 34 */	bge lbl_80B87A68
/* 80B87A38  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B87A3C  41 82 0B D8 */	beq lbl_80B88614
/* 80B87A40  40 80 00 1C */	bge lbl_80B87A5C
/* 80B87A44  2C 1A 00 01 */	cmpwi r26, 1
/* 80B87A48  41 82 00 64 */	beq lbl_80B87AAC
/* 80B87A4C  40 80 10 88 */	bge lbl_80B88AD4
/* 80B87A50  2C 1A 00 00 */	cmpwi r26, 0
/* 80B87A54  40 80 00 44 */	bge lbl_80B87A98
/* 80B87A58  48 00 10 7C */	b lbl_80B88AD4
lbl_80B87A5C:
/* 80B87A5C  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B87A60  41 82 0B E4 */	beq lbl_80B88644
/* 80B87A64  48 00 10 70 */	b lbl_80B88AD4
lbl_80B87A68:
/* 80B87A68  2C 1A 00 32 */	cmpwi r26, 0x32
/* 80B87A6C  41 82 0C B8 */	beq lbl_80B88724
/* 80B87A70  40 80 00 1C */	bge lbl_80B87A8C
/* 80B87A74  2C 1A 00 28 */	cmpwi r26, 0x28
/* 80B87A78  41 82 0C 08 */	beq lbl_80B88680
/* 80B87A7C  40 80 10 58 */	bge lbl_80B88AD4
/* 80B87A80  2C 1A 00 20 */	cmpwi r26, 0x20
/* 80B87A84  40 80 10 50 */	bge lbl_80B88AD4
/* 80B87A88  48 00 0C 74 */	b lbl_80B886FC
lbl_80B87A8C:
/* 80B87A8C  2C 1A 00 3C */	cmpwi r26, 0x3c
/* 80B87A90  41 82 0E E4 */	beq lbl_80B88974
/* 80B87A94  48 00 10 40 */	b lbl_80B88AD4
lbl_80B87A98:
/* 80B87A98  C0 21 01 E8 */	lfs f1, 0x1e8(r1)
/* 80B87A9C  C0 1E 08 8C */	lfs f0, 0x88c(r30)
/* 80B87AA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87AA4  40 80 00 08 */	bge lbl_80B87AAC
/* 80B87AA8  3B 60 00 01 */	li r27, 1
lbl_80B87AAC:
/* 80B87AAC  A8 18 09 E0 */	lha r0, 0x9e0(r24)
/* 80B87AB0  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B87AB4  41 82 00 0C */	beq lbl_80B87AC0
/* 80B87AB8  2C 00 00 17 */	cmpwi r0, 0x17
/* 80B87ABC  40 82 0A E0 */	bne lbl_80B8859C
lbl_80B87AC0:
/* 80B87AC0  80 18 14 EC */	lwz r0, 0x14ec(r24)
/* 80B87AC4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B87AC8  41 82 00 0C */	beq lbl_80B87AD4
/* 80B87ACC  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80B87AD0  40 82 10 08 */	bne lbl_80B88AD8
lbl_80B87AD4:
/* 80B87AD4  A2 F8 0C 18 */	lhz r23, 0xc18(r24)
/* 80B87AD8  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B87ADC  4B 5C 91 3D */	bl getNextIdx__13daNpcF_Path_cFv
/* 80B87AE0  7C 17 18 00 */	cmpw r23, r3
/* 80B87AE4  41 82 01 60 */	beq lbl_80B87C44
/* 80B87AE8  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B87AEC  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80B87AF0  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B87AF4  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80B87AF8  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B87AFC  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80B87B00  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B87B04  38 81 01 24 */	addi r4, r1, 0x124
/* 80B87B08  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 80B87B0C  4B 5C 92 D5 */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80B87B10  38 61 01 18 */	addi r3, r1, 0x118
/* 80B87B14  38 98 15 00 */	addi r4, r24, 0x1500
/* 80B87B18  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B87B1C  4B 6D F0 19 */	bl __mi__4cXyzCFRC3Vec
/* 80B87B20  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 80B87B24  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 80B87B28  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 80B87B2C  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80B87B30  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 80B87B34  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80B87B38  38 61 01 9C */	addi r3, r1, 0x19c
/* 80B87B3C  4B 7B F5 FD */	bl PSVECSquareMag
/* 80B87B40  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87B44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87B48  40 81 00 58 */	ble lbl_80B87BA0
/* 80B87B4C  FC 00 08 34 */	frsqrte f0, f1
/* 80B87B50  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B87B54  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87B58  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B87B5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87B60  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87B64  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87B68  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87B6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87B70  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87B74  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87B78  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87B7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87B80  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87B84  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87B88  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87B8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87B90  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87B94  FC 21 00 32 */	fmul f1, f1, f0
/* 80B87B98  FC 20 08 18 */	frsp f1, f1
/* 80B87B9C  48 00 00 88 */	b lbl_80B87C24
lbl_80B87BA0:
/* 80B87BA0  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B87BA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87BA8  40 80 00 10 */	bge lbl_80B87BB8
/* 80B87BAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B87BB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B87BB4  48 00 00 70 */	b lbl_80B87C24
lbl_80B87BB8:
/* 80B87BB8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B87BBC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80B87BC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B87BC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B87BC8  7C 03 00 00 */	cmpw r3, r0
/* 80B87BCC  41 82 00 14 */	beq lbl_80B87BE0
/* 80B87BD0  40 80 00 40 */	bge lbl_80B87C10
/* 80B87BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B87BD8  41 82 00 20 */	beq lbl_80B87BF8
/* 80B87BDC  48 00 00 34 */	b lbl_80B87C10
lbl_80B87BE0:
/* 80B87BE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B87BE4  41 82 00 0C */	beq lbl_80B87BF0
/* 80B87BE8  38 00 00 01 */	li r0, 1
/* 80B87BEC  48 00 00 28 */	b lbl_80B87C14
lbl_80B87BF0:
/* 80B87BF0  38 00 00 02 */	li r0, 2
/* 80B87BF4  48 00 00 20 */	b lbl_80B87C14
lbl_80B87BF8:
/* 80B87BF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B87BFC  41 82 00 0C */	beq lbl_80B87C08
/* 80B87C00  38 00 00 05 */	li r0, 5
/* 80B87C04  48 00 00 10 */	b lbl_80B87C14
lbl_80B87C08:
/* 80B87C08  38 00 00 03 */	li r0, 3
/* 80B87C0C  48 00 00 08 */	b lbl_80B87C14
lbl_80B87C10:
/* 80B87C10  38 00 00 04 */	li r0, 4
lbl_80B87C14:
/* 80B87C14  2C 00 00 01 */	cmpwi r0, 1
/* 80B87C18  40 82 00 0C */	bne lbl_80B87C24
/* 80B87C1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B87C20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B87C24:
/* 80B87C24  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 80B87C28  EF E0 00 72 */	fmuls f31, f0, f1
/* 80B87C2C  38 7E 00 00 */	addi r3, r30, 0
/* 80B87C30  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B87C34  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B87C38  40 80 05 B8 */	bge lbl_80B881F0
/* 80B87C3C  FF E0 00 90 */	fmr f31, f0
/* 80B87C40  48 00 05 B0 */	b lbl_80B881F0
lbl_80B87C44:
/* 80B87C44  38 61 01 0C */	addi r3, r1, 0x10c
/* 80B87C48  38 98 15 00 */	addi r4, r24, 0x1500
/* 80B87C4C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B87C50  4B 6D EE E5 */	bl __mi__4cXyzCFRC3Vec
/* 80B87C54  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80B87C58  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B87C5C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87C60  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B87C64  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80B87C68  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B87C6C  38 61 00 94 */	addi r3, r1, 0x94
/* 80B87C70  4B 7B F4 C9 */	bl PSVECSquareMag
/* 80B87C74  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87C7C  40 81 00 58 */	ble lbl_80B87CD4
/* 80B87C80  FC 00 08 34 */	frsqrte f0, f1
/* 80B87C84  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B87C88  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87C8C  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B87C90  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87C94  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87C98  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87C9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87CA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87CA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87CA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87CAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87CB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87CB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87CB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87CBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87CC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87CC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87CC8  FC 21 00 32 */	fmul f1, f1, f0
/* 80B87CCC  FC 20 08 18 */	frsp f1, f1
/* 80B87CD0  48 00 00 88 */	b lbl_80B87D58
lbl_80B87CD4:
/* 80B87CD4  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B87CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87CDC  40 80 00 10 */	bge lbl_80B87CEC
/* 80B87CE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B87CE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B87CE8  48 00 00 70 */	b lbl_80B87D58
lbl_80B87CEC:
/* 80B87CEC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B87CF0  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80B87CF4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B87CF8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B87CFC  7C 03 00 00 */	cmpw r3, r0
/* 80B87D00  41 82 00 14 */	beq lbl_80B87D14
/* 80B87D04  40 80 00 40 */	bge lbl_80B87D44
/* 80B87D08  2C 03 00 00 */	cmpwi r3, 0
/* 80B87D0C  41 82 00 20 */	beq lbl_80B87D2C
/* 80B87D10  48 00 00 34 */	b lbl_80B87D44
lbl_80B87D14:
/* 80B87D14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B87D18  41 82 00 0C */	beq lbl_80B87D24
/* 80B87D1C  38 00 00 01 */	li r0, 1
/* 80B87D20  48 00 00 28 */	b lbl_80B87D48
lbl_80B87D24:
/* 80B87D24  38 00 00 02 */	li r0, 2
/* 80B87D28  48 00 00 20 */	b lbl_80B87D48
lbl_80B87D2C:
/* 80B87D2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B87D30  41 82 00 0C */	beq lbl_80B87D3C
/* 80B87D34  38 00 00 05 */	li r0, 5
/* 80B87D38  48 00 00 10 */	b lbl_80B87D48
lbl_80B87D3C:
/* 80B87D3C  38 00 00 03 */	li r0, 3
/* 80B87D40  48 00 00 08 */	b lbl_80B87D48
lbl_80B87D44:
/* 80B87D44  38 00 00 04 */	li r0, 4
lbl_80B87D48:
/* 80B87D48  2C 00 00 01 */	cmpwi r0, 1
/* 80B87D4C  40 82 00 0C */	bne lbl_80B87D58
/* 80B87D50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B87D54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B87D58:
/* 80B87D58  C0 1E 07 B8 */	lfs f0, 0x7b8(r30)
/* 80B87D5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87D60  40 80 04 38 */	bge lbl_80B88198
/* 80B87D64  C0 1E 08 90 */	lfs f0, 0x890(r30)
/* 80B87D68  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 80B87D6C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87D70  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80B87D74  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 80B87D78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B87D7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B87D80  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80B87D84  4B 48 46 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B87D88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B87D8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B87D90  38 81 01 90 */	addi r4, r1, 0x190
/* 80B87D94  38 A1 01 84 */	addi r5, r1, 0x184
/* 80B87D98  4B 7B EF D5 */	bl PSMTXMultVec
/* 80B87D9C  38 61 01 00 */	addi r3, r1, 0x100
/* 80B87DA0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B87DA4  38 A1 01 84 */	addi r5, r1, 0x184
/* 80B87DA8  4B 6D ED 8D */	bl __mi__4cXyzCFRC3Vec
/* 80B87DAC  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80B87DB0  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80B87DB4  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80B87DB8  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80B87DBC  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 80B87DC0  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80B87DC4  38 61 01 84 */	addi r3, r1, 0x184
/* 80B87DC8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B87DCC  7C 65 1B 78 */	mr r5, r3
/* 80B87DD0  4B 7B F2 C1 */	bl PSVECAdd
/* 80B87DD4  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80B87DD8  38 81 01 84 */	addi r4, r1, 0x184
/* 80B87DDC  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80B87DE0  4B 6D ED 55 */	bl __mi__4cXyzCFRC3Vec
/* 80B87DE4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80B87DE8  38 81 01 78 */	addi r4, r1, 0x178
/* 80B87DEC  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80B87DF0  4B 6D ED 45 */	bl __mi__4cXyzCFRC3Vec
/* 80B87DF4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80B87DF8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B87DFC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87E00  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B87E04  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80B87E08  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B87E0C  38 61 00 88 */	addi r3, r1, 0x88
/* 80B87E10  4B 7B F3 29 */	bl PSVECSquareMag
/* 80B87E14  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87E1C  40 81 00 58 */	ble lbl_80B87E74
/* 80B87E20  FC 00 08 34 */	frsqrte f0, f1
/* 80B87E24  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B87E28  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87E2C  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B87E30  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87E34  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87E38  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87E3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87E40  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87E44  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87E48  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87E4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87E50  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87E54  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87E58  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87E5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87E60  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87E64  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87E68  FF E1 00 32 */	fmul f31, f1, f0
/* 80B87E6C  FF E0 F8 18 */	frsp f31, f31
/* 80B87E70  48 00 00 90 */	b lbl_80B87F00
lbl_80B87E74:
/* 80B87E74  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B87E78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87E7C  40 80 00 10 */	bge lbl_80B87E8C
/* 80B87E80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B87E84  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B87E88  48 00 00 78 */	b lbl_80B87F00
lbl_80B87E8C:
/* 80B87E8C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B87E90  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80B87E94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B87E98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B87E9C  7C 03 00 00 */	cmpw r3, r0
/* 80B87EA0  41 82 00 14 */	beq lbl_80B87EB4
/* 80B87EA4  40 80 00 40 */	bge lbl_80B87EE4
/* 80B87EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80B87EAC  41 82 00 20 */	beq lbl_80B87ECC
/* 80B87EB0  48 00 00 34 */	b lbl_80B87EE4
lbl_80B87EB4:
/* 80B87EB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B87EB8  41 82 00 0C */	beq lbl_80B87EC4
/* 80B87EBC  38 00 00 01 */	li r0, 1
/* 80B87EC0  48 00 00 28 */	b lbl_80B87EE8
lbl_80B87EC4:
/* 80B87EC4  38 00 00 02 */	li r0, 2
/* 80B87EC8  48 00 00 20 */	b lbl_80B87EE8
lbl_80B87ECC:
/* 80B87ECC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B87ED0  41 82 00 0C */	beq lbl_80B87EDC
/* 80B87ED4  38 00 00 05 */	li r0, 5
/* 80B87ED8  48 00 00 10 */	b lbl_80B87EE8
lbl_80B87EDC:
/* 80B87EDC  38 00 00 03 */	li r0, 3
/* 80B87EE0  48 00 00 08 */	b lbl_80B87EE8
lbl_80B87EE4:
/* 80B87EE4  38 00 00 04 */	li r0, 4
lbl_80B87EE8:
/* 80B87EE8  2C 00 00 01 */	cmpwi r0, 1
/* 80B87EEC  40 82 00 10 */	bne lbl_80B87EFC
/* 80B87EF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B87EF4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B87EF8  48 00 00 08 */	b lbl_80B87F00
lbl_80B87EFC:
/* 80B87EFC  FF E0 08 90 */	fmr f31, f1
lbl_80B87F00:
/* 80B87F00  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80B87F04  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B87F08  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87F0C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B87F10  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80B87F14  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B87F18  38 61 00 7C */	addi r3, r1, 0x7c
/* 80B87F1C  4B 7B F2 1D */	bl PSVECSquareMag
/* 80B87F20  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B87F24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87F28  40 81 00 58 */	ble lbl_80B87F80
/* 80B87F2C  FC 00 08 34 */	frsqrte f0, f1
/* 80B87F30  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B87F34  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87F38  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B87F3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87F40  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87F44  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87F48  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87F4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87F50  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87F54  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87F58  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87F5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87F60  FC 44 00 32 */	fmul f2, f4, f0
/* 80B87F64  FC 00 00 32 */	fmul f0, f0, f0
/* 80B87F68  FC 01 00 32 */	fmul f0, f1, f0
/* 80B87F6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B87F70  FC 02 00 32 */	fmul f0, f2, f0
/* 80B87F74  FC 21 00 32 */	fmul f1, f1, f0
/* 80B87F78  FC 20 08 18 */	frsp f1, f1
/* 80B87F7C  48 00 00 88 */	b lbl_80B88004
lbl_80B87F80:
/* 80B87F80  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B87F84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B87F88  40 80 00 10 */	bge lbl_80B87F98
/* 80B87F8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B87F90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B87F94  48 00 00 70 */	b lbl_80B88004
lbl_80B87F98:
/* 80B87F98  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B87F9C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B87FA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B87FA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B87FA8  7C 03 00 00 */	cmpw r3, r0
/* 80B87FAC  41 82 00 14 */	beq lbl_80B87FC0
/* 80B87FB0  40 80 00 40 */	bge lbl_80B87FF0
/* 80B87FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B87FB8  41 82 00 20 */	beq lbl_80B87FD8
/* 80B87FBC  48 00 00 34 */	b lbl_80B87FF0
lbl_80B87FC0:
/* 80B87FC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B87FC4  41 82 00 0C */	beq lbl_80B87FD0
/* 80B87FC8  38 00 00 01 */	li r0, 1
/* 80B87FCC  48 00 00 28 */	b lbl_80B87FF4
lbl_80B87FD0:
/* 80B87FD0  38 00 00 02 */	li r0, 2
/* 80B87FD4  48 00 00 20 */	b lbl_80B87FF4
lbl_80B87FD8:
/* 80B87FD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B87FDC  41 82 00 0C */	beq lbl_80B87FE8
/* 80B87FE0  38 00 00 05 */	li r0, 5
/* 80B87FE4  48 00 00 10 */	b lbl_80B87FF4
lbl_80B87FE8:
/* 80B87FE8  38 00 00 03 */	li r0, 3
/* 80B87FEC  48 00 00 08 */	b lbl_80B87FF4
lbl_80B87FF0:
/* 80B87FF0  38 00 00 04 */	li r0, 4
lbl_80B87FF4:
/* 80B87FF4  2C 00 00 01 */	cmpwi r0, 1
/* 80B87FF8  40 82 00 0C */	bne lbl_80B88004
/* 80B87FFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B88000  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B88004:
/* 80B88004  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80B88008  40 80 00 20 */	bge lbl_80B88028
/* 80B8800C  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 80B88010  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80B88014  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 80B88018  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80B8801C  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 80B88020  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80B88024  48 00 00 1C */	b lbl_80B88040
lbl_80B88028:
/* 80B88028  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 80B8802C  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80B88030  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 80B88034  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80B88038  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 80B8803C  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
lbl_80B88040:
/* 80B88040  38 61 00 DC */	addi r3, r1, 0xdc
/* 80B88044  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 80B88048  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80B8804C  4B 6D EA E9 */	bl __mi__4cXyzCFRC3Vec
/* 80B88050  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80B88054  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B88058  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8805C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B88060  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80B88064  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B88068  38 61 00 70 */	addi r3, r1, 0x70
/* 80B8806C  4B 7B F0 CD */	bl PSVECSquareMag
/* 80B88070  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B88074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B88078  40 81 00 58 */	ble lbl_80B880D0
/* 80B8807C  FC 00 08 34 */	frsqrte f0, f1
/* 80B88080  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B88084  FC 44 00 32 */	fmul f2, f4, f0
/* 80B88088  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B8808C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B88090  FC 01 00 32 */	fmul f0, f1, f0
/* 80B88094  FC 03 00 28 */	fsub f0, f3, f0
/* 80B88098  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8809C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B880A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B880A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B880A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B880AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B880B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B880B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B880B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B880BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B880C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B880C4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B880C8  FC 20 08 18 */	frsp f1, f1
/* 80B880CC  48 00 00 88 */	b lbl_80B88154
lbl_80B880D0:
/* 80B880D0  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B880D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B880D8  40 80 00 10 */	bge lbl_80B880E8
/* 80B880DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B880E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B880E4  48 00 00 70 */	b lbl_80B88154
lbl_80B880E8:
/* 80B880E8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B880EC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B880F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B880F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B880F8  7C 03 00 00 */	cmpw r3, r0
/* 80B880FC  41 82 00 14 */	beq lbl_80B88110
/* 80B88100  40 80 00 40 */	bge lbl_80B88140
/* 80B88104  2C 03 00 00 */	cmpwi r3, 0
/* 80B88108  41 82 00 20 */	beq lbl_80B88128
/* 80B8810C  48 00 00 34 */	b lbl_80B88140
lbl_80B88110:
/* 80B88110  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B88114  41 82 00 0C */	beq lbl_80B88120
/* 80B88118  38 00 00 01 */	li r0, 1
/* 80B8811C  48 00 00 28 */	b lbl_80B88144
lbl_80B88120:
/* 80B88120  38 00 00 02 */	li r0, 2
/* 80B88124  48 00 00 20 */	b lbl_80B88144
lbl_80B88128:
/* 80B88128  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8812C  41 82 00 0C */	beq lbl_80B88138
/* 80B88130  38 00 00 05 */	li r0, 5
/* 80B88134  48 00 00 10 */	b lbl_80B88144
lbl_80B88138:
/* 80B88138  38 00 00 03 */	li r0, 3
/* 80B8813C  48 00 00 08 */	b lbl_80B88144
lbl_80B88140:
/* 80B88140  38 00 00 04 */	li r0, 4
lbl_80B88144:
/* 80B88144  2C 00 00 01 */	cmpwi r0, 1
/* 80B88148  40 82 00 0C */	bne lbl_80B88154
/* 80B8814C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B88150  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B88154:
/* 80B88154  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80B88158  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8815C  40 81 00 1C */	ble lbl_80B88178
/* 80B88160  C0 3E 07 64 */	lfs f1, 0x764(r30)
/* 80B88164  38 7E 00 00 */	addi r3, r30, 0
/* 80B88168  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B8816C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B88170  EF E1 00 32 */	fmuls f31, f1, f0
/* 80B88174  48 00 00 7C */	b lbl_80B881F0
lbl_80B88178:
/* 80B88178  C3 FE 08 94 */	lfs f31, 0x894(r30)
/* 80B8817C  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 80B88180  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80B88184  C0 01 01 E8 */	lfs f0, 0x1e8(r1)
/* 80B88188  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80B8818C  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 80B88190  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80B88194  48 00 00 5C */	b lbl_80B881F0
lbl_80B88198:
/* 80B88198  C3 FE 00 B0 */	lfs f31, 0xb0(r30)
/* 80B8819C  C0 38 15 24 */	lfs f1, 0x1524(r24)
/* 80B881A0  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80B881A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B881A8  40 80 00 20 */	bge lbl_80B881C8
/* 80B881AC  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 80B881B0  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80B881B4  C0 01 01 E8 */	lfs f0, 0x1e8(r1)
/* 80B881B8  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80B881BC  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 80B881C0  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80B881C4  48 00 00 2C */	b lbl_80B881F0
lbl_80B881C8:
/* 80B881C8  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B881CC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B881D0  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B881D4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B881D8  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B881DC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B881E0  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B881E4  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80B881E8  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 80B881EC  4B 5C 8B F5 */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
lbl_80B881F0:
/* 80B881F0  38 78 15 24 */	addi r3, r24, 0x1524
/* 80B881F4  FC 20 F8 90 */	fmr f1, f31
/* 80B881F8  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80B881FC  C0 7E 07 CC */	lfs f3, 0x7cc(r30)
/* 80B88200  4B 6E 78 3D */	bl cLib_addCalc2__FPffff
/* 80B88204  80 78 05 68 */	lwz r3, 0x568(r24)
/* 80B88208  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B8820C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B88210  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B88214  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80B88218  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80B8821C  C0 7E 08 98 */	lfs f3, 0x898(r30)
/* 80B88220  4B 6E 78 1D */	bl cLib_addCalc2__FPffff
/* 80B88224  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B88228  80 78 05 68 */	lwz r3, 0x568(r24)
/* 80B8822C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B88230  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 80B88234  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B88238  4B 6E 8A 3D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8823C  B0 61 00 48 */	sth r3, 0x48(r1)
/* 80B88240  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B88244  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 80B88248  4B 6E 89 BD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8824C  3B 41 00 4A */	addi r26, r1, 0x4a
/* 80B88250  B0 61 00 4A */	sth r3, 0x4a(r1)
/* 80B88254  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B88258  3A E1 00 4C */	addi r23, r1, 0x4c
/* 80B8825C  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80B88260  38 00 00 00 */	li r0, 0
/* 80B88264  B0 18 04 E0 */	sth r0, 0x4e0(r24)
/* 80B88268  7F 03 C3 78 */	mr r3, r24
/* 80B8826C  38 81 00 48 */	addi r4, r1, 0x48
/* 80B88270  38 B8 15 36 */	addi r5, r24, 0x1536
/* 80B88274  38 C0 00 08 */	li r6, 8
/* 80B88278  7F 27 CB 78 */	mr r7, r25
/* 80B8827C  4B FF A2 79 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B88280  7F 03 C3 78 */	mr r3, r24
/* 80B88284  7F 24 CB 78 */	mr r4, r25
/* 80B88288  38 A0 00 08 */	li r5, 8
/* 80B8828C  7F 46 D3 78 */	mr r6, r26
/* 80B88290  7E E7 BB 78 */	mr r7, r23
/* 80B88294  4B FF 9D 25 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B88298  A8 01 00 4C */	lha r0, 0x4c(r1)
/* 80B8829C  B0 18 04 E0 */	sth r0, 0x4e0(r24)
/* 80B882A0  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B882A4  B0 18 08 F0 */	sth r0, 0x8f0(r24)
/* 80B882A8  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B882AC  B0 18 08 F2 */	sth r0, 0x8f2(r24)
/* 80B882B0  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B882B4  B0 18 08 F4 */	sth r0, 0x8f4(r24)
/* 80B882B8  A8 18 08 F0 */	lha r0, 0x8f0(r24)
/* 80B882BC  B0 18 04 E4 */	sth r0, 0x4e4(r24)
/* 80B882C0  A8 18 08 F2 */	lha r0, 0x8f2(r24)
/* 80B882C4  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80B882C8  A8 18 08 F4 */	lha r0, 0x8f4(r24)
/* 80B882CC  B0 18 04 E8 */	sth r0, 0x4e8(r24)
/* 80B882D0  C0 38 15 24 */	lfs f1, 0x1524(r24)
/* 80B882D4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B882D8  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 80B882DC  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 80B882E0  D0 21 01 74 */	stfs f1, 0x174(r1)
/* 80B882E4  7F 03 C3 78 */	mr r3, r24
/* 80B882E8  38 81 01 6C */	addi r4, r1, 0x16c
/* 80B882EC  4B FF A2 99 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B882F0  80 18 05 FC */	lwz r0, 0x5fc(r24)
/* 80B882F4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B882F8  41 82 00 20 */	beq lbl_80B88318
/* 80B882FC  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 80B88300  38 7E 00 00 */	addi r3, r30, 0
/* 80B88304  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B88308  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80B8830C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B88310  40 81 00 08 */	ble lbl_80B88318
/* 80B88314  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
lbl_80B88318:
/* 80B88318  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80B8831C  38 98 15 00 */	addi r4, r24, 0x1500
/* 80B88320  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B88324  4B 6D E8 11 */	bl __mi__4cXyzCFRC3Vec
/* 80B88328  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80B8832C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B88330  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B88334  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B88338  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80B8833C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B88340  38 61 00 64 */	addi r3, r1, 0x64
/* 80B88344  4B 7B ED F5 */	bl PSVECSquareMag
/* 80B88348  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8834C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B88350  40 81 00 58 */	ble lbl_80B883A8
/* 80B88354  FC 00 08 34 */	frsqrte f0, f1
/* 80B88358  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B8835C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B88360  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B88364  FC 00 00 32 */	fmul f0, f0, f0
/* 80B88368  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8836C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B88370  FC 02 00 32 */	fmul f0, f2, f0
/* 80B88374  FC 44 00 32 */	fmul f2, f4, f0
/* 80B88378  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8837C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B88380  FC 03 00 28 */	fsub f0, f3, f0
/* 80B88384  FC 02 00 32 */	fmul f0, f2, f0
/* 80B88388  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8838C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B88390  FC 01 00 32 */	fmul f0, f1, f0
/* 80B88394  FC 03 00 28 */	fsub f0, f3, f0
/* 80B88398  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8839C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B883A0  FC 20 08 18 */	frsp f1, f1
/* 80B883A4  48 00 00 88 */	b lbl_80B8842C
lbl_80B883A8:
/* 80B883A8  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B883AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B883B0  40 80 00 10 */	bge lbl_80B883C0
/* 80B883B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B883B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B883BC  48 00 00 70 */	b lbl_80B8842C
lbl_80B883C0:
/* 80B883C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B883C4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B883C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B883CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B883D0  7C 03 00 00 */	cmpw r3, r0
/* 80B883D4  41 82 00 14 */	beq lbl_80B883E8
/* 80B883D8  40 80 00 40 */	bge lbl_80B88418
/* 80B883DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B883E0  41 82 00 20 */	beq lbl_80B88400
/* 80B883E4  48 00 00 34 */	b lbl_80B88418
lbl_80B883E8:
/* 80B883E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B883EC  41 82 00 0C */	beq lbl_80B883F8
/* 80B883F0  38 00 00 01 */	li r0, 1
/* 80B883F4  48 00 00 28 */	b lbl_80B8841C
lbl_80B883F8:
/* 80B883F8  38 00 00 02 */	li r0, 2
/* 80B883FC  48 00 00 20 */	b lbl_80B8841C
lbl_80B88400:
/* 80B88400  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B88404  41 82 00 0C */	beq lbl_80B88410
/* 80B88408  38 00 00 05 */	li r0, 5
/* 80B8840C  48 00 00 10 */	b lbl_80B8841C
lbl_80B88410:
/* 80B88410  38 00 00 03 */	li r0, 3
/* 80B88414  48 00 00 08 */	b lbl_80B8841C
lbl_80B88418:
/* 80B88418  38 00 00 04 */	li r0, 4
lbl_80B8841C:
/* 80B8841C  2C 00 00 01 */	cmpwi r0, 1
/* 80B88420  40 82 00 0C */	bne lbl_80B8842C
/* 80B88424  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B88428  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B8842C:
/* 80B8842C  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80B88430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B88434  40 80 01 4C */	bge lbl_80B88580
/* 80B88438  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80B8843C  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 80B88440  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80B88444  4B 6D E6 F1 */	bl __mi__4cXyzCFRC3Vec
/* 80B88448  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80B8844C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B88450  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B88454  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B88458  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80B8845C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B88460  38 61 00 58 */	addi r3, r1, 0x58
/* 80B88464  4B 7B EC D5 */	bl PSVECSquareMag
/* 80B88468  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8846C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B88470  40 81 00 58 */	ble lbl_80B884C8
/* 80B88474  FC 00 08 34 */	frsqrte f0, f1
/* 80B88478  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B8847C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B88480  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B88484  FC 00 00 32 */	fmul f0, f0, f0
/* 80B88488  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8848C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B88490  FC 02 00 32 */	fmul f0, f2, f0
/* 80B88494  FC 44 00 32 */	fmul f2, f4, f0
/* 80B88498  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8849C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B884A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B884A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B884A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B884AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B884B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B884B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B884B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B884BC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B884C0  FC 20 08 18 */	frsp f1, f1
/* 80B884C4  48 00 00 88 */	b lbl_80B8854C
lbl_80B884C8:
/* 80B884C8  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B884CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B884D0  40 80 00 10 */	bge lbl_80B884E0
/* 80B884D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B884D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B884DC  48 00 00 70 */	b lbl_80B8854C
lbl_80B884E0:
/* 80B884E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B884E4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B884E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B884EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B884F0  7C 03 00 00 */	cmpw r3, r0
/* 80B884F4  41 82 00 14 */	beq lbl_80B88508
/* 80B884F8  40 80 00 40 */	bge lbl_80B88538
/* 80B884FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B88500  41 82 00 20 */	beq lbl_80B88520
/* 80B88504  48 00 00 34 */	b lbl_80B88538
lbl_80B88508:
/* 80B88508  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8850C  41 82 00 0C */	beq lbl_80B88518
/* 80B88510  38 00 00 01 */	li r0, 1
/* 80B88514  48 00 00 28 */	b lbl_80B8853C
lbl_80B88518:
/* 80B88518  38 00 00 02 */	li r0, 2
/* 80B8851C  48 00 00 20 */	b lbl_80B8853C
lbl_80B88520:
/* 80B88520  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B88524  41 82 00 0C */	beq lbl_80B88530
/* 80B88528  38 00 00 05 */	li r0, 5
/* 80B8852C  48 00 00 10 */	b lbl_80B8853C
lbl_80B88530:
/* 80B88530  38 00 00 03 */	li r0, 3
/* 80B88534  48 00 00 08 */	b lbl_80B8853C
lbl_80B88538:
/* 80B88538  38 00 00 04 */	li r0, 4
lbl_80B8853C:
/* 80B8853C  2C 00 00 01 */	cmpwi r0, 1
/* 80B88540  40 82 00 0C */	bne lbl_80B8854C
/* 80B88544  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B88548  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B8854C:
/* 80B8854C  C0 1E 08 9C */	lfs f0, 0x89c(r30)
/* 80B88550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B88554  40 80 00 2C */	bge lbl_80B88580
/* 80B88558  7F 03 C3 78 */	mr r3, r24
/* 80B8855C  38 80 00 1E */	li r4, 0x1e
/* 80B88560  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B88564  38 A0 00 00 */	li r5, 0
/* 80B88568  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B8856C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B88570  7D 89 03 A6 */	mtctr r12
/* 80B88574  4E 80 04 21 */	bctrl 
/* 80B88578  7F 03 C3 78 */	mr r3, r24
/* 80B8857C  4B FF 9D 51 */	bl calcWaistAngleStop__11daNpc_zrA_cFv
lbl_80B88580:
/* 80B88580  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B88584  D0 18 15 00 */	stfs f0, 0x1500(r24)
/* 80B88588  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B8858C  D0 18 15 04 */	stfs f0, 0x1504(r24)
/* 80B88590  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B88594  D0 18 15 08 */	stfs f0, 0x1508(r24)
/* 80B88598  48 00 05 40 */	b lbl_80B88AD8
lbl_80B8859C:
/* 80B8859C  7F 03 C3 78 */	mr r3, r24
/* 80B885A0  38 80 00 01 */	li r4, 1
/* 80B885A4  4B FF A0 59 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B885A8  7F 03 C3 78 */	mr r3, r24
/* 80B885AC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B885B0  4B 49 21 61 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B885B4  A8 98 08 F2 */	lha r4, 0x8f2(r24)
/* 80B885B8  7C 60 07 34 */	extsh r0, r3
/* 80B885BC  7C 04 00 00 */	cmpw r4, r0
/* 80B885C0  40 82 00 28 */	bne lbl_80B885E8
/* 80B885C4  80 18 14 EC */	lwz r0, 0x14ec(r24)
/* 80B885C8  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80B885CC  40 82 05 0C */	bne lbl_80B88AD8
/* 80B885D0  2C 1A 00 01 */	cmpwi r26, 1
/* 80B885D4  40 82 00 08 */	bne lbl_80B885DC
/* 80B885D8  3B 60 00 01 */	li r27, 1
lbl_80B885DC:
/* 80B885DC  38 00 00 00 */	li r0, 0
/* 80B885E0  90 18 09 6C */	stw r0, 0x96c(r24)
/* 80B885E4  48 00 04 F4 */	b lbl_80B88AD8
lbl_80B885E8:
/* 80B885E8  7F 03 C3 78 */	mr r3, r24
/* 80B885EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B885F0  4B 49 21 21 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B885F4  7C 64 1B 78 */	mr r4, r3
/* 80B885F8  38 78 08 F2 */	addi r3, r24, 0x8f2
/* 80B885FC  A8 BC 00 74 */	lha r5, 0x74(r28)
/* 80B88600  4B 6E 85 91 */	bl cLib_chaseAngleS__FPsss
/* 80B88604  7F 03 C3 78 */	mr r3, r24
/* 80B88608  A8 98 08 F2 */	lha r4, 0x8f2(r24)
/* 80B8860C  4B 5C BC 45 */	bl setAngle__8daNpcF_cFs
/* 80B88610  48 00 04 C8 */	b lbl_80B88AD8
lbl_80B88614:
/* 80B88614  7F 03 C3 78 */	mr r3, r24
/* 80B88618  38 80 00 01 */	li r4, 1
/* 80B8861C  4B FF 9F E1 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B88620  7F 03 C3 78 */	mr r3, r24
/* 80B88624  38 80 00 00 */	li r4, 0
/* 80B88628  38 A0 00 01 */	li r5, 1
/* 80B8862C  38 C0 00 00 */	li r6, 0
/* 80B88630  4B 5C B7 55 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B88634  2C 03 00 00 */	cmpwi r3, 0
/* 80B88638  41 82 04 A0 */	beq lbl_80B88AD8
/* 80B8863C  3B 60 00 01 */	li r27, 1
/* 80B88640  48 00 04 98 */	b lbl_80B88AD8
lbl_80B88644:
/* 80B88644  7F 03 C3 78 */	mr r3, r24
/* 80B88648  38 80 00 01 */	li r4, 1
/* 80B8864C  4B FF 9F B1 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B88650  7F 03 C3 78 */	mr r3, r24
/* 80B88654  38 80 00 00 */	li r4, 0
/* 80B88658  48 00 1A 0D */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B8865C  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B88660  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 80B88664  4B 6E 85 A1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B88668  B0 78 04 DE */	sth r3, 0x4de(r24)
/* 80B8866C  7F 03 C3 78 */	mr r3, r24
/* 80B88670  A8 98 04 DE */	lha r4, 0x4de(r24)
/* 80B88674  4B 5C BB DD */	bl setAngle__8daNpcF_cFs
/* 80B88678  3B 60 00 01 */	li r27, 1
/* 80B8867C  48 00 04 5C */	b lbl_80B88AD8
lbl_80B88680:
/* 80B88680  7F 03 C3 78 */	mr r3, r24
/* 80B88684  38 80 00 01 */	li r4, 1
/* 80B88688  4B FF 9F 75 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B8868C  7F 03 C3 78 */	mr r3, r24
/* 80B88690  38 80 00 00 */	li r4, 0
/* 80B88694  48 00 19 D1 */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B88698  7F 03 C3 78 */	mr r3, r24
/* 80B8869C  38 80 00 00 */	li r4, 0
/* 80B886A0  38 A0 00 01 */	li r5, 1
/* 80B886A4  38 C0 00 00 */	li r6, 0
/* 80B886A8  4B 5C B6 DD */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B886AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B886B0  41 82 04 28 */	beq lbl_80B88AD8
/* 80B886B4  3B 60 00 01 */	li r27, 1
/* 80B886B8  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B886BC  B0 18 15 36 */	sth r0, 0x1536(r24)
/* 80B886C0  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B886C4  B0 18 15 38 */	sth r0, 0x1538(r24)
/* 80B886C8  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B886CC  B0 18 15 3A */	sth r0, 0x153a(r24)
/* 80B886D0  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B886D4  D0 18 15 28 */	stfs f0, 0x1528(r24)
/* 80B886D8  C0 38 15 28 */	lfs f1, 0x1528(r24)
/* 80B886DC  38 7E 00 00 */	addi r3, r30, 0
/* 80B886E0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B886E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B886E8  D0 18 15 24 */	stfs f0, 0x1524(r24)
/* 80B886EC  7F 03 C3 78 */	mr r3, r24
/* 80B886F0  38 80 00 00 */	li r4, 0
/* 80B886F4  4B FF 60 01 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B886F8  48 00 03 E0 */	b lbl_80B88AD8
lbl_80B886FC:
/* 80B886FC  38 00 00 01 */	li r0, 1
/* 80B88700  98 18 09 EB */	stb r0, 0x9eb(r24)
/* 80B88704  3B 60 00 01 */	li r27, 1
/* 80B88708  7F 03 C3 78 */	mr r3, r24
/* 80B8870C  38 80 00 01 */	li r4, 1
/* 80B88710  4B FF 9E ED */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B88714  7F 03 C3 78 */	mr r3, r24
/* 80B88718  38 80 00 00 */	li r4, 0
/* 80B8871C  48 00 19 49 */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B88720  48 00 03 B8 */	b lbl_80B88AD8
lbl_80B88724:
/* 80B88724  AA FC 00 74 */	lha r23, 0x74(r28)
/* 80B88728  38 7E 00 00 */	addi r3, r30, 0
/* 80B8872C  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80B88730  38 78 15 6C */	addi r3, r24, 0x156c
/* 80B88734  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B88738  EC 41 00 28 */	fsubs f2, f1, f0
/* 80B8873C  C0 1E 07 C0 */	lfs f0, 0x7c0(r30)
/* 80B88740  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B88744  4B 6E 7F FD */	bl cLib_chaseF__FPfff
/* 80B88748  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B8874C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B88750  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B88754  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B88758  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B8875C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B88760  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B88764  38 81 00 AC */	addi r4, r1, 0xac
/* 80B88768  38 A1 01 60 */	addi r5, r1, 0x160
/* 80B8876C  4B FE FD A1 */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B88770  38 61 01 60 */	addi r3, r1, 0x160
/* 80B88774  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B88778  4B 6E 84 FD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8877C  B0 61 00 40 */	sth r3, 0x40(r1)
/* 80B88780  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B88784  38 81 01 60 */	addi r4, r1, 0x160
/* 80B88788  4B 6E 84 7D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8878C  B0 61 00 42 */	sth r3, 0x42(r1)
/* 80B88790  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B88794  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80B88798  7F 03 C3 78 */	mr r3, r24
/* 80B8879C  38 81 00 40 */	addi r4, r1, 0x40
/* 80B887A0  38 B8 15 36 */	addi r5, r24, 0x1536
/* 80B887A4  38 C0 00 04 */	li r6, 4
/* 80B887A8  7E E7 BB 78 */	mr r7, r23
/* 80B887AC  4B FF 9D 49 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B887B0  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B887B4  B0 18 08 F0 */	sth r0, 0x8f0(r24)
/* 80B887B8  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B887BC  B0 18 08 F2 */	sth r0, 0x8f2(r24)
/* 80B887C0  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B887C4  B0 18 08 F4 */	sth r0, 0x8f4(r24)
/* 80B887C8  A8 18 08 F0 */	lha r0, 0x8f0(r24)
/* 80B887CC  B0 18 04 E4 */	sth r0, 0x4e4(r24)
/* 80B887D0  A8 18 08 F2 */	lha r0, 0x8f2(r24)
/* 80B887D4  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80B887D8  A8 18 08 F4 */	lha r0, 0x8f4(r24)
/* 80B887DC  B0 18 04 E8 */	sth r0, 0x4e8(r24)
/* 80B887E0  80 78 05 68 */	lwz r3, 0x568(r24)
/* 80B887E4  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 80B887E8  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 80B887EC  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B887F0  D0 41 01 58 */	stfs f2, 0x158(r1)
/* 80B887F4  D0 41 01 5C */	stfs f2, 0x15c(r1)
/* 80B887F8  80 18 14 EC */	lwz r0, 0x14ec(r24)
/* 80B887FC  2C 00 00 30 */	cmpwi r0, 0x30
/* 80B88800  40 82 00 CC */	bne lbl_80B888CC
/* 80B88804  C0 1E 07 CC */	lfs f0, 0x7cc(r30)
/* 80B88808  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B8880C  4C 40 13 82 */	cror 2, 0, 2
/* 80B88810  40 82 00 14 */	bne lbl_80B88824
/* 80B88814  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B88818  D0 41 01 58 */	stfs f2, 0x158(r1)
/* 80B8881C  D0 41 01 5C */	stfs f2, 0x15c(r1)
/* 80B88820  48 00 00 AC */	b lbl_80B888CC
lbl_80B88824:
/* 80B88824  C0 3E 07 DC */	lfs f1, 0x7dc(r30)
/* 80B88828  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80B8882C  4C 40 13 82 */	cror 2, 0, 2
/* 80B88830  40 82 00 18 */	bne lbl_80B88848
/* 80B88834  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B88838  C0 1E 08 A0 */	lfs f0, 0x8a0(r30)
/* 80B8883C  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80B88840  D0 41 01 5C */	stfs f2, 0x15c(r1)
/* 80B88844  48 00 00 88 */	b lbl_80B888CC
lbl_80B88848:
/* 80B88848  C0 1E 07 E4 */	lfs f0, 0x7e4(r30)
/* 80B8884C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B88850  4C 40 13 82 */	cror 2, 0, 2
/* 80B88854  40 82 00 18 */	bne lbl_80B8886C
/* 80B88858  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B8885C  D0 21 01 58 */	stfs f1, 0x158(r1)
/* 80B88860  C0 1E 07 E8 */	lfs f0, 0x7e8(r30)
/* 80B88864  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80B88868  48 00 00 64 */	b lbl_80B888CC
lbl_80B8886C:
/* 80B8886C  C0 1E 07 74 */	lfs f0, 0x774(r30)
/* 80B88870  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B88874  4C 40 13 82 */	cror 2, 0, 2
/* 80B88878  40 82 00 1C */	bne lbl_80B88894
/* 80B8887C  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B88880  C0 1E 08 38 */	lfs f0, 0x838(r30)
/* 80B88884  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80B88888  C0 1E 08 3C */	lfs f0, 0x83c(r30)
/* 80B8888C  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80B88890  48 00 00 3C */	b lbl_80B888CC
lbl_80B88894:
/* 80B88894  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80B88898  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B8889C  4C 40 13 82 */	cror 2, 0, 2
/* 80B888A0  40 82 00 1C */	bne lbl_80B888BC
/* 80B888A4  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B888A8  C0 1E 08 40 */	lfs f0, 0x840(r30)
/* 80B888AC  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80B888B0  C0 1E 07 88 */	lfs f0, 0x788(r30)
/* 80B888B4  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80B888B8  48 00 00 14 */	b lbl_80B888CC
lbl_80B888BC:
/* 80B888BC  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B888C0  D0 41 01 58 */	stfs f2, 0x158(r1)
/* 80B888C4  C0 1E 08 44 */	lfs f0, 0x844(r30)
/* 80B888C8  D0 01 01 5C */	stfs f0, 0x15c(r1)
lbl_80B888CC:
/* 80B888CC  38 78 04 DC */	addi r3, r24, 0x4dc
/* 80B888D0  4B 48 46 3D */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B888D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B888D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B888DC  38 81 01 54 */	addi r4, r1, 0x154
/* 80B888E0  7C 85 23 78 */	mr r5, r4
/* 80B888E4  4B 7B E4 89 */	bl PSMTXMultVec
/* 80B888E8  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B888EC  38 81 01 54 */	addi r4, r1, 0x154
/* 80B888F0  7C 65 1B 78 */	mr r5, r3
/* 80B888F4  4B 7B E7 9D */	bl PSVECAdd
/* 80B888F8  80 18 14 EC */	lwz r0, 0x14ec(r24)
/* 80B888FC  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B88900  41 82 00 0C */	beq lbl_80B8890C
/* 80B88904  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80B88908  40 82 00 5C */	bne lbl_80B88964
lbl_80B8890C:
/* 80B8890C  3B 60 00 01 */	li r27, 1
/* 80B88910  7F 03 C3 78 */	mr r3, r24
/* 80B88914  4B FF 99 C5 */	bl calcWaistAngleCheck__11daNpc_zrA_cFv
/* 80B88918  2C 03 00 00 */	cmpwi r3, 0
/* 80B8891C  40 82 00 28 */	bne lbl_80B88944
/* 80B88920  7F 03 C3 78 */	mr r3, r24
/* 80B88924  4B FF 99 15 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B88928  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B8892C  D0 18 15 28 */	stfs f0, 0x1528(r24)
/* 80B88930  C0 38 15 28 */	lfs f1, 0x1528(r24)
/* 80B88934  38 7E 00 00 */	addi r3, r30, 0
/* 80B88938  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B8893C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B88940  D0 18 15 24 */	stfs f0, 0x1524(r24)
lbl_80B88944:
/* 80B88944  C0 38 15 24 */	lfs f1, 0x1524(r24)
/* 80B88948  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8894C  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 80B88950  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 80B88954  D0 21 01 50 */	stfs f1, 0x150(r1)
/* 80B88958  7F 03 C3 78 */	mr r3, r24
/* 80B8895C  38 81 01 48 */	addi r4, r1, 0x148
/* 80B88960  4B FF 9C 25 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
lbl_80B88964:
/* 80B88964  7F 03 C3 78 */	mr r3, r24
/* 80B88968  38 80 00 01 */	li r4, 1
/* 80B8896C  48 00 16 F9 */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B88970  48 00 01 68 */	b lbl_80B88AD8
lbl_80B88974:
/* 80B88974  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B88978  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B8897C  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B88980  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B88984  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B88988  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B8898C  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B88990  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80B88994  38 A1 01 3C */	addi r5, r1, 0x13c
/* 80B88998  4B 5C 84 49 */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80B8899C  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B889A0  38 81 00 28 */	addi r4, r1, 0x28
/* 80B889A4  4B 49 4E ED */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80B889A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B889AC  41 82 00 18 */	beq lbl_80B889C4
/* 80B889B0  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 80B889B4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B889B8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B889BC  40 81 00 08 */	ble lbl_80B889C4
/* 80B889C0  D0 21 01 40 */	stfs f1, 0x140(r1)
lbl_80B889C4:
/* 80B889C4  38 61 01 3C */	addi r3, r1, 0x13c
/* 80B889C8  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B889CC  4B 6E 82 A9 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B889D0  B0 61 00 38 */	sth r3, 0x38(r1)
/* 80B889D4  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B889D8  38 81 01 3C */	addi r4, r1, 0x13c
/* 80B889DC  4B 6E 82 29 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B889E0  3B 41 00 3A */	addi r26, r1, 0x3a
/* 80B889E4  B0 61 00 3A */	sth r3, 0x3a(r1)
/* 80B889E8  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B889EC  3A E1 00 3C */	addi r23, r1, 0x3c
/* 80B889F0  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80B889F4  38 00 00 00 */	li r0, 0
/* 80B889F8  B0 18 04 E0 */	sth r0, 0x4e0(r24)
/* 80B889FC  7F 03 C3 78 */	mr r3, r24
/* 80B88A00  38 81 00 38 */	addi r4, r1, 0x38
/* 80B88A04  38 B8 15 36 */	addi r5, r24, 0x1536
/* 80B88A08  38 C0 00 08 */	li r6, 8
/* 80B88A0C  7F 27 CB 78 */	mr r7, r25
/* 80B88A10  4B FF 9A E5 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B88A14  7F 03 C3 78 */	mr r3, r24
/* 80B88A18  7F 24 CB 78 */	mr r4, r25
/* 80B88A1C  38 A0 00 08 */	li r5, 8
/* 80B88A20  7F 46 D3 78 */	mr r6, r26
/* 80B88A24  7E E7 BB 78 */	mr r7, r23
/* 80B88A28  4B FF 95 91 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B88A2C  A8 01 00 3C */	lha r0, 0x3c(r1)
/* 80B88A30  B0 18 04 E0 */	sth r0, 0x4e0(r24)
/* 80B88A34  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B88A38  B0 18 08 F0 */	sth r0, 0x8f0(r24)
/* 80B88A3C  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B88A40  B0 18 08 F2 */	sth r0, 0x8f2(r24)
/* 80B88A44  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B88A48  B0 18 08 F4 */	sth r0, 0x8f4(r24)
/* 80B88A4C  A8 18 08 F0 */	lha r0, 0x8f0(r24)
/* 80B88A50  B0 18 04 E4 */	sth r0, 0x4e4(r24)
/* 80B88A54  A8 18 08 F2 */	lha r0, 0x8f2(r24)
/* 80B88A58  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80B88A5C  A8 18 08 F4 */	lha r0, 0x8f4(r24)
/* 80B88A60  B0 18 04 E8 */	sth r0, 0x4e8(r24)
/* 80B88A64  C0 38 15 24 */	lfs f1, 0x1524(r24)
/* 80B88A68  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B88A6C  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80B88A70  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 80B88A74  D0 21 01 38 */	stfs f1, 0x138(r1)
/* 80B88A78  7F 03 C3 78 */	mr r3, r24
/* 80B88A7C  38 81 01 30 */	addi r4, r1, 0x130
/* 80B88A80  4B FF 9B 05 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B88A84  80 18 05 FC */	lwz r0, 0x5fc(r24)
/* 80B88A88  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B88A8C  41 82 00 24 */	beq lbl_80B88AB0
/* 80B88A90  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 80B88A94  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B88A98  38 7E 00 00 */	addi r3, r30, 0
/* 80B88A9C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B88AA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B88AA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B88AA8  40 81 00 08 */	ble lbl_80B88AB0
/* 80B88AAC  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
lbl_80B88AB0:
/* 80B88AB0  7F 03 C3 78 */	mr r3, r24
/* 80B88AB4  38 80 00 01 */	li r4, 1
/* 80B88AB8  48 00 15 AD */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B88ABC  38 78 09 60 */	addi r3, r24, 0x960
/* 80B88AC0  4B FF 6B ED */	bl func_80B7F6AC
/* 80B88AC4  2C 03 00 00 */	cmpwi r3, 0
/* 80B88AC8  40 82 00 10 */	bne lbl_80B88AD8
/* 80B88ACC  3B 60 00 01 */	li r27, 1
/* 80B88AD0  48 00 00 08 */	b lbl_80B88AD8
lbl_80B88AD4:
/* 80B88AD4  3B 60 00 01 */	li r27, 1
lbl_80B88AD8:
/* 80B88AD8  7F 63 DB 78 */	mr r3, r27
/* 80B88ADC  E3 E1 02 38 */	psq_l f31, 568(r1), 0, 0 /* qr0 */
/* 80B88AE0  CB E1 02 30 */	lfd f31, 0x230(r1)
/* 80B88AE4  E3 C1 02 28 */	psq_l f30, 552(r1), 0, 0 /* qr0 */
/* 80B88AE8  CB C1 02 20 */	lfd f30, 0x220(r1)
/* 80B88AEC  39 61 02 20 */	addi r11, r1, 0x220
/* 80B88AF0  4B 7D 97 1D */	bl _restgpr_22
/* 80B88AF4  80 01 02 44 */	lwz r0, 0x244(r1)
/* 80B88AF8  7C 08 03 A6 */	mtlr r0
/* 80B88AFC  38 21 02 40 */	addi r1, r1, 0x240
/* 80B88B00  4E 80 00 20 */	blr 

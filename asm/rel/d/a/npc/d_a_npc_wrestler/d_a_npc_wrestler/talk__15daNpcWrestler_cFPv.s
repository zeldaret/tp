lbl_80B316F4:
/* 80B316F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B316F8  7C 08 02 A6 */	mflr r0
/* 80B316FC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B31700  39 61 00 80 */	addi r11, r1, 0x80
/* 80B31704  4B 83 0A CD */	bl _savegpr_26
/* 80B31708  7C 7B 1B 78 */	mr r27, r3
/* 80B3170C  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B31710  3B A4 16 DC */	addi r29, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B31714  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B31718  3B C4 1D F8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B3171C  3B 80 00 00 */	li r28, 0
/* 80B31720  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B31724  2C 00 00 02 */	cmpwi r0, 2
/* 80B31728  41 82 00 64 */	beq lbl_80B3178C
/* 80B3172C  40 80 00 10 */	bge lbl_80B3173C
/* 80B31730  2C 00 00 00 */	cmpwi r0, 0
/* 80B31734  41 82 00 14 */	beq lbl_80B31748
/* 80B31738  48 00 07 5C */	b lbl_80B31E94
lbl_80B3173C:
/* 80B3173C  2C 00 00 04 */	cmpwi r0, 4
/* 80B31740  40 80 07 54 */	bge lbl_80B31E94
/* 80B31744  48 00 07 1C */	b lbl_80B31E60
lbl_80B31748:
/* 80B31748  80 9B 0E 88 */	lwz r4, 0xe88(r27)
/* 80B3174C  38 A0 00 00 */	li r5, 0
/* 80B31750  4B 62 25 CD */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B31754  38 00 00 00 */	li r0, 0
/* 80B31758  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B3175C  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80B31760  98 1B 0E 99 */	stb r0, 0xe99(r27)
/* 80B31764  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B31768  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80B3176C  A8 1B 0E 90 */	lha r0, 0xe90(r27)
/* 80B31770  2C 00 00 03 */	cmpwi r0, 3
/* 80B31774  41 82 00 0C */	beq lbl_80B31780
/* 80B31778  38 00 00 03 */	li r0, 3
/* 80B3177C  B0 1B 0E 90 */	sth r0, 0xe90(r27)
lbl_80B31780:
/* 80B31780  38 00 00 02 */	li r0, 2
/* 80B31784  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31788  48 00 07 0C */	b lbl_80B31E94
lbl_80B3178C:
/* 80B3178C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B31790  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B31794  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B31798  4B 4E 8F 79 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B3179C  7C 7A 07 34 */	extsh r26, r3
/* 80B317A0  A8 7B 08 F2 */	lha r3, 0x8f2(r27)
/* 80B317A4  7C 1A 18 00 */	cmpw r26, r3
/* 80B317A8  40 82 00 0C */	bne lbl_80B317B4
/* 80B317AC  38 00 00 01 */	li r0, 1
/* 80B317B0  48 00 01 94 */	b lbl_80B31944
lbl_80B317B4:
/* 80B317B4  80 9B 09 6C */	lwz r4, 0x96c(r27)
/* 80B317B8  2C 04 00 00 */	cmpwi r4, 0
/* 80B317BC  40 82 00 CC */	bne lbl_80B31888
/* 80B317C0  7C 03 D0 50 */	subf r0, r3, r26
/* 80B317C4  7C 00 07 34 */	extsh r0, r0
/* 80B317C8  7C 03 D0 00 */	cmpw r3, r26
/* 80B317CC  40 82 00 10 */	bne lbl_80B317DC
/* 80B317D0  38 04 00 01 */	addi r0, r4, 1
/* 80B317D4  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B317D8  48 00 00 84 */	b lbl_80B3185C
lbl_80B317DC:
/* 80B317DC  C0 5D 05 8C */	lfs f2, 0x58c(r29)
/* 80B317E0  C8 3D 05 98 */	lfd f1, 0x598(r29)
/* 80B317E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B317E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B317EC  3C 00 43 30 */	lis r0, 0x4330
/* 80B317F0  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B317F4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80B317F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B317FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B31800  FC 00 02 10 */	fabs f0, f0
/* 80B31804  FC 00 00 18 */	frsp f0, f0
/* 80B31808  FC 00 00 1E */	fctiwz f0, f0
/* 80B3180C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80B31810  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B31814  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B31818  40 81 00 44 */	ble lbl_80B3185C
/* 80B3181C  7F 63 DB 78 */	mr r3, r27
/* 80B31820  38 80 00 05 */	li r4, 5
/* 80B31824  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B31828  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3182C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B31830  7D 89 03 A6 */	mtctr r12
/* 80B31834  4E 80 04 21 */	bctrl 
/* 80B31838  7F 63 DB 78 */	mr r3, r27
/* 80B3183C  38 80 00 06 */	li r4, 6
/* 80B31840  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B31844  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B31848  38 A0 00 00 */	li r5, 0
/* 80B3184C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B31850  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B31854  7D 89 03 A6 */	mtctr r12
/* 80B31858  4E 80 04 21 */	bctrl 
lbl_80B3185C:
/* 80B3185C  B3 5B 09 96 */	sth r26, 0x996(r27)
/* 80B31860  38 00 00 00 */	li r0, 0
/* 80B31864  90 1B 09 68 */	stw r0, 0x968(r27)
/* 80B31868  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B3186C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80B31870  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B31874  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B31878  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80B3187C  38 03 00 01 */	addi r0, r3, 1
/* 80B31880  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B31884  48 00 00 68 */	b lbl_80B318EC
lbl_80B31888:
/* 80B31888  2C 04 00 01 */	cmpwi r4, 1
/* 80B3188C  40 82 00 60 */	bne lbl_80B318EC
/* 80B31890  7F 63 DB 78 */	mr r3, r27
/* 80B31894  A8 9B 09 96 */	lha r4, 0x996(r27)
/* 80B31898  C0 3D 05 90 */	lfs f1, 0x590(r29)
/* 80B3189C  38 A0 00 00 */	li r5, 0
/* 80B318A0  4B 62 26 55 */	bl turn__8daNpcF_cFsfi
/* 80B318A4  2C 03 00 00 */	cmpwi r3, 0
/* 80B318A8  41 82 00 2C */	beq lbl_80B318D4
/* 80B318AC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B318B0  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B318B4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B318B8  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80B318BC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B318C0  B0 1B 08 F8 */	sth r0, 0x8f8(r27)
/* 80B318C4  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80B318C8  38 03 00 01 */	addi r0, r3, 1
/* 80B318CC  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B318D0  48 00 00 1C */	b lbl_80B318EC
lbl_80B318D4:
/* 80B318D4  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B318D8  B0 1B 08 F8 */	sth r0, 0x8f8(r27)
/* 80B318DC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B318E0  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80B318E4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B318E8  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
lbl_80B318EC:
/* 80B318EC  80 1B 09 6C */	lwz r0, 0x96c(r27)
/* 80B318F0  2C 00 00 01 */	cmpwi r0, 1
/* 80B318F4  40 81 00 4C */	ble lbl_80B31940
/* 80B318F8  7F 63 DB 78 */	mr r3, r27
/* 80B318FC  38 80 00 05 */	li r4, 5
/* 80B31900  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B31904  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B31908  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3190C  7D 89 03 A6 */	mtctr r12
/* 80B31910  4E 80 04 21 */	bctrl 
/* 80B31914  7F 63 DB 78 */	mr r3, r27
/* 80B31918  38 80 00 00 */	li r4, 0
/* 80B3191C  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B31920  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B31924  38 A0 00 00 */	li r5, 0
/* 80B31928  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3192C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B31930  7D 89 03 A6 */	mtctr r12
/* 80B31934  4E 80 04 21 */	bctrl 
/* 80B31938  38 00 00 00 */	li r0, 0
/* 80B3193C  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_80B31940:
/* 80B31940  38 00 00 00 */	li r0, 0
lbl_80B31944:
/* 80B31944  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B31948  41 82 05 4C */	beq lbl_80B31E94
/* 80B3194C  7F 63 DB 78 */	mr r3, r27
/* 80B31950  38 80 00 00 */	li r4, 0
/* 80B31954  38 A0 00 01 */	li r5, 1
/* 80B31958  38 C0 00 00 */	li r6, 0
/* 80B3195C  4B 62 24 29 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B31960  2C 03 00 00 */	cmpwi r3, 0
/* 80B31964  41 82 04 08 */	beq lbl_80B31D6C
/* 80B31968  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80B3196C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B31970  4B 61 ED 4D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B31974  38 00 00 00 */	li r0, 0
/* 80B31978  90 1B 0E 7C */	stw r0, 0xe7c(r27)
/* 80B3197C  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80B31980  38 9B 0E 7C */	addi r4, r27, 0xe7c
/* 80B31984  4B 71 8B A5 */	bl getEventId__10dMsgFlow_cFPi
/* 80B31988  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B3198C  28 00 00 01 */	cmplwi r0, 1
/* 80B31990  40 82 01 24 */	bne lbl_80B31AB4
/* 80B31994  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B31998  80 9B 0E 7C */	lwz r4, 0xe7c(r27)
/* 80B3199C  38 A0 00 00 */	li r5, 0
/* 80B319A0  38 C0 FF FF */	li r6, -1
/* 80B319A4  38 E0 FF FF */	li r7, -1
/* 80B319A8  39 00 00 00 */	li r8, 0
/* 80B319AC  39 20 00 00 */	li r9, 0
/* 80B319B0  4B 4E A2 39 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B319B4  90 7B 0E 78 */	stw r3, 0xe78(r27)
/* 80B319B8  80 7B 0E 78 */	lwz r3, 0xe78(r27)
/* 80B319BC  3C 03 00 01 */	addis r0, r3, 1
/* 80B319C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B319C4  41 82 03 A0 */	beq lbl_80B31D64
/* 80B319C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B319CC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B319D0  38 7C 4F F8 */	addi r3, r28, 0x4ff8
/* 80B319D4  7F 64 DB 78 */	mr r4, r27
/* 80B319D8  3C A0 80 B4 */	lis r5, d_a_npc_wrestler__stringBase0@ha /* 0x80B41D7C@ha */
/* 80B319DC  38 A5 1D 7C */	addi r5, r5, d_a_npc_wrestler__stringBase0@l /* 0x80B41D7C@l */
/* 80B319E0  38 A5 00 60 */	addi r5, r5, 0x60
/* 80B319E4  38 C0 00 FF */	li r6, 0xff
/* 80B319E8  4B 51 5D 71 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B319EC  7C 7A 1B 78 */	mr r26, r3
/* 80B319F0  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 80B319F4  7F 64 DB 78 */	mr r4, r27
/* 80B319F8  4B 51 0B 21 */	bl reset__14dEvt_control_cFPv
/* 80B319FC  7F 63 DB 78 */	mr r3, r27
/* 80B31A00  7F 44 D3 78 */	mr r4, r26
/* 80B31A04  38 A0 00 01 */	li r5, 1
/* 80B31A08  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B31A0C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B31A10  4B 4E 9B D5 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80B31A14  38 00 00 01 */	li r0, 1
/* 80B31A18  98 1B 09 EC */	stb r0, 0x9ec(r27)
/* 80B31A1C  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B31A20  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B31A24  D0 1B 0E 8C */	stfs f0, 0xe8c(r27)
/* 80B31A28  80 7E 0A A8 */	lwz r3, 0xaa8(r30)
/* 80B31A2C  80 1E 0A AC */	lwz r0, 0xaac(r30)
/* 80B31A30  90 61 00 40 */	stw r3, 0x40(r1)
/* 80B31A34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B31A38  80 1E 0A B0 */	lwz r0, 0xab0(r30)
/* 80B31A3C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B31A40  38 00 00 03 */	li r0, 3
/* 80B31A44  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31A48  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31A4C  4B 83 05 CD */	bl __ptmf_test
/* 80B31A50  2C 03 00 00 */	cmpwi r3, 0
/* 80B31A54  41 82 00 18 */	beq lbl_80B31A6C
/* 80B31A58  7F 63 DB 78 */	mr r3, r27
/* 80B31A5C  38 80 00 00 */	li r4, 0
/* 80B31A60  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31A64  4B 83 06 21 */	bl __ptmf_scall
/* 80B31A68  60 00 00 00 */	nop 
lbl_80B31A6C:
/* 80B31A6C  38 00 00 00 */	li r0, 0
/* 80B31A70  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31A74  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80B31A78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B31A7C  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B31A80  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B31A84  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80B31A88  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B31A8C  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31A90  4B 83 05 89 */	bl __ptmf_test
/* 80B31A94  2C 03 00 00 */	cmpwi r3, 0
/* 80B31A98  41 82 02 CC */	beq lbl_80B31D64
/* 80B31A9C  7F 63 DB 78 */	mr r3, r27
/* 80B31AA0  38 80 00 00 */	li r4, 0
/* 80B31AA4  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31AA8  4B 83 05 DD */	bl __ptmf_scall
/* 80B31AAC  60 00 00 00 */	nop 
/* 80B31AB0  48 00 02 B4 */	b lbl_80B31D64
lbl_80B31AB4:
/* 80B31AB4  28 00 00 06 */	cmplwi r0, 6
/* 80B31AB8  40 82 00 90 */	bne lbl_80B31B48
/* 80B31ABC  80 7E 0A B4 */	lwz r3, 0xab4(r30)
/* 80B31AC0  80 1E 0A B8 */	lwz r0, 0xab8(r30)
/* 80B31AC4  90 61 00 34 */	stw r3, 0x34(r1)
/* 80B31AC8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B31ACC  80 1E 0A BC */	lwz r0, 0xabc(r30)
/* 80B31AD0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B31AD4  38 00 00 03 */	li r0, 3
/* 80B31AD8  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31ADC  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31AE0  4B 83 05 39 */	bl __ptmf_test
/* 80B31AE4  2C 03 00 00 */	cmpwi r3, 0
/* 80B31AE8  41 82 00 18 */	beq lbl_80B31B00
/* 80B31AEC  7F 63 DB 78 */	mr r3, r27
/* 80B31AF0  38 80 00 00 */	li r4, 0
/* 80B31AF4  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31AF8  4B 83 05 8D */	bl __ptmf_scall
/* 80B31AFC  60 00 00 00 */	nop 
lbl_80B31B00:
/* 80B31B00  38 00 00 00 */	li r0, 0
/* 80B31B04  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31B08  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80B31B0C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80B31B10  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B31B14  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B31B18  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B31B1C  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B31B20  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31B24  4B 83 04 F5 */	bl __ptmf_test
/* 80B31B28  2C 03 00 00 */	cmpwi r3, 0
/* 80B31B2C  41 82 02 38 */	beq lbl_80B31D64
/* 80B31B30  7F 63 DB 78 */	mr r3, r27
/* 80B31B34  38 80 00 00 */	li r4, 0
/* 80B31B38  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31B3C  4B 83 05 49 */	bl __ptmf_scall
/* 80B31B40  60 00 00 00 */	nop 
/* 80B31B44  48 00 02 20 */	b lbl_80B31D64
lbl_80B31B48:
/* 80B31B48  A0 1B 0A 32 */	lhz r0, 0xa32(r27)
/* 80B31B4C  7C 1C 07 34 */	extsh r28, r0
/* 80B31B50  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B31B54  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B31B58  D0 1B 0E 8C */	stfs f0, 0xe8c(r27)
/* 80B31B5C  38 60 00 E7 */	li r3, 0xe7
/* 80B31B60  4B 62 3A D5 */	bl daNpcF_chkEvtBit__FUl
/* 80B31B64  30 03 FF FF */	addic r0, r3, -1
/* 80B31B68  7C 60 19 10 */	subfe r3, r0, r3
/* 80B31B6C  38 03 00 01 */	addi r0, r3, 1
/* 80B31B70  90 1B 0E 7C */	stw r0, 0xe7c(r27)
/* 80B31B74  2C 1C 00 00 */	cmpwi r28, 0
/* 80B31B78  40 82 01 64 */	bne lbl_80B31CDC
/* 80B31B7C  88 1B 0E 9B */	lbz r0, 0xe9b(r27)
/* 80B31B80  28 00 00 00 */	cmplwi r0, 0
/* 80B31B84  40 82 00 90 */	bne lbl_80B31C14
/* 80B31B88  80 7E 0A C0 */	lwz r3, 0xac0(r30)
/* 80B31B8C  80 1E 0A C4 */	lwz r0, 0xac4(r30)
/* 80B31B90  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B31B94  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B31B98  80 1E 0A C8 */	lwz r0, 0xac8(r30)
/* 80B31B9C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B31BA0  38 00 00 03 */	li r0, 3
/* 80B31BA4  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31BA8  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31BAC  4B 83 04 6D */	bl __ptmf_test
/* 80B31BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80B31BB4  41 82 00 18 */	beq lbl_80B31BCC
/* 80B31BB8  7F 63 DB 78 */	mr r3, r27
/* 80B31BBC  38 80 00 00 */	li r4, 0
/* 80B31BC0  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31BC4  4B 83 04 C1 */	bl __ptmf_scall
/* 80B31BC8  60 00 00 00 */	nop 
lbl_80B31BCC:
/* 80B31BCC  38 00 00 00 */	li r0, 0
/* 80B31BD0  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31BD4  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80B31BD8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B31BDC  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B31BE0  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B31BE4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B31BE8  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B31BEC  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31BF0  4B 83 04 29 */	bl __ptmf_test
/* 80B31BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B31BF8  41 82 01 6C */	beq lbl_80B31D64
/* 80B31BFC  7F 63 DB 78 */	mr r3, r27
/* 80B31C00  38 80 00 00 */	li r4, 0
/* 80B31C04  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31C08  4B 83 04 7D */	bl __ptmf_scall
/* 80B31C0C  60 00 00 00 */	nop 
/* 80B31C10  48 00 01 54 */	b lbl_80B31D64
lbl_80B31C14:
/* 80B31C14  38 00 00 05 */	li r0, 5
/* 80B31C18  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B31C1C  7F 63 DB 78 */	mr r3, r27
/* 80B31C20  88 1B 0E 9B */	lbz r0, 0xe9b(r27)
/* 80B31C24  54 00 10 3A */	slwi r0, r0, 2
/* 80B31C28  38 9E 00 24 */	addi r4, r30, 0x24
/* 80B31C2C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B31C30  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B31C34  54 00 10 3A */	slwi r0, r0, 2
/* 80B31C38  38 BE 08 0C */	addi r5, r30, 0x80c
/* 80B31C3C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B31C40  38 C0 00 01 */	li r6, 1
/* 80B31C44  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B31C48  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B31C4C  4B 62 1D 09 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80B31C50  80 7E 0A CC */	lwz r3, 0xacc(r30)
/* 80B31C54  80 1E 0A D0 */	lwz r0, 0xad0(r30)
/* 80B31C58  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B31C5C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B31C60  80 1E 0A D4 */	lwz r0, 0xad4(r30)
/* 80B31C64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B31C68  38 00 00 03 */	li r0, 3
/* 80B31C6C  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31C70  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31C74  4B 83 03 A5 */	bl __ptmf_test
/* 80B31C78  2C 03 00 00 */	cmpwi r3, 0
/* 80B31C7C  41 82 00 18 */	beq lbl_80B31C94
/* 80B31C80  7F 63 DB 78 */	mr r3, r27
/* 80B31C84  38 80 00 00 */	li r4, 0
/* 80B31C88  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31C8C  4B 83 03 F9 */	bl __ptmf_scall
/* 80B31C90  60 00 00 00 */	nop 
lbl_80B31C94:
/* 80B31C94  38 00 00 00 */	li r0, 0
/* 80B31C98  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31C9C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80B31CA0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80B31CA4  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B31CA8  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B31CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B31CB0  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B31CB4  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31CB8  4B 83 03 61 */	bl __ptmf_test
/* 80B31CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80B31CC0  41 82 00 A4 */	beq lbl_80B31D64
/* 80B31CC4  7F 63 DB 78 */	mr r3, r27
/* 80B31CC8  38 80 00 00 */	li r4, 0
/* 80B31CCC  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31CD0  4B 83 03 B5 */	bl __ptmf_scall
/* 80B31CD4  60 00 00 00 */	nop 
/* 80B31CD8  48 00 00 8C */	b lbl_80B31D64
lbl_80B31CDC:
/* 80B31CDC  80 7E 0A D8 */	lwz r3, 0xad8(r30)
/* 80B31CE0  80 1E 0A DC */	lwz r0, 0xadc(r30)
/* 80B31CE4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B31CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B31CEC  80 1E 0A E0 */	lwz r0, 0xae0(r30)
/* 80B31CF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B31CF4  38 00 00 03 */	li r0, 3
/* 80B31CF8  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31CFC  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31D00  4B 83 03 19 */	bl __ptmf_test
/* 80B31D04  2C 03 00 00 */	cmpwi r3, 0
/* 80B31D08  41 82 00 18 */	beq lbl_80B31D20
/* 80B31D0C  7F 63 DB 78 */	mr r3, r27
/* 80B31D10  38 80 00 00 */	li r4, 0
/* 80B31D14  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31D18  4B 83 03 6D */	bl __ptmf_scall
/* 80B31D1C  60 00 00 00 */	nop 
lbl_80B31D20:
/* 80B31D20  38 00 00 00 */	li r0, 0
/* 80B31D24  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B31D28  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80B31D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B31D30  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B31D34  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B31D38  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B31D3C  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B31D40  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B31D44  4B 83 02 D5 */	bl __ptmf_test
/* 80B31D48  2C 03 00 00 */	cmpwi r3, 0
/* 80B31D4C  41 82 00 18 */	beq lbl_80B31D64
/* 80B31D50  7F 63 DB 78 */	mr r3, r27
/* 80B31D54  38 80 00 00 */	li r4, 0
/* 80B31D58  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B31D5C  4B 83 03 29 */	bl __ptmf_scall
/* 80B31D60  60 00 00 00 */	nop 
lbl_80B31D64:
/* 80B31D64  3B 80 00 01 */	li r28, 1
/* 80B31D68  48 00 01 2C */	b lbl_80B31E94
lbl_80B31D6C:
/* 80B31D6C  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 80B31D70  7F 63 DB 78 */	mr r3, r27
/* 80B31D74  38 81 00 0C */	addi r4, r1, 0xc
/* 80B31D78  38 A1 00 08 */	addi r5, r1, 8
/* 80B31D7C  7F 66 DB 78 */	mr r6, r27
/* 80B31D80  38 E0 00 00 */	li r7, 0
/* 80B31D84  4B 62 19 95 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B31D88  2C 03 00 00 */	cmpwi r3, 0
/* 80B31D8C  41 82 00 44 */	beq lbl_80B31DD0
/* 80B31D90  7F 63 DB 78 */	mr r3, r27
/* 80B31D94  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B31D98  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B31D9C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B31DA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B31DA4  7D 89 03 A6 */	mtctr r12
/* 80B31DA8  4E 80 04 21 */	bctrl 
/* 80B31DAC  7F 63 DB 78 */	mr r3, r27
/* 80B31DB0  80 81 00 08 */	lwz r4, 8(r1)
/* 80B31DB4  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B31DB8  38 A0 00 00 */	li r5, 0
/* 80B31DBC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B31DC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B31DC4  7D 89 03 A6 */	mtctr r12
/* 80B31DC8  4E 80 04 21 */	bctrl 
/* 80B31DCC  48 00 00 C8 */	b lbl_80B31E94
lbl_80B31DD0:
/* 80B31DD0  2C 1A 00 00 */	cmpwi r26, 0
/* 80B31DD4  41 82 00 C0 */	beq lbl_80B31E94
/* 80B31DD8  80 1B 09 50 */	lwz r0, 0x950(r27)
/* 80B31DDC  2C 00 00 00 */	cmpwi r0, 0
/* 80B31DE0  40 82 00 B4 */	bne lbl_80B31E94
/* 80B31DE4  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80B31DE8  2C 00 00 02 */	cmpwi r0, 2
/* 80B31DEC  41 82 00 34 */	beq lbl_80B31E20
/* 80B31DF0  40 80 00 50 */	bge lbl_80B31E40
/* 80B31DF4  2C 00 00 01 */	cmpwi r0, 1
/* 80B31DF8  40 80 00 08 */	bge lbl_80B31E00
/* 80B31DFC  48 00 00 44 */	b lbl_80B31E40
lbl_80B31E00:
/* 80B31E00  7F 63 DB 78 */	mr r3, r27
/* 80B31E04  38 80 00 03 */	li r4, 3
/* 80B31E08  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B31E0C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B31E10  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B31E14  7D 89 03 A6 */	mtctr r12
/* 80B31E18  4E 80 04 21 */	bctrl 
/* 80B31E1C  48 00 00 78 */	b lbl_80B31E94
lbl_80B31E20:
/* 80B31E20  7F 63 DB 78 */	mr r3, r27
/* 80B31E24  38 80 00 04 */	li r4, 4
/* 80B31E28  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B31E2C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B31E30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B31E34  7D 89 03 A6 */	mtctr r12
/* 80B31E38  4E 80 04 21 */	bctrl 
/* 80B31E3C  48 00 00 58 */	b lbl_80B31E94
lbl_80B31E40:
/* 80B31E40  7F 63 DB 78 */	mr r3, r27
/* 80B31E44  38 80 00 05 */	li r4, 5
/* 80B31E48  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B31E4C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B31E50  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B31E54  7D 89 03 A6 */	mtctr r12
/* 80B31E58  4E 80 04 21 */	bctrl 
/* 80B31E5C  48 00 00 38 */	b lbl_80B31E94
lbl_80B31E60:
/* 80B31E60  38 80 00 05 */	li r4, 5
/* 80B31E64  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B31E68  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B31E6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B31E70  7D 89 03 A6 */	mtctr r12
/* 80B31E74  4E 80 04 21 */	bctrl 
/* 80B31E78  88 1B 09 EC */	lbz r0, 0x9ec(r27)
/* 80B31E7C  28 00 00 00 */	cmplwi r0, 0
/* 80B31E80  40 82 00 14 */	bne lbl_80B31E94
/* 80B31E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B31E88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B31E8C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B31E90  4B 51 05 D9 */	bl reset__14dEvt_control_cFv
lbl_80B31E94:
/* 80B31E94  7F 83 E3 78 */	mr r3, r28
/* 80B31E98  39 61 00 80 */	addi r11, r1, 0x80
/* 80B31E9C  4B 83 03 81 */	bl _restgpr_26
/* 80B31EA0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B31EA4  7C 08 03 A6 */	mtlr r0
/* 80B31EA8  38 21 00 80 */	addi r1, r1, 0x80
/* 80B31EAC  4E 80 00 20 */	blr 

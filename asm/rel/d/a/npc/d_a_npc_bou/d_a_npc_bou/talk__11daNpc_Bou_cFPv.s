lbl_80970F9C:
/* 80970F9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80970FA0  7C 08 02 A6 */	mflr r0
/* 80970FA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80970FA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80970FAC  4B 9F 12 2C */	b _savegpr_28
/* 80970FB0  7C 7E 1B 78 */	mr r30, r3
/* 80970FB4  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha
/* 80970FB8  3B E3 28 60 */	addi r31, r3, m__17daNpc_Bou_Param_c@l
/* 80970FBC  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80970FC0  2C 00 00 02 */	cmpwi r0, 2
/* 80970FC4  41 82 01 EC */	beq lbl_809711B0
/* 80970FC8  40 80 04 88 */	bge lbl_80971450
/* 80970FCC  2C 00 00 00 */	cmpwi r0, 0
/* 80970FD0  40 80 00 0C */	bge lbl_80970FDC
/* 80970FD4  48 00 04 7C */	b lbl_80971450
/* 80970FD8  48 00 04 78 */	b lbl_80971450
lbl_80970FDC:
/* 80970FDC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80970FE0  2C 00 00 00 */	cmpwi r0, 0
/* 80970FE4  40 82 01 CC */	bne lbl_809711B0
/* 80970FE8  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80970FEC  28 00 00 01 */	cmplwi r0, 1
/* 80970FF0  40 82 01 1C */	bne lbl_8097110C
/* 80970FF4  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80970FF8  4B 7D 47 10 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80970FFC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80971000  41 82 00 D4 */	beq lbl_809710D4
/* 80971004  48 0A 40 A8 */	b getType__13daNpc_Jagar_cFv
/* 80971008  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8097100C  28 00 00 01 */	cmplwi r0, 1
/* 80971010  40 82 00 C4 */	bne lbl_809710D4
/* 80971014  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80971018  7C 00 00 34 */	cntlzw r0, r0
/* 8097101C  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80971020  41 82 00 B4 */	beq lbl_809710D4
/* 80971024  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80971028  2C 00 00 08 */	cmpwi r0, 8
/* 8097102C  41 82 00 24 */	beq lbl_80971050
/* 80971030  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80971034  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80971038  4B 7D 48 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8097103C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80971040  38 00 00 08 */	li r0, 8
/* 80971044  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80971048  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8097104C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80971050:
/* 80971050  4B 8F 68 1C */	b cM_rnd__Fv
/* 80971054  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80971058  EC 21 00 28 */	fsubs f1, f1, f0
/* 8097105C  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80971060  EC 20 08 2A */	fadds f1, f0, f1
/* 80971064  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80971068  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8097106C  40 80 00 34 */	bge lbl_809710A0
/* 80971070  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80971074  2C 00 00 08 */	cmpwi r0, 8
/* 80971078  41 82 00 54 */	beq lbl_809710CC
/* 8097107C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80971080  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80971084  4B 7D 48 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80971088  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8097108C  38 00 00 08 */	li r0, 8
/* 80971090  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80971094  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80971098  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8097109C  48 00 00 30 */	b lbl_809710CC
lbl_809710A0:
/* 809710A0  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 809710A4  2C 00 00 05 */	cmpwi r0, 5
/* 809710A8  41 82 00 24 */	beq lbl_809710CC
/* 809710AC  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 809710B0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 809710B4  4B 7D 47 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809710B8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 809710BC  38 00 00 05 */	li r0, 5
/* 809710C0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 809710C4  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809710C8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_809710CC:
/* 809710CC  38 00 00 01 */	li r0, 1
/* 809710D0  98 1D 10 05 */	stb r0, 0x1005(r29)
lbl_809710D4:
/* 809710D4  80 1E 0F DC */	lwz r0, 0xfdc(r30)
/* 809710D8  2C 00 00 04 */	cmpwi r0, 4
/* 809710DC  41 82 00 08 */	beq lbl_809710E4
/* 809710E0  48 00 00 18 */	b lbl_809710F8
lbl_809710E4:
/* 809710E4  7F C3 F3 78 */	mr r3, r30
/* 809710E8  38 80 00 D6 */	li r4, 0xd6
/* 809710EC  38 A0 00 00 */	li r5, 0
/* 809710F0  4B 7D AB 00 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809710F4  48 00 00 B4 */	b lbl_809711A8
lbl_809710F8:
/* 809710F8  7F C3 F3 78 */	mr r3, r30
/* 809710FC  38 80 00 D5 */	li r4, 0xd5
/* 80971100  38 A0 00 00 */	li r5, 0
/* 80971104  4B 7D AA EC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80971108  48 00 00 A0 */	b lbl_809711A8
lbl_8097110C:
/* 8097110C  38 60 00 59 */	li r3, 0x59
/* 80971110  4B 7D BA 1C */	b daNpcT_offTmpBit__FUl
/* 80971114  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80971118  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8097111C  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80971120  28 03 00 00 */	cmplwi r3, 0
/* 80971124  41 82 00 74 */	beq lbl_80971198
/* 80971128  80 03 17 44 */	lwz r0, 0x1744(r3)
/* 8097112C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80971130  40 82 00 68 */	bne lbl_80971198
/* 80971134  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80971138  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8097113C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80971140  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80971144  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80971148  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8097114C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80971150  D0 01 00 08 */	stfs f0, 8(r1)
/* 80971154  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80971158  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8097115C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80971160  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80971164  7F C3 F3 78 */	mr r3, r30
/* 80971168  38 81 00 14 */	addi r4, r1, 0x14
/* 8097116C  38 A1 00 08 */	addi r5, r1, 8
/* 80971170  38 DF 00 00 */	addi r6, r31, 0
/* 80971174  C0 26 00 90 */	lfs f1, 0x90(r6)
/* 80971178  C0 46 00 94 */	lfs f2, 0x94(r6)
/* 8097117C  C0 66 00 98 */	lfs f3, 0x98(r6)
/* 80971180  38 C0 00 00 */	li r6, 0
/* 80971184  4B 7D 9B 6C */	b chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80971188  2C 03 00 00 */	cmpwi r3, 0
/* 8097118C  41 82 00 0C */	beq lbl_80971198
/* 80971190  38 60 00 59 */	li r3, 0x59
/* 80971194  4B 7D B9 58 */	b daNpcT_onTmpBit__FUl
lbl_80971198:
/* 80971198  7F C3 F3 78 */	mr r3, r30
/* 8097119C  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809711A0  38 A0 00 00 */	li r5, 0
/* 809711A4  4B 7D AA 4C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_809711A8:
/* 809711A8  38 00 00 02 */	li r0, 2
/* 809711AC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809711B0:
/* 809711B0  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809711B4  2C 00 00 00 */	cmpwi r0, 0
/* 809711B8  40 82 02 98 */	bne lbl_80971450
/* 809711BC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809711C0  28 00 00 00 */	cmplwi r0, 0
/* 809711C4  40 82 00 20 */	bne lbl_809711E4
/* 809711C8  A8 7E 0D C8 */	lha r3, 0xdc8(r30)
/* 809711CC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809711D0  7C 03 00 00 */	cmpw r3, r0
/* 809711D4  41 82 00 10 */	beq lbl_809711E4
/* 809711D8  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 809711DC  28 00 00 01 */	cmplwi r0, 1
/* 809711E0  40 82 01 F0 */	bne lbl_809713D0
lbl_809711E4:
/* 809711E4  7F C3 F3 78 */	mr r3, r30
/* 809711E8  38 80 00 00 */	li r4, 0
/* 809711EC  38 A0 00 00 */	li r5, 0
/* 809711F0  38 C0 00 00 */	li r6, 0
/* 809711F4  38 E0 00 00 */	li r7, 0
/* 809711F8  4B 7D AA 80 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809711FC  2C 03 00 00 */	cmpwi r3, 0
/* 80971200  41 82 00 70 */	beq lbl_80971270
/* 80971204  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 80971208  28 00 00 01 */	cmplwi r0, 1
/* 8097120C  40 82 00 64 */	bne lbl_80971270
/* 80971210  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80971214  28 00 00 01 */	cmplwi r0, 1
/* 80971218  40 82 00 2C */	bne lbl_80971244
/* 8097121C  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80971220  4B 7D 44 E8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80971224  7C 7D 1B 79 */	or. r29, r3, r3
/* 80971228  41 82 00 1C */	beq lbl_80971244
/* 8097122C  48 0A 3E 80 */	b getType__13daNpc_Jagar_cFv
/* 80971230  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80971234  28 00 00 01 */	cmplwi r0, 1
/* 80971238  40 82 00 0C */	bne lbl_80971244
/* 8097123C  38 00 00 00 */	li r0, 0
/* 80971240  98 1D 10 05 */	stb r0, 0x1005(r29)
lbl_80971244:
/* 80971244  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80971248  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8097124C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80971250  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80971254  4B 7D 44 8C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80971258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8097125C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80971260  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80971264  4B 6D 12 04 */	b reset__14dEvt_control_cFv
/* 80971268  38 00 00 03 */	li r0, 3
/* 8097126C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80971270:
/* 80971270  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80971274  28 00 00 01 */	cmplwi r0, 1
/* 80971278  40 82 00 DC */	bne lbl_80971354
/* 8097127C  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80971280  4B 7D 44 88 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80971284  7C 7C 1B 79 */	or. r28, r3, r3
/* 80971288  41 82 00 94 */	beq lbl_8097131C
/* 8097128C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80971290  4B 7D 44 78 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80971294  7C 63 E0 50 */	subf r3, r3, r28
/* 80971298  30 03 FF FF */	addic r0, r3, -1
/* 8097129C  7C 00 19 10 */	subfe r0, r0, r3
/* 809712A0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809712A4  40 82 00 10 */	bne lbl_809712B4
/* 809712A8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809712AC  2C 00 00 02 */	cmpwi r0, 2
/* 809712B0  41 82 00 30 */	beq lbl_809712E0
lbl_809712B4:
/* 809712B4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809712B8  4B 7D 44 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 809712BC  38 00 00 00 */	li r0, 0
/* 809712C0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809712C4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809712C8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809712CC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809712D0  38 00 00 02 */	li r0, 2
/* 809712D4  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 809712D8  38 00 00 01 */	li r0, 1
/* 809712DC  48 00 00 08 */	b lbl_809712E4
lbl_809712E0:
/* 809712E0  38 00 00 00 */	li r0, 0
lbl_809712E4:
/* 809712E4  2C 00 00 00 */	cmpwi r0, 0
/* 809712E8  41 82 00 28 */	beq lbl_80971310
/* 809712EC  7F 83 E3 78 */	mr r3, r28
/* 809712F0  4B 6A 79 F0 */	b fopAc_IsActor__FPv
/* 809712F4  2C 03 00 00 */	cmpwi r3, 0
/* 809712F8  41 82 00 18 */	beq lbl_80971310
/* 809712FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80971300  7F 84 E3 78 */	mr r4, r28
/* 80971304  4B 7D 43 DC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80971308  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8097130C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_80971310:
/* 80971310  38 00 00 00 */	li r0, 0
/* 80971314  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80971318  48 00 01 38 */	b lbl_80971450
lbl_8097131C:
/* 8097131C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80971320  2C 00 00 00 */	cmpwi r0, 0
/* 80971324  41 82 00 24 */	beq lbl_80971348
/* 80971328  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8097132C  4B 7D 43 D0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80971330  38 00 00 00 */	li r0, 0
/* 80971334  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80971338  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8097133C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80971340  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80971344  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80971348:
/* 80971348  38 00 00 00 */	li r0, 0
/* 8097134C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80971350  48 00 01 00 */	b lbl_80971450
lbl_80971354:
/* 80971354  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80971358  2C 00 00 01 */	cmpwi r0, 1
/* 8097135C  41 82 00 28 */	beq lbl_80971384
/* 80971360  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80971364  4B 7D 43 98 */	b remove__18daNpcT_ActorMngr_cFv
/* 80971368  38 00 00 00 */	li r0, 0
/* 8097136C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80971370  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80971374  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80971378  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8097137C  38 00 00 01 */	li r0, 1
/* 80971380  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80971384:
/* 80971384  38 00 00 00 */	li r0, 0
/* 80971388  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8097138C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80971390  28 00 00 00 */	cmplwi r0, 0
/* 80971394  41 82 00 BC */	beq lbl_80971450
/* 80971398  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8097139C  2C 00 00 00 */	cmpwi r0, 0
/* 809713A0  41 82 00 24 */	beq lbl_809713C4
/* 809713A4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809713A8  4B 7D 43 54 */	b remove__18daNpcT_ActorMngr_cFv
/* 809713AC  38 00 00 00 */	li r0, 0
/* 809713B0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809713B4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809713B8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809713BC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809713C0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809713C4:
/* 809713C4  38 00 00 00 */	li r0, 0
/* 809713C8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809713CC  48 00 00 84 */	b lbl_80971450
lbl_809713D0:
/* 809713D0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809713D4  2C 00 00 01 */	cmpwi r0, 1
/* 809713D8  41 82 00 28 */	beq lbl_80971400
/* 809713DC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809713E0  4B 7D 43 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 809713E4  38 00 00 00 */	li r0, 0
/* 809713E8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809713EC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809713F0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809713F4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809713F8  38 00 00 01 */	li r0, 1
/* 809713FC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80971400:
/* 80971400  38 00 00 00 */	li r0, 0
/* 80971404  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80971408  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 8097140C  28 00 00 02 */	cmplwi r0, 2
/* 80971410  40 82 00 24 */	bne lbl_80971434
/* 80971414  7F C3 F3 78 */	mr r3, r30
/* 80971418  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8097141C  38 A0 00 0A */	li r5, 0xa
/* 80971420  38 C0 00 13 */	li r6, 0x13
/* 80971424  38 E0 00 0F */	li r7, 0xf
/* 80971428  39 00 00 00 */	li r8, 0
/* 8097142C  4B 7D A2 1C */	b step__8daNpcT_cFsiiii
/* 80971430  48 00 00 20 */	b lbl_80971450
lbl_80971434:
/* 80971434  7F C3 F3 78 */	mr r3, r30
/* 80971438  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8097143C  38 A0 00 0A */	li r5, 0xa
/* 80971440  38 C0 00 12 */	li r6, 0x12
/* 80971444  38 E0 00 0F */	li r7, 0xf
/* 80971448  39 00 00 00 */	li r8, 0
/* 8097144C  4B 7D A1 FC */	b step__8daNpcT_cFsiiii
lbl_80971450:
/* 80971450  38 60 00 00 */	li r3, 0
/* 80971454  39 61 00 30 */	addi r11, r1, 0x30
/* 80971458  4B 9F 0D CC */	b _restgpr_28
/* 8097145C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80971460  7C 08 03 A6 */	mtlr r0
/* 80971464  38 21 00 30 */	addi r1, r1, 0x30
/* 80971468  4E 80 00 20 */	blr 

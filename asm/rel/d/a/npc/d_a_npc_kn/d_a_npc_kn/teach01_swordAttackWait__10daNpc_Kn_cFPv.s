lbl_80A3CF78:
/* 80A3CF78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3CF7C  7C 08 02 A6 */	mflr r0
/* 80A3CF80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3CF84  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3CF88  4B 92 52 50 */	b _savegpr_28
/* 80A3CF8C  7C 7E 1B 78 */	mr r30, r3
/* 80A3CF90  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3CF94  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3CF98  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A3CF9C  2C 00 00 02 */	cmpwi r0, 2
/* 80A3CFA0  41 82 00 FC */	beq lbl_80A3D09C
/* 80A3CFA4  40 80 03 6C */	bge lbl_80A3D310
/* 80A3CFA8  2C 00 00 00 */	cmpwi r0, 0
/* 80A3CFAC  40 80 00 0C */	bge lbl_80A3CFB8
/* 80A3CFB0  48 00 03 60 */	b lbl_80A3D310
/* 80A3CFB4  48 00 03 5C */	b lbl_80A3D310
lbl_80A3CFB8:
/* 80A3CFB8  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3CFBC  2C 00 00 01 */	cmpwi r0, 1
/* 80A3CFC0  41 82 00 24 */	beq lbl_80A3CFE4
/* 80A3CFC4  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3CFC8  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3CFCC  4B 70 88 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3CFD0  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3CFD4  38 00 00 01 */	li r0, 1
/* 80A3CFD8  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3CFDC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3CFE0  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3CFE4:
/* 80A3CFE4  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A3CFE8  2C 00 00 09 */	cmpwi r0, 9
/* 80A3CFEC  41 82 00 24 */	beq lbl_80A3D010
/* 80A3CFF0  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3CFF4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3CFF8  4B 70 88 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3CFFC  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3D000  38 00 00 09 */	li r0, 9
/* 80A3D004  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3D008  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D00C  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A3D010:
/* 80A3D010  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A3D014  2C 00 00 01 */	cmpwi r0, 1
/* 80A3D018  41 82 00 28 */	beq lbl_80A3D040
/* 80A3D01C  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A3D020  4B 70 86 DC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3D024  38 00 00 00 */	li r0, 0
/* 80A3D028  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A3D02C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3D030  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A3D034  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A3D038  38 00 00 01 */	li r0, 1
/* 80A3D03C  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A3D040:
/* 80A3D040  38 60 00 00 */	li r3, 0
/* 80A3D044  98 7E 0D 33 */	stb r3, 0xd33(r30)
/* 80A3D048  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80A3D04C  A8 04 00 8E */	lha r0, 0x8e(r4)
/* 80A3D050  90 1E 0D EC */	stw r0, 0xdec(r30)
/* 80A3D054  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A3D058  D0 1E 15 B0 */	stfs f0, 0x15b0(r30)
/* 80A3D05C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A3D060  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80A3D064  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A3D068  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80A3D06C  98 7E 15 BC */	stb r3, 0x15bc(r30)
/* 80A3D070  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A3D074  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A3D078  4B FF EC ED */	bl func_80A3BD64
/* 80A3D07C  B0 7E 15 D0 */	sth r3, 0x15d0(r30)
/* 80A3D080  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3D084  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A3D088  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A3D08C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A3D090  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A3D094  38 00 00 02 */	li r0, 2
/* 80A3D098  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A3D09C:
/* 80A3D09C  7F C3 F3 78 */	mr r3, r30
/* 80A3D0A0  4B FF AA 69 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A3D0A4  38 7E 08 C4 */	addi r3, r30, 0x8c4
/* 80A3D0A8  4B 64 67 88 */	b Move__10dCcD_GSttsFv
/* 80A3D0AC  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A3D0B0  4B 64 73 B0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A3D0B4  28 03 00 00 */	cmplwi r3, 0
/* 80A3D0B8  41 82 01 64 */	beq lbl_80A3D21C
/* 80A3D0BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3D0C0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80A3D0C4  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80A3D0C8  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80A3D0CC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A3D0D0  41 82 00 20 */	beq lbl_80A3D0F0
/* 80A3D0D4  2C 00 00 08 */	cmpwi r0, 8
/* 80A3D0D8  41 82 00 18 */	beq lbl_80A3D0F0
/* 80A3D0DC  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A3D0E0  41 82 00 10 */	beq lbl_80A3D0F0
/* 80A3D0E4  88 03 05 69 */	lbz r0, 0x569(r3)
/* 80A3D0E8  28 00 00 04 */	cmplwi r0, 4
/* 80A3D0EC  41 80 00 5C */	blt lbl_80A3D148
lbl_80A3D0F0:
/* 80A3D0F0  38 00 00 03 */	li r0, 3
/* 80A3D0F4  98 1E 15 AE */	stb r0, 0x15ae(r30)
/* 80A3D0F8  7F C3 F3 78 */	mr r3, r30
/* 80A3D0FC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3D100  4B 5D D6 10 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3D104  7C 64 1B 78 */	mr r4, r3
/* 80A3D108  7F C3 F3 78 */	mr r3, r30
/* 80A3D10C  4B FF D9 E5 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3D110  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A3D114  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A3D118  FC 00 00 50 */	fneg f0, f0
/* 80A3D11C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A3D120  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80A3D124  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A3D128  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A3D12C  3C 80 00 04 */	lis r4, 4
/* 80A3D130  38 A0 00 1F */	li r5, 0x1f
/* 80A3D134  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A3D138  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3D13C  7D 89 03 A6 */	mtctr r12
/* 80A3D140  4E 80 04 21 */	bctrl 
/* 80A3D144  48 00 01 CC */	b lbl_80A3D310
lbl_80A3D148:
/* 80A3D148  38 7E 12 78 */	addi r3, r30, 0x1278
/* 80A3D14C  4B 64 65 3C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80A3D150  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80A3D154  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A3D158  4B 83 3A AC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A3D15C  7C 64 1B 78 */	mr r4, r3
/* 80A3D160  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3D164  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3D168  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3D16C  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A3D170  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 80A3D174  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3D178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3D17C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3D180  4B 5C F2 5C */	b mDoMtx_YrotS__FPA4_fs
/* 80A3D184  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3D188  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3D18C  38 81 00 08 */	addi r4, r1, 8
/* 80A3D190  38 BE 15 B0 */	addi r5, r30, 0x15b0
/* 80A3D194  4B 90 9B D8 */	b PSMTXMultVec
/* 80A3D198  38 7E 15 B0 */	addi r3, r30, 0x15b0
/* 80A3D19C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A3D1A0  7C 65 1B 78 */	mr r5, r3
/* 80A3D1A4  4B 90 9E EC */	b PSVECAdd
/* 80A3D1A8  38 00 00 01 */	li r0, 1
/* 80A3D1AC  98 1E 15 BC */	stb r0, 0x15bc(r30)
/* 80A3D1B0  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3D1B4  2C 00 00 01 */	cmpwi r0, 1
/* 80A3D1B8  41 82 00 24 */	beq lbl_80A3D1DC
/* 80A3D1BC  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3D1C0  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3D1C4  4B 70 86 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D1C8  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3D1CC  38 00 00 01 */	li r0, 1
/* 80A3D1D0  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3D1D4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D1D8  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3D1DC:
/* 80A3D1DC  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3D1E0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3D1E4  4B 70 86 B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D1E8  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3D1EC  38 00 00 1F */	li r0, 0x1f
/* 80A3D1F0  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3D1F4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D1F8  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A3D1FC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A3D200  3C 80 00 04 */	lis r4, 4
/* 80A3D204  38 A0 00 1E */	li r5, 0x1e
/* 80A3D208  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A3D20C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3D210  7D 89 03 A6 */	mtctr r12
/* 80A3D214  4E 80 04 21 */	bctrl 
/* 80A3D218  48 00 00 F8 */	b lbl_80A3D310
lbl_80A3D21C:
/* 80A3D21C  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80A3D220  4B FF EB 29 */	bl func_80A3BD48
/* 80A3D224  2C 03 00 00 */	cmpwi r3, 0
/* 80A3D228  41 82 00 14 */	beq lbl_80A3D23C
/* 80A3D22C  7F C3 F3 78 */	mr r3, r30
/* 80A3D230  4B FE F9 01 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A3D234  2C 03 00 00 */	cmpwi r3, 0
/* 80A3D238  41 82 00 CC */	beq lbl_80A3D304
lbl_80A3D23C:
/* 80A3D23C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A3D240  D0 1E 15 B0 */	stfs f0, 0x15b0(r30)
/* 80A3D244  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A3D248  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80A3D24C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A3D250  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80A3D254  3B 80 00 00 */	li r28, 0
/* 80A3D258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3D25C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3D260  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A3D264  4B 63 65 80 */	b LockonTruth__12dAttention_cFv
/* 80A3D268  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A3D26C  41 82 00 08 */	beq lbl_80A3D274
/* 80A3D270  3B 80 00 01 */	li r28, 1
lbl_80A3D274:
/* 80A3D274  7F C3 F3 78 */	mr r3, r30
/* 80A3D278  4B FE F8 B9 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A3D27C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3D280  41 82 00 10 */	beq lbl_80A3D290
/* 80A3D284  38 00 00 04 */	li r0, 4
/* 80A3D288  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A3D28C  48 00 00 0C */	b lbl_80A3D298
lbl_80A3D290:
/* 80A3D290  38 00 00 01 */	li r0, 1
/* 80A3D294  B0 1E 0E 36 */	sth r0, 0xe36(r30)
lbl_80A3D298:
/* 80A3D298  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3D29C  2C 00 00 01 */	cmpwi r0, 1
/* 80A3D2A0  41 82 00 24 */	beq lbl_80A3D2C4
/* 80A3D2A4  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3D2A8  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3D2AC  4B 70 85 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D2B0  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3D2B4  38 00 00 01 */	li r0, 1
/* 80A3D2B8  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3D2BC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D2C0  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3D2C4:
/* 80A3D2C4  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3D2C8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3D2CC  4B 70 85 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D2D0  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3D2D4  38 00 00 00 */	li r0, 0
/* 80A3D2D8  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3D2DC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D2E0  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A3D2E4  2C 1C 00 00 */	cmpwi r28, 0
/* 80A3D2E8  41 82 00 10 */	beq lbl_80A3D2F8
/* 80A3D2EC  38 00 02 DA */	li r0, 0x2da
/* 80A3D2F0  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A3D2F4  48 00 00 1C */	b lbl_80A3D310
lbl_80A3D2F8:
/* 80A3D2F8  38 00 02 DB */	li r0, 0x2db
/* 80A3D2FC  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A3D300  48 00 00 10 */	b lbl_80A3D310
lbl_80A3D304:
/* 80A3D304  7F C3 F3 78 */	mr r3, r30
/* 80A3D308  38 80 00 01 */	li r4, 1
/* 80A3D30C  4B FF AA 15 */	bl calcSwordAttackMove__10daNpc_Kn_cFi
lbl_80A3D310:
/* 80A3D310  38 60 00 01 */	li r3, 1
/* 80A3D314  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3D318  4B 92 4F 0C */	b _restgpr_28
/* 80A3D31C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3D320  7C 08 03 A6 */	mtlr r0
/* 80A3D324  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3D328  4E 80 00 20 */	blr 

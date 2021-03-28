lbl_80A31028:
/* 80A31028  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A3102C  7C 08 02 A6 */	mflr r0
/* 80A31030  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A31034  39 61 00 20 */	addi r11, r1, 0x20
/* 80A31038  4B 93 11 A0 */	b _savegpr_28
/* 80A3103C  7C 7D 1B 78 */	mr r29, r3
/* 80A31040  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A31044  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A31048  A0 1D 0E 2A */	lhz r0, 0xe2a(r29)
/* 80A3104C  2C 00 00 02 */	cmpwi r0, 2
/* 80A31050  41 82 01 04 */	beq lbl_80A31154
/* 80A31054  40 80 05 60 */	bge lbl_80A315B4
/* 80A31058  2C 00 00 00 */	cmpwi r0, 0
/* 80A3105C  40 80 00 0C */	bge lbl_80A31068
/* 80A31060  48 00 05 54 */	b lbl_80A315B4
/* 80A31064  48 00 05 50 */	b lbl_80A315B4
lbl_80A31068:
/* 80A31068  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A3106C  2C 00 00 01 */	cmpwi r0, 1
/* 80A31070  41 82 00 24 */	beq lbl_80A31094
/* 80A31074  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A31078  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A3107C  4B 71 48 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31080  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A31084  38 00 00 01 */	li r0, 1
/* 80A31088  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A3108C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31090  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A31094:
/* 80A31094  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A31098  2C 00 00 09 */	cmpwi r0, 9
/* 80A3109C  41 82 00 24 */	beq lbl_80A310C0
/* 80A310A0  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A310A4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A310A8  4B 71 47 F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A310AC  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A310B0  38 00 00 09 */	li r0, 9
/* 80A310B4  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A310B8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A310BC  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A310C0:
/* 80A310C0  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A310C4  2C 00 00 01 */	cmpwi r0, 1
/* 80A310C8  41 82 00 28 */	beq lbl_80A310F0
/* 80A310CC  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A310D0  4B 71 46 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A310D4  38 00 00 00 */	li r0, 0
/* 80A310D8  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A310DC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A310E0  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A310E4  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A310E8  38 00 00 01 */	li r0, 1
/* 80A310EC  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A310F0:
/* 80A310F0  38 60 00 00 */	li r3, 0
/* 80A310F4  98 7D 0D 33 */	stb r3, 0xd33(r29)
/* 80A310F8  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 80A310FC  A8 04 00 8E */	lha r0, 0x8e(r4)
/* 80A31100  90 1D 0D EC */	stw r0, 0xdec(r29)
/* 80A31104  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A31108  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A3110C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A31110  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A31114  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A31118  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A3111C  98 7D 15 BC */	stb r3, 0x15bc(r29)
/* 80A31120  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A31124  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A31128  48 00 AC 3D */	bl func_80A3BD64
/* 80A3112C  B0 7D 15 D0 */	sth r3, 0x15d0(r29)
/* 80A31130  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A31134  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A31138  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A3113C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A31140  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A31144  38 00 00 00 */	li r0, 0
/* 80A31148  98 1D 15 BD */	stb r0, 0x15bd(r29)
/* 80A3114C  38 00 00 02 */	li r0, 2
/* 80A31150  B0 1D 0E 2A */	sth r0, 0xe2a(r29)
lbl_80A31154:
/* 80A31154  7F A3 EB 78 */	mr r3, r29
/* 80A31158  48 00 69 B1 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A3115C  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 80A31160  4B 65 26 D0 */	b Move__10dCcD_GSttsFv
/* 80A31164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A31168  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A3116C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A31170  8B 83 05 68 */	lbz r28, 0x568(r3)
/* 80A31174  2C 1C 00 17 */	cmpwi r28, 0x17
/* 80A31178  41 82 00 0C */	beq lbl_80A31184
/* 80A3117C  2C 1C 00 18 */	cmpwi r28, 0x18
/* 80A31180  40 82 00 1C */	bne lbl_80A3119C
lbl_80A31184:
/* 80A31184  38 00 00 01 */	li r0, 1
/* 80A31188  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A3118C  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A31190  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A31194  90 1D 12 78 */	stw r0, 0x1278(r29)
/* 80A31198  48 00 00 18 */	b lbl_80A311B0
lbl_80A3119C:
/* 80A3119C  38 00 00 02 */	li r0, 2
/* 80A311A0  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A311A4  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A311A8  60 00 00 01 */	ori r0, r0, 1
/* 80A311AC  90 1D 12 78 */	stw r0, 0x1278(r29)
lbl_80A311B0:
/* 80A311B0  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A311B4  4B 65 32 AC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A311B8  28 03 00 00 */	cmplwi r3, 0
/* 80A311BC  41 82 02 BC */	beq lbl_80A31478
/* 80A311C0  2C 1C 00 17 */	cmpwi r28, 0x17
/* 80A311C4  41 82 00 0C */	beq lbl_80A311D0
/* 80A311C8  2C 1C 00 18 */	cmpwi r28, 0x18
/* 80A311CC  40 82 01 FC */	bne lbl_80A313C8
lbl_80A311D0:
/* 80A311D0  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A311D4  28 00 00 06 */	cmplwi r0, 6
/* 80A311D8  40 82 00 0C */	bne lbl_80A311E4
/* 80A311DC  38 00 00 18 */	li r0, 0x18
/* 80A311E0  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A311E4:
/* 80A311E4  7F A3 EB 78 */	mr r3, r29
/* 80A311E8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A311EC  4B 5E 95 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A311F0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A311F4  7C 00 18 50 */	subf r0, r0, r3
/* 80A311F8  7C 00 07 35 */	extsh. r0, r0
/* 80A311FC  40 80 00 08 */	bge lbl_80A31204
/* 80A31200  7C 00 00 D0 */	neg r0, r0
lbl_80A31204:
/* 80A31204  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A31208  40 80 00 B0 */	bge lbl_80A312B8
/* 80A3120C  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A31210  2C 00 00 01 */	cmpwi r0, 1
/* 80A31214  41 82 00 24 */	beq lbl_80A31238
/* 80A31218  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A3121C  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A31220  4B 71 46 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31224  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A31228  38 00 00 01 */	li r0, 1
/* 80A3122C  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A31230  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31234  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A31238:
/* 80A31238  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A3123C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A31240  41 82 00 24 */	beq lbl_80A31264
/* 80A31244  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A31248  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A3124C  4B 71 46 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31250  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A31254  38 00 00 12 */	li r0, 0x12
/* 80A31258  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A3125C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31260  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A31264:
/* 80A31264  7F A3 EB 78 */	mr r3, r29
/* 80A31268  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A3126C  4B 5E 94 A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A31270  7C 64 1B 78 */	mr r4, r3
/* 80A31274  7F A3 EB 78 */	mr r3, r29
/* 80A31278  48 00 98 79 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3127C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A31280  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A31284  FC 00 00 50 */	fneg f0, f0
/* 80A31288  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A3128C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A31290  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A31294  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A31298  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A3129C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A312A0  38 A0 FF FF */	li r5, -1
/* 80A312A4  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A312A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A312AC  7D 89 03 A6 */	mtctr r12
/* 80A312B0  4E 80 04 21 */	bctrl 
/* 80A312B4  48 00 00 B4 */	b lbl_80A31368
lbl_80A312B8:
/* 80A312B8  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A312BC  2C 00 00 01 */	cmpwi r0, 1
/* 80A312C0  41 82 00 24 */	beq lbl_80A312E4
/* 80A312C4  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A312C8  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A312CC  4B 71 45 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A312D0  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A312D4  38 00 00 01 */	li r0, 1
/* 80A312D8  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A312DC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A312E0  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A312E4:
/* 80A312E4  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A312E8  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A312EC  41 82 00 24 */	beq lbl_80A31310
/* 80A312F0  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A312F4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A312F8  4B 71 45 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A312FC  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A31300  38 00 00 0E */	li r0, 0xe
/* 80A31304  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A31308  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3130C  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A31310:
/* 80A31310  7F A3 EB 78 */	mr r3, r29
/* 80A31314  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A31318  4B 5E 93 F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3131C  7C 64 1B 78 */	mr r4, r3
/* 80A31320  7F A3 EB 78 */	mr r3, r29
/* 80A31324  3C 84 00 01 */	addis r4, r4, 1
/* 80A31328  38 04 80 00 */	addi r0, r4, -32768
/* 80A3132C  7C 04 07 34 */	extsh r4, r0
/* 80A31330  48 00 97 C1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A31334  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A31338  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A3133C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A31340  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A31344  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A31348  90 01 00 08 */	stw r0, 8(r1)
/* 80A3134C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A31350  38 81 00 08 */	addi r4, r1, 8
/* 80A31354  38 A0 FF FF */	li r5, -1
/* 80A31358  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A3135C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A31360  7D 89 03 A6 */	mtctr r12
/* 80A31364  4E 80 04 21 */	bctrl 
lbl_80A31368:
/* 80A31368  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A3136C  2C 00 00 00 */	cmpwi r0, 0
/* 80A31370  41 82 00 24 */	beq lbl_80A31394
/* 80A31374  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A31378  4B 71 43 84 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3137C  38 00 00 00 */	li r0, 0
/* 80A31380  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A31384  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A31388  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A3138C  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A31390  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A31394:
/* 80A31394  38 00 00 00 */	li r0, 0
/* 80A31398  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A3139C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A313A0  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80A313A4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A313A8  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A313AC  3C 80 00 04 */	lis r4, 4
/* 80A313B0  38 A0 00 1F */	li r5, 0x1f
/* 80A313B4  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A313B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A313BC  7D 89 03 A6 */	mtctr r12
/* 80A313C0  4E 80 04 21 */	bctrl 
/* 80A313C4  48 00 01 F0 */	b lbl_80A315B4
lbl_80A313C8:
/* 80A313C8  7F A3 EB 78 */	mr r3, r29
/* 80A313CC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A313D0  4B 5E 93 40 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A313D4  7C 64 1B 78 */	mr r4, r3
/* 80A313D8  7F A3 EB 78 */	mr r3, r29
/* 80A313DC  48 00 97 15 */	bl setAngle__10daNpc_Kn_cFs
/* 80A313E0  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A313E4  2C 00 00 01 */	cmpwi r0, 1
/* 80A313E8  41 82 00 24 */	beq lbl_80A3140C
/* 80A313EC  83 FD 0B 90 */	lwz r31, 0xb90(r29)
/* 80A313F0  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A313F4  4B 71 44 A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A313F8  93 FD 0B 90 */	stw r31, 0xb90(r29)
/* 80A313FC  38 00 00 01 */	li r0, 1
/* 80A31400  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A31404  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31408  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A3140C:
/* 80A3140C  83 FD 0B B4 */	lwz r31, 0xbb4(r29)
/* 80A31410  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A31414  4B 71 44 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31418  93 FD 0B B4 */	stw r31, 0xbb4(r29)
/* 80A3141C  38 00 00 1B */	li r0, 0x1b
/* 80A31420  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A31424  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31428  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A3142C  2C 1C 00 29 */	cmpwi r28, 0x29
/* 80A31430  40 82 00 28 */	bne lbl_80A31458
/* 80A31434  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A31438  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040002@ha */
/* 80A3143C  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00040002@l */
/* 80A31440  38 A0 00 28 */	li r5, 0x28
/* 80A31444  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A31448  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3144C  7D 89 03 A6 */	mtctr r12
/* 80A31450  4E 80 04 21 */	bctrl 
/* 80A31454  48 00 00 58 */	b lbl_80A314AC
lbl_80A31458:
/* 80A31458  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A3145C  3C 80 00 04 */	lis r4, 4
/* 80A31460  38 A0 00 28 */	li r5, 0x28
/* 80A31464  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A31468  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3146C  7D 89 03 A6 */	mtctr r12
/* 80A31470  4E 80 04 21 */	bctrl 
/* 80A31474  48 00 00 38 */	b lbl_80A314AC
lbl_80A31478:
/* 80A31478  88 1D 15 BD */	lbz r0, 0x15bd(r29)
/* 80A3147C  28 00 00 02 */	cmplwi r0, 2
/* 80A31480  40 82 00 2C */	bne lbl_80A314AC
/* 80A31484  38 1C FF E9 */	addi r0, r28, -23
/* 80A31488  28 00 00 01 */	cmplwi r0, 1
/* 80A3148C  40 81 00 20 */	ble lbl_80A314AC
/* 80A31490  38 00 00 19 */	li r0, 0x19
/* 80A31494  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A31498  3C 60 80 A3 */	lis r3, s_subEnd7__FPvPv@ha
/* 80A3149C  38 63 0F BC */	addi r3, r3, s_subEnd7__FPvPv@l
/* 80A314A0  7F A4 EB 78 */	mr r4, r29
/* 80A314A4  4B 5E FE 94 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A314A8  48 00 01 0C */	b lbl_80A315B4
lbl_80A314AC:
/* 80A314AC  7F A3 EB 78 */	mr r3, r29
/* 80A314B0  38 80 00 01 */	li r4, 1
/* 80A314B4  48 00 68 6D */	bl calcSwordAttackMove__10daNpc_Kn_cFi
/* 80A314B8  88 1D 15 BD */	lbz r0, 0x15bd(r29)
/* 80A314BC  28 00 00 02 */	cmplwi r0, 2
/* 80A314C0  41 82 00 F4 */	beq lbl_80A315B4
/* 80A314C4  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80A314C8  48 00 A8 81 */	bl func_80A3BD48
/* 80A314CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A314D0  41 82 00 20 */	beq lbl_80A314F0
/* 80A314D4  7F A3 EB 78 */	mr r3, r29
/* 80A314D8  4B FF B6 59 */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A314DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A314E0  40 82 00 10 */	bne lbl_80A314F0
/* 80A314E4  88 1D 15 BD */	lbz r0, 0x15bd(r29)
/* 80A314E8  28 00 00 01 */	cmplwi r0, 1
/* 80A314EC  40 82 00 C8 */	bne lbl_80A315B4
lbl_80A314F0:
/* 80A314F0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A314F4  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A314F8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A314FC  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A31500  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A31504  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A31508  38 00 00 00 */	li r0, 0
/* 80A3150C  98 1D 15 BC */	stb r0, 0x15bc(r29)
/* 80A31510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A31514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A31518  38 63 56 B8 */	addi r3, r3, 0x56b8
/* 80A3151C  4B 64 22 C8 */	b LockonTruth__12dAttention_cFv
/* 80A31520  7F A3 EB 78 */	mr r3, r29
/* 80A31524  4B FF B6 0D */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A31528  2C 03 00 00 */	cmpwi r3, 0
/* 80A3152C  40 82 00 10 */	bne lbl_80A3153C
/* 80A31530  88 1D 15 BD */	lbz r0, 0x15bd(r29)
/* 80A31534  28 00 00 01 */	cmplwi r0, 1
/* 80A31538  40 82 00 10 */	bne lbl_80A31548
lbl_80A3153C:
/* 80A3153C  38 00 00 04 */	li r0, 4
/* 80A31540  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A31544  48 00 00 0C */	b lbl_80A31550
lbl_80A31548:
/* 80A31548  38 00 00 01 */	li r0, 1
/* 80A3154C  B0 1D 0E 36 */	sth r0, 0xe36(r29)
lbl_80A31550:
/* 80A31550  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A31554  2C 00 00 01 */	cmpwi r0, 1
/* 80A31558  41 82 00 24 */	beq lbl_80A3157C
/* 80A3155C  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A31560  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A31564  4B 71 43 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31568  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A3156C  38 00 00 01 */	li r0, 1
/* 80A31570  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A31574  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31578  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A3157C:
/* 80A3157C  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A31580  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A31584  4B 71 43 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31588  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A3158C  38 00 00 00 */	li r0, 0
/* 80A31590  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A31594  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31598  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A3159C  38 00 03 03 */	li r0, 0x303
/* 80A315A0  90 1D 0A B0 */	stw r0, 0xab0(r29)
/* 80A315A4  3C 60 80 A3 */	lis r3, s_sub7__FPvPv@ha
/* 80A315A8  38 63 0F 5C */	addi r3, r3, s_sub7__FPvPv@l
/* 80A315AC  7F A4 EB 78 */	mr r4, r29
/* 80A315B0  4B 5E FD 88 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80A315B4:
/* 80A315B4  38 60 00 01 */	li r3, 1
/* 80A315B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A315BC  4B 93 0C 68 */	b _restgpr_28
/* 80A315C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A315C4  7C 08 03 A6 */	mtlr r0
/* 80A315C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A315CC  4E 80 00 20 */	blr 

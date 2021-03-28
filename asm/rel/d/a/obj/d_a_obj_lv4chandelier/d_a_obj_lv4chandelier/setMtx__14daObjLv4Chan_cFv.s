lbl_80C636B4:
/* 80C636B4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C636B8  7C 08 02 A6 */	mflr r0
/* 80C636BC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C636C0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80C636C4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80C636C8  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80C636CC  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 80C636D0  7C 7E 1B 78 */	mr r30, r3
/* 80C636D4  3C 60 80 C6 */	lis r3, l_bmdidx@ha
/* 80C636D8  3B E3 68 60 */	addi r31, r3, l_bmdidx@l
/* 80C636DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C636E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C636E4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C636E8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C636EC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C636F0  4B 6E 31 F8 */	b PSMTXTrans
/* 80C636F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C636F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C636FC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C63700  4B 3A 8D 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80C63704  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C63708  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6370C  38 9E 05 D8 */	addi r4, r30, 0x5d8
/* 80C63710  4B 6E 2D A0 */	b PSMTXCopy
/* 80C63714  7F C3 F3 78 */	mr r3, r30
/* 80C63718  80 9E 06 1C */	lwz r4, 0x61c(r30)
/* 80C6371C  80 BE 06 34 */	lwz r5, 0x634(r30)
/* 80C63720  80 DE 06 28 */	lwz r6, 0x628(r30)
/* 80C63724  4B FF FD A9 */	bl setMtxChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosP10dMdl_obj_ci
/* 80C63728  7F C3 F3 78 */	mr r3, r30
/* 80C6372C  80 9E 06 20 */	lwz r4, 0x620(r30)
/* 80C63730  80 BE 06 38 */	lwz r5, 0x638(r30)
/* 80C63734  80 DE 06 2C */	lwz r6, 0x62c(r30)
/* 80C63738  4B FF FD 95 */	bl setMtxChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosP10dMdl_obj_ci
/* 80C6373C  7F C3 F3 78 */	mr r3, r30
/* 80C63740  80 9E 06 24 */	lwz r4, 0x624(r30)
/* 80C63744  80 BE 06 3C */	lwz r5, 0x63c(r30)
/* 80C63748  80 DE 06 30 */	lwz r6, 0x630(r30)
/* 80C6374C  4B FF FD 81 */	bl setMtxChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosP10dMdl_obj_ci
/* 80C63750  80 9E 06 1C */	lwz r4, 0x61c(r30)
/* 80C63754  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 80C63758  1C 60 00 28 */	mulli r3, r0, 0x28
/* 80C6375C  38 63 00 0C */	addi r3, r3, 0xc
/* 80C63760  7C 64 1A 14 */	add r3, r4, r3
/* 80C63764  80 BE 06 20 */	lwz r5, 0x620(r30)
/* 80C63768  80 1E 06 2C */	lwz r0, 0x62c(r30)
/* 80C6376C  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C63770  38 84 00 0C */	addi r4, r4, 0xc
/* 80C63774  7C 85 22 14 */	add r4, r5, r4
/* 80C63778  80 DE 06 24 */	lwz r6, 0x624(r30)
/* 80C6377C  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80C63780  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C63784  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C63788  7C A6 2A 14 */	add r5, r6, r5
/* 80C6378C  38 C1 00 68 */	addi r6, r1, 0x68
/* 80C63790  4B 60 51 24 */	b cM3d_VectorProduct__FPC4cXyzPC4cXyzPC4cXyzP4cXyz
/* 80C63794  38 61 00 68 */	addi r3, r1, 0x68
/* 80C63798  4B 6E 39 A0 */	b PSVECSquareMag
/* 80C6379C  FC 00 0A 10 */	fabs f0, f1
/* 80C637A0  FC 20 00 18 */	frsp f1, f0
/* 80C637A4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C637A8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C637AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C637B0  41 80 00 D0 */	blt lbl_80C63880
/* 80C637B4  38 61 00 50 */	addi r3, r1, 0x50
/* 80C637B8  38 81 00 68 */	addi r4, r1, 0x68
/* 80C637BC  4B 60 37 38 */	b normalize__4cXyzFv
/* 80C637C0  3C 60 80 43 */	lis r3, BaseY__4cXyz@ha
/* 80C637C4  38 63 0D 24 */	addi r3, r3, BaseY__4cXyz@l
/* 80C637C8  38 81 00 68 */	addi r4, r1, 0x68
/* 80C637CC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80C637D0  4B 6E 39 E4 */	b PSVECCrossProduct
/* 80C637D4  38 61 00 68 */	addi r3, r1, 0x68
/* 80C637D8  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha
/* 80C637DC  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l
/* 80C637E0  4B 6E 39 B4 */	b PSVECDotProduct
/* 80C637E4  FF E0 08 90 */	fmr f31, f1
/* 80C637E8  38 61 00 5C */	addi r3, r1, 0x5c
/* 80C637EC  4B 6E 39 4C */	b PSVECSquareMag
/* 80C637F0  FC 00 0A 10 */	fabs f0, f1
/* 80C637F4  FC 20 00 18 */	frsp f1, f0
/* 80C637F8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C637FC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C63800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C63804  41 80 00 5C */	blt lbl_80C63860
/* 80C63808  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C6380C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80C63810  4C 40 13 82 */	cror 2, 0, 2
/* 80C63814  40 82 00 4C */	bne lbl_80C63860
/* 80C63818  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C6381C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C63820  4C 40 13 82 */	cror 2, 0, 2
/* 80C63824  40 82 00 3C */	bne lbl_80C63860
/* 80C63828  38 61 00 44 */	addi r3, r1, 0x44
/* 80C6382C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C63830  4B 60 36 C4 */	b normalize__4cXyzFv
/* 80C63834  FC 20 F8 90 */	fmr f1, f31
/* 80C63838  4B 70 8E A8 */	b acos
/* 80C6383C  FC 20 08 18 */	frsp f1, f1
/* 80C63840  38 61 00 74 */	addi r3, r1, 0x74
/* 80C63844  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C63848  4B 6E 30 30 */	b PSMTXRotAxisRad
/* 80C6384C  38 61 00 68 */	addi r3, r1, 0x68
/* 80C63850  7C 64 1B 78 */	mr r4, r3
/* 80C63854  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C63858  4B 6E 38 80 */	b PSVECScale
/* 80C6385C  48 00 00 40 */	b lbl_80C6389C
lbl_80C63860:
/* 80C63860  38 61 00 74 */	addi r3, r1, 0x74
/* 80C63864  4B 6E 2C 20 */	b PSMTXIdentity
/* 80C63868  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C6386C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80C63870  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C63874  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C63878  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80C6387C  48 00 00 20 */	b lbl_80C6389C
lbl_80C63880:
/* 80C63880  38 61 00 74 */	addi r3, r1, 0x74
/* 80C63884  4B 6E 2C 00 */	b PSMTXIdentity
/* 80C63888  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C6388C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80C63890  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C63894  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C63898  D0 21 00 70 */	stfs f1, 0x70(r1)
lbl_80C6389C:
/* 80C6389C  38 61 00 38 */	addi r3, r1, 0x38
/* 80C638A0  80 BE 06 1C */	lwz r5, 0x61c(r30)
/* 80C638A4  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 80C638A8  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C638AC  38 84 00 0C */	addi r4, r4, 0xc
/* 80C638B0  7C 85 22 14 */	add r4, r5, r4
/* 80C638B4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C638B8  4B 60 32 CC */	b __ml__4cXyzCFf
/* 80C638BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C638C0  80 BE 06 20 */	lwz r5, 0x620(r30)
/* 80C638C4  80 1E 06 2C */	lwz r0, 0x62c(r30)
/* 80C638C8  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C638CC  38 84 00 0C */	addi r4, r4, 0xc
/* 80C638D0  7C 85 22 14 */	add r4, r5, r4
/* 80C638D4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C638D8  4B 60 32 AC */	b __ml__4cXyzCFf
/* 80C638DC  38 61 00 20 */	addi r3, r1, 0x20
/* 80C638E0  38 81 00 38 */	addi r4, r1, 0x38
/* 80C638E4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C638E8  4B 60 31 FC */	b __pl__4cXyzCFRC3Vec
/* 80C638EC  38 61 00 14 */	addi r3, r1, 0x14
/* 80C638F0  80 BE 06 24 */	lwz r5, 0x624(r30)
/* 80C638F4  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80C638F8  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C638FC  38 84 00 0C */	addi r4, r4, 0xc
/* 80C63900  7C 85 22 14 */	add r4, r5, r4
/* 80C63904  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C63908  4B 60 32 7C */	b __ml__4cXyzCFf
/* 80C6390C  38 61 00 08 */	addi r3, r1, 8
/* 80C63910  38 81 00 20 */	addi r4, r1, 0x20
/* 80C63914  38 A1 00 14 */	addi r5, r1, 0x14
/* 80C63918  4B 60 31 CC */	b __pl__4cXyzCFRC3Vec
/* 80C6391C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C63920  D0 1E 23 BC */	stfs f0, 0x23bc(r30)
/* 80C63924  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C63928  D0 1E 23 C0 */	stfs f0, 0x23c0(r30)
/* 80C6392C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C63930  D0 1E 23 C4 */	stfs f0, 0x23c4(r30)
/* 80C63934  38 7E 23 BC */	addi r3, r30, 0x23bc
/* 80C63938  38 81 00 68 */	addi r4, r1, 0x68
/* 80C6393C  7C 65 1B 78 */	mr r5, r3
/* 80C63940  4B 6E 37 50 */	b PSVECAdd
/* 80C63944  38 7E 23 BC */	addi r3, r30, 0x23bc
/* 80C63948  4B 3A 94 1C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C6394C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C63950  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C63954  38 81 00 74 */	addi r4, r1, 0x74
/* 80C63958  7C 65 1B 78 */	mr r5, r3
/* 80C6395C  4B 6E 2B 88 */	b PSMTXConcat
/* 80C63960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C63964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C63968  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80C6396C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C63970  4B 6E 2B 40 */	b PSMTXCopy
/* 80C63974  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80C63978  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 80C6397C  C0 7E 04 F4 */	lfs f3, 0x4f4(r30)
/* 80C63980  4B 3A 94 B8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80C63984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C63988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6398C  38 9E 05 A8 */	addi r4, r30, 0x5a8
/* 80C63990  4B 6E 2B 20 */	b PSMTXCopy
/* 80C63994  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80C63998  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80C6399C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80C639A0  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80C639A4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C639A8  7C 08 03 A6 */	mtlr r0
/* 80C639AC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C639B0  4E 80 00 20 */	blr 

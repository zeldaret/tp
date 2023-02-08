lbl_80BFE52C:
/* 80BFE52C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80BFE530  7C 08 02 A6 */	mflr r0
/* 80BFE534  90 01 01 14 */	stw r0, 0x114(r1)
/* 80BFE538  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80BFE53C  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80BFE540  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80BFE544  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80BFE548  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 80BFE54C  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 80BFE550  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 80BFE554  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 80BFE558  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 80BFE55C  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 80BFE560  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 80BFE564  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 80BFE568  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 80BFE56C  F3 21 00 A8 */	psq_st f25, 168(r1), 0, 0 /* qr0 */
/* 80BFE570  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BFE574  4B 76 3C 41 */	bl _savegpr_19
/* 80BFE578  7C 7C 1B 78 */	mr r28, r3
/* 80BFE57C  3C 60 80 C0 */	lis r3, ccSphSrc@ha /* 0x80BFFC1C@ha */
/* 80BFE580  3B E3 FC 1C */	addi r31, r3, ccSphSrc@l /* 0x80BFFC1C@l */
/* 80BFE584  C3 DF 00 44 */	lfs f30, 0x44(r31)
/* 80BFE588  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80BFE58C  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 80BFE590  D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 80BFE594  3B A0 00 00 */	li r29, 0
/* 80BFE598  3B 20 00 00 */	li r25, 0
/* 80BFE59C  3B 40 00 00 */	li r26, 0
/* 80BFE5A0  3B 60 00 00 */	li r27, 0
/* 80BFE5A4  C3 BF 00 5C */	lfs f29, 0x5c(r31)
/* 80BFE5A8  CB 9F 00 50 */	lfd f28, 0x50(r31)
/* 80BFE5AC  3F 00 43 30 */	lis r24, 0x4330
/* 80BFE5B0  C3 7F 00 60 */	lfs f27, 0x60(r31)
/* 80BFE5B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BFE5B8  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BFE5BC  7E F6 BB 78 */	mr r22, r23
lbl_80BFE5C0:
/* 80BFE5C0  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80BFE5C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BFE5C8  93 01 00 40 */	stw r24, 0x40(r1)
/* 80BFE5CC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80BFE5D0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80BFE5D4  EC 1D 00 2A */	fadds f0, f29, f0
/* 80BFE5D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BFE5DC  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 80BFE5E0  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 80BFE5E4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80BFE5E8  4B 66 93 6D */	bl cM_rndF__Ff
/* 80BFE5EC  EF 5B 08 2A */	fadds f26, f27, f1
/* 80BFE5F0  FC 20 D8 90 */	fmr f1, f27
/* 80BFE5F4  4B 66 93 61 */	bl cM_rndF__Ff
/* 80BFE5F8  EF FB 08 2A */	fadds f31, f27, f1
/* 80BFE5FC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BFE600  4B 66 93 55 */	bl cM_rndF__Ff
/* 80BFE604  7E 7C D2 14 */	add r19, r28, r26
/* 80BFE608  D0 33 06 58 */	stfs f1, 0x658(r19)
/* 80BFE60C  D3 F3 06 5C */	stfs f31, 0x65c(r19)
/* 80BFE610  D3 53 06 60 */	stfs f26, 0x660(r19)
/* 80BFE614  7E E3 BB 78 */	mr r3, r23
/* 80BFE618  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80BFE61C  4B 40 DD C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BFE620  38 93 06 58 */	addi r4, r19, 0x658
/* 80BFE624  7E E3 BB 78 */	mr r3, r23
/* 80BFE628  7C 85 23 78 */	mr r5, r4
/* 80BFE62C  4B 74 87 41 */	bl PSMTXMultVec
/* 80BFE630  7E C3 B3 78 */	mr r3, r22
/* 80BFE634  38 81 00 24 */	addi r4, r1, 0x24
/* 80BFE638  38 A1 00 30 */	addi r5, r1, 0x30
/* 80BFE63C  4B 74 87 31 */	bl PSMTXMultVec
/* 80BFE640  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BFE644  4B 66 93 49 */	bl cM_rndFX__Ff
/* 80BFE648  FC 00 08 1E */	fctiwz f0, f1
/* 80BFE64C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80BFE650  82 81 00 4C */	lwz r20, 0x4c(r1)
/* 80BFE654  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BFE658  4B 66 93 35 */	bl cM_rndFX__Ff
/* 80BFE65C  FC 00 08 1E */	fctiwz f0, f1
/* 80BFE660  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80BFE664  82 A1 00 54 */	lwz r21, 0x54(r1)
/* 80BFE668  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BFE66C  4B 66 93 21 */	bl cM_rndFX__Ff
/* 80BFE670  FC 00 08 1E */	fctiwz f0, f1
/* 80BFE674  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80BFE678  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80BFE67C  7F DC CA 14 */	add r30, r28, r25
/* 80BFE680  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 80BFE684  B2 BE 06 8A */	sth r21, 0x68a(r30)
/* 80BFE688  B2 9E 06 8C */	sth r20, 0x68c(r30)
/* 80BFE68C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80BFE690  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BFE694  EC 61 00 2A */	fadds f3, f1, f0
/* 80BFE698  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80BFE69C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BFE6A0  EC 41 00 2A */	fadds f2, f1, f0
/* 80BFE6A4  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80BFE6A8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BFE6AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFE6B0  D0 13 05 B0 */	stfs f0, 0x5b0(r19)
/* 80BFE6B4  D0 53 05 B4 */	stfs f2, 0x5b4(r19)
/* 80BFE6B8  D0 73 05 B8 */	stfs f3, 0x5b8(r19)
/* 80BFE6BC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BFE6C0  4B 66 92 CD */	bl cM_rndFX__Ff
/* 80BFE6C4  FC 00 08 1E */	fctiwz f0, f1
/* 80BFE6C8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80BFE6CC  80 81 00 64 */	lwz r4, 0x64(r1)
/* 80BFE6D0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BFE6D4  38 A0 00 00 */	li r5, 0
/* 80BFE6D8  38 C0 00 00 */	li r6, 0
/* 80BFE6DC  4B 66 8D 19 */	bl __ct__5csXyzFsss
/* 80BFE6E0  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 80BFE6E4  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 80BFE6E8  A8 01 00 1E */	lha r0, 0x1e(r1)
/* 80BFE6EC  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 80BFE6F0  A8 01 00 20 */	lha r0, 0x20(r1)
/* 80BFE6F4  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80BFE6F8  3B BD 00 01 */	addi r29, r29, 1
/* 80BFE6FC  2C 1D 00 02 */	cmpwi r29, 2
/* 80BFE700  3B 39 00 06 */	addi r25, r25, 6
/* 80BFE704  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80BFE708  3B 7B 00 19 */	addi r27, r27, 0x19
/* 80BFE70C  41 80 FE B4 */	blt lbl_80BFE5C0
/* 80BFE710  3B A0 00 02 */	li r29, 2
/* 80BFE714  3B 20 00 0C */	li r25, 0xc
/* 80BFE718  3B 40 00 18 */	li r26, 0x18
/* 80BFE71C  3B 60 00 32 */	li r27, 0x32
/* 80BFE720  C3 DF 00 70 */	lfs f30, 0x70(r31)
/* 80BFE724  CB FF 00 50 */	lfd f31, 0x50(r31)
/* 80BFE728  3E C0 43 30 */	lis r22, 0x4330
/* 80BFE72C  C3 7F 00 5C */	lfs f27, 0x5c(r31)
/* 80BFE730  C3 9F 00 44 */	lfs f28, 0x44(r31)
/* 80BFE734  C3 BF 00 60 */	lfs f29, 0x60(r31)
/* 80BFE738  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BFE73C  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BFE740  7E F8 BB 78 */	mr r24, r23
lbl_80BFE744:
/* 80BFE744  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80BFE748  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BFE74C  92 C1 00 60 */	stw r22, 0x60(r1)
/* 80BFE750  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80BFE754  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BFE758  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80BFE75C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BFE760  D3 61 00 34 */	stfs f27, 0x34(r1)
/* 80BFE764  D3 81 00 38 */	stfs f28, 0x38(r1)
/* 80BFE768  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80BFE76C  4B 66 91 E9 */	bl cM_rndF__Ff
/* 80BFE770  EF 3D 08 2A */	fadds f25, f29, f1
/* 80BFE774  FC 20 E8 90 */	fmr f1, f29
/* 80BFE778  4B 66 91 DD */	bl cM_rndF__Ff
/* 80BFE77C  EF 5D 08 2A */	fadds f26, f29, f1
/* 80BFE780  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BFE784  4B 66 91 D1 */	bl cM_rndF__Ff
/* 80BFE788  FC 00 08 50 */	fneg f0, f1
/* 80BFE78C  7E 7C D2 14 */	add r19, r28, r26
/* 80BFE790  D0 13 06 58 */	stfs f0, 0x658(r19)
/* 80BFE794  D3 53 06 5C */	stfs f26, 0x65c(r19)
/* 80BFE798  D3 33 06 60 */	stfs f25, 0x660(r19)
/* 80BFE79C  7E E3 BB 78 */	mr r3, r23
/* 80BFE7A0  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80BFE7A4  4B 40 DC 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BFE7A8  38 93 06 58 */	addi r4, r19, 0x658
/* 80BFE7AC  7E E3 BB 78 */	mr r3, r23
/* 80BFE7B0  7C 85 23 78 */	mr r5, r4
/* 80BFE7B4  4B 74 85 B9 */	bl PSMTXMultVec
/* 80BFE7B8  7F 03 C3 78 */	mr r3, r24
/* 80BFE7BC  38 81 00 30 */	addi r4, r1, 0x30
/* 80BFE7C0  7C 85 23 78 */	mr r5, r4
/* 80BFE7C4  4B 74 85 A9 */	bl PSMTXMultVec
/* 80BFE7C8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BFE7CC  4B 66 91 C1 */	bl cM_rndFX__Ff
/* 80BFE7D0  FC 00 08 1E */	fctiwz f0, f1
/* 80BFE7D4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80BFE7D8  82 A1 00 5C */	lwz r21, 0x5c(r1)
/* 80BFE7DC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BFE7E0  4B 66 91 AD */	bl cM_rndFX__Ff
/* 80BFE7E4  FC 00 08 1E */	fctiwz f0, f1
/* 80BFE7E8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80BFE7EC  82 81 00 54 */	lwz r20, 0x54(r1)
/* 80BFE7F0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BFE7F4  4B 66 91 99 */	bl cM_rndFX__Ff
/* 80BFE7F8  FC 00 08 1E */	fctiwz f0, f1
/* 80BFE7FC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80BFE800  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80BFE804  7F DC CA 14 */	add r30, r28, r25
/* 80BFE808  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 80BFE80C  B2 9E 06 8A */	sth r20, 0x68a(r30)
/* 80BFE810  B2 BE 06 8C */	sth r21, 0x68c(r30)
/* 80BFE814  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80BFE818  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BFE81C  EC 61 00 2A */	fadds f3, f1, f0
/* 80BFE820  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80BFE824  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BFE828  EC 41 00 2A */	fadds f2, f1, f0
/* 80BFE82C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80BFE830  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BFE834  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFE838  D0 13 05 B0 */	stfs f0, 0x5b0(r19)
/* 80BFE83C  D0 53 05 B4 */	stfs f2, 0x5b4(r19)
/* 80BFE840  D0 73 05 B8 */	stfs f3, 0x5b8(r19)
/* 80BFE844  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BFE848  4B 66 91 45 */	bl cM_rndFX__Ff
/* 80BFE84C  FC 00 08 1E */	fctiwz f0, f1
/* 80BFE850  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BFE854  80 81 00 44 */	lwz r4, 0x44(r1)
/* 80BFE858  38 61 00 14 */	addi r3, r1, 0x14
/* 80BFE85C  38 A0 00 00 */	li r5, 0
/* 80BFE860  38 C0 00 00 */	li r6, 0
/* 80BFE864  4B 66 8B 91 */	bl __ct__5csXyzFsss
/* 80BFE868  A8 01 00 14 */	lha r0, 0x14(r1)
/* 80BFE86C  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 80BFE870  A8 01 00 16 */	lha r0, 0x16(r1)
/* 80BFE874  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 80BFE878  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80BFE87C  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 80BFE880  3B BD 00 01 */	addi r29, r29, 1
/* 80BFE884  2C 1D 00 04 */	cmpwi r29, 4
/* 80BFE888  3B 39 00 06 */	addi r25, r25, 6
/* 80BFE88C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80BFE890  3B 7B 00 19 */	addi r27, r27, 0x19
/* 80BFE894  41 80 FE B0 */	blt lbl_80BFE744
/* 80BFE898  3A 80 00 00 */	li r20, 0
/* 80BFE89C  3B A0 00 00 */	li r29, 0
/* 80BFE8A0  3B 60 00 00 */	li r27, 0
/* 80BFE8A4  3B 40 00 00 */	li r26, 0
/* 80BFE8A8  3B 20 00 00 */	li r25, 0
/* 80BFE8AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFE8B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFE8B4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80BFE8B8  C3 DF 00 74 */	lfs f30, 0x74(r31)
lbl_80BFE8BC:
/* 80BFE8BC  7D 3C CA 14 */	add r9, r28, r25
/* 80BFE8C0  C0 09 05 B0 */	lfs f0, 0x5b0(r9)
/* 80BFE8C4  D0 09 05 E0 */	stfs f0, 0x5e0(r9)
/* 80BFE8C8  C0 09 05 B4 */	lfs f0, 0x5b4(r9)
/* 80BFE8CC  D0 09 05 E4 */	stfs f0, 0x5e4(r9)
/* 80BFE8D0  C0 09 05 B8 */	lfs f0, 0x5b8(r9)
/* 80BFE8D4  D0 09 05 E8 */	stfs f0, 0x5e8(r9)
/* 80BFE8D8  38 00 00 00 */	li r0, 0
/* 80BFE8DC  90 01 00 08 */	stw r0, 8(r1)
/* 80BFE8E0  3A 7A 08 3C */	addi r19, r26, 0x83c
/* 80BFE8E4  7E 7C 9A 14 */	add r19, r28, r19
/* 80BFE8E8  7E 63 9B 78 */	mr r3, r19
/* 80BFE8EC  38 89 05 B0 */	addi r4, r9, 0x5b0
/* 80BFE8F0  38 A9 05 E0 */	addi r5, r9, 0x5e0
/* 80BFE8F4  7F 86 E3 78 */	mr r6, r28
/* 80BFE8F8  38 E0 00 01 */	li r7, 1
/* 80BFE8FC  39 1B 07 3C */	addi r8, r27, 0x73c
/* 80BFE900  7D 1C 42 14 */	add r8, r28, r8
/* 80BFE904  39 29 06 58 */	addi r9, r9, 0x658
/* 80BFE908  39 40 00 00 */	li r10, 0
/* 80BFE90C  4B 47 79 3D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BFE910  7E 63 9B 78 */	mr r3, r19
/* 80BFE914  7F C4 F3 78 */	mr r4, r30
/* 80BFE918  4B 47 81 95 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BFE91C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BFE920  4B 66 90 35 */	bl cM_rndF__Ff
/* 80BFE924  EC 1E 08 2A */	fadds f0, f30, f1
/* 80BFE928  38 1D 06 D4 */	addi r0, r29, 0x6d4
/* 80BFE92C  7C 1C 05 2E */	stfsx f0, r28, r0
/* 80BFE930  3A 94 00 01 */	addi r20, r20, 1
/* 80BFE934  2C 14 00 04 */	cmpwi r20, 4
/* 80BFE938  3B BD 00 04 */	addi r29, r29, 4
/* 80BFE93C  3B 7B 00 40 */	addi r27, r27, 0x40
/* 80BFE940  3B 5A 01 D8 */	addi r26, r26, 0x1d8
/* 80BFE944  3B 39 00 0C */	addi r25, r25, 0xc
/* 80BFE948  41 80 FF 74 */	blt lbl_80BFE8BC
/* 80BFE94C  88 7C 05 A2 */	lbz r3, 0x5a2(r28)
/* 80BFE950  38 03 00 01 */	addi r0, r3, 1
/* 80BFE954  98 1C 05 A2 */	stb r0, 0x5a2(r28)
/* 80BFE958  88 7C 05 A1 */	lbz r3, 0x5a1(r28)
/* 80BFE95C  38 03 00 01 */	addi r0, r3, 1
/* 80BFE960  98 1C 05 A1 */	stb r0, 0x5a1(r28)
/* 80BFE964  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080288@ha */
/* 80BFE968  38 03 02 88 */	addi r0, r3, 0x0288 /* 0x00080288@l */
/* 80BFE96C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BFE970  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BFE974  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BFE978  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFE97C  38 81 00 10 */	addi r4, r1, 0x10
/* 80BFE980  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80BFE984  38 C0 00 00 */	li r6, 0
/* 80BFE988  38 E0 00 00 */	li r7, 0
/* 80BFE98C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80BFE990  FC 40 08 90 */	fmr f2, f1
/* 80BFE994  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80BFE998  FC 80 18 90 */	fmr f4, f3
/* 80BFE99C  39 00 00 00 */	li r8, 0
/* 80BFE9A0  4B 6A CF E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BFE9A4  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80BFE9A8  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80BFE9AC  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80BFE9B0  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80BFE9B4  28 03 00 00 */	cmplwi r3, 0
/* 80BFE9B8  41 82 00 1C */	beq lbl_80BFE9D4
/* 80BFE9BC  4B 66 98 19 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80BFE9C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BFE9C4  41 82 00 10 */	beq lbl_80BFE9D4
/* 80BFE9C8  7F C3 F3 78 */	mr r3, r30
/* 80BFE9CC  80 9C 05 68 */	lwz r4, 0x568(r28)
/* 80BFE9D0  4B 47 58 81 */	bl Release__4cBgSFP9dBgW_Base
lbl_80BFE9D4:
/* 80BFE9D4  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80BFE9D8  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80BFE9DC  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80BFE9E0  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80BFE9E4  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 80BFE9E8  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80BFE9EC  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 80BFE9F0  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 80BFE9F4  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 80BFE9F8  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 80BFE9FC  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 80BFEA00  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 80BFEA04  E3 21 00 A8 */	psq_l f25, 168(r1), 0, 0 /* qr0 */
/* 80BFEA08  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 80BFEA0C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BFEA10  4B 76 37 F1 */	bl _restgpr_19
/* 80BFEA14  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80BFEA18  7C 08 03 A6 */	mtlr r0
/* 80BFEA1C  38 21 01 10 */	addi r1, r1, 0x110
/* 80BFEA20  4E 80 00 20 */	blr 

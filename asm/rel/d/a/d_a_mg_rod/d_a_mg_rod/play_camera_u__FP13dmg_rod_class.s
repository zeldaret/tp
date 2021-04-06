lbl_804B805C:
/* 804B805C  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 804B8060  7C 08 02 A6 */	mflr r0
/* 804B8064  90 01 02 24 */	stw r0, 0x224(r1)
/* 804B8068  DB E1 02 10 */	stfd f31, 0x210(r1)
/* 804B806C  F3 E1 02 18 */	psq_st f31, 536(r1), 0, 0 /* qr0 */
/* 804B8070  39 61 02 10 */	addi r11, r1, 0x210
/* 804B8074  4B EA A1 51 */	bl _savegpr_23
/* 804B8078  7C 7B 1B 78 */	mr r27, r3
/* 804B807C  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804B8080  3B A3 B5 34 */	addi r29, r3, lit_3879@l /* 0x804BB534@l */
/* 804B8084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B8088  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B808C  83 5E 5D AC */	lwz r26, 0x5dac(r30)
/* 804B8090  80 1B 10 AC */	lwz r0, 0x10ac(r27)
/* 804B8094  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B8098  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804B809C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 804B80A0  38 81 00 10 */	addi r4, r1, 0x10
/* 804B80A4  4B B6 17 55 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804B80A8  7C 7F 1B 78 */	mr r31, r3
/* 804B80AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B80B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B80B4  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804B80B8  7C 00 07 74 */	extsb r0, r0
/* 804B80BC  3A E3 5D 74 */	addi r23, r3, 0x5d74
/* 804B80C0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804B80C4  7F 97 00 2E */	lwzx r28, r23, r0
/* 804B80C8  C0 1B 14 DC */	lfs f0, 0x14dc(r27)
/* 804B80CC  D0 1B 13 B0 */	stfs f0, 0x13b0(r27)
/* 804B80D0  C0 1B 14 D8 */	lfs f0, 0x14d8(r27)
/* 804B80D4  D0 1B 13 AC */	stfs f0, 0x13ac(r27)
/* 804B80D8  3B 20 00 00 */	li r25, 0
/* 804B80DC  3B 00 00 00 */	li r24, 0
/* 804B80E0  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B80E4  2C 00 00 0A */	cmpwi r0, 0xa
/* 804B80E8  41 82 07 98 */	beq lbl_804B8880
/* 804B80EC  40 80 00 44 */	bge lbl_804B8130
/* 804B80F0  2C 00 00 04 */	cmpwi r0, 4
/* 804B80F4  41 82 03 CC */	beq lbl_804B84C0
/* 804B80F8  40 80 00 20 */	bge lbl_804B8118
/* 804B80FC  2C 00 00 01 */	cmpwi r0, 1
/* 804B8100  41 82 00 74 */	beq lbl_804B8174
/* 804B8104  40 80 00 08 */	bge lbl_804B810C
/* 804B8108  48 00 0F C4 */	b lbl_804B90CC
lbl_804B810C:
/* 804B810C  2C 00 00 03 */	cmpwi r0, 3
/* 804B8110  40 80 02 60 */	bge lbl_804B8370
/* 804B8114  48 00 00 CC */	b lbl_804B81E0
lbl_804B8118:
/* 804B8118  2C 00 00 07 */	cmpwi r0, 7
/* 804B811C  41 82 05 40 */	beq lbl_804B865C
/* 804B8120  40 80 0F AC */	bge lbl_804B90CC
/* 804B8124  2C 00 00 06 */	cmpwi r0, 6
/* 804B8128  40 80 04 FC */	bge lbl_804B8624
/* 804B812C  48 00 03 E0 */	b lbl_804B850C
lbl_804B8130:
/* 804B8130  2C 00 00 5A */	cmpwi r0, 0x5a
/* 804B8134  41 82 0E B8 */	beq lbl_804B8FEC
/* 804B8138  40 80 00 24 */	bge lbl_804B815C
/* 804B813C  2C 00 00 14 */	cmpwi r0, 0x14
/* 804B8140  40 80 00 10 */	bge lbl_804B8150
/* 804B8144  2C 00 00 0C */	cmpwi r0, 0xc
/* 804B8148  40 80 0F 84 */	bge lbl_804B90CC
/* 804B814C  48 00 07 5C */	b lbl_804B88A8
lbl_804B8150:
/* 804B8150  2C 00 00 16 */	cmpwi r0, 0x16
/* 804B8154  40 80 0F 78 */	bge lbl_804B90CC
/* 804B8158  48 00 08 48 */	b lbl_804B89A0
lbl_804B815C:
/* 804B815C  2C 00 03 E9 */	cmpwi r0, 0x3e9
/* 804B8160  41 82 0F 04 */	beq lbl_804B9064
/* 804B8164  40 80 0F 68 */	bge lbl_804B90CC
/* 804B8168  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804B816C  40 80 0E 88 */	bge lbl_804B8FF4
/* 804B8170  48 00 0F 5C */	b lbl_804B90CC
lbl_804B8174:
/* 804B8174  38 00 00 02 */	li r0, 2
/* 804B8178  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B817C  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B8180  4B CA 93 51 */	bl Stop__9dCamera_cFv
/* 804B8184  38 00 00 00 */	li r0, 0
/* 804B8188  B0 1B 13 B6 */	sth r0, 0x13b6(r27)
/* 804B818C  4B D4 1F 65 */	bl dMw_offMenuRing__Fv
/* 804B8190  C0 1D 02 88 */	lfs f0, 0x288(r29)
/* 804B8194  D0 1B 14 08 */	stfs f0, 0x1408(r27)
/* 804B8198  82 F7 00 00 */	lwz r23, 0(r23)
/* 804B819C  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B81A0  38 80 00 01 */	li r4, 1
/* 804B81A4  4B CA AE 69 */	bl SetTrimSize__9dCamera_cFl
/* 804B81A8  C0 17 00 D8 */	lfs f0, 0xd8(r23)
/* 804B81AC  D0 1B 13 B8 */	stfs f0, 0x13b8(r27)
/* 804B81B0  C0 17 00 DC */	lfs f0, 0xdc(r23)
/* 804B81B4  D0 1B 13 BC */	stfs f0, 0x13bc(r27)
/* 804B81B8  C0 17 00 E0 */	lfs f0, 0xe0(r23)
/* 804B81BC  D0 1B 13 C0 */	stfs f0, 0x13c0(r27)
/* 804B81C0  C0 17 00 E4 */	lfs f0, 0xe4(r23)
/* 804B81C4  D0 1B 13 C4 */	stfs f0, 0x13c4(r27)
/* 804B81C8  C0 17 00 E8 */	lfs f0, 0xe8(r23)
/* 804B81CC  D0 1B 13 C8 */	stfs f0, 0x13c8(r27)
/* 804B81D0  C0 17 00 EC */	lfs f0, 0xec(r23)
/* 804B81D4  D0 1B 13 CC */	stfs f0, 0x13cc(r27)
/* 804B81D8  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 804B81DC  D0 1B 14 10 */	stfs f0, 0x1410(r27)
lbl_804B81E0:
/* 804B81E0  3B 00 00 01 */	li r24, 1
/* 804B81E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B81E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B81EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B81F0  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B81F4  4B B5 41 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B81F8  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B81FC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8200  C0 1D 02 C8 */	lfs f0, 0x2c8(r29)
/* 804B8204  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8208  C0 1D 02 CC */	lfs f0, 0x2cc(r29)
/* 804B820C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8210  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8214  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804B8218  4B DB 8C D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B821C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804B8220  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8224  7C 65 1B 78 */	mr r5, r3
/* 804B8228  4B E8 EE 69 */	bl PSVECAdd
/* 804B822C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B8230  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B8234  80 63 00 00 */	lwz r3, 0(r3)
/* 804B8238  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B823C  4B B5 41 A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B8240  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 804B8244  C0 1B 15 0C */	lfs f0, 0x150c(r27)
/* 804B8248  C0 5B 15 08 */	lfs f2, 0x1508(r27)
/* 804B824C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B8250  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B8254  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8258  C0 3D 01 C0 */	lfs f1, 0x1c0(r29)
/* 804B825C  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 804B8260  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B8264  EC 01 00 2A */	fadds f0, f1, f0
/* 804B8268  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B826C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8270  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8274  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8278  38 81 00 98 */	addi r4, r1, 0x98
/* 804B827C  4B DB 8C 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8280  38 61 00 98 */	addi r3, r1, 0x98
/* 804B8284  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8288  7C 65 1B 78 */	mr r5, r3
/* 804B828C  4B E8 EE 05 */	bl PSVECAdd
/* 804B8290  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8294  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8298  C0 3D 01 18 */	lfs f1, 0x118(r29)
/* 804B829C  C0 1B 15 08 */	lfs f0, 0x1508(r27)
/* 804B82A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B82A4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B82A8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B82AC  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B82B0  38 81 00 B0 */	addi r4, r1, 0xb0
/* 804B82B4  4B DB 8C 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B82B8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804B82BC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 804B82C0  7C 65 1B 78 */	mr r5, r3
/* 804B82C4  4B E8 ED CD */	bl PSVECAdd
/* 804B82C8  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B82CC  2C 00 00 0A */	cmpwi r0, 0xa
/* 804B82D0  40 80 00 0C */	bge lbl_804B82DC
/* 804B82D4  C3 FD 01 C0 */	lfs f31, 0x1c0(r29)
/* 804B82D8  48 00 00 08 */	b lbl_804B82E0
lbl_804B82DC:
/* 804B82DC  C3 FD 01 5C */	lfs f31, 0x15c(r29)
lbl_804B82E0:
/* 804B82E0  38 7B 13 B8 */	addi r3, r27, 0x13b8
/* 804B82E4  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 804B82E8  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B82EC  FC 60 F8 90 */	fmr f3, f31
/* 804B82F0  4B DB 77 4D */	bl cLib_addCalc2__FPffff
/* 804B82F4  38 7B 13 BC */	addi r3, r27, 0x13bc
/* 804B82F8  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 804B82FC  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8300  FC 60 F8 90 */	fmr f3, f31
/* 804B8304  4B DB 77 39 */	bl cLib_addCalc2__FPffff
/* 804B8308  38 7B 13 C0 */	addi r3, r27, 0x13c0
/* 804B830C  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 804B8310  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8314  FC 60 F8 90 */	fmr f3, f31
/* 804B8318  4B DB 77 25 */	bl cLib_addCalc2__FPffff
/* 804B831C  38 7B 13 C4 */	addi r3, r27, 0x13c4
/* 804B8320  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804B8324  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8328  FC 60 F8 90 */	fmr f3, f31
/* 804B832C  4B DB 77 11 */	bl cLib_addCalc2__FPffff
/* 804B8330  38 7B 13 C8 */	addi r3, r27, 0x13c8
/* 804B8334  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 804B8338  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B833C  FC 60 F8 90 */	fmr f3, f31
/* 804B8340  4B DB 76 FD */	bl cLib_addCalc2__FPffff
/* 804B8344  38 7B 13 CC */	addi r3, r27, 0x13cc
/* 804B8348  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 804B834C  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8350  FC 60 F8 90 */	fmr f3, f31
/* 804B8354  4B DB 76 E9 */	bl cLib_addCalc2__FPffff
/* 804B8358  38 7B 14 08 */	addi r3, r27, 0x1408
/* 804B835C  C0 3D 02 88 */	lfs f1, 0x288(r29)
/* 804B8360  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8364  C0 7D 00 B8 */	lfs f3, 0xb8(r29)
/* 804B8368  4B DB 76 D5 */	bl cLib_addCalc2__FPffff
/* 804B836C  48 00 0D 60 */	b lbl_804B90CC
lbl_804B8370:
/* 804B8370  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B8374  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B8378  80 63 00 00 */	lwz r3, 0(r3)
/* 804B837C  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B8380  4B B5 40 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 804B8384  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8388  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B838C  C0 1D 02 C8 */	lfs f0, 0x2c8(r29)
/* 804B8390  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8394  C0 1D 02 CC */	lfs f0, 0x2cc(r29)
/* 804B8398  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B839C  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B83A0  38 9B 13 D0 */	addi r4, r27, 0x13d0
/* 804B83A4  4B DB 8B 49 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B83A8  38 7B 13 D0 */	addi r3, r27, 0x13d0
/* 804B83AC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B83B0  7C 65 1B 78 */	mr r5, r3
/* 804B83B4  4B E8 EC DD */	bl PSVECAdd
/* 804B83B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B83BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B83C0  80 63 00 00 */	lwz r3, 0(r3)
/* 804B83C4  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B83C8  4B B5 40 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B83CC  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 804B83D0  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 804B83D4  C0 1D 02 C8 */	lfs f0, 0x2c8(r29)
/* 804B83D8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B83DC  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 804B83E0  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B83E4  38 9B 13 DC */	addi r4, r27, 0x13dc
/* 804B83E8  4B DB 8B 05 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B83EC  38 7B 13 DC */	addi r3, r27, 0x13dc
/* 804B83F0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B83F4  7C 65 1B 78 */	mr r5, r3
/* 804B83F8  4B E8 EC 99 */	bl PSVECAdd
/* 804B83FC  C0 3B 13 D0 */	lfs f1, 0x13d0(r27)
/* 804B8400  C0 1B 13 B8 */	lfs f0, 0x13b8(r27)
/* 804B8404  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8408  FC 00 02 10 */	fabs f0, f0
/* 804B840C  FC 00 00 18 */	frsp f0, f0
/* 804B8410  D0 1B 13 E8 */	stfs f0, 0x13e8(r27)
/* 804B8414  C0 3B 13 D4 */	lfs f1, 0x13d4(r27)
/* 804B8418  C0 1B 13 BC */	lfs f0, 0x13bc(r27)
/* 804B841C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8420  FC 00 02 10 */	fabs f0, f0
/* 804B8424  FC 00 00 18 */	frsp f0, f0
/* 804B8428  D0 1B 13 EC */	stfs f0, 0x13ec(r27)
/* 804B842C  C0 3B 13 D8 */	lfs f1, 0x13d8(r27)
/* 804B8430  C0 1B 13 C0 */	lfs f0, 0x13c0(r27)
/* 804B8434  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8438  FC 00 02 10 */	fabs f0, f0
/* 804B843C  FC 00 00 18 */	frsp f0, f0
/* 804B8440  D0 1B 13 F0 */	stfs f0, 0x13f0(r27)
/* 804B8444  C0 3B 13 DC */	lfs f1, 0x13dc(r27)
/* 804B8448  C0 1B 13 C4 */	lfs f0, 0x13c4(r27)
/* 804B844C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8450  FC 00 02 10 */	fabs f0, f0
/* 804B8454  FC 00 00 18 */	frsp f0, f0
/* 804B8458  D0 1B 13 F4 */	stfs f0, 0x13f4(r27)
/* 804B845C  C0 3B 13 E0 */	lfs f1, 0x13e0(r27)
/* 804B8460  C0 1B 13 C8 */	lfs f0, 0x13c8(r27)
/* 804B8464  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8468  FC 00 02 10 */	fabs f0, f0
/* 804B846C  FC 00 00 18 */	frsp f0, f0
/* 804B8470  D0 1B 13 F8 */	stfs f0, 0x13f8(r27)
/* 804B8474  C0 3B 13 E4 */	lfs f1, 0x13e4(r27)
/* 804B8478  C0 1B 13 CC */	lfs f0, 0x13cc(r27)
/* 804B847C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8480  FC 00 02 10 */	fabs f0, f0
/* 804B8484  FC 00 00 18 */	frsp f0, f0
/* 804B8488  D0 1B 13 FC */	stfs f0, 0x13fc(r27)
/* 804B848C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8490  D0 1B 14 10 */	stfs f0, 0x1410(r27)
/* 804B8494  38 00 00 04 */	li r0, 4
/* 804B8498  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B849C  38 80 00 00 */	li r4, 0
/* 804B84A0  B0 9B 13 B6 */	sth r4, 0x13b6(r27)
/* 804B84A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B84A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B84AC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B84B0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 804B84B4  28 00 00 A2 */	cmplwi r0, 0xa2
/* 804B84B8  40 82 00 08 */	bne lbl_804B84C0
/* 804B84BC  B0 83 30 0E */	sth r4, 0x300e(r3)
lbl_804B84C0:
/* 804B84C0  7F 63 DB 78 */	mr r3, r27
/* 804B84C4  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 804B84C8  4B FF D9 99 */	bl cam_3d_morf__FP13dmg_rod_classf
/* 804B84CC  38 7B 14 10 */	addi r3, r27, 0x1410
/* 804B84D0  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 804B84D4  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 804B84D8  C0 7D 00 CC */	lfs f3, 0xcc(r29)
/* 804B84DC  4B DB 75 61 */	bl cLib_addCalc2__FPffff
/* 804B84E0  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B84E4  2C 00 00 0A */	cmpwi r0, 0xa
/* 804B84E8  40 81 00 0C */	ble lbl_804B84F4
/* 804B84EC  38 00 00 02 */	li r0, 2
/* 804B84F0  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
lbl_804B84F4:
/* 804B84F4  38 7B 14 08 */	addi r3, r27, 0x1408
/* 804B84F8  C0 3D 02 88 */	lfs f1, 0x288(r29)
/* 804B84FC  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8500  C0 7D 00 B8 */	lfs f3, 0xb8(r29)
/* 804B8504  4B DB 75 39 */	bl cLib_addCalc2__FPffff
/* 804B8508  48 00 0B C4 */	b lbl_804B90CC
lbl_804B850C:
/* 804B850C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B8510  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B8514  80 63 00 00 */	lwz r3, 0(r3)
/* 804B8518  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B851C  4B B5 3E C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B8520  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8524  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8528  C0 1D 01 E0 */	lfs f0, 0x1e0(r29)
/* 804B852C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8530  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8534  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8538  38 9B 13 D0 */	addi r4, r27, 0x13d0
/* 804B853C  4B DB 89 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8540  38 7B 13 D0 */	addi r3, r27, 0x13d0
/* 804B8544  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8548  7C 65 1B 78 */	mr r5, r3
/* 804B854C  4B E8 EB 45 */	bl PSVECAdd
/* 804B8550  C0 1B 10 60 */	lfs f0, 0x1060(r27)
/* 804B8554  D0 1B 13 DC */	stfs f0, 0x13dc(r27)
/* 804B8558  C0 1B 10 64 */	lfs f0, 0x1064(r27)
/* 804B855C  D0 1B 13 E0 */	stfs f0, 0x13e0(r27)
/* 804B8560  C0 1B 10 68 */	lfs f0, 0x1068(r27)
/* 804B8564  D0 1B 13 E4 */	stfs f0, 0x13e4(r27)
/* 804B8568  C0 1B 13 E0 */	lfs f0, 0x13e0(r27)
/* 804B856C  C0 3B 05 90 */	lfs f1, 0x590(r27)
/* 804B8570  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B8574  40 80 00 08 */	bge lbl_804B857C
/* 804B8578  D0 3B 13 E0 */	stfs f1, 0x13e0(r27)
lbl_804B857C:
/* 804B857C  C0 3B 13 D0 */	lfs f1, 0x13d0(r27)
/* 804B8580  C0 1B 13 B8 */	lfs f0, 0x13b8(r27)
/* 804B8584  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8588  FC 00 02 10 */	fabs f0, f0
/* 804B858C  FC 00 00 18 */	frsp f0, f0
/* 804B8590  D0 1B 13 E8 */	stfs f0, 0x13e8(r27)
/* 804B8594  C0 3B 13 D4 */	lfs f1, 0x13d4(r27)
/* 804B8598  C0 1B 13 BC */	lfs f0, 0x13bc(r27)
/* 804B859C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B85A0  FC 00 02 10 */	fabs f0, f0
/* 804B85A4  FC 00 00 18 */	frsp f0, f0
/* 804B85A8  D0 1B 13 EC */	stfs f0, 0x13ec(r27)
/* 804B85AC  C0 3B 13 D8 */	lfs f1, 0x13d8(r27)
/* 804B85B0  C0 1B 13 C0 */	lfs f0, 0x13c0(r27)
/* 804B85B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B85B8  FC 00 02 10 */	fabs f0, f0
/* 804B85BC  FC 00 00 18 */	frsp f0, f0
/* 804B85C0  D0 1B 13 F0 */	stfs f0, 0x13f0(r27)
/* 804B85C4  C0 3B 13 DC */	lfs f1, 0x13dc(r27)
/* 804B85C8  C0 1B 13 C4 */	lfs f0, 0x13c4(r27)
/* 804B85CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B85D0  FC 00 02 10 */	fabs f0, f0
/* 804B85D4  FC 00 00 18 */	frsp f0, f0
/* 804B85D8  D0 1B 13 F4 */	stfs f0, 0x13f4(r27)
/* 804B85DC  C0 3B 13 E0 */	lfs f1, 0x13e0(r27)
/* 804B85E0  C0 1B 13 C8 */	lfs f0, 0x13c8(r27)
/* 804B85E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B85E8  FC 00 02 10 */	fabs f0, f0
/* 804B85EC  FC 00 00 18 */	frsp f0, f0
/* 804B85F0  D0 1B 13 F8 */	stfs f0, 0x13f8(r27)
/* 804B85F4  C0 3B 13 E4 */	lfs f1, 0x13e4(r27)
/* 804B85F8  C0 1B 13 CC */	lfs f0, 0x13cc(r27)
/* 804B85FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8600  FC 00 02 10 */	fabs f0, f0
/* 804B8604  FC 00 00 18 */	frsp f0, f0
/* 804B8608  D0 1B 13 FC */	stfs f0, 0x13fc(r27)
/* 804B860C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8610  D0 1B 14 10 */	stfs f0, 0x1410(r27)
/* 804B8614  38 00 00 06 */	li r0, 6
/* 804B8618  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B861C  38 00 00 00 */	li r0, 0
/* 804B8620  B0 1B 13 B6 */	sth r0, 0x13b6(r27)
lbl_804B8624:
/* 804B8624  7F 63 DB 78 */	mr r3, r27
/* 804B8628  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 804B862C  4B FF D8 35 */	bl cam_3d_morf__FP13dmg_rod_classf
/* 804B8630  38 7B 14 10 */	addi r3, r27, 0x1410
/* 804B8634  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 804B8638  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 804B863C  C0 7D 00 DC */	lfs f3, 0xdc(r29)
/* 804B8640  4B DB 73 FD */	bl cLib_addCalc2__FPffff
/* 804B8644  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B8648  2C 00 00 14 */	cmpwi r0, 0x14
/* 804B864C  40 81 00 9C */	ble lbl_804B86E8
/* 804B8650  38 00 00 07 */	li r0, 7
/* 804B8654  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B8658  48 00 00 90 */	b lbl_804B86E8
lbl_804B865C:
/* 804B865C  C0 1B 10 60 */	lfs f0, 0x1060(r27)
/* 804B8660  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804B8664  C0 3B 10 64 */	lfs f1, 0x1064(r27)
/* 804B8668  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 804B866C  C0 1B 10 68 */	lfs f0, 0x1068(r27)
/* 804B8670  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804B8674  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 804B8678  EC 01 00 2A */	fadds f0, f1, f0
/* 804B867C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804B8680  C0 3B 05 90 */	lfs f1, 0x590(r27)
/* 804B8684  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B8688  40 80 00 08 */	bge lbl_804B8690
/* 804B868C  D0 21 00 9C */	stfs f1, 0x9c(r1)
lbl_804B8690:
/* 804B8690  C0 61 00 9C */	lfs f3, 0x9c(r1)
/* 804B8694  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 804B8698  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 804B869C  C0 1B 10 64 */	lfs f0, 0x1064(r27)
/* 804B86A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B86A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B86A8  EC 03 00 2A */	fadds f0, f3, f0
/* 804B86AC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804B86B0  38 7B 13 C4 */	addi r3, r27, 0x13c4
/* 804B86B4  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804B86B8  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 804B86BC  4B DB 73 81 */	bl cLib_addCalc2__FPffff
/* 804B86C0  38 7B 13 C8 */	addi r3, r27, 0x13c8
/* 804B86C4  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 804B86C8  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 804B86CC  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 804B86D0  4B DB 73 6D */	bl cLib_addCalc2__FPffff
/* 804B86D4  38 7B 13 CC */	addi r3, r27, 0x13cc
/* 804B86D8  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 804B86DC  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 804B86E0  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 804B86E4  4B DB 73 59 */	bl cLib_addCalc2__FPffff
lbl_804B86E8:
/* 804B86E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B86EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B86F0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B86F4  C0 03 20 58 */	lfs f0, 0x2058(r3)
/* 804B86F8  FC 00 00 1E */	fctiwz f0, f0
/* 804B86FC  D8 01 01 E0 */	stfd f0, 0x1e0(r1)
/* 804B8700  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 804B8704  2C 00 00 00 */	cmpwi r0, 0
/* 804B8708  40 82 00 18 */	bne lbl_804B8720
/* 804B870C  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 804B8710  28 00 00 A2 */	cmplwi r0, 0xa2
/* 804B8714  40 82 00 0C */	bne lbl_804B8720
/* 804B8718  38 00 00 01 */	li r0, 1
/* 804B871C  B0 03 30 0E */	sth r0, 0x300e(r3)
lbl_804B8720:
/* 804B8720  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 804B8724  D0 1B 14 0C */	stfs f0, 0x140c(r27)
/* 804B8728  38 61 00 74 */	addi r3, r1, 0x74
/* 804B872C  38 9B 10 60 */	addi r4, r27, 0x1060
/* 804B8730  38 BB 13 B8 */	addi r5, r27, 0x13b8
/* 804B8734  4B DA E4 01 */	bl __mi__4cXyzCFRC3Vec
/* 804B8738  38 61 00 74 */	addi r3, r1, 0x74
/* 804B873C  4B E8 E9 FD */	bl PSVECSquareMag
/* 804B8740  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B8748  40 81 00 58 */	ble lbl_804B87A0
/* 804B874C  FC 00 08 34 */	frsqrte f0, f1
/* 804B8750  C8 9D 00 80 */	lfd f4, 0x80(r29)
/* 804B8754  FC 44 00 32 */	fmul f2, f4, f0
/* 804B8758  C8 7D 00 88 */	lfd f3, 0x88(r29)
/* 804B875C  FC 00 00 32 */	fmul f0, f0, f0
/* 804B8760  FC 01 00 32 */	fmul f0, f1, f0
/* 804B8764  FC 03 00 28 */	fsub f0, f3, f0
/* 804B8768  FC 02 00 32 */	fmul f0, f2, f0
/* 804B876C  FC 44 00 32 */	fmul f2, f4, f0
/* 804B8770  FC 00 00 32 */	fmul f0, f0, f0
/* 804B8774  FC 01 00 32 */	fmul f0, f1, f0
/* 804B8778  FC 03 00 28 */	fsub f0, f3, f0
/* 804B877C  FC 02 00 32 */	fmul f0, f2, f0
/* 804B8780  FC 44 00 32 */	fmul f2, f4, f0
/* 804B8784  FC 00 00 32 */	fmul f0, f0, f0
/* 804B8788  FC 01 00 32 */	fmul f0, f1, f0
/* 804B878C  FC 03 00 28 */	fsub f0, f3, f0
/* 804B8790  FC 02 00 32 */	fmul f0, f2, f0
/* 804B8794  FC 21 00 32 */	fmul f1, f1, f0
/* 804B8798  FC 20 08 18 */	frsp f1, f1
/* 804B879C  48 00 00 88 */	b lbl_804B8824
lbl_804B87A0:
/* 804B87A0  C8 1D 00 90 */	lfd f0, 0x90(r29)
/* 804B87A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B87A8  40 80 00 10 */	bge lbl_804B87B8
/* 804B87AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B87B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B87B4  48 00 00 70 */	b lbl_804B8824
lbl_804B87B8:
/* 804B87B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804B87BC  80 81 00 08 */	lwz r4, 8(r1)
/* 804B87C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B87C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B87C8  7C 03 00 00 */	cmpw r3, r0
/* 804B87CC  41 82 00 14 */	beq lbl_804B87E0
/* 804B87D0  40 80 00 40 */	bge lbl_804B8810
/* 804B87D4  2C 03 00 00 */	cmpwi r3, 0
/* 804B87D8  41 82 00 20 */	beq lbl_804B87F8
/* 804B87DC  48 00 00 34 */	b lbl_804B8810
lbl_804B87E0:
/* 804B87E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B87E4  41 82 00 0C */	beq lbl_804B87F0
/* 804B87E8  38 00 00 01 */	li r0, 1
/* 804B87EC  48 00 00 28 */	b lbl_804B8814
lbl_804B87F0:
/* 804B87F0  38 00 00 02 */	li r0, 2
/* 804B87F4  48 00 00 20 */	b lbl_804B8814
lbl_804B87F8:
/* 804B87F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B87FC  41 82 00 0C */	beq lbl_804B8808
/* 804B8800  38 00 00 05 */	li r0, 5
/* 804B8804  48 00 00 10 */	b lbl_804B8814
lbl_804B8808:
/* 804B8808  38 00 00 03 */	li r0, 3
/* 804B880C  48 00 00 08 */	b lbl_804B8814
lbl_804B8810:
/* 804B8810  38 00 00 04 */	li r0, 4
lbl_804B8814:
/* 804B8814  2C 00 00 01 */	cmpwi r0, 1
/* 804B8818  40 82 00 0C */	bne lbl_804B8824
/* 804B881C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B8820  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B8824:
/* 804B8824  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 804B8828  C0 7B 14 0C */	lfs f3, 0x140c(r27)
/* 804B882C  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 804B8830  FC 00 08 18 */	frsp f0, f1
/* 804B8834  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B8838  EC 03 00 28 */	fsubs f0, f3, f0
/* 804B883C  D0 1B 14 0C */	stfs f0, 0x140c(r27)
/* 804B8840  C0 3B 14 0C */	lfs f1, 0x140c(r27)
/* 804B8844  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 804B8848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B884C  40 81 00 0C */	ble lbl_804B8858
/* 804B8850  D0 1B 14 0C */	stfs f0, 0x140c(r27)
/* 804B8854  48 00 00 14 */	b lbl_804B8868
lbl_804B8858:
/* 804B8858  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 804B885C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B8860  40 80 00 08 */	bge lbl_804B8868
/* 804B8864  D0 1B 14 0C */	stfs f0, 0x140c(r27)
lbl_804B8868:
/* 804B8868  38 7B 14 08 */	addi r3, r27, 0x1408
/* 804B886C  C0 3B 14 0C */	lfs f1, 0x140c(r27)
/* 804B8870  C0 5D 00 C4 */	lfs f2, 0xc4(r29)
/* 804B8874  C0 7D 00 B8 */	lfs f3, 0xb8(r29)
/* 804B8878  4B DB 71 C5 */	bl cLib_addCalc2__FPffff
/* 804B887C  48 00 08 50 */	b lbl_804B90CC
lbl_804B8880:
/* 804B8880  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B8884  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 804B8888  28 00 00 A2 */	cmplwi r0, 0xa2
/* 804B888C  40 82 00 0C */	bne lbl_804B8898
/* 804B8890  38 00 00 01 */	li r0, 1
/* 804B8894  B0 03 30 0E */	sth r0, 0x300e(r3)
lbl_804B8898:
/* 804B8898  38 00 00 0B */	li r0, 0xb
/* 804B889C  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B88A0  38 00 00 00 */	li r0, 0
/* 804B88A4  B0 1B 13 B6 */	sth r0, 0x13b6(r27)
lbl_804B88A8:
/* 804B88A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B88AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B88B0  80 63 00 00 */	lwz r3, 0(r3)
/* 804B88B4  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B88B8  4B B5 3B 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B88BC  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 804B88C0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B88C4  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 804B88C8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B88CC  C0 1D 02 AC */	lfs f0, 0x2ac(r29)
/* 804B88D0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B88D4  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B88D8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804B88DC  4B DB 86 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B88E0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804B88E4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B88E8  7C 65 1B 78 */	mr r5, r3
/* 804B88EC  4B E8 E7 A5 */	bl PSVECAdd
/* 804B88F0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 804B88F4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804B88F8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 804B88FC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804B8900  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 804B8904  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804B8908  38 7B 13 B8 */	addi r3, r27, 0x13b8
/* 804B890C  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 804B8910  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8914  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 804B8918  4B DB 71 25 */	bl cLib_addCalc2__FPffff
/* 804B891C  38 7B 13 BC */	addi r3, r27, 0x13bc
/* 804B8920  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 804B8924  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8928  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 804B892C  4B DB 71 11 */	bl cLib_addCalc2__FPffff
/* 804B8930  38 7B 13 C0 */	addi r3, r27, 0x13c0
/* 804B8934  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 804B8938  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B893C  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 804B8940  4B DB 70 FD */	bl cLib_addCalc2__FPffff
/* 804B8944  38 7B 13 C4 */	addi r3, r27, 0x13c4
/* 804B8948  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804B894C  C0 5D 00 C4 */	lfs f2, 0xc4(r29)
/* 804B8950  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 804B8954  4B DB 70 E9 */	bl cLib_addCalc2__FPffff
/* 804B8958  38 7B 13 C8 */	addi r3, r27, 0x13c8
/* 804B895C  C0 3D 01 C0 */	lfs f1, 0x1c0(r29)
/* 804B8960  C0 1B 05 90 */	lfs f0, 0x590(r27)
/* 804B8964  EC 21 00 2A */	fadds f1, f1, f0
/* 804B8968  C0 5D 00 C4 */	lfs f2, 0xc4(r29)
/* 804B896C  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 804B8970  4B DB 70 CD */	bl cLib_addCalc2__FPffff
/* 804B8974  38 7B 13 CC */	addi r3, r27, 0x13cc
/* 804B8978  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 804B897C  C0 5D 00 C4 */	lfs f2, 0xc4(r29)
/* 804B8980  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 804B8984  4B DB 70 B9 */	bl cLib_addCalc2__FPffff
/* 804B8988  38 7B 14 08 */	addi r3, r27, 0x1408
/* 804B898C  C0 3D 02 88 */	lfs f1, 0x288(r29)
/* 804B8990  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 804B8994  C0 7D 01 5C */	lfs f3, 0x15c(r29)
/* 804B8998  4B DB 70 A5 */	bl cLib_addCalc2__FPffff
/* 804B899C  48 00 07 30 */	b lbl_804B90CC
lbl_804B89A0:
/* 804B89A0  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 804B89A4  28 00 00 02 */	cmplwi r0, 2
/* 804B89A8  41 82 00 2C */	beq lbl_804B89D4
/* 804B89AC  7F 63 DB 78 */	mr r3, r27
/* 804B89B0  38 80 00 02 */	li r4, 2
/* 804B89B4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804B89B8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804B89BC  38 C0 00 00 */	li r6, 0
/* 804B89C0  4B B6 2F 49 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804B89C4  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 804B89C8  60 00 00 02 */	ori r0, r0, 2
/* 804B89CC  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 804B89D0  48 00 09 28 */	b lbl_804B92F8
lbl_804B89D4:
/* 804B89D4  38 61 00 18 */	addi r3, r1, 0x18
/* 804B89D8  A8 9B 14 FC */	lha r4, 0x14fc(r27)
/* 804B89DC  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 804B89E0  38 C0 00 00 */	li r6, 0
/* 804B89E4  4B DA EA 11 */	bl __ct__5csXyzFsss
/* 804B89E8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 804B89EC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B89F0  38 A1 00 18 */	addi r5, r1, 0x18
/* 804B89F4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B89F8  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 804B89FC  7D 89 03 A6 */	mtctr r12
/* 804B8A00  4E 80 04 21 */	bctrl 
/* 804B8A04  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 804B8A08  D0 1B 0F 78 */	stfs f0, 0xf78(r27)
/* 804B8A0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B8A10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B8A14  80 63 00 00 */	lwz r3, 0(r3)
/* 804B8A18  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B8A1C  4B B5 39 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B8A20  C0 1D 02 D0 */	lfs f0, 0x2d0(r29)
/* 804B8A24  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8A28  C0 1D 02 98 */	lfs f0, 0x298(r29)
/* 804B8A2C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8A30  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8A34  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8A38  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804B8A3C  4B DB 84 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8A40  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804B8A44  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8A48  7C 65 1B 78 */	mr r5, r3
/* 804B8A4C  4B E8 E6 45 */	bl PSVECAdd
/* 804B8A50  38 7B 13 B8 */	addi r3, r27, 0x13b8
/* 804B8A54  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 804B8A58  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8A5C  C0 7D 00 C0 */	lfs f3, 0xc0(r29)
/* 804B8A60  C0 1B 14 10 */	lfs f0, 0x1410(r27)
/* 804B8A64  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B8A68  4B DB 6F D5 */	bl cLib_addCalc2__FPffff
/* 804B8A6C  38 7B 13 BC */	addi r3, r27, 0x13bc
/* 804B8A70  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 804B8A74  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8A78  C0 7D 00 C0 */	lfs f3, 0xc0(r29)
/* 804B8A7C  C0 1B 14 10 */	lfs f0, 0x1410(r27)
/* 804B8A80  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B8A84  4B DB 6F B9 */	bl cLib_addCalc2__FPffff
/* 804B8A88  38 7B 13 C0 */	addi r3, r27, 0x13c0
/* 804B8A8C  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 804B8A90  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8A94  C0 7D 00 C0 */	lfs f3, 0xc0(r29)
/* 804B8A98  C0 1B 14 10 */	lfs f0, 0x1410(r27)
/* 804B8A9C  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B8AA0  4B DB 6F 9D */	bl cLib_addCalc2__FPffff
/* 804B8AA4  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8AA8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8AAC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8AB0  C0 1D 02 C0 */	lfs f0, 0x2c0(r29)
/* 804B8AB4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8AB8  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8ABC  38 81 00 98 */	addi r4, r1, 0x98
/* 804B8AC0  4B DB 84 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8AC4  38 61 00 98 */	addi r3, r1, 0x98
/* 804B8AC8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804B8ACC  7C 65 1B 78 */	mr r5, r3
/* 804B8AD0  4B E8 E5 C1 */	bl PSVECAdd
/* 804B8AD4  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B8AD8  2C 00 00 14 */	cmpwi r0, 0x14
/* 804B8ADC  40 82 00 1C */	bne lbl_804B8AF8
/* 804B8AE0  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B8AE4  2C 00 00 01 */	cmpwi r0, 1
/* 804B8AE8  41 81 00 10 */	bgt lbl_804B8AF8
/* 804B8AEC  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B8AF0  38 80 00 01 */	li r4, 1
/* 804B8AF4  4B CA A5 19 */	bl SetTrimSize__9dCamera_cFl
lbl_804B8AF8:
/* 804B8AF8  38 7B 13 C4 */	addi r3, r27, 0x13c4
/* 804B8AFC  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804B8B00  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8B04  C0 7D 00 C0 */	lfs f3, 0xc0(r29)
/* 804B8B08  C0 1B 14 10 */	lfs f0, 0x1410(r27)
/* 804B8B0C  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B8B10  4B DB 6F 2D */	bl cLib_addCalc2__FPffff
/* 804B8B14  38 7B 13 C8 */	addi r3, r27, 0x13c8
/* 804B8B18  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 804B8B1C  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8B20  C0 7D 00 C0 */	lfs f3, 0xc0(r29)
/* 804B8B24  C0 1B 14 10 */	lfs f0, 0x1410(r27)
/* 804B8B28  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B8B2C  4B DB 6F 11 */	bl cLib_addCalc2__FPffff
/* 804B8B30  38 7B 13 CC */	addi r3, r27, 0x13cc
/* 804B8B34  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 804B8B38  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 804B8B3C  C0 7D 00 C0 */	lfs f3, 0xc0(r29)
/* 804B8B40  C0 1B 14 10 */	lfs f0, 0x1410(r27)
/* 804B8B44  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B8B48  4B DB 6E F5 */	bl cLib_addCalc2__FPffff
/* 804B8B4C  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B8B50  2C 00 00 05 */	cmpwi r0, 5
/* 804B8B54  40 81 00 2C */	ble lbl_804B8B80
/* 804B8B58  38 7B 14 10 */	addi r3, r27, 0x1410
/* 804B8B5C  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804B8B60  FC 40 08 90 */	fmr f2, f1
/* 804B8B64  C0 7D 00 CC */	lfs f3, 0xcc(r29)
/* 804B8B68  4B DB 6E D5 */	bl cLib_addCalc2__FPffff
/* 804B8B6C  38 7B 14 08 */	addi r3, r27, 0x1408
/* 804B8B70  C0 3D 02 88 */	lfs f1, 0x288(r29)
/* 804B8B74  C0 5D 00 C4 */	lfs f2, 0xc4(r29)
/* 804B8B78  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 804B8B7C  4B DB 6E C1 */	bl cLib_addCalc2__FPffff
lbl_804B8B80:
/* 804B8B80  3C 60 80 4C */	lis r3, henna@ha /* 0x804BBBD0@ha */
/* 804B8B84  80 03 BB D0 */	lwz r0, henna@l(r3)  /* 0x804BBBD0@l */
/* 804B8B88  28 00 00 00 */	cmplwi r0, 0
/* 804B8B8C  41 82 01 04 */	beq lbl_804B8C90
/* 804B8B90  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B8B94  2C 00 00 14 */	cmpwi r0, 0x14
/* 804B8B98  40 82 00 F8 */	bne lbl_804B8C90
/* 804B8B9C  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B8BA0  2C 00 00 05 */	cmpwi r0, 5
/* 804B8BA4  41 81 00 EC */	bgt lbl_804B8C90
/* 804B8BA8  38 61 01 8C */	addi r3, r1, 0x18c
/* 804B8BAC  4B BB E9 D1 */	bl __ct__11dBgS_GndChkFv
/* 804B8BB0  38 61 01 38 */	addi r3, r1, 0x138
/* 804B8BB4  4B BB EB FD */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 804B8BB8  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 804B8BBC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8BC0  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 804B8BC4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8BC8  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 804B8BCC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8BD0  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8BD4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 804B8BD8  4B DB 83 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8BDC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 804B8BE0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8BE4  7C 65 1B 78 */	mr r5, r3
/* 804B8BE8  4B E8 E4 A9 */	bl PSVECAdd
/* 804B8BEC  38 61 01 8C */	addi r3, r1, 0x18c
/* 804B8BF0  38 81 00 B0 */	addi r4, r1, 0xb0
/* 804B8BF4  4B DA F1 35 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804B8BF8  38 61 01 38 */	addi r3, r1, 0x138
/* 804B8BFC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 804B8C00  4B DA F1 29 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804B8C04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B8C08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B8C0C  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 804B8C10  7E E3 BB 78 */	mr r3, r23
/* 804B8C14  38 81 01 8C */	addi r4, r1, 0x18c
/* 804B8C18  4B BB B8 89 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804B8C1C  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 804B8C20  7E E3 BB 78 */	mr r3, r23
/* 804B8C24  38 81 01 38 */	addi r4, r1, 0x138
/* 804B8C28  4B BB B8 79 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804B8C2C  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 804B8C30  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804B8C34  40 81 00 44 */	ble lbl_804B8C78
/* 804B8C38  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 804B8C3C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804B8C40  FC 00 02 10 */	fabs f0, f0
/* 804B8C44  FC 20 00 18 */	frsp f1, f0
/* 804B8C48  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 804B8C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B8C50  40 80 00 28 */	bge lbl_804B8C78
/* 804B8C54  3C 60 80 4C */	lis r3, henna@ha /* 0x804BBBD0@ha */
/* 804B8C58  38 63 BB D0 */	addi r3, r3, henna@l /* 0x804BBBD0@l */
/* 804B8C5C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B8C60  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 804B8C64  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 804B8C68  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 804B8C6C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 804B8C70  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 804B8C74  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_804B8C78:
/* 804B8C78  38 61 01 38 */	addi r3, r1, 0x138
/* 804B8C7C  38 80 FF FF */	li r4, -1
/* 804B8C80  4B BB EB C9 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 804B8C84  38 61 01 8C */	addi r3, r1, 0x18c
/* 804B8C88  38 80 FF FF */	li r4, -1
/* 804B8C8C  4B BB E9 65 */	bl __dt__11dBgS_GndChkFv
lbl_804B8C90:
/* 804B8C90  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 804B8C94  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 804B8C98  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8C9C  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 804B8CA0  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B8CA4  2C 00 00 15 */	cmpwi r0, 0x15
/* 804B8CA8  40 82 00 54 */	bne lbl_804B8CFC
/* 804B8CAC  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B8CB0  2C 00 00 03 */	cmpwi r0, 3
/* 804B8CB4  40 82 00 48 */	bne lbl_804B8CFC
/* 804B8CB8  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 804B8CBC  28 00 00 0A */	cmplwi r0, 0xa
/* 804B8CC0  40 82 00 3C */	bne lbl_804B8CFC
/* 804B8CC4  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 804B8CC8  C0 1D 02 D4 */	lfs f0, 0x2d4(r29)
/* 804B8CCC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 804B8CD0  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 804B8CD4  C0 1D 02 D8 */	lfs f0, 0x2d8(r29)
/* 804B8CD8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 804B8CDC  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 804B8CE0  38 81 00 B0 */	addi r4, r1, 0xb0
/* 804B8CE4  38 A0 A1 B3 */	li r5, -24141
/* 804B8CE8  38 C0 00 00 */	li r6, 0
/* 804B8CEC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B8CF0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 804B8CF4  7D 89 03 A6 */	mtctr r12
/* 804B8CF8  4E 80 04 21 */	bctrl 
lbl_804B8CFC:
/* 804B8CFC  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B8D00  2C 00 00 15 */	cmpwi r0, 0x15
/* 804B8D04  40 82 03 C8 */	bne lbl_804B90CC
/* 804B8D08  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B8D0C  2C 00 00 04 */	cmpwi r0, 4
/* 804B8D10  40 82 03 BC */	bne lbl_804B90CC
/* 804B8D14  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B8D18  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B8D1C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B8D20  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B8D24  4B B5 36 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B8D28  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 804B8D2C  28 00 00 0A */	cmplwi r0, 0xa
/* 804B8D30  40 82 00 9C */	bne lbl_804B8DCC
/* 804B8D34  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 804B8D38  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8D3C  C0 1D 02 C8 */	lfs f0, 0x2c8(r29)
/* 804B8D40  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8D44  C0 1D 01 7C */	lfs f0, 0x17c(r29)
/* 804B8D48  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8D4C  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8D50  38 9B 13 B8 */	addi r4, r27, 0x13b8
/* 804B8D54  4B DB 81 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8D58  38 7B 13 B8 */	addi r3, r27, 0x13b8
/* 804B8D5C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8D60  7C 65 1B 78 */	mr r5, r3
/* 804B8D64  4B E8 E3 2D */	bl PSVECAdd
/* 804B8D68  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 804B8D6C  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 804B8D70  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 804B8D74  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8D78  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 804B8D7C  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8D80  38 9B 13 C4 */	addi r4, r27, 0x13c4
/* 804B8D84  4B DB 81 69 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8D88  38 7B 13 C4 */	addi r3, r27, 0x13c4
/* 804B8D8C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8D90  7C 65 1B 78 */	mr r5, r3
/* 804B8D94  4B E8 E2 FD */	bl PSVECAdd
/* 804B8D98  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8D9C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8DA0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8DA4  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 804B8DA8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8DAC  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8DB0  38 81 00 B0 */	addi r4, r1, 0xb0
/* 804B8DB4  4B DB 81 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8DB8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 804B8DBC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8DC0  7C 65 1B 78 */	mr r5, r3
/* 804B8DC4  4B E8 E2 CD */	bl PSVECAdd
/* 804B8DC8  48 00 00 68 */	b lbl_804B8E30
lbl_804B8DCC:
/* 804B8DCC  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8DD0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8DD4  C0 1D 02 C8 */	lfs f0, 0x2c8(r29)
/* 804B8DD8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8DDC  C0 1D 02 DC */	lfs f0, 0x2dc(r29)
/* 804B8DE0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8DE4  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8DE8  38 9B 13 B8 */	addi r4, r27, 0x13b8
/* 804B8DEC  4B DB 81 01 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8DF0  38 7B 13 B8 */	addi r3, r27, 0x13b8
/* 804B8DF4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8DF8  7C 65 1B 78 */	mr r5, r3
/* 804B8DFC  4B E8 E2 95 */	bl PSVECAdd
/* 804B8E00  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 804B8E04  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 804B8E08  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 804B8E0C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8E10  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 804B8E14  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8E18  38 9B 13 C4 */	addi r4, r27, 0x13c4
/* 804B8E1C  4B DB 80 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8E20  38 7B 13 C4 */	addi r3, r27, 0x13c4
/* 804B8E24  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8E28  7C 65 1B 78 */	mr r5, r3
/* 804B8E2C  4B E8 E2 65 */	bl PSVECAdd
lbl_804B8E30:
/* 804B8E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B8E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B8E38  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804B8E3C  4B B8 96 2D */	bl reset__14dEvt_control_cFv
/* 804B8E40  3B 20 00 01 */	li r25, 1
/* 804B8E44  88 1F 0C 3D */	lbz r0, 0xc3d(r31)
/* 804B8E48  28 00 00 00 */	cmplwi r0, 0
/* 804B8E4C  41 82 00 D8 */	beq lbl_804B8F24
/* 804B8E50  28 00 00 04 */	cmplwi r0, 4
/* 804B8E54  40 82 00 6C */	bne lbl_804B8EC0
/* 804B8E58  80 1F 0C 4C */	lwz r0, 0xc4c(r31)
/* 804B8E5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B8E60  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804B8E64  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 804B8E68  38 81 00 0C */	addi r4, r1, 0xc
/* 804B8E6C  4B B6 09 8D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804B8E70  38 80 00 00 */	li r4, 0
/* 804B8E74  98 83 0A 92 */	stb r4, 0xa92(r3)
/* 804B8E78  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804B8E7C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 804B8E80  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804B8E84  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 804B8E88  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804B8E8C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 804B8E90  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804B8E94  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 804B8E98  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 804B8E9C  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 804B8EA0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 804B8EA4  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 804B8EA8  38 00 00 03 */	li r0, 3
/* 804B8EAC  B0 03 06 6C */	sth r0, 0x66c(r3)
/* 804B8EB0  B0 83 06 6E */	sth r4, 0x66e(r3)
/* 804B8EB4  38 00 00 01 */	li r0, 1
/* 804B8EB8  98 03 05 67 */	stb r0, 0x567(r3)
/* 804B8EBC  48 00 00 38 */	b lbl_804B8EF4
lbl_804B8EC0:
/* 804B8EC0  28 00 00 05 */	cmplwi r0, 5
/* 804B8EC4  40 82 00 30 */	bne lbl_804B8EF4
/* 804B8EC8  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020084@ha */
/* 804B8ECC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00020084@l */
/* 804B8ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B8ED4  38 7F 08 00 */	addi r3, r31, 0x800
/* 804B8ED8  38 81 00 14 */	addi r4, r1, 0x14
/* 804B8EDC  38 A0 00 00 */	li r5, 0
/* 804B8EE0  38 C0 FF FF */	li r6, -1
/* 804B8EE4  81 9F 08 00 */	lwz r12, 0x800(r31)
/* 804B8EE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804B8EEC  7D 89 03 A6 */	mtctr r12
/* 804B8EF0  4E 80 04 21 */	bctrl 
lbl_804B8EF4:
/* 804B8EF4  38 00 00 00 */	li r0, 0
/* 804B8EF8  98 1F 0C 3D */	stb r0, 0xc3d(r31)
/* 804B8EFC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 804B8F00  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804B8F04  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 804B8F08  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804B8F0C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 804B8F10  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804B8F14  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 804B8F18  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 804B8F1C  98 1F 06 59 */	stb r0, 0x659(r31)
/* 804B8F20  48 00 00 88 */	b lbl_804B8FA8
lbl_804B8F24:
/* 804B8F24  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B8F28  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B8F2C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B8F30  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B8F34  4B B5 34 A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B8F38  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8F3C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B8F40  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 804B8F44  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B8F48  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B8F4C  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B8F50  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804B8F54  4B DB 7F 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B8F58  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804B8F5C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B8F60  7C 65 1B 78 */	mr r5, r3
/* 804B8F64  4B E8 E1 2D */	bl PSVECAdd
/* 804B8F68  38 00 00 35 */	li r0, 0x35
/* 804B8F6C  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 804B8F70  38 00 00 0A */	li r0, 0xa
/* 804B8F74  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 804B8F78  38 60 00 00 */	li r3, 0
/* 804B8F7C  98 7F 06 59 */	stb r3, 0x659(r31)
/* 804B8F80  B0 7F 06 26 */	sth r3, 0x626(r31)
/* 804B8F84  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 804B8F88  28 00 00 0A */	cmplwi r0, 0xa
/* 804B8F8C  40 82 00 10 */	bne lbl_804B8F9C
/* 804B8F90  38 00 01 2C */	li r0, 0x12c
/* 804B8F94  B0 1F 06 28 */	sth r0, 0x628(r31)
/* 804B8F98  48 00 00 08 */	b lbl_804B8FA0
lbl_804B8F9C:
/* 804B8F9C  B0 7F 06 28 */	sth r3, 0x628(r31)
lbl_804B8FA0:
/* 804B8FA0  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 804B8FA4  B0 1F 05 F6 */	sth r0, 0x5f6(r31)
lbl_804B8FA8:
/* 804B8FA8  38 80 00 00 */	li r4, 0
/* 804B8FAC  B0 9B 0F 7E */	sth r4, 0xf7e(r27)
/* 804B8FB0  98 9B 10 A5 */	stb r4, 0x10a5(r27)
/* 804B8FB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B8FB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B8FBC  80 A3 5D B4 */	lwz r5, 0x5db4(r3)
/* 804B8FC0  80 05 05 78 */	lwz r0, 0x578(r5)
/* 804B8FC4  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 804B8FC8  90 05 05 78 */	stw r0, 0x578(r5)
/* 804B8FCC  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B8FD0  D0 1B 10 94 */	stfs f0, 0x1094(r27)
/* 804B8FD4  D0 1B 06 E0 */	stfs f0, 0x6e0(r27)
/* 804B8FD8  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 804B8FDC  D0 1B 0F 64 */	stfs f0, 0xf64(r27)
/* 804B8FE0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B8FE4  98 83 2F C8 */	stb r4, 0x2fc8(r3)
/* 804B8FE8  48 00 00 E4 */	b lbl_804B90CC
lbl_804B8FEC:
/* 804B8FEC  3B 20 00 01 */	li r25, 1
/* 804B8FF0  48 00 00 DC */	b lbl_804B90CC
lbl_804B8FF4:
/* 804B8FF4  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 804B8FF8  28 00 00 02 */	cmplwi r0, 2
/* 804B8FFC  41 82 00 2C */	beq lbl_804B9028
/* 804B9000  7F 63 DB 78 */	mr r3, r27
/* 804B9004  38 80 00 02 */	li r4, 2
/* 804B9008  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804B900C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804B9010  38 C0 00 00 */	li r6, 0
/* 804B9014  4B B6 28 F5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804B9018  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 804B901C  60 00 00 02 */	ori r0, r0, 2
/* 804B9020  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 804B9024  48 00 02 D4 */	b lbl_804B92F8
lbl_804B9028:
/* 804B9028  38 00 03 E9 */	li r0, 0x3e9
/* 804B902C  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B9030  38 00 00 00 */	li r0, 0
/* 804B9034  B0 1B 13 B6 */	sth r0, 0x13b6(r27)
/* 804B9038  38 7B 14 74 */	addi r3, r27, 0x1474
/* 804B903C  7F 64 DB 78 */	mr r4, r27
/* 804B9040  38 A0 03 DA */	li r5, 0x3da
/* 804B9044  38 C0 00 00 */	li r6, 0
/* 804B9048  38 E0 00 00 */	li r7, 0
/* 804B904C  4B D9 0F 45 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B9050  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B9054  4B CA 84 7D */	bl Stop__9dCamera_cFv
/* 804B9058  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B905C  38 80 00 01 */	li r4, 1
/* 804B9060  4B CA 9F AD */	bl SetTrimSize__9dCamera_cFl
lbl_804B9064:
/* 804B9064  38 7B 14 74 */	addi r3, r27, 0x1474
/* 804B9068  7F 64 DB 78 */	mr r4, r27
/* 804B906C  38 A0 00 00 */	li r5, 0
/* 804B9070  38 C0 00 00 */	li r6, 0
/* 804B9074  4B D9 12 65 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B9078  2C 03 00 00 */	cmpwi r3, 0
/* 804B907C  41 82 00 50 */	beq lbl_804B90CC
/* 804B9080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B9084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B9088  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804B908C  4B B8 93 DD */	bl reset__14dEvt_control_cFv
/* 804B9090  38 00 00 00 */	li r0, 0
/* 804B9094  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B9098  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B909C  4B CA 84 11 */	bl Start__9dCamera_cFv
/* 804B90A0  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B90A4  38 80 00 00 */	li r4, 0
/* 804B90A8  4B CA 9F 65 */	bl SetTrimSize__9dCamera_cFl
/* 804B90AC  4B D7 F3 95 */	bl getSelectCursorPos__12dMsgObject_cFv
/* 804B90B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B90B4  41 82 00 18 */	beq lbl_804B90CC
/* 804B90B8  38 00 01 2C */	li r0, 0x12c
/* 804B90BC  3C 60 80 4C */	lis r3, henna@ha /* 0x804BBBD0@ha */
/* 804B90C0  38 63 BB D0 */	addi r3, r3, henna@l /* 0x804BBBD0@l */
/* 804B90C4  80 63 00 00 */	lwz r3, 0(r3)
/* 804B90C8  B0 03 07 52 */	sth r0, 0x752(r3)
lbl_804B90CC:
/* 804B90CC  2C 19 00 00 */	cmpwi r25, 0
/* 804B90D0  41 82 00 DC */	beq lbl_804B91AC
/* 804B90D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804B90D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804B90DC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B90E0  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 804B90E4  4B B5 32 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804B90E8  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B90EC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804B90F0  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 804B90F4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804B90F8  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 804B90FC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804B9100  38 61 00 BC */	addi r3, r1, 0xbc
/* 804B9104  38 9B 13 B8 */	addi r4, r27, 0x13b8
/* 804B9108  4B DB 7D E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B910C  38 7B 13 B8 */	addi r3, r27, 0x13b8
/* 804B9110  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B9114  7C 65 1B 78 */	mr r5, r3
/* 804B9118  4B E8 DF 79 */	bl PSVECAdd
/* 804B911C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 804B9120  D0 1B 13 C4 */	stfs f0, 0x13c4(r27)
/* 804B9124  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 804B9128  D0 1B 13 C8 */	stfs f0, 0x13c8(r27)
/* 804B912C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 804B9130  D0 1B 13 CC */	stfs f0, 0x13cc(r27)
/* 804B9134  C0 3B 13 C8 */	lfs f1, 0x13c8(r27)
/* 804B9138  C0 1D 02 90 */	lfs f0, 0x290(r29)
/* 804B913C  EC 01 00 2A */	fadds f0, f1, f0
/* 804B9140  D0 1B 13 C8 */	stfs f0, 0x13c8(r27)
/* 804B9144  38 00 00 00 */	li r0, 0
/* 804B9148  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B914C  C0 1B 13 C4 */	lfs f0, 0x13c4(r27)
/* 804B9150  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804B9154  C0 1B 13 C8 */	lfs f0, 0x13c8(r27)
/* 804B9158  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804B915C  C0 1B 13 CC */	lfs f0, 0x13cc(r27)
/* 804B9160  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804B9164  C0 1B 13 B8 */	lfs f0, 0x13b8(r27)
/* 804B9168  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804B916C  C0 1B 13 BC */	lfs f0, 0x13bc(r27)
/* 804B9170  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804B9174  C0 1B 13 C0 */	lfs f0, 0x13c0(r27)
/* 804B9178  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804B917C  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B9180  38 81 00 68 */	addi r4, r1, 0x68
/* 804B9184  38 A1 00 5C */	addi r5, r1, 0x5c
/* 804B9188  C0 3B 14 08 */	lfs f1, 0x1408(r27)
/* 804B918C  38 C0 00 00 */	li r6, 0
/* 804B9190  4B CC 7A 11 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 804B9194  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B9198  4B CA 83 15 */	bl Start__9dCamera_cFv
/* 804B919C  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B91A0  38 80 00 00 */	li r4, 0
/* 804B91A4  4B CA 9E 69 */	bl SetTrimSize__9dCamera_cFl
/* 804B91A8  4B D4 0F 25 */	bl dMw_onMenuRing__Fv
lbl_804B91AC:
/* 804B91AC  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B91B0  2C 00 00 00 */	cmpwi r0, 0
/* 804B91B4  41 82 01 44 */	beq lbl_804B92F8
/* 804B91B8  A8 7B 13 B6 */	lha r3, 0x13b6(r27)
/* 804B91BC  38 03 00 01 */	addi r0, r3, 1
/* 804B91C0  B0 1B 13 B6 */	sth r0, 0x13b6(r27)
/* 804B91C4  A8 1B 13 B6 */	lha r0, 0x13b6(r27)
/* 804B91C8  2C 00 27 10 */	cmpwi r0, 0x2710
/* 804B91CC  40 81 00 0C */	ble lbl_804B91D8
/* 804B91D0  38 00 27 10 */	li r0, 0x2710
/* 804B91D4  B0 1B 13 B6 */	sth r0, 0x13b6(r27)
lbl_804B91D8:
/* 804B91D8  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B91DC  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804B91E0  40 80 01 18 */	bge lbl_804B92F8
/* 804B91E4  C0 1B 13 C4 */	lfs f0, 0x13c4(r27)
/* 804B91E8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804B91EC  C0 1B 13 C8 */	lfs f0, 0x13c8(r27)
/* 804B91F0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804B91F4  C0 1B 13 CC */	lfs f0, 0x13cc(r27)
/* 804B91F8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804B91FC  C0 1B 13 B8 */	lfs f0, 0x13b8(r27)
/* 804B9200  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804B9204  C0 1B 13 BC */	lfs f0, 0x13bc(r27)
/* 804B9208  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804B920C  C0 1B 13 C0 */	lfs f0, 0x13c0(r27)
/* 804B9210  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804B9214  2C 18 00 00 */	cmpwi r24, 0
/* 804B9218  41 82 00 98 */	beq lbl_804B92B0
/* 804B921C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804B9220  4B BB EA 49 */	bl __ct__11dBgS_LinChkFv
/* 804B9224  38 61 01 20 */	addi r3, r1, 0x120
/* 804B9228  4B BB FC B9 */	bl SetRope__16dBgS_PolyPassChkFv
/* 804B922C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804B9230  38 9B 13 C4 */	addi r4, r27, 0x13c4
/* 804B9234  38 BB 13 B8 */	addi r5, r27, 0x13b8
/* 804B9238  7F 66 DB 78 */	mr r6, r27
/* 804B923C  4B BB EB 29 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804B9240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B9244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B9248  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804B924C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 804B9250  4B BB B1 65 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804B9254  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B9258  41 82 00 4C */	beq lbl_804B92A4
/* 804B925C  38 61 00 50 */	addi r3, r1, 0x50
/* 804B9260  38 81 00 8C */	addi r4, r1, 0x8c
/* 804B9264  38 A1 00 80 */	addi r5, r1, 0x80
/* 804B9268  4B DA D8 CD */	bl __mi__4cXyzCFRC3Vec
/* 804B926C  38 61 00 44 */	addi r3, r1, 0x44
/* 804B9270  38 81 00 50 */	addi r4, r1, 0x50
/* 804B9274  C0 3D 02 44 */	lfs f1, 0x244(r29)
/* 804B9278  4B DA D9 0D */	bl __ml__4cXyzCFf
/* 804B927C  38 61 00 38 */	addi r3, r1, 0x38
/* 804B9280  38 81 00 F8 */	addi r4, r1, 0xf8
/* 804B9284  38 A1 00 44 */	addi r5, r1, 0x44
/* 804B9288  4B DA D8 5D */	bl __pl__4cXyzCFRC3Vec
/* 804B928C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804B9290  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804B9294  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804B9298  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804B929C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804B92A0  D0 01 00 88 */	stfs f0, 0x88(r1)
lbl_804B92A4:
/* 804B92A4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804B92A8  38 80 FF FF */	li r4, -1
/* 804B92AC  4B BB EA 31 */	bl __dt__11dBgS_LinChkFv
lbl_804B92B0:
/* 804B92B0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 804B92B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804B92B8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 804B92BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804B92C0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 804B92C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B92C8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 804B92CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804B92D0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804B92D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B92D8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 804B92DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B92E0  38 7C 02 48 */	addi r3, r28, 0x248
/* 804B92E4  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B92E8  38 A1 00 20 */	addi r5, r1, 0x20
/* 804B92EC  C0 3B 14 08 */	lfs f1, 0x1408(r27)
/* 804B92F0  38 C0 00 00 */	li r6, 0
/* 804B92F4  4B CC 77 ED */	bl Set__9dCamera_cF4cXyz4cXyzfs
lbl_804B92F8:
/* 804B92F8  E3 E1 02 18 */	psq_l f31, 536(r1), 0, 0 /* qr0 */
/* 804B92FC  CB E1 02 10 */	lfd f31, 0x210(r1)
/* 804B9300  39 61 02 10 */	addi r11, r1, 0x210
/* 804B9304  4B EA 8F 0D */	bl _restgpr_23
/* 804B9308  80 01 02 24 */	lwz r0, 0x224(r1)
/* 804B930C  7C 08 03 A6 */	mtlr r0
/* 804B9310  38 21 02 20 */	addi r1, r1, 0x220
/* 804B9314  4E 80 00 20 */	blr 

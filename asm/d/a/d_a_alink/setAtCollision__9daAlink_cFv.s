lbl_800AAABC:
/* 800AAABC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 800AAAC0  7C 08 02 A6 */	mflr r0
/* 800AAAC4  90 01 01 24 */	stw r0, 0x124(r1)
/* 800AAAC8  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 800AAACC  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 800AAAD0  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 800AAAD4  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 800AAAD8  39 61 01 00 */	addi r11, r1, 0x100
/* 800AAADC  48 2B 77 01 */	bl _savegpr_29
/* 800AAAE0  7C 7E 1B 78 */	mr r30, r3
/* 800AAAE4  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800AAAE8  3B E3 D6 58 */	addi r31, r3, lit_3757@l /* 0x8038D658@l */
/* 800AAAEC  88 0D 8A 51 */	lbz r0, struct_80450FD0+0x1(r13)
/* 800AAAF0  7C 00 07 75 */	extsb. r0, r0
/* 800AAAF4  40 82 00 1C */	bne lbl_800AAB10
/* 800AAAF8  C0 02 93 D4 */	lfs f0, lit_11442(r2)
/* 800AAAFC  3C 60 80 3B */	lis r3, rodTopOffset@ha /* 0x803B2D88@ha */
/* 800AAB00  38 63 2D 88 */	addi r3, r3, rodTopOffset@l /* 0x803B2D88@l */
/* 800AAB04  D0 03 00 04 */	stfs f0, 4(r3)
/* 800AAB08  38 00 00 01 */	li r0, 1
/* 800AAB0C  98 0D 8A 51 */	stb r0, struct_80450FD0+0x1(r13)
lbl_800AAB10:
/* 800AAB10  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800AAB14  28 00 00 65 */	cmplwi r0, 0x65
/* 800AAB18  40 82 00 AC */	bne lbl_800AABC4
/* 800AAB1C  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800AAB20  2C 00 00 00 */	cmpwi r0, 0
/* 800AAB24  41 82 00 94 */	beq lbl_800AABB8
/* 800AAB28  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 800AAB2C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800AAB30  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 800AAB34  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800AAB38  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 800AAB3C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800AAB40  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 800AAB44  38 7E 13 50 */	addi r3, r30, 0x1350
/* 800AAB48  38 81 00 CC */	addi r4, r1, 0xcc
/* 800AAB4C  38 BE 37 20 */	addi r5, r30, 0x3720
/* 800AAB50  48 1C 47 99 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800AAB54  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800AAB58  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800AAB5C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800AAB60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800AAB64  7C 64 02 14 */	add r3, r4, r0
/* 800AAB68  C0 63 00 04 */	lfs f3, 4(r3)
/* 800AAB6C  7C 04 04 2E */	lfsx f0, r4, r0
/* 800AAB70  C0 42 93 3C */	lfs f2, lit_7808(r2)
/* 800AAB74  EC 22 00 32 */	fmuls f1, f2, f0
/* 800AAB78  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 800AAB7C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AAB80  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 800AAB84  EC 02 00 F2 */	fmuls f0, f2, f3
/* 800AAB88  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 800AAB8C  D0 3E 12 B0 */	stfs f1, 0x12b0(r30)
/* 800AAB90  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800AAB94  D0 1E 12 B4 */	stfs f0, 0x12b4(r30)
/* 800AAB98  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 800AAB9C  D0 1E 12 B8 */	stfs f0, 0x12b8(r30)
/* 800AABA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AABA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AABA8  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AABAC  38 9E 12 2C */	addi r4, r30, 0x122c
/* 800AABB0  48 1B 9F F9 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AABB4  48 00 08 B0 */	b lbl_800AB464
lbl_800AABB8:
/* 800AABB8  38 7E 12 2C */	addi r3, r30, 0x122c
/* 800AABBC  4B FD 97 5D */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AABC0  48 00 08 A4 */	b lbl_800AB464
lbl_800AABC4:
/* 800AABC4  28 00 00 63 */	cmplwi r0, 0x63
/* 800AABC8  40 82 01 00 */	bne lbl_800AACC8
/* 800AABCC  7F C3 F3 78 */	mr r3, r30
/* 800AABD0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800AABD4  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 800AABD8  7D 89 03 A6 */	mtctr r12
/* 800AABDC  4E 80 04 21 */	bctrl 
/* 800AABE0  2C 03 00 00 */	cmpwi r3, 0
/* 800AABE4  41 82 00 E4 */	beq lbl_800AACC8
/* 800AABE8  38 7E 38 34 */	addi r3, r30, 0x3834
/* 800AABEC  4B F6 21 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800AABF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AABF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AABF8  A8 9E 05 9C */	lha r4, 0x59c(r30)
/* 800AABFC  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 800AAC00  A8 1E 05 9E */	lha r0, 0x59e(r30)
/* 800AAC04  7C 05 02 14 */	add r0, r5, r0
/* 800AAC08  7C 05 07 34 */	extsh r5, r0
/* 800AAC0C  38 C0 00 00 */	li r6, 0
/* 800AAC10  4B F6 16 91 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800AAC14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AAC18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AAC1C  3C 80 80 3B */	lis r4, rodTopOffset@ha /* 0x803B2D88@ha */
/* 800AAC20  38 84 2D 88 */	addi r4, r4, rodTopOffset@l /* 0x803B2D88@l */
/* 800AAC24  38 A1 00 CC */	addi r5, r1, 0xcc
/* 800AAC28  48 29 C1 45 */	bl PSMTXMultVec
/* 800AAC2C  7F C3 F3 78 */	mr r3, r30
/* 800AAC30  48 03 67 01 */	bl getCopyRodBallDisMax__9daAlink_cCFv
/* 800AAC34  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800AAC38  EC 21 00 2A */	fadds f1, f1, f0
/* 800AAC3C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AAC40  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800AAC44  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800AAC48  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 800AAC4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AAC50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AAC54  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800AAC58  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 800AAC5C  48 29 C1 F1 */	bl PSMTXMultVecSR
/* 800AAC60  38 61 00 9C */	addi r3, r1, 0x9c
/* 800AAC64  38 81 00 CC */	addi r4, r1, 0xcc
/* 800AAC68  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 800AAC6C  48 1B BE 79 */	bl __pl__4cXyzCFRC3Vec
/* 800AAC70  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 800AAC74  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800AAC78  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 800AAC7C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 800AAC80  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 800AAC84  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 800AAC88  38 7E 13 50 */	addi r3, r30, 0x1350
/* 800AAC8C  38 81 00 CC */	addi r4, r1, 0xcc
/* 800AAC90  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 800AAC94  48 1C 46 55 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800AAC98  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 800AAC9C  D0 1E 12 B0 */	stfs f0, 0x12b0(r30)
/* 800AACA0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800AACA4  D0 1E 12 B4 */	stfs f0, 0x12b4(r30)
/* 800AACA8  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 800AACAC  D0 1E 12 B8 */	stfs f0, 0x12b8(r30)
/* 800AACB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AACB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AACB8  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AACBC  38 9E 12 2C */	addi r4, r30, 0x122c
/* 800AACC0  48 1B 9E E9 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AACC4  48 00 07 A0 */	b lbl_800AB464
lbl_800AACC8:
/* 800AACC8  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800AACCC  28 00 00 B4 */	cmplwi r0, 0xb4
/* 800AACD0  40 82 00 84 */	bne lbl_800AAD54
/* 800AACD4  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800AACD8  28 00 00 67 */	cmplwi r0, 0x67
/* 800AACDC  40 82 00 6C */	bne lbl_800AAD48
/* 800AACE0  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800AACE4  2C 00 00 00 */	cmpwi r0, 0
/* 800AACE8  41 82 00 60 */	beq lbl_800AAD48
/* 800AACEC  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 800AACF0  38 63 00 24 */	addi r3, r3, 0x24
/* 800AACF4  38 9F 49 D0 */	addi r4, r31, 0x49d0
/* 800AACF8  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 800AACFC  48 29 C0 71 */	bl PSMTXMultVec
/* 800AAD00  C0 1E 27 D0 */	lfs f0, 0x27d0(r30)
/* 800AAD04  C0 21 00 DC */	lfs f1, 0xdc(r1)
/* 800AAD08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800AAD0C  40 80 07 58 */	bge lbl_800AB464
/* 800AAD10  38 7E 12 14 */	addi r3, r30, 0x1214
/* 800AAD14  EC 21 00 28 */	fsubs f1, f1, f0
/* 800AAD18  48 1C 44 E1 */	bl SetH__8cM3dGCylFf
/* 800AAD1C  C0 1E 27 D0 */	lfs f0, 0x27d0(r30)
/* 800AAD20  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800AAD24  38 7E 12 14 */	addi r3, r30, 0x1214
/* 800AAD28  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800AAD2C  48 1C 44 B1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 800AAD30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AAD34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AAD38  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AAD3C  38 9E 10 F0 */	addi r4, r30, 0x10f0
/* 800AAD40  48 1B 9E 69 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AAD44  48 00 07 20 */	b lbl_800AB464
lbl_800AAD48:
/* 800AAD48  38 7E 10 F0 */	addi r3, r30, 0x10f0
/* 800AAD4C  4B FD 95 CD */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AAD50  48 00 07 14 */	b lbl_800AB464
lbl_800AAD54:
/* 800AAD54  28 00 00 1E */	cmplwi r0, 0x1e
/* 800AAD58  40 82 01 68 */	bne lbl_800AAEC0
/* 800AAD5C  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800AAD60  2C 00 00 00 */	cmpwi r0, 0
/* 800AAD64  41 82 01 50 */	beq lbl_800AAEB4
/* 800AAD68  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AAD6C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800AAD70  41 82 00 28 */	beq lbl_800AAD98
/* 800AAD74  38 7E 2C 48 */	addi r3, r30, 0x2c48
/* 800AAD78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AAD7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AAD80  48 29 B7 31 */	bl PSMTXCopy
/* 800AAD84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AAD88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AAD8C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800AAD90  4B F6 16 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 800AAD94  48 00 00 14 */	b lbl_800AADA8
lbl_800AAD98:
/* 800AAD98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AAD9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AADA0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800AADA4  4B F6 16 39 */	bl mDoMtx_YrotS__FPA4_fs
lbl_800AADA8:
/* 800AADA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AADAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AADB0  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 800AADB4  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 800AADB8  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 800AADBC  48 29 C0 91 */	bl PSMTXMultVecSR
/* 800AADC0  38 61 00 90 */	addi r3, r1, 0x90
/* 800AADC4  38 81 00 B4 */	addi r4, r1, 0xb4
/* 800AADC8  38 BF 09 44 */	addi r5, r31, 0x944
/* 800AADCC  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800AADD0  48 1B BD B5 */	bl __ml__4cXyzCFf
/* 800AADD4  38 61 00 84 */	addi r3, r1, 0x84
/* 800AADD8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800AADDC  38 A1 00 90 */	addi r5, r1, 0x90
/* 800AADE0  48 1B BD 05 */	bl __pl__4cXyzCFRC3Vec
/* 800AADE4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 800AADE8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 800AADEC  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 800AADF0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 800AADF4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800AADF8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 800AADFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AAE00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AAE04  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 800AAE08  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 800AAE0C  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 800AAE10  48 29 C0 3D */	bl PSMTXMultVecSR
/* 800AAE14  38 61 00 78 */	addi r3, r1, 0x78
/* 800AAE18  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800AAE1C  C0 22 93 04 */	lfs f1, lit_6896(r2)
/* 800AAE20  48 1B BD 65 */	bl __ml__4cXyzCFf
/* 800AAE24  38 61 00 6C */	addi r3, r1, 0x6c
/* 800AAE28  38 81 00 CC */	addi r4, r1, 0xcc
/* 800AAE2C  38 A1 00 78 */	addi r5, r1, 0x78
/* 800AAE30  48 1B BC B5 */	bl __pl__4cXyzCFRC3Vec
/* 800AAE34  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800AAE38  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800AAE3C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800AAE40  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 800AAE44  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800AAE48  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 800AAE4C  38 7E 17 1C */	addi r3, r30, 0x171c
/* 800AAE50  38 81 00 CC */	addi r4, r1, 0xcc
/* 800AAE54  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 800AAE58  48 1C 44 91 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800AAE5C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 800AAE60  7C 64 1B 78 */	mr r4, r3
/* 800AAE64  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800AAE68  48 29 C2 71 */	bl PSVECScale
/* 800AAE6C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 800AAE70  D0 1E 16 7C */	stfs f0, 0x167c(r30)
/* 800AAE74  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800AAE78  D0 1E 16 80 */	stfs f0, 0x1680(r30)
/* 800AAE7C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 800AAE80  D0 1E 16 84 */	stfs f0, 0x1684(r30)
/* 800AAE84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AAE88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AAE8C  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AAE90  38 9E 15 F8 */	addi r4, r30, 0x15f8
/* 800AAE94  48 1B 9D 15 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AAE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AAE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AAEA0  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 800AAEA4  38 9E 15 F8 */	addi r4, r30, 0x15f8
/* 800AAEA8  38 A0 00 01 */	li r5, 1
/* 800AAEAC  4B FD AE ED */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AAEB0  48 00 05 B4 */	b lbl_800AB464
lbl_800AAEB4:
/* 800AAEB4  38 7E 15 F8 */	addi r3, r30, 0x15f8
/* 800AAEB8  4B FD 94 61 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AAEBC  48 00 05 A8 */	b lbl_800AB464
lbl_800AAEC0:
/* 800AAEC0  28 00 00 0E */	cmplwi r0, 0xe
/* 800AAEC4  40 82 00 E8 */	bne lbl_800AAFAC
/* 800AAEC8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AAECC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800AAED0  41 82 00 D0 */	beq lbl_800AAFA0
/* 800AAED4  C0 3E 1F E0 */	lfs f1, 0x1fe0(r30)
/* 800AAED8  38 7F 01 64 */	addi r3, r31, 0x164
/* 800AAEDC  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 800AAEE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AAEE4  4C 41 13 82 */	cror 2, 1, 2
/* 800AAEE8  40 82 00 B8 */	bne lbl_800AAFA0
/* 800AAEEC  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 800AAEF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AAEF4  40 80 00 AC */	bge lbl_800AAFA0
/* 800AAEF8  38 61 00 60 */	addi r3, r1, 0x60
/* 800AAEFC  38 9E 05 E0 */	addi r4, r30, 0x5e0
/* 800AAF00  38 BE 05 EC */	addi r5, r30, 0x5ec
/* 800AAF04  48 1B BB E1 */	bl __pl__4cXyzCFRC3Vec
/* 800AAF08  38 61 00 54 */	addi r3, r1, 0x54
/* 800AAF0C  38 81 00 60 */	addi r4, r1, 0x60
/* 800AAF10  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800AAF14  48 1B BC 71 */	bl __ml__4cXyzCFf
/* 800AAF18  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800AAF1C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 800AAF20  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800AAF24  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 800AAF28  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800AAF2C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 800AAF30  38 7E 10 DC */	addi r3, r30, 0x10dc
/* 800AAF34  38 81 00 A8 */	addi r4, r1, 0xa8
/* 800AAF38  48 1C 47 11 */	bl SetC__8cM3dGSphFRC4cXyz
/* 800AAF3C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800AAF40  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800AAF44  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800AAF48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800AAF4C  7C 64 02 14 */	add r3, r4, r0
/* 800AAF50  C0 03 00 04 */	lfs f0, 4(r3)
/* 800AAF54  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800AAF58  EC 41 00 32 */	fmuls f2, f1, f0
/* 800AAF5C  7C 04 04 2E */	lfsx f0, r4, r0
/* 800AAF60  EC 21 00 32 */	fmuls f1, f1, f0
/* 800AAF64  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 800AAF68  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AAF6C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 800AAF70  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 800AAF74  D0 3E 10 3C */	stfs f1, 0x103c(r30)
/* 800AAF78  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 800AAF7C  D0 1E 10 40 */	stfs f0, 0x1040(r30)
/* 800AAF80  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 800AAF84  D0 1E 10 44 */	stfs f0, 0x1044(r30)
/* 800AAF88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AAF8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AAF90  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AAF94  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AAF98  48 1B 9C 11 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AAF9C  48 00 04 C8 */	b lbl_800AB464
lbl_800AAFA0:
/* 800AAFA0  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AAFA4  4B FD 93 75 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AAFA8  48 00 04 BC */	b lbl_800AB464
lbl_800AAFAC:
/* 800AAFAC  A0 7E 2F DC */	lhz r3, 0x2fdc(r30)
/* 800AAFB0  48 0B 3C 09 */	bl checkHookshotItem__9daPy_py_cFi
/* 800AAFB4  2C 03 00 00 */	cmpwi r3, 0
/* 800AAFB8  41 82 02 F8 */	beq lbl_800AB2B0
/* 800AAFBC  A8 1E 30 1A */	lha r0, 0x301a(r30)
/* 800AAFC0  2C 00 00 03 */	cmpwi r0, 3
/* 800AAFC4  41 82 00 0C */	beq lbl_800AAFD0
/* 800AAFC8  2C 00 00 01 */	cmpwi r0, 1
/* 800AAFCC  40 82 02 D8 */	bne lbl_800AB2A4
lbl_800AAFD0:
/* 800AAFD0  7F C3 F3 78 */	mr r3, r30
/* 800AAFD4  48 05 D7 B1 */	bl checkLv7BossRoom__9daAlink_cFv
/* 800AAFD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AAFDC  41 82 00 14 */	beq lbl_800AAFF0
/* 800AAFE0  38 7F 13 68 */	addi r3, r31, 0x1368
/* 800AAFE4  C3 C3 00 64 */	lfs f30, 0x64(r3)
/* 800AAFE8  C3 E3 00 60 */	lfs f31, 0x60(r3)
/* 800AAFEC  48 00 00 10 */	b lbl_800AAFFC
lbl_800AAFF0:
/* 800AAFF0  38 7F 13 68 */	addi r3, r31, 0x1368
/* 800AAFF4  C3 C3 00 4C */	lfs f30, 0x4c(r3)
/* 800AAFF8  C3 E3 00 48 */	lfs f31, 0x48(r3)
lbl_800AAFFC:
/* 800AAFFC  A8 1E 30 1A */	lha r0, 0x301a(r30)
/* 800AB000  2C 00 00 03 */	cmpwi r0, 3
/* 800AB004  40 82 01 50 */	bne lbl_800AB154
/* 800AB008  38 61 00 48 */	addi r3, r1, 0x48
/* 800AB00C  38 9E 37 EC */	addi r4, r30, 0x37ec
/* 800AB010  38 BE 37 E0 */	addi r5, r30, 0x37e0
/* 800AB014  48 1B BB 21 */	bl __mi__4cXyzCFRC3Vec
/* 800AB018  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800AB01C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800AB020  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800AB024  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800AB028  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800AB02C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 800AB030  38 61 00 D8 */	addi r3, r1, 0xd8
/* 800AB034  48 29 C1 05 */	bl PSVECSquareMag
/* 800AB038  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AB03C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AB040  40 81 00 58 */	ble lbl_800AB098
/* 800AB044  FC 00 08 34 */	frsqrte f0, f1
/* 800AB048  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800AB04C  FC 44 00 32 */	fmul f2, f4, f0
/* 800AB050  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800AB054  FC 00 00 32 */	fmul f0, f0, f0
/* 800AB058  FC 01 00 32 */	fmul f0, f1, f0
/* 800AB05C  FC 03 00 28 */	fsub f0, f3, f0
/* 800AB060  FC 02 00 32 */	fmul f0, f2, f0
/* 800AB064  FC 44 00 32 */	fmul f2, f4, f0
/* 800AB068  FC 00 00 32 */	fmul f0, f0, f0
/* 800AB06C  FC 01 00 32 */	fmul f0, f1, f0
/* 800AB070  FC 03 00 28 */	fsub f0, f3, f0
/* 800AB074  FC 02 00 32 */	fmul f0, f2, f0
/* 800AB078  FC 44 00 32 */	fmul f2, f4, f0
/* 800AB07C  FC 00 00 32 */	fmul f0, f0, f0
/* 800AB080  FC 01 00 32 */	fmul f0, f1, f0
/* 800AB084  FC 03 00 28 */	fsub f0, f3, f0
/* 800AB088  FC 02 00 32 */	fmul f0, f2, f0
/* 800AB08C  FC 21 00 32 */	fmul f1, f1, f0
/* 800AB090  FC 20 08 18 */	frsp f1, f1
/* 800AB094  48 00 00 88 */	b lbl_800AB11C
lbl_800AB098:
/* 800AB098  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800AB09C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AB0A0  40 80 00 10 */	bge lbl_800AB0B0
/* 800AB0A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800AB0A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800AB0AC  48 00 00 70 */	b lbl_800AB11C
lbl_800AB0B0:
/* 800AB0B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800AB0B4  80 81 00 08 */	lwz r4, 8(r1)
/* 800AB0B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800AB0BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800AB0C0  7C 03 00 00 */	cmpw r3, r0
/* 800AB0C4  41 82 00 14 */	beq lbl_800AB0D8
/* 800AB0C8  40 80 00 40 */	bge lbl_800AB108
/* 800AB0CC  2C 03 00 00 */	cmpwi r3, 0
/* 800AB0D0  41 82 00 20 */	beq lbl_800AB0F0
/* 800AB0D4  48 00 00 34 */	b lbl_800AB108
lbl_800AB0D8:
/* 800AB0D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800AB0DC  41 82 00 0C */	beq lbl_800AB0E8
/* 800AB0E0  38 00 00 01 */	li r0, 1
/* 800AB0E4  48 00 00 28 */	b lbl_800AB10C
lbl_800AB0E8:
/* 800AB0E8  38 00 00 02 */	li r0, 2
/* 800AB0EC  48 00 00 20 */	b lbl_800AB10C
lbl_800AB0F0:
/* 800AB0F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800AB0F4  41 82 00 0C */	beq lbl_800AB100
/* 800AB0F8  38 00 00 05 */	li r0, 5
/* 800AB0FC  48 00 00 10 */	b lbl_800AB10C
lbl_800AB100:
/* 800AB100  38 00 00 03 */	li r0, 3
/* 800AB104  48 00 00 08 */	b lbl_800AB10C
lbl_800AB108:
/* 800AB108  38 00 00 04 */	li r0, 4
lbl_800AB10C:
/* 800AB10C  2C 00 00 01 */	cmpwi r0, 1
/* 800AB110  40 82 00 0C */	bne lbl_800AB11C
/* 800AB114  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800AB118  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800AB11C:
/* 800AB11C  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800AB120  EF C0 F0 2A */	fadds f30, f0, f30
/* 800AB124  EC 1E 08 2A */	fadds f0, f30, f1
/* 800AB128  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800AB12C  40 81 00 08 */	ble lbl_800AB134
/* 800AB130  EF DF 08 28 */	fsubs f30, f31, f1
lbl_800AB134:
/* 800AB134  38 61 00 D8 */	addi r3, r1, 0xd8
/* 800AB138  48 1B BF F1 */	bl atan2sX_Z__4cXyzCFv
/* 800AB13C  A8 9E 30 1E */	lha r4, 0x301e(r30)
/* 800AB140  48 1C 5C E5 */	bl cLib_distanceAngleS__Fss
/* 800AB144  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800AB148  40 81 00 48 */	ble lbl_800AB190
/* 800AB14C  C3 C2 92 BC */	lfs f30, lit_6041(r2)
/* 800AB150  48 00 00 40 */	b lbl_800AB190
lbl_800AB154:
/* 800AB154  38 7E 1B B8 */	addi r3, r30, 0x1bb8
/* 800AB158  38 9E 38 34 */	addi r4, r30, 0x3834
/* 800AB15C  38 BE 37 E0 */	addi r5, r30, 0x37e0
/* 800AB160  7F C6 F3 78 */	mr r6, r30
/* 800AB164  4B FC CC 01 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800AB168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB16C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB170  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800AB174  38 9E 1B B8 */	addi r4, r30, 0x1bb8
/* 800AB178  4B FC 92 3D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 800AB17C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AB180  41 82 00 0C */	beq lbl_800AB18C
/* 800AB184  C3 C2 92 BC */	lfs f30, lit_6041(r2)
/* 800AB188  48 00 00 08 */	b lbl_800AB190
lbl_800AB18C:
/* 800AB18C  FF C0 F8 90 */	fmr f30, f31
lbl_800AB190:
/* 800AB190  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AB194  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800AB198  40 81 01 00 */	ble lbl_800AB298
/* 800AB19C  C0 1E 37 EC */	lfs f0, 0x37ec(r30)
/* 800AB1A0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 800AB1A4  C0 1E 37 F0 */	lfs f0, 0x37f0(r30)
/* 800AB1A8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 800AB1AC  C0 1E 37 F4 */	lfs f0, 0x37f4(r30)
/* 800AB1B0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 800AB1B4  38 61 00 3C */	addi r3, r1, 0x3c
/* 800AB1B8  38 9E 37 F8 */	addi r4, r30, 0x37f8
/* 800AB1BC  FC 20 F0 90 */	fmr f1, f30
/* 800AB1C0  48 1B B9 C5 */	bl __ml__4cXyzCFf
/* 800AB1C4  38 61 00 30 */	addi r3, r1, 0x30
/* 800AB1C8  38 9E 37 EC */	addi r4, r30, 0x37ec
/* 800AB1CC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 800AB1D0  48 1B B9 15 */	bl __pl__4cXyzCFRC3Vec
/* 800AB1D4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800AB1D8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800AB1DC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800AB1E0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 800AB1E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800AB1E8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 800AB1EC  38 7E 1B B8 */	addi r3, r30, 0x1bb8
/* 800AB1F0  38 81 00 CC */	addi r4, r1, 0xcc
/* 800AB1F4  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 800AB1F8  7F C6 F3 78 */	mr r6, r30
/* 800AB1FC  4B FC CB 69 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800AB200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB208  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800AB20C  38 9E 1B B8 */	addi r4, r30, 0x1bb8
/* 800AB210  4B FC 91 A5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 800AB214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AB218  41 82 00 1C */	beq lbl_800AB234
/* 800AB21C  C0 1E 1B E8 */	lfs f0, 0x1be8(r30)
/* 800AB220  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800AB224  C0 1E 1B EC */	lfs f0, 0x1bec(r30)
/* 800AB228  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 800AB22C  C0 1E 1B F0 */	lfs f0, 0x1bf0(r30)
/* 800AB230  D0 01 00 C8 */	stfs f0, 0xc8(r1)
lbl_800AB234:
/* 800AB234  38 7E 13 50 */	addi r3, r30, 0x1350
/* 800AB238  38 81 00 CC */	addi r4, r1, 0xcc
/* 800AB23C  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 800AB240  48 1C 40 A9 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 800AB244  38 61 00 24 */	addi r3, r1, 0x24
/* 800AB248  38 81 00 C0 */	addi r4, r1, 0xc0
/* 800AB24C  38 A1 00 CC */	addi r5, r1, 0xcc
/* 800AB250  48 1B B8 E5 */	bl __mi__4cXyzCFRC3Vec
/* 800AB254  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 800AB258  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 800AB25C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800AB260  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 800AB264  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800AB268  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 800AB26C  D0 3E 12 B0 */	stfs f1, 0x12b0(r30)
/* 800AB270  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800AB274  D0 1E 12 B4 */	stfs f0, 0x12b4(r30)
/* 800AB278  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 800AB27C  D0 1E 12 B8 */	stfs f0, 0x12b8(r30)
/* 800AB280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB288  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AB28C  38 9E 12 2C */	addi r4, r30, 0x122c
/* 800AB290  48 1B 99 19 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AB294  48 00 01 D0 */	b lbl_800AB464
lbl_800AB298:
/* 800AB298  38 7E 12 2C */	addi r3, r30, 0x122c
/* 800AB29C  4B FD 90 7D */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AB2A0  48 00 01 C4 */	b lbl_800AB464
lbl_800AB2A4:
/* 800AB2A4  38 7E 12 2C */	addi r3, r30, 0x122c
/* 800AB2A8  4B FD 90 71 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AB2AC  48 00 01 B8 */	b lbl_800AB464
lbl_800AB2B0:
/* 800AB2B0  7F C3 F3 78 */	mr r3, r30
/* 800AB2B4  38 80 00 01 */	li r4, 1
/* 800AB2B8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800AB2BC  81 8C 01 B8 */	lwz r12, 0x1b8(r12)
/* 800AB2C0  7D 89 03 A6 */	mtctr r12
/* 800AB2C4  4E 80 04 21 */	bctrl 
/* 800AB2C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AB2CC  41 82 00 AC */	beq lbl_800AB378
/* 800AB2D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB2D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB2D8  A0 03 00 08 */	lhz r0, 8(r3)
/* 800AB2DC  28 00 00 00 */	cmplwi r0, 0
/* 800AB2E0  41 82 00 8C */	beq lbl_800AB36C
/* 800AB2E4  C0 3E 1F E0 */	lfs f1, 0x1fe0(r30)
/* 800AB2E8  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 800AB2EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AB2F0  4C 41 13 82 */	cror 2, 1, 2
/* 800AB2F4  40 82 00 78 */	bne lbl_800AB36C
/* 800AB2F8  C0 1E 34 80 */	lfs f0, 0x3480(r30)
/* 800AB2FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AB300  4C 40 13 82 */	cror 2, 0, 2
/* 800AB304  40 82 00 68 */	bne lbl_800AB36C
/* 800AB308  80 1E 0F B8 */	lwz r0, 0xfb8(r30)
/* 800AB30C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AB310  41 82 00 14 */	beq lbl_800AB324
/* 800AB314  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AB318  38 9E 36 0C */	addi r4, r30, 0x360c
/* 800AB31C  4B FD 97 A9 */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 800AB320  48 00 00 1C */	b lbl_800AB33C
lbl_800AB324:
/* 800AB324  80 1E 0F B8 */	lwz r0, 0xfb8(r30)
/* 800AB328  60 00 00 01 */	ori r0, r0, 1
/* 800AB32C  90 1E 0F B8 */	stw r0, 0xfb8(r30)
/* 800AB330  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AB334  38 9E 36 0C */	addi r4, r30, 0x360c
/* 800AB338  4B FD 97 41 */	bl StartCAt__8dCcD_SphFR4cXyz
lbl_800AB33C:
/* 800AB33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB344  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AB348  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AB34C  48 1B 98 5D */	bl Set__4cCcSFP8cCcD_Obj
/* 800AB350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB358  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 800AB35C  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AB360  38 A0 00 01 */	li r5, 1
/* 800AB364  4B FD AA 35 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AB368  48 00 00 FC */	b lbl_800AB464
lbl_800AB36C:
/* 800AB36C  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AB370  4B FD 8F A9 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AB374  48 00 00 F0 */	b lbl_800AB464
lbl_800AB378:
/* 800AB378  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800AB37C  28 00 00 42 */	cmplwi r0, 0x42
/* 800AB380  40 82 00 E4 */	bne lbl_800AB464
/* 800AB384  A8 1E 30 18 */	lha r0, 0x3018(r30)
/* 800AB388  2C 00 00 02 */	cmpwi r0, 2
/* 800AB38C  41 82 00 2C */	beq lbl_800AB3B8
/* 800AB390  2C 00 00 03 */	cmpwi r0, 3
/* 800AB394  41 82 00 24 */	beq lbl_800AB3B8
/* 800AB398  2C 00 00 04 */	cmpwi r0, 4
/* 800AB39C  41 82 00 1C */	beq lbl_800AB3B8
/* 800AB3A0  2C 00 00 05 */	cmpwi r0, 5
/* 800AB3A4  41 82 00 14 */	beq lbl_800AB3B8
/* 800AB3A8  2C 00 00 07 */	cmpwi r0, 7
/* 800AB3AC  41 82 00 0C */	beq lbl_800AB3B8
/* 800AB3B0  2C 00 00 06 */	cmpwi r0, 6
/* 800AB3B4  40 82 00 A0 */	bne lbl_800AB454
lbl_800AB3B8:
/* 800AB3B8  80 1E 0F B8 */	lwz r0, 0xfb8(r30)
/* 800AB3BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AB3C0  41 82 00 14 */	beq lbl_800AB3D4
/* 800AB3C4  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AB3C8  38 9E 37 F8 */	addi r4, r30, 0x37f8
/* 800AB3CC  4B FD 96 F9 */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 800AB3D0  48 00 00 1C */	b lbl_800AB3EC
lbl_800AB3D4:
/* 800AB3D4  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AB3D8  38 9E 37 F8 */	addi r4, r30, 0x37f8
/* 800AB3DC  4B FD 96 9D */	bl StartCAt__8dCcD_SphFR4cXyz
/* 800AB3E0  80 1E 0F B8 */	lwz r0, 0xfb8(r30)
/* 800AB3E4  60 00 00 01 */	ori r0, r0, 1
/* 800AB3E8  90 1E 0F B8 */	stw r0, 0xfb8(r30)
lbl_800AB3EC:
/* 800AB3EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB3F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB3F4  3B A3 23 3C */	addi r29, r3, 0x233c
/* 800AB3F8  7F A3 EB 78 */	mr r3, r29
/* 800AB3FC  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AB400  48 1B 97 A9 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AB404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB40C  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 800AB410  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AB414  38 A0 00 01 */	li r5, 1
/* 800AB418  4B FD A9 81 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AB41C  A8 1E 30 18 */	lha r0, 0x3018(r30)
/* 800AB420  2C 00 00 05 */	cmpwi r0, 5
/* 800AB424  41 82 00 14 */	beq lbl_800AB438
/* 800AB428  2C 00 00 07 */	cmpwi r0, 7
/* 800AB42C  41 82 00 0C */	beq lbl_800AB438
/* 800AB430  2C 00 00 06 */	cmpwi r0, 6
/* 800AB434  40 82 00 30 */	bne lbl_800AB464
lbl_800AB438:
/* 800AB438  38 7E 18 9C */	addi r3, r30, 0x189c
/* 800AB43C  38 9E 37 F8 */	addi r4, r30, 0x37f8
/* 800AB440  48 1C 42 09 */	bl SetC__8cM3dGSphFRC4cXyz
/* 800AB444  7F A3 EB 78 */	mr r3, r29
/* 800AB448  38 9E 17 78 */	addi r4, r30, 0x1778
/* 800AB44C  48 1B 97 5D */	bl Set__4cCcSFP8cCcD_Obj
/* 800AB450  48 00 00 14 */	b lbl_800AB464
lbl_800AB454:
/* 800AB454  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AB458  4B FD 8E C1 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800AB45C  38 7E 17 78 */	addi r3, r30, 0x1778
/* 800AB460  4B FD 8E B9 */	bl ResetAtHit__12dCcD_GObjInfFv
lbl_800AB464:
/* 800AB464  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800AB468  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800AB46C  41 82 03 C8 */	beq lbl_800AB834
/* 800AB470  7F C3 F3 78 */	mr r3, r30
/* 800AB474  38 9E 12 2C */	addi r4, r30, 0x122c
/* 800AB478  48 02 63 75 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AB47C  2C 03 00 00 */	cmpwi r3, 0
/* 800AB480  40 82 00 4C */	bne lbl_800AB4CC
/* 800AB484  7F C3 F3 78 */	mr r3, r30
/* 800AB488  38 9E 13 70 */	addi r4, r30, 0x1370
/* 800AB48C  48 02 63 61 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AB490  2C 03 00 00 */	cmpwi r3, 0
/* 800AB494  40 82 00 38 */	bne lbl_800AB4CC
/* 800AB498  7F C3 F3 78 */	mr r3, r30
/* 800AB49C  38 9E 14 B4 */	addi r4, r30, 0x14b4
/* 800AB4A0  48 02 63 4D */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AB4A4  2C 03 00 00 */	cmpwi r3, 0
/* 800AB4A8  40 82 00 24 */	bne lbl_800AB4CC
/* 800AB4AC  7F C3 F3 78 */	mr r3, r30
/* 800AB4B0  38 9E 10 F0 */	addi r4, r30, 0x10f0
/* 800AB4B4  48 02 63 39 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
/* 800AB4B8  2C 03 00 00 */	cmpwi r3, 0
/* 800AB4BC  40 82 00 10 */	bne lbl_800AB4CC
/* 800AB4C0  7F C3 F3 78 */	mr r3, r30
/* 800AB4C4  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AB4C8  48 02 63 25 */	bl setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf
lbl_800AB4CC:
/* 800AB4CC  7F C3 F3 78 */	mr r3, r30
/* 800AB4D0  48 02 59 FD */	bl checkCutDashAnime__9daAlink_cCFv
/* 800AB4D4  2C 03 00 00 */	cmpwi r3, 0
/* 800AB4D8  41 82 00 64 */	beq lbl_800AB53C
/* 800AB4DC  38 7F 08 34 */	addi r3, r31, 0x834
/* 800AB4E0  A8 03 00 58 */	lha r0, 0x58(r3)
/* 800AB4E4  90 1E 22 10 */	stw r0, 0x2210(r30)
/* 800AB4E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800AB4EC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800AB4F0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800AB4F4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800AB4F8  7C 64 02 14 */	add r3, r4, r0
/* 800AB4FC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800AB500  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800AB504  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 800AB508  EC 02 00 32 */	fmuls f0, f2, f0
/* 800AB50C  EC 81 00 2A */	fadds f4, f1, f0
/* 800AB510  C0 22 93 78 */	lfs f1, lit_8676(r2)
/* 800AB514  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800AB518  EC 61 00 2A */	fadds f3, f1, f0
/* 800AB51C  7C 04 04 2E */	lfsx f0, r4, r0
/* 800AB520  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800AB524  EC 02 00 32 */	fmuls f0, f2, f0
/* 800AB528  EC 01 00 2A */	fadds f0, f1, f0
/* 800AB52C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800AB530  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 800AB534  D0 81 00 E0 */	stfs f4, 0xe0(r1)
/* 800AB538  48 00 00 58 */	b lbl_800AB590
lbl_800AB53C:
/* 800AB53C  38 7F 08 34 */	addi r3, r31, 0x834
/* 800AB540  A8 03 00 54 */	lha r0, 0x54(r3)
/* 800AB544  90 1E 22 10 */	stw r0, 0x2210(r30)
/* 800AB548  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800AB54C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800AB550  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800AB554  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800AB558  7C 64 02 14 */	add r3, r4, r0
/* 800AB55C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800AB560  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800AB564  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 800AB568  EC 02 00 32 */	fmuls f0, f2, f0
/* 800AB56C  EC 81 00 2A */	fadds f4, f1, f0
/* 800AB570  C0 7E 34 78 */	lfs f3, 0x3478(r30)
/* 800AB574  7C 04 04 2E */	lfsx f0, r4, r0
/* 800AB578  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800AB57C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800AB580  EC 01 00 2A */	fadds f0, f1, f0
/* 800AB584  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800AB588  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 800AB58C  D0 81 00 E0 */	stfs f4, 0xe0(r1)
lbl_800AB590:
/* 800AB590  A0 7E 2F E8 */	lhz r3, 0x2fe8(r30)
/* 800AB594  28 03 00 28 */	cmplwi r3, 0x28
/* 800AB598  41 82 00 20 */	beq lbl_800AB5B8
/* 800AB59C  28 03 00 31 */	cmplwi r3, 0x31
/* 800AB5A0  40 82 00 10 */	bne lbl_800AB5B0
/* 800AB5A4  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800AB5A8  2C 00 00 00 */	cmpwi r0, 0
/* 800AB5AC  40 82 00 0C */	bne lbl_800AB5B8
lbl_800AB5B0:
/* 800AB5B0  28 03 00 AD */	cmplwi r3, 0xad
/* 800AB5B4  40 82 00 FC */	bne lbl_800AB6B0
lbl_800AB5B8:
/* 800AB5B8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AB5BC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800AB5C0  40 82 00 10 */	bne lbl_800AB5D0
/* 800AB5C4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AB5C8  60 00 00 40 */	ori r0, r0, 0x40
/* 800AB5CC  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_800AB5D0:
/* 800AB5D0  38 61 00 18 */	addi r3, r1, 0x18
/* 800AB5D4  38 9E 36 A8 */	addi r4, r30, 0x36a8
/* 800AB5D8  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800AB5DC  48 1B B5 A9 */	bl __ml__4cXyzCFf
/* 800AB5E0  38 61 00 0C */	addi r3, r1, 0xc
/* 800AB5E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800AB5E8  38 A1 00 18 */	addi r5, r1, 0x18
/* 800AB5EC  48 1B B4 F9 */	bl __pl__4cXyzCFRC3Vec
/* 800AB5F0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800AB5F4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800AB5F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800AB5FC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800AB600  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800AB604  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 800AB608  38 7E 10 DC */	addi r3, r30, 0x10dc
/* 800AB60C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800AB610  48 1C 40 39 */	bl SetC__8cM3dGSphFRC4cXyz
/* 800AB614  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 800AB618  C4 23 0C F4 */	lfsu f1, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 800AB61C  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 800AB620  C0 03 00 04 */	lfs f0, 4(r3)
/* 800AB624  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 800AB628  C0 03 00 08 */	lfs f0, 8(r3)
/* 800AB62C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 800AB630  D0 3E 10 3C */	stfs f1, 0x103c(r30)
/* 800AB634  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 800AB638  D0 1E 10 40 */	stfs f0, 0x1040(r30)
/* 800AB63C  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 800AB640  D0 1E 10 44 */	stfs f0, 0x1044(r30)
/* 800AB644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB648  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB64C  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AB650  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AB654  48 1B 95 55 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AB658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB65C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB660  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 800AB664  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AB668  38 A0 00 01 */	li r5, 1
/* 800AB66C  4B FD A7 2D */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AB670  7F C3 F3 78 */	mr r3, r30
/* 800AB674  4B FF F0 41 */	bl decSwordBlur__9daAlink_cFv
/* 800AB678  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800AB67C  28 00 00 AD */	cmplwi r0, 0xad
/* 800AB680  40 82 01 D0 */	bne lbl_800AB850
/* 800AB684  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 800AB688  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 800AB68C  EC 21 00 28 */	fsubs f1, f1, f0
/* 800AB690  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 800AB694  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 800AB698  EC 42 00 28 */	fsubs f2, f2, f0
/* 800AB69C  48 1B BF D9 */	bl cM_atan2s__Fff
/* 800AB6A0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800AB6A4  7C 00 18 50 */	subf r0, r0, r3
/* 800AB6A8  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800AB6AC  48 00 01 A4 */	b lbl_800AB850
lbl_800AB6B0:
/* 800AB6B0  28 03 00 43 */	cmplwi r3, 0x43
/* 800AB6B4  40 82 00 80 */	bne lbl_800AB734
/* 800AB6B8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AB6BC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800AB6C0  40 82 00 10 */	bne lbl_800AB6D0
/* 800AB6C4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AB6C8  60 00 00 40 */	ori r0, r0, 0x40
/* 800AB6CC  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_800AB6D0:
/* 800AB6D0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800AB6D4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800AB6D8  C0 02 93 B0 */	lfs f0, lit_10039(r2)
/* 800AB6DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800AB6E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800AB6E4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 800AB6E8  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 800AB6EC  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 800AB6F0  38 7E 12 14 */	addi r3, r30, 0x1214
/* 800AB6F4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800AB6F8  48 1C 3A E5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 800AB6FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB700  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB704  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AB708  38 9E 10 F0 */	addi r4, r30, 0x10f0
/* 800AB70C  48 1B 94 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 800AB710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB718  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 800AB71C  38 9E 10 F0 */	addi r4, r30, 0x10f0
/* 800AB720  38 A0 00 01 */	li r5, 1
/* 800AB724  4B FD A6 75 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AB728  7F C3 F3 78 */	mr r3, r30
/* 800AB72C  4B FF EF 89 */	bl decSwordBlur__9daAlink_cFv
/* 800AB730  48 00 01 20 */	b lbl_800AB850
lbl_800AB734:
/* 800AB734  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AB738  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800AB73C  40 82 00 88 */	bne lbl_800AB7C4
/* 800AB740  7F C3 F3 78 */	mr r3, r30
/* 800AB744  38 80 00 01 */	li r4, 1
/* 800AB748  4B FF EB 99 */	bl setSwordAtCollision__9daAlink_cFi
/* 800AB74C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800AB750  60 00 00 40 */	ori r0, r0, 0x40
/* 800AB754  90 1E 05 70 */	stw r0, 0x570(r30)
/* 800AB758  7F C3 F3 78 */	mr r3, r30
/* 800AB75C  48 02 57 71 */	bl checkCutDashAnime__9daAlink_cCFv
/* 800AB760  2C 03 00 00 */	cmpwi r3, 0
/* 800AB764  41 82 00 24 */	beq lbl_800AB788
/* 800AB768  38 7E 10 F0 */	addi r3, r30, 0x10f0
/* 800AB76C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800AB770  4B FD 91 99 */	bl StartCAt__8dCcD_CylFR4cXyz
/* 800AB774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB77C  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AB780  38 9E 10 F0 */	addi r4, r30, 0x10f0
/* 800AB784  48 1B 94 25 */	bl Set__4cCcSFP8cCcD_Obj
lbl_800AB788:
/* 800AB788  7F C3 F3 78 */	mr r3, r30
/* 800AB78C  48 02 5C 21 */	bl checkCutTypeNoBlur__9daAlink_cCFv
/* 800AB790  2C 03 00 00 */	cmpwi r3, 0
/* 800AB794  40 82 00 24 */	bne lbl_800AB7B8
/* 800AB798  38 7E 21 F0 */	addi r3, r30, 0x21f0
/* 800AB79C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800AB7A0  38 80 00 00 */	li r4, 0
/* 800AB7A4  38 BE 05 BC */	addi r5, r30, 0x5bc
/* 800AB7A8  38 DE 34 98 */	addi r6, r30, 0x3498
/* 800AB7AC  38 FE 34 A4 */	addi r7, r30, 0x34a4
/* 800AB7B0  48 07 9F 3D */	bl initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz
/* 800AB7B4  48 00 00 9C */	b lbl_800AB850
lbl_800AB7B8:
/* 800AB7B8  7F C3 F3 78 */	mr r3, r30
/* 800AB7BC  4B FF EE F9 */	bl decSwordBlur__9daAlink_cFv
/* 800AB7C0  48 00 00 90 */	b lbl_800AB850
lbl_800AB7C4:
/* 800AB7C4  7F C3 F3 78 */	mr r3, r30
/* 800AB7C8  38 80 00 00 */	li r4, 0
/* 800AB7CC  4B FF EB 15 */	bl setSwordAtCollision__9daAlink_cFi
/* 800AB7D0  7F C3 F3 78 */	mr r3, r30
/* 800AB7D4  48 02 56 F9 */	bl checkCutDashAnime__9daAlink_cCFv
/* 800AB7D8  2C 03 00 00 */	cmpwi r3, 0
/* 800AB7DC  41 82 00 24 */	beq lbl_800AB800
/* 800AB7E0  38 7E 10 F0 */	addi r3, r30, 0x10f0
/* 800AB7E4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800AB7E8  4B FD 91 6D */	bl MoveCAt__8dCcD_CylFR4cXyz
/* 800AB7EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AB7F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AB7F4  38 63 23 3C */	addi r3, r3, 0x233c
/* 800AB7F8  38 9E 10 F0 */	addi r4, r30, 0x10f0
/* 800AB7FC  48 1B 93 AD */	bl Set__4cCcSFP8cCcD_Obj
lbl_800AB800:
/* 800AB800  7F C3 F3 78 */	mr r3, r30
/* 800AB804  48 02 5B A9 */	bl checkCutTypeNoBlur__9daAlink_cCFv
/* 800AB808  2C 03 00 00 */	cmpwi r3, 0
/* 800AB80C  40 82 00 1C */	bne lbl_800AB828
/* 800AB810  38 7E 21 F0 */	addi r3, r30, 0x21f0
/* 800AB814  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 800AB818  38 BE 34 98 */	addi r5, r30, 0x3498
/* 800AB81C  38 DE 34 A4 */	addi r6, r30, 0x34a4
/* 800AB820  48 07 A0 7D */	bl copyBlur__14daAlink_blur_cFPC4cXyzPC4cXyzPC4cXyz
/* 800AB824  48 00 00 2C */	b lbl_800AB850
lbl_800AB828:
/* 800AB828  7F C3 F3 78 */	mr r3, r30
/* 800AB82C  4B FF EE 89 */	bl decSwordBlur__9daAlink_cFv
/* 800AB830  48 00 00 20 */	b lbl_800AB850
lbl_800AB834:
/* 800AB834  7F C3 F3 78 */	mr r3, r30
/* 800AB838  4B FF EE 7D */	bl decSwordBlur__9daAlink_cFv
/* 800AB83C  7F C3 F3 78 */	mr r3, r30
/* 800AB840  38 80 00 01 */	li r4, 1
/* 800AB844  4B FF F1 99 */	bl resetAtCollision__9daAlink_cFi
/* 800AB848  38 7E 10 F0 */	addi r3, r30, 0x10f0
/* 800AB84C  4B FD 8A CD */	bl ResetAtHit__12dCcD_GObjInfFv
lbl_800AB850:
/* 800AB850  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 800AB854  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 800AB858  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 800AB85C  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 800AB860  39 61 01 00 */	addi r11, r1, 0x100
/* 800AB864  48 2B 69 C5 */	bl _restgpr_29
/* 800AB868  80 01 01 24 */	lwz r0, 0x124(r1)
/* 800AB86C  7C 08 03 A6 */	mtlr r0
/* 800AB870  38 21 01 20 */	addi r1, r1, 0x120
/* 800AB874  4E 80 00 20 */	blr 

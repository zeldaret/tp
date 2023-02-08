lbl_806C8130:
/* 806C8130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C8134  7C 08 02 A6 */	mflr r0
/* 806C8138  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C813C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C8140  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C8144  7C 7E 1B 78 */	mr r30, r3
/* 806C8148  3C 60 80 6D */	lis r3, lit_3904@ha /* 0x806CD000@ha */
/* 806C814C  3B E3 D0 00 */	addi r31, r3, lit_3904@l /* 0x806CD000@l */
/* 806C8150  A8 1E 0B 92 */	lha r0, 0xb92(r30)
/* 806C8154  2C 00 00 00 */	cmpwi r0, 0
/* 806C8158  40 82 02 04 */	bne lbl_806C835C
/* 806C815C  38 7E 08 90 */	addi r3, r30, 0x890
/* 806C8160  4B 9B B6 D1 */	bl Move__10dCcD_GSttsFv
/* 806C8164  80 1E 0B 70 */	lwz r0, 0xb70(r30)
/* 806C8168  2C 00 00 04 */	cmpwi r0, 4
/* 806C816C  41 82 01 F0 */	beq lbl_806C835C
/* 806C8170  38 00 00 00 */	li r0, 0
/* 806C8174  90 1E 0B 20 */	stw r0, 0xb20(r30)
/* 806C8178  38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 806C817C  4B 9B C2 E5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806C8180  28 03 00 00 */	cmplwi r3, 0
/* 806C8184  41 82 00 14 */	beq lbl_806C8198
/* 806C8188  38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 806C818C  4B 9B C3 6D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806C8190  90 7E 0B 20 */	stw r3, 0xb20(r30)
/* 806C8194  48 00 00 20 */	b lbl_806C81B4
lbl_806C8198:
/* 806C8198  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 806C819C  4B 9B C2 C5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806C81A0  28 03 00 00 */	cmplwi r3, 0
/* 806C81A4  41 82 00 10 */	beq lbl_806C81B4
/* 806C81A8  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 806C81AC  4B 9B C3 4D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806C81B0  90 7E 0B 20 */	stw r3, 0xb20(r30)
lbl_806C81B4:
/* 806C81B4  80 1E 0B 20 */	lwz r0, 0xb20(r30)
/* 806C81B8  28 00 00 00 */	cmplwi r0, 0
/* 806C81BC  41 82 01 A0 */	beq lbl_806C835C
/* 806C81C0  7F C3 F3 78 */	mr r3, r30
/* 806C81C4  38 9E 0B 20 */	addi r4, r30, 0xb20
/* 806C81C8  4B 9B FA 3D */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806C81CC  80 7E 0B 20 */	lwz r3, 0xb20(r30)
/* 806C81D0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806C81D4  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 806C81D8  41 82 00 10 */	beq lbl_806C81E8
/* 806C81DC  38 00 00 14 */	li r0, 0x14
/* 806C81E0  B0 1E 0B 92 */	sth r0, 0xb92(r30)
/* 806C81E4  48 00 00 0C */	b lbl_806C81F0
lbl_806C81E8:
/* 806C81E8  38 00 00 0A */	li r0, 0xa
/* 806C81EC  B0 1E 0B 92 */	sth r0, 0xb92(r30)
lbl_806C81F0:
/* 806C81F0  A0 1E 0B 3C */	lhz r0, 0xb3c(r30)
/* 806C81F4  28 00 00 01 */	cmplwi r0, 1
/* 806C81F8  41 81 00 0C */	bgt lbl_806C8204
/* 806C81FC  38 00 00 0A */	li r0, 0xa
/* 806C8200  B0 1E 0B 92 */	sth r0, 0xb92(r30)
lbl_806C8204:
/* 806C8204  80 7E 0B 20 */	lwz r3, 0xb20(r30)
/* 806C8208  80 63 00 10 */	lwz r3, 0x10(r3)
/* 806C820C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 806C8210  41 82 00 14 */	beq lbl_806C8224
/* 806C8214  7F C3 F3 78 */	mr r3, r30
/* 806C8218  38 80 00 08 */	li r4, 8
/* 806C821C  4B FF FE DD */	bl setActionMode__8daE_GE_cFi
/* 806C8220  48 00 01 3C */	b lbl_806C835C
lbl_806C8224:
/* 806C8224  88 1E 0B 9A */	lbz r0, 0xb9a(r30)
/* 806C8228  28 00 00 02 */	cmplwi r0, 2
/* 806C822C  41 82 00 28 */	beq lbl_806C8254
/* 806C8230  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 806C8234  41 82 00 20 */	beq lbl_806C8254
/* 806C8238  80 1E 0B 70 */	lwz r0, 0xb70(r30)
/* 806C823C  2C 00 00 07 */	cmpwi r0, 7
/* 806C8240  41 82 01 1C */	beq lbl_806C835C
/* 806C8244  7F C3 F3 78 */	mr r3, r30
/* 806C8248  38 80 00 07 */	li r4, 7
/* 806C824C  4B FF FE AD */	bl setActionMode__8daE_GE_cFi
/* 806C8250  48 00 01 0C */	b lbl_806C835C
lbl_806C8254:
/* 806C8254  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806C8258  80 63 00 04 */	lwz r3, 4(r3)
/* 806C825C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806C8260  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806C8264  38 63 00 90 */	addi r3, r3, 0x90
/* 806C8268  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C826C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C8270  4B C7 E2 41 */	bl PSMTXCopy
/* 806C8274  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C8278  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C827C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806C8280  D0 01 00 08 */	stfs f0, 8(r1)
/* 806C8284  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806C8288  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806C828C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806C8290  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806C8294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C8298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C829C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806C82A0  38 80 00 03 */	li r4, 3
/* 806C82A4  7F C5 F3 78 */	mr r5, r30
/* 806C82A8  38 C1 00 08 */	addi r6, r1, 8
/* 806C82AC  38 E0 00 00 */	li r7, 0
/* 806C82B0  39 00 00 00 */	li r8, 0
/* 806C82B4  39 20 00 00 */	li r9, 0
/* 806C82B8  4B 98 3F 61 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806C82BC  7F C3 F3 78 */	mr r3, r30
/* 806C82C0  38 80 00 04 */	li r4, 4
/* 806C82C4  4B FF FE 35 */	bl setActionMode__8daE_GE_cFi
/* 806C82C8  80 7E 0B 20 */	lwz r3, 0xb20(r30)
/* 806C82CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806C82D0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806C82D4  40 82 00 30 */	bne lbl_806C8304
/* 806C82D8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806C82DC  4B B9 F6 79 */	bl cM_rndF__Ff
/* 806C82E0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 806C82E4  EC 00 08 2A */	fadds f0, f0, f1
/* 806C82E8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806C82EC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806C82F0  4B B9 F6 65 */	bl cM_rndF__Ff
/* 806C82F4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806C82F8  EC 00 08 2A */	fadds f0, f0, f1
/* 806C82FC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806C8300  48 00 00 3C */	b lbl_806C833C
lbl_806C8304:
/* 806C8304  3C 60 80 6C */	lis r3, s_ge_surprise__FPvPv@ha /* 0x806C7E7C@ha */
/* 806C8308  38 63 7E 7C */	addi r3, r3, s_ge_surprise__FPvPv@l /* 0x806C7E7C@l */
/* 806C830C  7F C4 F3 78 */	mr r4, r30
/* 806C8310  4B 95 90 29 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806C8314  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806C8318  4B B9 F6 3D */	bl cM_rndF__Ff
/* 806C831C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806C8320  EC 02 08 2A */	fadds f0, f2, f1
/* 806C8324  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806C8328  FC 20 10 90 */	fmr f1, f2
/* 806C832C  4B B9 F6 29 */	bl cM_rndF__Ff
/* 806C8330  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806C8334  EC 00 08 2A */	fadds f0, f0, f1
/* 806C8338  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806C833C:
/* 806C833C  A8 7E 0B 2E */	lha r3, 0xb2e(r30)
/* 806C8340  3C 63 00 01 */	addis r3, r3, 1
/* 806C8344  38 03 80 00 */	addi r0, r3, -32768
/* 806C8348  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806C834C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806C8350  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
/* 806C8354  A8 1E 0B 2E */	lha r0, 0xb2e(r30)
/* 806C8358  B0 1E 0B 88 */	sth r0, 0xb88(r30)
lbl_806C835C:
/* 806C835C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C8360  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806C8364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C8368  7C 08 03 A6 */	mtlr r0
/* 806C836C  38 21 00 20 */	addi r1, r1, 0x20
/* 806C8370  4E 80 00 20 */	blr 

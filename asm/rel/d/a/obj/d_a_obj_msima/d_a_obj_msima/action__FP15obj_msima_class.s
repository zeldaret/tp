lbl_80C9BA30:
/* 80C9BA30  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C9BA34  7C 08 02 A6 */	mflr r0
/* 80C9BA38  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C9BA3C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80C9BA40  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80C9BA44  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80C9BA48  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80C9BA4C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80C9BA50  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80C9BA54  39 61 00 90 */	addi r11, r1, 0x90
/* 80C9BA58  4B 6C 67 79 */	bl _savegpr_26
/* 80C9BA5C  7C 7F 1B 78 */	mr r31, r3
/* 80C9BA60  3C 80 80 CA */	lis r4, lit_3863@ha /* 0x80C9CD4C@ha */
/* 80C9BA64  3B C4 CD 4C */	addi r30, r4, lit_3863@l /* 0x80C9CD4C@l */
/* 80C9BA68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9BA6C  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9BA70  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80C9BA74  A8 83 05 94 */	lha r4, 0x594(r3)
/* 80C9BA78  A8 03 05 98 */	lha r0, 0x598(r3)
/* 80C9BA7C  7C 04 02 14 */	add r0, r4, r0
/* 80C9BA80  B0 03 05 94 */	sth r0, 0x594(r3)
/* 80C9BA84  A8 83 05 96 */	lha r4, 0x596(r3)
/* 80C9BA88  A8 03 05 9A */	lha r0, 0x59a(r3)
/* 80C9BA8C  7C 04 02 14 */	add r0, r4, r0
/* 80C9BA90  B0 03 05 96 */	sth r0, 0x596(r3)
/* 80C9BA94  A8 03 05 82 */	lha r0, 0x582(r3)
/* 80C9BA98  2C 00 00 01 */	cmpwi r0, 1
/* 80C9BA9C  41 82 00 28 */	beq lbl_80C9BAC4
/* 80C9BAA0  40 80 00 10 */	bge lbl_80C9BAB0
/* 80C9BAA4  2C 00 00 00 */	cmpwi r0, 0
/* 80C9BAA8  40 80 00 14 */	bge lbl_80C9BABC
/* 80C9BAAC  48 00 00 24 */	b lbl_80C9BAD0
lbl_80C9BAB0:
/* 80C9BAB0  2C 00 00 04 */	cmpwi r0, 4
/* 80C9BAB4  40 80 00 1C */	bge lbl_80C9BAD0
/* 80C9BAB8  48 00 00 14 */	b lbl_80C9BACC
lbl_80C9BABC:
/* 80C9BABC  4B FF FB 3D */	bl msima_start__FP15obj_msima_class
/* 80C9BAC0  48 00 00 10 */	b lbl_80C9BAD0
lbl_80C9BAC4:
/* 80C9BAC4  4B FF FB 49 */	bl msima_drop__FP15obj_msima_class
/* 80C9BAC8  48 00 00 08 */	b lbl_80C9BAD0
lbl_80C9BACC:
/* 80C9BACC  4B FF FE 01 */	bl msima_float__FP15obj_msima_class
lbl_80C9BAD0:
/* 80C9BAD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BAD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BAD8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C9BADC  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 80C9BAE0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C9BAE4  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 80C9BAE8  EC 02 00 2A */	fadds f0, f2, f0
/* 80C9BAEC  EC 43 00 2A */	fadds f2, f3, f0
/* 80C9BAF0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C9BAF4  4B 6A AD F5 */	bl PSMTXTrans
/* 80C9BAF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BAFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BB00  A8 9F 05 AC */	lha r4, 0x5ac(r31)
/* 80C9BB04  4B 37 09 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C9BB08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BB0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BB10  A8 9F 05 AE */	lha r4, 0x5ae(r31)
/* 80C9BB14  4B 37 08 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C9BB18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BB1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BB20  A8 1F 05 AC */	lha r0, 0x5ac(r31)
/* 80C9BB24  7C 00 00 D0 */	neg r0, r0
/* 80C9BB28  7C 04 07 34 */	extsh r4, r0
/* 80C9BB2C  4B 37 09 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C9BB30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BB34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BB38  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C9BB3C  4B 37 08 F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C9BB40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BB44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BB48  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C9BB4C  4B 37 08 51 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C9BB50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BB54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BB58  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80C9BB5C  4B 37 09 71 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C9BB60  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80C9BB64  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80C9BB68  FC 60 08 90 */	fmr f3, f1
/* 80C9BB6C  4B 37 12 31 */	bl transM__14mDoMtx_stack_cFfff
/* 80C9BB70  3C 60 80 CA */	lis r3, l_HIO@ha /* 0x80C9CEB4@ha */
/* 80C9BB74  3B 63 CE B4 */	addi r27, r3, l_HIO@l /* 0x80C9CEB4@l */
/* 80C9BB78  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80C9BB7C  FC 40 08 90 */	fmr f2, f1
/* 80C9BB80  FC 60 08 90 */	fmr f3, f1
/* 80C9BB84  4B 37 12 B5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C9BB88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BB8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BB90  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C9BB94  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9BB98  4B 6A A9 19 */	bl PSMTXCopy
/* 80C9BB9C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C9BBA0  4B 37 18 89 */	bl play__14mDoExt_baseAnmFv
/* 80C9BBA4  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80C9BBA8  4B 37 18 81 */	bl play__14mDoExt_baseAnmFv
/* 80C9BBAC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C9BBB0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C9BBB4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C9BBB8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C9BBBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BBC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BBC4  38 81 00 48 */	addi r4, r1, 0x48
/* 80C9BBC8  38 BF 05 B0 */	addi r5, r31, 0x5b0
/* 80C9BBCC  4B 6A B1 A1 */	bl PSMTXMultVec
/* 80C9BBD0  C0 7F 05 B0 */	lfs f3, 0x5b0(r31)
/* 80C9BBD4  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80C9BBD8  C0 5F 05 B4 */	lfs f2, 0x5b4(r31)
/* 80C9BBDC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80C9BBE0  C0 3F 05 B8 */	lfs f1, 0x5b8(r31)
/* 80C9BBE4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C9BBE8  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80C9BBEC  EC 02 00 2A */	fadds f0, f2, f0
/* 80C9BBF0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C9BBF4  D0 7F 05 38 */	stfs f3, 0x538(r31)
/* 80C9BBF8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C9BBFC  D0 3F 05 40 */	stfs f1, 0x540(r31)
/* 80C9BC00  D0 7F 05 50 */	stfs f3, 0x550(r31)
/* 80C9BC04  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C9BC08  D0 3F 05 58 */	stfs f1, 0x558(r31)
/* 80C9BC0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9BC10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9BC14  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80C9BC18  4B 6A A8 99 */	bl PSMTXCopy
/* 80C9BC1C  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80C9BC20  4B 3D FD A1 */	bl Move__4dBgWFv
/* 80C9BC24  3B 40 00 00 */	li r26, 0
/* 80C9BC28  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80C9BC2C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80C9BC30  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80C9BC34  41 82 00 24 */	beq lbl_80C9BC58
/* 80C9BC38  38 00 00 03 */	li r0, 3
/* 80C9BC3C  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80C9BC40  28 1C 00 00 */	cmplwi r28, 0
/* 80C9BC44  41 82 00 0C */	beq lbl_80C9BC50
/* 80C9BC48  80 1C 00 04 */	lwz r0, 4(r28)
/* 80C9BC4C  48 00 00 08 */	b lbl_80C9BC54
lbl_80C9BC50:
/* 80C9BC50  38 00 FF FF */	li r0, -1
lbl_80C9BC54:
/* 80C9BC54  90 1F 05 BC */	stw r0, 0x5bc(r31)
lbl_80C9BC58:
/* 80C9BC58  3B 80 00 00 */	li r28, 0
/* 80C9BC5C  3B A0 00 00 */	li r29, 0
lbl_80C9BC60:
/* 80C9BC60  38 9C 05 C4 */	addi r4, r28, 0x5c4
/* 80C9BC64  7C 7F 20 AE */	lbzx r3, r31, r4
/* 80C9BC68  7C 60 07 75 */	extsb. r0, r3
/* 80C9BC6C  41 82 00 BC */	beq lbl_80C9BD28
/* 80C9BC70  38 03 FF FF */	addi r0, r3, -1
/* 80C9BC74  7C 1F 21 AE */	stbx r0, r31, r4
/* 80C9BC78  38 1D 05 BC */	addi r0, r29, 0x5bc
/* 80C9BC7C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80C9BC80  90 01 00 08 */	stw r0, 8(r1)
/* 80C9BC84  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C9BC88  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C9BC8C  38 81 00 08 */	addi r4, r1, 8
/* 80C9BC90  4B 37 DB 69 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C9BC94  7C 64 1B 79 */	or. r4, r3, r3
/* 80C9BC98  41 82 00 90 */	beq lbl_80C9BD28
/* 80C9BC9C  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 80C9BCA0  2C 00 00 00 */	cmpwi r0, 0
/* 80C9BCA4  40 82 00 0C */	bne lbl_80C9BCB0
/* 80C9BCA8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80C9BCAC  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
lbl_80C9BCB0:
/* 80C9BCB0  38 00 00 03 */	li r0, 3
/* 80C9BCB4  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 80C9BCB8  7F 40 07 75 */	extsb. r0, r26
/* 80C9BCBC  41 82 00 50 */	beq lbl_80C9BD0C
/* 80C9BCC0  38 61 00 24 */	addi r3, r1, 0x24
/* 80C9BCC4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C9BCC8  38 A1 00 30 */	addi r5, r1, 0x30
/* 80C9BCCC  4B 5C AE 69 */	bl __mi__4cXyzCFRC3Vec
/* 80C9BCD0  38 61 00 18 */	addi r3, r1, 0x18
/* 80C9BCD4  38 81 00 24 */	addi r4, r1, 0x24
/* 80C9BCD8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80C9BCDC  4B 5C AE A9 */	bl __ml__4cXyzCFf
/* 80C9BCE0  38 61 00 0C */	addi r3, r1, 0xc
/* 80C9BCE4  38 81 00 30 */	addi r4, r1, 0x30
/* 80C9BCE8  38 A1 00 18 */	addi r5, r1, 0x18
/* 80C9BCEC  4B 5C AD F9 */	bl __pl__4cXyzCFRC3Vec
/* 80C9BCF0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C9BCF4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C9BCF8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C9BCFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C9BD00  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C9BD04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C9BD08  48 00 00 1C */	b lbl_80C9BD24
lbl_80C9BD0C:
/* 80C9BD0C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80C9BD10  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C9BD14  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80C9BD18  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C9BD1C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80C9BD20  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_80C9BD24:
/* 80C9BD24  3B 5A 00 01 */	addi r26, r26, 1
lbl_80C9BD28:
/* 80C9BD28  3B 9C 00 01 */	addi r28, r28, 1
/* 80C9BD2C  2C 1C 00 02 */	cmpwi r28, 2
/* 80C9BD30  3B BD 00 04 */	addi r29, r29, 4
/* 80C9BD34  41 80 FF 2C */	blt lbl_80C9BC60
/* 80C9BD38  7F 40 07 75 */	extsb. r0, r26
/* 80C9BD3C  41 82 01 30 */	beq lbl_80C9BE6C
/* 80C9BD40  C3 FE 00 00 */	lfs f31, 0(r30)
/* 80C9BD44  3B 40 04 00 */	li r26, 0x400
/* 80C9BD48  C0 3F 05 9C */	lfs f1, 0x59c(r31)
/* 80C9BD4C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80C9BD50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9BD54  40 81 00 0C */	ble lbl_80C9BD60
/* 80C9BD58  3B 40 40 00 */	li r26, 0x4000
/* 80C9BD5C  C3 FE 00 4C */	lfs f31, 0x4c(r30)
lbl_80C9BD60:
/* 80C9BD60  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C9BD64  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C9BD68  EF C1 00 28 */	fsubs f30, f1, f0
/* 80C9BD6C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80C9BD70  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C9BD74  EF A1 00 28 */	fsubs f29, f1, f0
/* 80C9BD78  FC 20 F0 90 */	fmr f1, f30
/* 80C9BD7C  FC 40 E8 90 */	fmr f2, f29
/* 80C9BD80  4B 5C B8 F5 */	bl cM_atan2s__Fff
/* 80C9BD84  7C 64 1B 78 */	mr r4, r3
/* 80C9BD88  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C9BD8C  38 A0 00 08 */	li r5, 8
/* 80C9BD90  7F 46 D3 78 */	mr r6, r26
/* 80C9BD94  4B 5D 48 75 */	bl cLib_addCalcAngleS2__FPssss
/* 80C9BD98  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 80C9BD9C  EC 1D 07 72 */	fmuls f0, f29, f29
/* 80C9BDA0  EC 41 00 2A */	fadds f2, f1, f0
/* 80C9BDA4  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C9BDA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C9BDAC  40 81 00 0C */	ble lbl_80C9BDB8
/* 80C9BDB0  FC 00 10 34 */	frsqrte f0, f2
/* 80C9BDB4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80C9BDB8:
/* 80C9BDB8  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80C9BDBC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C9BDC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C9BDC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C9BDC8  FC 00 00 1E */	fctiwz f0, f0
/* 80C9BDCC  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80C9BDD0  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 80C9BDD4  3C 60 80 CA */	lis r3, l_HIO@ha /* 0x80C9CEB4@ha */
/* 80C9BDD8  38 63 CE B4 */	addi r3, r3, l_HIO@l /* 0x80C9CEB4@l */
/* 80C9BDDC  A8 03 00 0C */	lha r0, 0xc(r3)
/* 80C9BDE0  C8 3E 00 58 */	lfd f1, 0x58(r30)
/* 80C9BDE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C9BDE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C9BDEC  3C 00 43 30 */	lis r0, 0x4330
/* 80C9BDF0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80C9BDF4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80C9BDF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C9BDFC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C9BE00  FC 00 00 1E */	fctiwz f0, f0
/* 80C9BE04  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80C9BE08  80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 80C9BE0C  A8 BF 05 82 */	lha r5, 0x582(r31)
/* 80C9BE10  7C A0 07 35 */	extsh. r0, r5
/* 80C9BE14  40 82 00 0C */	bne lbl_80C9BE20
/* 80C9BE18  A8 C3 00 0E */	lha r6, 0xe(r3)
/* 80C9BE1C  48 00 00 10 */	b lbl_80C9BE2C
lbl_80C9BE20:
/* 80C9BE20  2C 05 00 03 */	cmpwi r5, 3
/* 80C9BE24  40 82 00 08 */	bne lbl_80C9BE2C
/* 80C9BE28  38 C0 00 00 */	li r6, 0
lbl_80C9BE2C:
/* 80C9BE2C  7C 83 07 34 */	extsh r3, r4
/* 80C9BE30  7C C0 07 34 */	extsh r0, r6
/* 80C9BE34  7C 03 00 00 */	cmpw r3, r0
/* 80C9BE38  40 81 00 0C */	ble lbl_80C9BE44
/* 80C9BE3C  7C C4 33 78 */	mr r4, r6
/* 80C9BE40  48 00 00 18 */	b lbl_80C9BE58
lbl_80C9BE44:
/* 80C9BE44  7C 00 00 D0 */	neg r0, r0
/* 80C9BE48  7C 00 07 34 */	extsh r0, r0
/* 80C9BE4C  7C 03 00 00 */	cmpw r3, r0
/* 80C9BE50  40 80 00 08 */	bge lbl_80C9BE58
/* 80C9BE54  7C 04 03 78 */	mr r4, r0
lbl_80C9BE58:
/* 80C9BE58  38 7F 05 AE */	addi r3, r31, 0x5ae
/* 80C9BE5C  38 A0 00 08 */	li r5, 8
/* 80C9BE60  38 C0 04 00 */	li r6, 0x400
/* 80C9BE64  4B 5D 47 A5 */	bl cLib_addCalcAngleS2__FPssss
/* 80C9BE68  48 00 00 18 */	b lbl_80C9BE80
lbl_80C9BE6C:
/* 80C9BE6C  38 7F 05 AE */	addi r3, r31, 0x5ae
/* 80C9BE70  38 80 00 00 */	li r4, 0
/* 80C9BE74  38 A0 00 04 */	li r5, 4
/* 80C9BE78  38 C0 08 00 */	li r6, 0x800
/* 80C9BE7C  4B 5D 47 8D */	bl cLib_addCalcAngleS2__FPssss
lbl_80C9BE80:
/* 80C9BE80  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80C9BE84  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80C9BE88  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80C9BE8C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80C9BE90  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80C9BE94  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80C9BE98  39 61 00 90 */	addi r11, r1, 0x90
/* 80C9BE9C  4B 6C 63 81 */	bl _restgpr_26
/* 80C9BEA0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C9BEA4  7C 08 03 A6 */	mtlr r0
/* 80C9BEA8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C9BEAC  4E 80 00 20 */	blr 

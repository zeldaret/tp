lbl_801381F8:
/* 801381F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801381FC  7C 08 02 A6 */	mflr r0
/* 80138200  90 01 00 24 */	stw r0, 0x24(r1)
/* 80138204  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80138208  7C 7F 1B 78 */	mr r31, r3
/* 8013820C  4B F7 C7 FD */	bl setTalkStatus__9daAlink_cFv
/* 80138210  7F E3 FB 78 */	mr r3, r31
/* 80138214  38 80 00 01 */	li r4, 1
/* 80138218  4B F7 F9 E1 */	bl orderTalk__9daAlink_cFi
/* 8013821C  2C 03 00 00 */	cmpwi r3, 0
/* 80138220  41 82 00 0C */	beq lbl_8013822C
/* 80138224  38 60 00 01 */	li r3, 1
/* 80138228  48 00 01 9C */	b lbl_801383C4
lbl_8013822C:
/* 8013822C  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 80138230  28 03 00 00 */	cmplwi r3, 0
/* 80138234  41 82 00 44 */	beq lbl_80138278
/* 80138238  A8 03 00 08 */	lha r0, 8(r3)
/* 8013823C  2C 00 02 1F */	cmpwi r0, 0x21f
/* 80138240  40 82 00 38 */	bne lbl_80138278
/* 80138244  7F E3 FB 78 */	mr r3, r31
/* 80138248  38 80 00 39 */	li r4, 0x39
/* 8013824C  4B F7 B0 05 */	bl setDoStatus__9daAlink_cFUc
/* 80138250  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80138254  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80138258  41 82 00 E8 */	beq lbl_80138340
/* 8013825C  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 80138260  38 80 00 00 */	li r4, 0
/* 80138264  4B EE 48 E5 */	bl fopAcM_setCarryNow__FP10fopAc_ac_ci
/* 80138268  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 8013826C  60 00 80 00 */	ori r0, r0, 0x8000
/* 80138270  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80138274  48 00 00 CC */	b lbl_80138340
lbl_80138278:
/* 80138278  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8013827C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80138280  41 82 00 C0 */	beq lbl_80138340
/* 80138284  A8 1F 30 D2 */	lha r0, 0x30d2(r31)
/* 80138288  2C 00 00 00 */	cmpwi r0, 0
/* 8013828C  40 82 00 B4 */	bne lbl_80138340
/* 80138290  7F E3 FB 78 */	mr r3, r31
/* 80138294  38 80 00 39 */	li r4, 0x39
/* 80138298  4B FF 05 75 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8013829C  2C 03 00 00 */	cmpwi r3, 0
/* 801382A0  40 82 00 A0 */	bne lbl_80138340
/* 801382A4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801382A8  28 00 01 29 */	cmplwi r0, 0x129
/* 801382AC  40 82 00 94 */	bne lbl_80138340
/* 801382B0  7F E3 FB 78 */	mr r3, r31
/* 801382B4  38 80 00 09 */	li r4, 9
/* 801382B8  4B F7 AF 99 */	bl setDoStatus__9daAlink_cFUc
/* 801382BC  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 801382C0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801382C4  41 82 00 7C */	beq lbl_80138340
/* 801382C8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801382CC  64 00 00 40 */	oris r0, r0, 0x40
/* 801382D0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 801382D4  88 1F 2F C7 */	lbz r0, 0x2fc7(r31)
/* 801382D8  28 00 00 01 */	cmplwi r0, 1
/* 801382DC  41 82 00 0C */	beq lbl_801382E8
/* 801382E0  28 00 00 03 */	cmplwi r0, 3
/* 801382E4  40 82 00 18 */	bne lbl_801382FC
lbl_801382E8:
/* 801382E8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 801382EC  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 801382F0  A8 03 00 5A */	lha r0, 0x5a(r3)
/* 801382F4  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 801382F8  48 00 00 30 */	b lbl_80138328
lbl_801382FC:
/* 801382FC  28 00 00 02 */	cmplwi r0, 2
/* 80138300  40 82 00 18 */	bne lbl_80138318
/* 80138304  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 80138308  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8013830C  A8 03 00 5E */	lha r0, 0x5e(r3)
/* 80138310  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 80138314  48 00 00 14 */	b lbl_80138328
lbl_80138318:
/* 80138318  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8013831C  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 80138320  A8 03 00 56 */	lha r0, 0x56(r3)
/* 80138324  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
lbl_80138328:
/* 80138328  7F E3 FB 78 */	mr r3, r31
/* 8013832C  38 80 00 39 */	li r4, 0x39
/* 80138330  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlSwim_c0@ha
/* 80138334  38 A5 F8 B4 */	addi r5, r5, m__20daAlinkHIO_wlSwim_c0@l
/* 80138338  38 A5 00 28 */	addi r5, r5, 0x28
/* 8013833C  4B FF 15 0D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
lbl_80138340:
/* 80138340  7F E3 FB 78 */	mr r3, r31
/* 80138344  38 80 00 39 */	li r4, 0x39
/* 80138348  4B FF 04 C5 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8013834C  2C 03 00 00 */	cmpwi r3, 0
/* 80138350  41 82 00 70 */	beq lbl_801383C0
/* 80138354  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 80138358  C0 22 93 74 */	lfs f1, lit_8502(r2)
/* 8013835C  48 1F 00 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 80138360  2C 03 00 00 */	cmpwi r3, 0
/* 80138364  41 82 00 5C */	beq lbl_801383C0
/* 80138368  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8013836C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80138370  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80138374  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80138378  7C 64 02 14 */	add r3, r4, r0
/* 8013837C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80138380  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80138384  C0 42 93 B4 */	lfs f2, lit_10040(r2)
/* 80138388  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013838C  EC 81 00 2A */	fadds f4, f1, f0
/* 80138390  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80138394  7C 04 04 2E */	lfsx f0, r4, r0
/* 80138398  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8013839C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801383A0  EC 01 00 2A */	fadds f0, f1, f0
/* 801383A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 801383A8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801383AC  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 801383B0  38 61 00 08 */	addi r3, r1, 8
/* 801383B4  C0 22 94 AC */	lfs f1, lit_16641(r2)
/* 801383B8  38 80 00 00 */	li r4, 0
/* 801383BC  4B EE 74 C1 */	bl fopKyM_createWpillar__FPC4cXyzfi
lbl_801383C0:
/* 801383C0  38 60 00 00 */	li r3, 0
lbl_801383C4:
/* 801383C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801383C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801383CC  7C 08 03 A6 */	mtlr r0
/* 801383D0  38 21 00 20 */	addi r1, r1, 0x20
/* 801383D4  4E 80 00 20 */	blr 

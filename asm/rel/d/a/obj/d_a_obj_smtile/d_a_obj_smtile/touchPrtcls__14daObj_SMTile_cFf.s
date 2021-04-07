lbl_80CDDEFC:
/* 80CDDEFC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CDDF00  7C 08 02 A6 */	mflr r0
/* 80CDDF04  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CDDF08  39 61 00 90 */	addi r11, r1, 0x90
/* 80CDDF0C  4B 68 42 AD */	bl _savegpr_20
/* 80CDDF10  7C 76 1B 78 */	mr r22, r3
/* 80CDDF14  3C 60 80 CE */	lis r3, m__20daObj_SMTile_Param_c@ha /* 0x80CDE35C@ha */
/* 80CDDF18  3B A3 E3 5C */	addi r29, r3, m__20daObj_SMTile_Param_c@l /* 0x80CDE35C@l */
/* 80CDDF1C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80CDDF20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CDDF24  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CDDF28  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CDDF2C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80CDDF30  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CDDF34  FC 00 00 1E */	fctiwz f0, f0
/* 80CDDF38  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80CDDF3C  83 01 00 5C */	lwz r24, 0x5c(r1)
/* 80CDDF40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDDF44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDDF48  A8 96 04 DE */	lha r4, 0x4de(r22)
/* 80CDDF4C  4B 32 E4 91 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CDDF50  3A E0 00 00 */	li r23, 0
/* 80CDDF54  3A A0 00 00 */	li r21, 0
/* 80CDDF58  3A 80 00 00 */	li r20, 0
/* 80CDDF5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDDF60  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDDF64  3B 9D 00 00 */	addi r28, r29, 0
lbl_80CDDF68:
/* 80CDDF68  7F 76 A2 14 */	add r27, r22, r20
/* 80CDDF6C  80 DB 0A 28 */	lwz r6, 0xa28(r27)
/* 80CDDF70  2C 06 00 01 */	cmpwi r6, 1
/* 80CDDF74  41 82 00 0C */	beq lbl_80CDDF80
/* 80CDDF78  2C 06 00 02 */	cmpwi r6, 2
/* 80CDDF7C  40 82 02 00 */	bne lbl_80CDE17C
lbl_80CDDF80:
/* 80CDDF80  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CDDF84  38 00 00 FF */	li r0, 0xff
/* 80CDDF88  90 01 00 08 */	stw r0, 8(r1)
/* 80CDDF8C  38 80 00 00 */	li r4, 0
/* 80CDDF90  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CDDF94  38 00 FF FF */	li r0, -1
/* 80CDDF98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CDDF9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CDDFA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CDDFA4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CDDFA8  80 9B 0A D4 */	lwz r4, 0xad4(r27)
/* 80CDDFAC  38 A0 00 00 */	li r5, 0
/* 80CDDFB0  54 C0 08 3C */	slwi r0, r6, 1
/* 80CDDFB4  38 DD 00 20 */	addi r6, r29, 0x20
/* 80CDDFB8  7C C6 02 2E */	lhzx r6, r6, r0
/* 80CDDFBC  7F 56 AA 14 */	add r26, r22, r21
/* 80CDDFC0  3B 3A 07 88 */	addi r25, r26, 0x788
/* 80CDDFC4  7F 27 CB 78 */	mr r7, r25
/* 80CDDFC8  39 00 00 00 */	li r8, 0
/* 80CDDFCC  39 20 00 00 */	li r9, 0
/* 80CDDFD0  39 40 00 00 */	li r10, 0
/* 80CDDFD4  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80CDDFD8  4B 36 F4 F5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CDDFDC  90 7B 0A D4 */	stw r3, 0xad4(r27)
/* 80CDDFE0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CDDFE4  38 63 02 10 */	addi r3, r3, 0x210
/* 80CDDFE8  80 9B 0A D4 */	lwz r4, 0xad4(r27)
/* 80CDDFEC  4B 36 D9 2D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80CDDFF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDDFF4  41 82 01 88 */	beq lbl_80CDE17C
/* 80CDDFF8  C0 5C 00 04 */	lfs f2, 4(r28)
/* 80CDDFFC  80 1B 09 80 */	lwz r0, 0x980(r27)
/* 80CDE000  C8 3D 00 18 */	lfd f1, 0x18(r29)
/* 80CDE004  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CDE008  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80CDE00C  3C 00 43 30 */	lis r0, 0x4330
/* 80CDE010  90 01 00 58 */	stw r0, 0x58(r1)
/* 80CDE014  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80CDE018  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CDE01C  EC 62 00 28 */	fsubs f3, f2, f0
/* 80CDE020  EC 63 10 24 */	fdivs f3, f3, f2
/* 80CDE024  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80CDE028  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CDE02C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CDE030  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CDE034  3C 60 80 CE */	lis r3, l_tileMoveData@ha /* 0x80CDE3A4@ha */
/* 80CDE038  38 03 E3 A4 */	addi r0, r3, l_tileMoveData@l /* 0x80CDE3A4@l */
/* 80CDE03C  7C 60 A2 14 */	add r3, r0, r20
/* 80CDE040  88 03 00 03 */	lbz r0, 3(r3)
/* 80CDE044  2C 00 00 02 */	cmpwi r0, 2
/* 80CDE048  41 82 00 44 */	beq lbl_80CDE08C
/* 80CDE04C  40 80 00 14 */	bge lbl_80CDE060
/* 80CDE050  2C 00 00 00 */	cmpwi r0, 0
/* 80CDE054  41 82 00 18 */	beq lbl_80CDE06C
/* 80CDE058  40 80 00 24 */	bge lbl_80CDE07C
/* 80CDE05C  48 00 00 5C */	b lbl_80CDE0B8
lbl_80CDE060:
/* 80CDE060  2C 00 00 04 */	cmpwi r0, 4
/* 80CDE064  40 80 00 54 */	bge lbl_80CDE0B8
/* 80CDE068  48 00 00 3C */	b lbl_80CDE0A4
lbl_80CDE06C:
/* 80CDE06C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CDE070  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CDE074  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CDE078  48 00 00 40 */	b lbl_80CDE0B8
lbl_80CDE07C:
/* 80CDE07C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CDE080  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CDE084  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CDE088  48 00 00 30 */	b lbl_80CDE0B8
lbl_80CDE08C:
/* 80CDE08C  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80CDE090  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CDE094  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CDE098  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDE09C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CDE0A0  48 00 00 18 */	b lbl_80CDE0B8
lbl_80CDE0A4:
/* 80CDE0A4  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80CDE0A8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CDE0AC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CDE0B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDE0B4  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80CDE0B8:
/* 80CDE0B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDE0BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDE0C0  38 81 00 48 */	addi r4, r1, 0x48
/* 80CDE0C4  7C 85 23 78 */	mr r5, r4
/* 80CDE0C8  4B 66 8C A5 */	bl PSMTXMultVec
/* 80CDE0CC  38 61 00 30 */	addi r3, r1, 0x30
/* 80CDE0D0  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80CDE0D4  38 BA 06 8C */	addi r5, r26, 0x68c
/* 80CDE0D8  4B 58 8A 0D */	bl __pl__4cXyzCFRC3Vec
/* 80CDE0DC  38 61 00 24 */	addi r3, r1, 0x24
/* 80CDE0E0  38 81 00 30 */	addi r4, r1, 0x30
/* 80CDE0E4  38 A1 00 48 */	addi r5, r1, 0x48
/* 80CDE0E8  4B 58 89 FD */	bl __pl__4cXyzCFRC3Vec
/* 80CDE0EC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CDE0F0  D0 1A 07 88 */	stfs f0, 0x788(r26)
/* 80CDE0F4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CDE0F8  D0 1A 07 8C */	stfs f0, 0x78c(r26)
/* 80CDE0FC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CDE100  D0 1A 07 90 */	stfs f0, 0x790(r26)
/* 80CDE104  80 1B 09 80 */	lwz r0, 0x980(r27)
/* 80CDE108  2C 00 00 00 */	cmpwi r0, 0
/* 80CDE10C  40 81 00 54 */	ble lbl_80CDE160
/* 80CDE110  38 7B 09 80 */	addi r3, r27, 0x980
/* 80CDE114  48 00 01 91 */	bl func_80CDE2A4
/* 80CDE118  2C 03 00 00 */	cmpwi r3, 0
/* 80CDE11C  40 82 00 44 */	bne lbl_80CDE160
/* 80CDE120  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008028F@ha */
/* 80CDE124  38 03 02 8F */	addi r0, r3, 0x028F /* 0x0008028F@l */
/* 80CDE128  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CDE12C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CDE130  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CDE134  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDE138  38 81 00 20 */	addi r4, r1, 0x20
/* 80CDE13C  7F 25 CB 78 */	mr r5, r25
/* 80CDE140  38 C0 00 00 */	li r6, 0
/* 80CDE144  38 E0 00 00 */	li r7, 0
/* 80CDE148  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80CDE14C  FC 40 08 90 */	fmr f2, f1
/* 80CDE150  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 80CDE154  FC 80 18 90 */	fmr f4, f3
/* 80CDE158  39 00 00 00 */	li r8, 0
/* 80CDE15C  4B 5C D8 29 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CDE160:
/* 80CDE160  C0 5A 07 90 */	lfs f2, 0x790(r26)
/* 80CDE164  C0 3A 07 8C */	lfs f1, 0x78c(r26)
/* 80CDE168  C0 1A 07 88 */	lfs f0, 0x788(r26)
/* 80CDE16C  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
/* 80CDE170  D0 3F 00 A8 */	stfs f1, 0xa8(r31)
/* 80CDE174  D0 5F 00 AC */	stfs f2, 0xac(r31)
/* 80CDE178  9B 1F 00 BB */	stb r24, 0xbb(r31)
lbl_80CDE17C:
/* 80CDE17C  3A F7 00 01 */	addi r23, r23, 1
/* 80CDE180  2C 17 00 15 */	cmpwi r23, 0x15
/* 80CDE184  3A B5 00 0C */	addi r21, r21, 0xc
/* 80CDE188  3A 94 00 04 */	addi r20, r20, 4
/* 80CDE18C  41 80 FD DC */	blt lbl_80CDDF68
/* 80CDE190  39 61 00 90 */	addi r11, r1, 0x90
/* 80CDE194  4B 68 40 71 */	bl _restgpr_20
/* 80CDE198  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CDE19C  7C 08 03 A6 */	mtlr r0
/* 80CDE1A0  38 21 00 90 */	addi r1, r1, 0x90
/* 80CDE1A4  4E 80 00 20 */	blr 

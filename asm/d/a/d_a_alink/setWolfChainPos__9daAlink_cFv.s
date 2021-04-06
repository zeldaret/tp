lbl_8012C30C:
/* 8012C30C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8012C310  7C 08 02 A6 */	mflr r0
/* 8012C314  90 01 01 54 */	stw r0, 0x154(r1)
/* 8012C318  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 8012C31C  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 8012C320  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 8012C324  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 8012C328  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 8012C32C  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 8012C330  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 8012C334  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 8012C338  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 8012C33C  F3 61 01 08 */	psq_st f27, 264(r1), 0, 0 /* qr0 */
/* 8012C340  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 8012C344  F3 41 00 F8 */	psq_st f26, 248(r1), 0, 0 /* qr0 */
/* 8012C348  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8012C34C  48 23 5E 59 */	bl _savegpr_15
/* 8012C350  7C 7C 1B 78 */	mr r28, r3
/* 8012C354  88 03 2F BF */	lbz r0, 0x2fbf(r3)
/* 8012C358  28 00 00 00 */	cmplwi r0, 0
/* 8012C35C  40 82 07 68 */	bne lbl_8012CAC4
/* 8012C360  3B DC 36 3C */	addi r30, r28, 0x363c
/* 8012C364  3B BC 36 6C */	addi r29, r28, 0x366c
/* 8012C368  3B FC 31 42 */	addi r31, r28, 0x3142
/* 8012C36C  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 8012C370  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8012C374  41 82 00 38 */	beq lbl_8012C3AC
/* 8012C378  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8012C37C  38 63 0C F4 */	addi r3, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8012C380  38 00 00 04 */	li r0, 4
/* 8012C384  7C 09 03 A6 */	mtctr r0
lbl_8012C388:
/* 8012C388  C0 03 00 00 */	lfs f0, 0(r3)
/* 8012C38C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8012C390  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012C394  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8012C398  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012C39C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8012C3A0  3B BD 00 0C */	addi r29, r29, 0xc
/* 8012C3A4  42 00 FF E4 */	bdnz lbl_8012C388
/* 8012C3A8  3B BC 36 6C */	addi r29, r28, 0x366c
lbl_8012C3AC:
/* 8012C3AC  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 8012C3B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012C3B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012C3B8  38 63 03 30 */	addi r3, r3, 0x330
/* 8012C3BC  3C 80 80 39 */	lis r4, wolfChainBaseOffset@ha /* 0x80391E30@ha */
/* 8012C3C0  38 84 1E 30 */	addi r4, r4, wolfChainBaseOffset@l /* 0x80391E30@l */
/* 8012C3C4  38 A1 00 7C */	addi r5, r1, 0x7c
/* 8012C3C8  48 21 A9 A5 */	bl PSMTXMultVec
/* 8012C3CC  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 8012C3D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012C3D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012C3D8  38 63 03 30 */	addi r3, r3, 0x330
/* 8012C3DC  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 8012C3E0  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 8012C3E4  38 A1 00 70 */	addi r5, r1, 0x70
/* 8012C3E8  48 21 AA 65 */	bl PSMTXMultVecSR
/* 8012C3EC  38 61 00 70 */	addi r3, r1, 0x70
/* 8012C3F0  48 13 AD 39 */	bl atan2sX_Z__4cXyzCFv
/* 8012C3F4  7C 70 1B 78 */	mr r16, r3
/* 8012C3F8  38 61 00 70 */	addi r3, r1, 0x70
/* 8012C3FC  48 13 AD 55 */	bl atan2sY_XZ__4cXyzCFv
/* 8012C400  7C 6F 1B 78 */	mr r15, r3
/* 8012C404  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 8012C408  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012C40C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012C410  38 63 03 30 */	addi r3, r3, 0x330
/* 8012C414  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 8012C418  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 8012C41C  38 A1 00 70 */	addi r5, r1, 0x70
/* 8012C420  48 21 AA 2D */	bl PSMTXMultVecSR
/* 8012C424  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8012C428  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8012C42C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012C430  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8012C434  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8012C438  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8012C43C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8012C440  48 21 AC F9 */	bl PSVECSquareMag
/* 8012C444  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012C448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012C44C  40 81 00 58 */	ble lbl_8012C4A4
/* 8012C450  FC 00 08 34 */	frsqrte f0, f1
/* 8012C454  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012C458  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C45C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012C460  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C464  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C468  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C46C  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C470  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C474  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C478  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C47C  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C480  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C484  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C488  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C48C  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C490  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C494  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C498  FC 41 00 32 */	fmul f2, f1, f0
/* 8012C49C  FC 40 10 18 */	frsp f2, f2
/* 8012C4A0  48 00 00 90 */	b lbl_8012C530
lbl_8012C4A4:
/* 8012C4A4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012C4A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012C4AC  40 80 00 10 */	bge lbl_8012C4BC
/* 8012C4B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012C4B4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012C4B8  48 00 00 78 */	b lbl_8012C530
lbl_8012C4BC:
/* 8012C4BC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8012C4C0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8012C4C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012C4C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012C4CC  7C 03 00 00 */	cmpw r3, r0
/* 8012C4D0  41 82 00 14 */	beq lbl_8012C4E4
/* 8012C4D4  40 80 00 40 */	bge lbl_8012C514
/* 8012C4D8  2C 03 00 00 */	cmpwi r3, 0
/* 8012C4DC  41 82 00 20 */	beq lbl_8012C4FC
/* 8012C4E0  48 00 00 34 */	b lbl_8012C514
lbl_8012C4E4:
/* 8012C4E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012C4E8  41 82 00 0C */	beq lbl_8012C4F4
/* 8012C4EC  38 00 00 01 */	li r0, 1
/* 8012C4F0  48 00 00 28 */	b lbl_8012C518
lbl_8012C4F4:
/* 8012C4F4  38 00 00 02 */	li r0, 2
/* 8012C4F8  48 00 00 20 */	b lbl_8012C518
lbl_8012C4FC:
/* 8012C4FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012C500  41 82 00 0C */	beq lbl_8012C50C
/* 8012C504  38 00 00 05 */	li r0, 5
/* 8012C508  48 00 00 10 */	b lbl_8012C518
lbl_8012C50C:
/* 8012C50C  38 00 00 03 */	li r0, 3
/* 8012C510  48 00 00 08 */	b lbl_8012C518
lbl_8012C514:
/* 8012C514  38 00 00 04 */	li r0, 4
lbl_8012C518:
/* 8012C518  2C 00 00 01 */	cmpwi r0, 1
/* 8012C51C  40 82 00 10 */	bne lbl_8012C52C
/* 8012C520  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012C524  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012C528  48 00 00 08 */	b lbl_8012C530
lbl_8012C52C:
/* 8012C52C  FC 40 08 90 */	fmr f2, f1
lbl_8012C530:
/* 8012C530  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8012C534  48 13 B1 41 */	bl cM_atan2s__Fff
/* 8012C538  38 03 40 00 */	addi r0, r3, 0x4000
/* 8012C53C  7C 1B 07 34 */	extsh r27, r0
/* 8012C540  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 8012C544  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8012C548  40 82 01 04 */	bne lbl_8012C64C
/* 8012C54C  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 8012C550  64 00 00 20 */	oris r0, r0, 0x20
/* 8012C554  90 1C 05 74 */	stw r0, 0x574(r28)
/* 8012C558  38 61 00 7C */	addi r3, r1, 0x7c
/* 8012C55C  4B EE 08 09 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8012C560  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012C564  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8012C568  38 80 E0 00 */	li r4, -8192
/* 8012C56C  7E 05 83 78 */	mr r5, r16
/* 8012C570  38 C0 00 00 */	li r6, 0
/* 8012C574  4B ED FD 2D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8012C578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012C57C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8012C580  3C 80 80 39 */	lis r4, wolfChainVec@ha /* 0x80391E3C@ha */
/* 8012C584  38 84 1E 3C */	addi r4, r4, wolfChainVec@l /* 0x80391E3C@l */
/* 8012C588  7F C5 F3 78 */	mr r5, r30
/* 8012C58C  48 21 A7 E1 */	bl PSMTXMultVec
/* 8012C590  38 00 E0 00 */	li r0, -8192
/* 8012C594  B0 1F 00 00 */	sth r0, 0(r31)
/* 8012C598  B2 1F 00 02 */	sth r16, 2(r31)
/* 8012C59C  B3 7F 00 04 */	sth r27, 4(r31)
/* 8012C5A0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8012C5A4  38 83 0C F4 */	addi r4, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8012C5A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8012C5AC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8012C5B0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8012C5B4  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8012C5B8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8012C5BC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8012C5C0  C0 22 93 34 */	lfs f1, lit_7710(r2)
/* 8012C5C4  38 00 00 03 */	li r0, 3
/* 8012C5C8  7C 09 03 A6 */	mtctr r0
/* 8012C5CC  3B DE 00 0C */	addi r30, r30, 0xc
/* 8012C5D0  3B BD 00 0C */	addi r29, r29, 0xc
/* 8012C5D4  3B FF 00 06 */	addi r31, r31, 6
lbl_8012C5D8:
/* 8012C5D8  C0 1E FF F4 */	lfs f0, -0xc(r30)
/* 8012C5DC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8012C5E0  C0 1E FF F8 */	lfs f0, -8(r30)
/* 8012C5E4  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8012C5E8  C0 1E FF FC */	lfs f0, -4(r30)
/* 8012C5EC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8012C5F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8012C5F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012C5F8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8012C5FC  A8 1F FF FA */	lha r0, -6(r31)
/* 8012C600  B0 1F 00 00 */	sth r0, 0(r31)
/* 8012C604  A8 1F FF FC */	lha r0, -4(r31)
/* 8012C608  B0 1F 00 02 */	sth r0, 2(r31)
/* 8012C60C  A8 1F FF FE */	lha r0, -2(r31)
/* 8012C610  B0 1F 00 04 */	sth r0, 4(r31)
/* 8012C614  A8 7F 00 04 */	lha r3, 4(r31)
/* 8012C618  38 03 40 00 */	addi r0, r3, 0x4000
/* 8012C61C  B0 1F 00 04 */	sth r0, 4(r31)
/* 8012C620  C0 04 00 00 */	lfs f0, 0(r4)
/* 8012C624  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8012C628  C0 04 00 04 */	lfs f0, 4(r4)
/* 8012C62C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8012C630  C0 04 00 08 */	lfs f0, 8(r4)
/* 8012C634  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8012C638  3B DE 00 0C */	addi r30, r30, 0xc
/* 8012C63C  3B BD 00 0C */	addi r29, r29, 0xc
/* 8012C640  3B FF 00 06 */	addi r31, r31, 6
/* 8012C644  42 00 FF 94 */	bdnz lbl_8012C5D8
/* 8012C648  48 00 04 0C */	b lbl_8012CA54
lbl_8012C64C:
/* 8012C64C  3A A0 00 00 */	li r21, 0
/* 8012C650  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8012C654  3B 43 0C F4 */	addi r26, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8012C658  7E 17 07 34 */	extsh r23, r16
/* 8012C65C  3A 37 20 00 */	addi r17, r23, 0x2000
/* 8012C660  3A 77 E0 00 */	addi r19, r23, -8192
/* 8012C664  7D F6 07 34 */	extsh r22, r15
/* 8012C668  3A 96 20 00 */	addi r20, r22, 0x2000
/* 8012C66C  3B 36 E0 00 */	addi r25, r22, -8192
/* 8012C670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012C674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012C678  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 8012C67C  C3 C2 97 5C */	lfs f30, lit_45756(r2)
/* 8012C680  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 8012C684  C3 62 92 B8 */	lfs f27, lit_6040(r2)
/* 8012C688  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012C68C  3A 03 D4 70 */	addi r16, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8012C690  3C 60 80 39 */	lis r3, wolfChainVec@ha /* 0x80391E3C@ha */
/* 8012C694  39 E3 1E 3C */	addi r15, r3, wolfChainVec@l /* 0x80391E3C@l */
/* 8012C698  C3 82 93 30 */	lfs f28, lit_7625(r2)
/* 8012C69C  C3 A2 92 C4 */	lfs f29, lit_6109(r2)
lbl_8012C6A0:
/* 8012C6A0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8012C6A4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8012C6A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8012C6AC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8012C6B0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8012C6B4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8012C6B8  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 8012C6BC  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8012C6C0  41 82 00 24 */	beq lbl_8012C6E4
/* 8012C6C4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8012C6C8  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 8012C6CC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8012C6D0  C0 1A 00 04 */	lfs f0, 4(r26)
/* 8012C6D4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8012C6D8  C0 1A 00 08 */	lfs f0, 8(r26)
/* 8012C6DC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8012C6E0  48 00 00 3C */	b lbl_8012C71C
lbl_8012C6E4:
/* 8012C6E4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8012C6E8  7F C4 F3 78 */	mr r4, r30
/* 8012C6EC  38 A1 00 7C */	addi r5, r1, 0x7c
/* 8012C6F0  48 13 A4 45 */	bl __mi__4cXyzCFRC3Vec
/* 8012C6F4  38 61 00 40 */	addi r3, r1, 0x40
/* 8012C6F8  38 81 00 4C */	addi r4, r1, 0x4c
/* 8012C6FC  7F A5 EB 78 */	mr r5, r29
/* 8012C700  48 13 A3 E5 */	bl __pl__4cXyzCFRC3Vec
/* 8012C704  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8012C708  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8012C70C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8012C710  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8012C714  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8012C718  D0 01 00 78 */	stfs f0, 0x78(r1)
lbl_8012C71C:
/* 8012C71C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8012C720  EC 00 F0 2A */	fadds f0, f0, f30
/* 8012C724  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8012C728  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8012C72C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8012C730  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 8012C734  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8012C738  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8012C73C  38 61 00 10 */	addi r3, r1, 0x10
/* 8012C740  48 21 A9 F9 */	bl PSVECSquareMag
/* 8012C744  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012C748  40 81 00 58 */	ble lbl_8012C7A0
/* 8012C74C  FC 00 08 34 */	frsqrte f0, f1
/* 8012C750  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012C754  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C758  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012C75C  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C760  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C764  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C768  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C76C  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C770  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C774  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C778  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C77C  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C780  FC 44 00 32 */	fmul f2, f4, f0
/* 8012C784  FC 00 00 32 */	fmul f0, f0, f0
/* 8012C788  FC 01 00 32 */	fmul f0, f1, f0
/* 8012C78C  FC 03 00 28 */	fsub f0, f3, f0
/* 8012C790  FC 02 00 32 */	fmul f0, f2, f0
/* 8012C794  FF 41 00 32 */	fmul f26, f1, f0
/* 8012C798  FF 40 D0 18 */	frsp f26, f26
/* 8012C79C  48 00 00 90 */	b lbl_8012C82C
lbl_8012C7A0:
/* 8012C7A0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012C7A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012C7A8  40 80 00 10 */	bge lbl_8012C7B8
/* 8012C7AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012C7B0  C3 43 0A E0 */	lfs f26, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012C7B4  48 00 00 78 */	b lbl_8012C82C
lbl_8012C7B8:
/* 8012C7B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8012C7BC  80 81 00 08 */	lwz r4, 8(r1)
/* 8012C7C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012C7C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012C7C8  7C 03 00 00 */	cmpw r3, r0
/* 8012C7CC  41 82 00 14 */	beq lbl_8012C7E0
/* 8012C7D0  40 80 00 40 */	bge lbl_8012C810
/* 8012C7D4  2C 03 00 00 */	cmpwi r3, 0
/* 8012C7D8  41 82 00 20 */	beq lbl_8012C7F8
/* 8012C7DC  48 00 00 34 */	b lbl_8012C810
lbl_8012C7E0:
/* 8012C7E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012C7E4  41 82 00 0C */	beq lbl_8012C7F0
/* 8012C7E8  38 00 00 01 */	li r0, 1
/* 8012C7EC  48 00 00 28 */	b lbl_8012C814
lbl_8012C7F0:
/* 8012C7F0  38 00 00 02 */	li r0, 2
/* 8012C7F4  48 00 00 20 */	b lbl_8012C814
lbl_8012C7F8:
/* 8012C7F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012C7FC  41 82 00 0C */	beq lbl_8012C808
/* 8012C800  38 00 00 05 */	li r0, 5
/* 8012C804  48 00 00 10 */	b lbl_8012C814
lbl_8012C808:
/* 8012C808  38 00 00 03 */	li r0, 3
/* 8012C80C  48 00 00 08 */	b lbl_8012C814
lbl_8012C810:
/* 8012C810  38 00 00 04 */	li r0, 4
lbl_8012C814:
/* 8012C814  2C 00 00 01 */	cmpwi r0, 1
/* 8012C818  40 82 00 10 */	bne lbl_8012C828
/* 8012C81C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012C820  C3 43 0A E0 */	lfs f26, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012C824  48 00 00 08 */	b lbl_8012C82C
lbl_8012C828:
/* 8012C828  FF 40 08 90 */	fmr f26, f1
lbl_8012C82C:
/* 8012C82C  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8012C830  FC 40 D0 90 */	fmr f2, f26
/* 8012C834  48 13 AE 41 */	bl cM_atan2s__Fff
/* 8012C838  7C 72 1B 78 */	mr r18, r3
/* 8012C83C  FC 1A D8 40 */	fcmpo cr0, f26, f27
/* 8012C840  40 80 00 0C */	bge lbl_8012C84C
/* 8012C844  A8 7F 00 02 */	lha r3, 2(r31)
/* 8012C848  48 00 00 18 */	b lbl_8012C860
lbl_8012C84C:
/* 8012C84C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8012C850  FC 20 00 50 */	fneg f1, f0
/* 8012C854  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8012C858  FC 40 00 50 */	fneg f2, f0
/* 8012C85C  48 13 AE 19 */	bl cM_atan2s__Fff
lbl_8012C860:
/* 8012C860  2C 15 00 00 */	cmpwi r21, 0
/* 8012C864  40 82 00 4C */	bne lbl_8012C8B0
/* 8012C868  7C 17 18 50 */	subf r0, r23, r3
/* 8012C86C  7C 00 07 34 */	extsh r0, r0
/* 8012C870  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8012C874  40 81 00 0C */	ble lbl_8012C880
/* 8012C878  7E 23 07 34 */	extsh r3, r17
/* 8012C87C  48 00 00 10 */	b lbl_8012C88C
lbl_8012C880:
/* 8012C880  2C 00 E0 00 */	cmpwi r0, -8192
/* 8012C884  40 80 00 08 */	bge lbl_8012C88C
/* 8012C888  7E 63 07 34 */	extsh r3, r19
lbl_8012C88C:
/* 8012C88C  7C 16 90 50 */	subf r0, r22, r18
/* 8012C890  7C 00 07 34 */	extsh r0, r0
/* 8012C894  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8012C898  40 81 00 0C */	ble lbl_8012C8A4
/* 8012C89C  7E 92 07 34 */	extsh r18, r20
/* 8012C8A0  48 00 00 10 */	b lbl_8012C8B0
lbl_8012C8A4:
/* 8012C8A4  2C 00 E0 00 */	cmpwi r0, -8192
/* 8012C8A8  40 80 00 08 */	bge lbl_8012C8B0
/* 8012C8AC  7F 32 07 34 */	extsh r18, r25
lbl_8012C8B0:
/* 8012C8B0  B2 5F 00 00 */	sth r18, 0(r31)
/* 8012C8B4  B0 7F 00 02 */	sth r3, 2(r31)
/* 8012C8B8  B3 7F 00 04 */	sth r27, 4(r31)
/* 8012C8BC  38 61 00 7C */	addi r3, r1, 0x7c
/* 8012C8C0  4B EE 04 A5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8012C8C4  7F E3 FB 78 */	mr r3, r31
/* 8012C8C8  4B EE 06 7D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8012C8CC  7E 03 83 78 */	mr r3, r16
/* 8012C8D0  7D E4 7B 78 */	mr r4, r15
/* 8012C8D4  7F C5 F3 78 */	mr r5, r30
/* 8012C8D8  48 21 A4 95 */	bl PSMTXMultVec
/* 8012C8DC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8012C8E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8012C8E4  EC 3C 00 2A */	fadds f1, f28, f0
/* 8012C8E8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8012C8EC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8012C8F0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8012C8F4  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8012C8F8  38 7C 1D 08 */	addi r3, r28, 0x1d08
/* 8012C8FC  38 81 00 58 */	addi r4, r1, 0x58
/* 8012C900  48 13 B4 29 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8012C904  7F 03 C3 78 */	mr r3, r24
/* 8012C908  38 9C 1D 08 */	addi r4, r28, 0x1d08
/* 8012C90C  4B F4 7B 95 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8012C910  EC 3D 08 2A */	fadds f1, f29, f1
/* 8012C914  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8012C918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012C91C  40 81 00 C4 */	ble lbl_8012C9E0
/* 8012C920  EC 41 00 28 */	fsubs f2, f1, f0
/* 8012C924  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8012C928  EC 20 10 2A */	fadds f1, f0, f2
/* 8012C92C  EC 5A 10 2A */	fadds f2, f26, f2
/* 8012C930  48 13 AD 45 */	bl cM_atan2s__Fff
/* 8012C934  B0 7F 00 00 */	sth r3, 0(r31)
/* 8012C938  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8012C93C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8012C940  90 01 00 98 */	stw r0, 0x98(r1)
/* 8012C944  7F 03 C3 78 */	mr r3, r24
/* 8012C948  38 9C 1D 1C */	addi r4, r28, 0x1d1c
/* 8012C94C  38 A1 00 88 */	addi r5, r1, 0x88
/* 8012C950  4B F4 7D F5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8012C954  38 61 00 88 */	addi r3, r1, 0x88
/* 8012C958  A8 9F 00 02 */	lha r4, 2(r31)
/* 8012C95C  38 04 40 00 */	addi r0, r4, 0x4000
/* 8012C960  7C 04 07 34 */	extsh r4, r0
/* 8012C964  4B EF 12 75 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 8012C968  B0 7F 00 04 */	sth r3, 4(r31)
/* 8012C96C  A8 7F 00 04 */	lha r3, 4(r31)
/* 8012C970  A8 1F FF FE */	lha r0, -2(r31)
/* 8012C974  7C 03 00 50 */	subf r0, r3, r0
/* 8012C978  7C 00 07 35 */	extsh. r0, r0
/* 8012C97C  41 80 00 0C */	blt lbl_8012C988
/* 8012C980  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8012C984  40 81 00 0C */	ble lbl_8012C990
lbl_8012C988:
/* 8012C988  2C 00 C0 00 */	cmpwi r0, -16384
/* 8012C98C  40 80 00 14 */	bge lbl_8012C9A0
lbl_8012C990:
/* 8012C990  A8 7F 00 04 */	lha r3, 4(r31)
/* 8012C994  38 03 E0 00 */	addi r0, r3, -8192
/* 8012C998  B0 1F 00 04 */	sth r0, 4(r31)
/* 8012C99C  48 00 00 10 */	b lbl_8012C9AC
lbl_8012C9A0:
/* 8012C9A0  A8 7F 00 04 */	lha r3, 4(r31)
/* 8012C9A4  38 03 20 00 */	addi r0, r3, 0x2000
/* 8012C9A8  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8012C9AC:
/* 8012C9AC  38 61 00 7C */	addi r3, r1, 0x7c
/* 8012C9B0  4B EE 03 B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8012C9B4  7F E3 FB 78 */	mr r3, r31
/* 8012C9B8  4B EE 05 8D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8012C9BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012C9C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8012C9C4  3C 80 80 39 */	lis r4, wolfChainVec@ha /* 0x80391E3C@ha */
/* 8012C9C8  38 84 1E 3C */	addi r4, r4, wolfChainVec@l /* 0x80391E3C@l */
/* 8012C9CC  7F C5 F3 78 */	mr r5, r30
/* 8012C9D0  48 21 A3 9D */	bl PSMTXMultVec
/* 8012C9D4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8012C9D8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8012C9DC  90 01 00 98 */	stw r0, 0x98(r1)
lbl_8012C9E0:
/* 8012C9E0  38 61 00 34 */	addi r3, r1, 0x34
/* 8012C9E4  7F C4 F3 78 */	mr r4, r30
/* 8012C9E8  38 A1 00 64 */	addi r5, r1, 0x64
/* 8012C9EC  48 13 A1 49 */	bl __mi__4cXyzCFRC3Vec
/* 8012C9F0  38 61 00 28 */	addi r3, r1, 0x28
/* 8012C9F4  38 81 00 34 */	addi r4, r1, 0x34
/* 8012C9F8  C0 22 94 08 */	lfs f1, lit_14064(r2)
/* 8012C9FC  48 13 A1 89 */	bl __ml__4cXyzCFf
/* 8012CA00  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8012CA04  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8012CA08  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8012CA0C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8012CA10  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8012CA14  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8012CA18  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8012CA1C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8012CA20  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8012CA24  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8012CA28  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8012CA2C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8012CA30  A8 7F 00 04 */	lha r3, 4(r31)
/* 8012CA34  38 03 40 00 */	addi r0, r3, 0x4000
/* 8012CA38  7C 1B 07 34 */	extsh r27, r0
/* 8012CA3C  3A B5 00 01 */	addi r21, r21, 1
/* 8012CA40  2C 15 00 04 */	cmpwi r21, 4
/* 8012CA44  3B DE 00 0C */	addi r30, r30, 0xc
/* 8012CA48  3B BD 00 0C */	addi r29, r29, 0xc
/* 8012CA4C  3B FF 00 06 */	addi r31, r31, 6
/* 8012CA50  41 80 FC 50 */	blt lbl_8012C6A0
lbl_8012CA54:
/* 8012CA54  3A 80 00 00 */	li r20, 0
/* 8012CA58  39 E0 00 00 */	li r15, 0
/* 8012CA5C  3A 00 00 00 */	li r16, 0
/* 8012CA60  7E 91 A3 78 */	mr r17, r20
/* 8012CA64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012CA68  3A 43 D4 70 */	addi r18, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8012CA6C:
/* 8012CA6C  38 71 36 3C */	addi r3, r17, 0x363c
/* 8012CA70  7C 7C 1A 14 */	add r3, r28, r3
/* 8012CA74  4B EE 02 F1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8012CA78  38 70 31 42 */	addi r3, r16, 0x3142
/* 8012CA7C  7C 7C 1A 14 */	add r3, r28, r3
/* 8012CA80  4B EE 04 C5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8012CA84  7E 43 93 78 */	mr r3, r18
/* 8012CA88  3A 6F 07 8C */	addi r19, r15, 0x78c
/* 8012CA8C  7C 9C 98 2E */	lwzx r4, r28, r19
/* 8012CA90  38 84 00 24 */	addi r4, r4, 0x24
/* 8012CA94  48 21 9A 1D */	bl PSMTXCopy
/* 8012CA98  7C 7C 98 2E */	lwzx r3, r28, r19
/* 8012CA9C  81 83 00 00 */	lwz r12, 0(r3)
/* 8012CAA0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8012CAA4  7D 89 03 A6 */	mtctr r12
/* 8012CAA8  4E 80 04 21 */	bctrl 
/* 8012CAAC  3A 94 00 01 */	addi r20, r20, 1
/* 8012CAB0  2C 14 00 04 */	cmpwi r20, 4
/* 8012CAB4  39 EF 00 04 */	addi r15, r15, 4
/* 8012CAB8  3A 10 00 06 */	addi r16, r16, 6
/* 8012CABC  3A 31 00 0C */	addi r17, r17, 0xc
/* 8012CAC0  41 80 FF AC */	blt lbl_8012CA6C
lbl_8012CAC4:
/* 8012CAC4  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 8012CAC8  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8012CACC  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 8012CAD0  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 8012CAD4  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 8012CAD8  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 8012CADC  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 8012CAE0  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 8012CAE4  E3 61 01 08 */	psq_l f27, 264(r1), 0, 0 /* qr0 */
/* 8012CAE8  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 8012CAEC  E3 41 00 F8 */	psq_l f26, 248(r1), 0, 0 /* qr0 */
/* 8012CAF0  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 8012CAF4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8012CAF8  48 23 56 F9 */	bl _restgpr_15
/* 8012CAFC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8012CB00  7C 08 03 A6 */	mtlr r0
/* 8012CB04  38 21 01 50 */	addi r1, r1, 0x150
/* 8012CB08  4E 80 00 20 */	blr 

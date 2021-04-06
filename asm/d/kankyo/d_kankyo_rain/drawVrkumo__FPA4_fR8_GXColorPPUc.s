lbl_8006A090:
/* 8006A090  94 21 FD 60 */	stwu r1, -0x2a0(r1)
/* 8006A094  7C 08 02 A6 */	mflr r0
/* 8006A098  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 8006A09C  DB E1 02 90 */	stfd f31, 0x290(r1)
/* 8006A0A0  F3 E1 02 98 */	psq_st f31, 664(r1), 0, 0 /* qr0 */
/* 8006A0A4  DB C1 02 80 */	stfd f30, 0x280(r1)
/* 8006A0A8  F3 C1 02 88 */	psq_st f30, 648(r1), 0, 0 /* qr0 */
/* 8006A0AC  DB A1 02 70 */	stfd f29, 0x270(r1)
/* 8006A0B0  F3 A1 02 78 */	psq_st f29, 632(r1), 0, 0 /* qr0 */
/* 8006A0B4  DB 81 02 60 */	stfd f28, 0x260(r1)
/* 8006A0B8  F3 81 02 68 */	psq_st f28, 616(r1), 0, 0 /* qr0 */
/* 8006A0BC  DB 61 02 50 */	stfd f27, 0x250(r1)
/* 8006A0C0  F3 61 02 58 */	psq_st f27, 600(r1), 0, 0 /* qr0 */
/* 8006A0C4  DB 41 02 40 */	stfd f26, 0x240(r1)
/* 8006A0C8  F3 41 02 48 */	psq_st f26, 584(r1), 0, 0 /* qr0 */
/* 8006A0CC  DB 21 02 30 */	stfd f25, 0x230(r1)
/* 8006A0D0  F3 21 02 38 */	psq_st f25, 568(r1), 0, 0 /* qr0 */
/* 8006A0D4  DB 01 02 20 */	stfd f24, 0x220(r1)
/* 8006A0D8  F3 01 02 28 */	psq_st f24, 552(r1), 0, 0 /* qr0 */
/* 8006A0DC  DA E1 02 10 */	stfd f23, 0x210(r1)
/* 8006A0E0  F2 E1 02 18 */	psq_st f23, 536(r1), 0, 0 /* qr0 */
/* 8006A0E4  DA C1 02 00 */	stfd f22, 0x200(r1)
/* 8006A0E8  F2 C1 02 08 */	psq_st f22, 520(r1), 0, 0 /* qr0 */
/* 8006A0EC  DA A1 01 F0 */	stfd f21, 0x1f0(r1)
/* 8006A0F0  F2 A1 01 F8 */	psq_st f21, 504(r1), 0, 0 /* qr0 */
/* 8006A0F4  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 8006A0F8  48 2F 80 A9 */	bl __save_gpr
/* 8006A0FC  7C 7C 1B 78 */	mr r28, r3
/* 8006A100  7C 9D 23 78 */	mr r29, r4
/* 8006A104  7C AE 2B 78 */	mr r14, r5
/* 8006A108  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006A10C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006A110  81 E3 0E 74 */	lwz r15, 0xe74(r3)
/* 8006A114  80 03 0E D0 */	lwz r0, 0xed0(r3)
/* 8006A118  90 01 01 A0 */	stw r0, 0x1a0(r1)
/* 8006A11C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006A120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006A124  82 43 5D 74 */	lwz r18, 0x5d74(r3)
/* 8006A128  3A 00 00 01 */	li r16, 1
/* 8006A12C  C2 E2 87 B8 */	lfs f23, lit_3954(r2)
/* 8006A130  28 12 00 00 */	cmplwi r18, 0
/* 8006A134  41 82 00 08 */	beq lbl_8006A13C
/* 8006A138  C2 F2 0B 68 */	lfs f23, 0xb68(r18)
lbl_8006A13C:
/* 8006A13C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006A140  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006A144  80 77 61 B0 */	lwz r3, 0x61b0(r23)
/* 8006A148  28 03 00 00 */	cmplwi r3, 0
/* 8006A14C  41 82 0F D4 */	beq lbl_8006B120
/* 8006A150  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006A154  38 81 01 08 */	addi r4, r1, 0x108
/* 8006A158  48 2D C4 59 */	bl PSMTXInverse
/* 8006A15C  48 00 00 08 */	b lbl_8006A164
/* 8006A160  48 00 0F C0 */	b lbl_8006B120
lbl_8006A164:
/* 8006A164  A8 12 00 FC */	lha r0, 0xfc(r18)
/* 8006A168  C0 42 87 E0 */	lfs f2, lit_4107(r2)
/* 8006A16C  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006A170  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8006A174  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8006A178  3C 00 43 30 */	lis r0, 0x4330
/* 8006A17C  90 01 01 38 */	stw r0, 0x138(r1)
/* 8006A180  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 8006A184  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006A188  EF 02 00 32 */	fmuls f24, f2, f0
/* 8006A18C  80 17 61 B0 */	lwz r0, 0x61b0(r23)
/* 8006A190  28 00 00 00 */	cmplwi r0, 0
/* 8006A194  41 82 00 30 */	beq lbl_8006A1C4
/* 8006A198  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 8006A19C  7C 84 07 75 */	extsb. r4, r4
/* 8006A1A0  41 80 00 24 */	blt lbl_8006A1C4
/* 8006A1A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006A1A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006A1AC  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 8006A1B0  4B FB A1 D5 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8006A1B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8006A1B8  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8006A1BC  7D 89 03 A6 */	mtctr r12
/* 8006A1C0  4E 80 04 21 */	bctrl 
lbl_8006A1C4:
/* 8006A1C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006A1C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006A1CC  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 8006A1D0  C0 02 88 54 */	lfs f0, lit_4370(r2)
/* 8006A1D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006A1D8  40 81 00 84 */	ble lbl_8006A25C
/* 8006A1DC  C0 02 8B 7C */	lfs f0, lit_10593(r2)
/* 8006A1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006A1E4  40 80 00 78 */	bge lbl_8006A25C
/* 8006A1E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006A1EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006A1F0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8006A1F4  28 00 00 00 */	cmplwi r0, 0
/* 8006A1F8  40 82 00 64 */	bne lbl_8006A25C
/* 8006A1FC  28 0F 00 00 */	cmplwi r15, 0
/* 8006A200  41 82 00 5C */	beq lbl_8006A25C
/* 8006A204  C0 2F 00 60 */	lfs f1, 0x60(r15)
/* 8006A208  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006A20C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006A210  40 81 00 4C */	ble lbl_8006A25C
/* 8006A214  38 6F 00 10 */	addi r3, r15, 0x10
/* 8006A218  38 81 00 7C */	addi r4, r1, 0x7c
/* 8006A21C  4B FA B0 F5 */	bl mDoLib_project__FP3VecP3Vec
/* 8006A220  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8006A224  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006A228  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006A22C  40 81 00 30 */	ble lbl_8006A25C
/* 8006A230  C0 02 88 2C */	lfs f0, lit_4360(r2)
/* 8006A234  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006A238  40 80 00 24 */	bge lbl_8006A25C
/* 8006A23C  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8006A240  FC 01 B8 40 */	fcmpo cr0, f1, f23
/* 8006A244  40 81 00 18 */	ble lbl_8006A25C
/* 8006A248  C0 02 88 28 */	lfs f0, lit_4359(r2)
/* 8006A24C  EC 00 B8 28 */	fsubs f0, f0, f23
/* 8006A250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006A254  40 80 00 08 */	bge lbl_8006A25C
/* 8006A258  3A 00 00 00 */	li r16, 0
lbl_8006A25C:
/* 8006A25C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006A260  3B 03 CA 54 */	addi r24, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006A264  C0 02 8A 60 */	lfs f0, lit_7211(r2)
/* 8006A268  EF C0 06 32 */	fmuls f30, f0, f24
/* 8006A26C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006A270  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006A274  3A C3 4E 00 */	addi r22, r3, 0x4e00
/* 8006A278  3A A1 00 B4 */	addi r21, r1, 0xb4
/* 8006A27C  3A 81 00 C0 */	addi r20, r1, 0xc0
/* 8006A280  3A 61 00 CC */	addi r19, r1, 0xcc
/* 8006A284  C0 02 89 A4 */	lfs f0, lit_6355(r2)
/* 8006A288  FF A0 00 50 */	fneg f29, f0
/* 8006A28C  C3 E2 8B 80 */	lfs f31, lit_10594(r2)
/* 8006A290  48 00 0E 74 */	b lbl_8006B104
lbl_8006A294:
/* 8006A294  2C 10 00 00 */	cmpwi r16, 0
/* 8006A298  40 82 00 18 */	bne lbl_8006A2B0
/* 8006A29C  38 60 00 00 */	li r3, 0
/* 8006A2A0  48 2F 59 A5 */	bl GXSetColorUpdate
/* 8006A2A4  38 60 00 01 */	li r3, 1
/* 8006A2A8  48 2F 63 29 */	bl GXSetClipMode
/* 8006A2AC  48 00 00 0C */	b lbl_8006A2B8
lbl_8006A2B0:
/* 8006A2B0  38 60 00 00 */	li r3, 0
/* 8006A2B4  48 2F 63 1D */	bl GXSetClipMode
lbl_8006A2B8:
/* 8006A2B8  3B E0 00 00 */	li r31, 0
/* 8006A2BC  3B 60 00 00 */	li r27, 0
lbl_8006A2C0:
/* 8006A2C0  A8 18 10 D0 */	lha r0, 0x10d0(r24)
/* 8006A2C4  98 1D 00 00 */	stb r0, 0(r29)
/* 8006A2C8  A8 18 10 D2 */	lha r0, 0x10d2(r24)
/* 8006A2CC  98 1D 00 01 */	stb r0, 1(r29)
/* 8006A2D0  A8 18 10 D4 */	lha r0, 0x10d4(r24)
/* 8006A2D4  98 1D 00 02 */	stb r0, 2(r29)
/* 8006A2D8  38 00 00 00 */	li r0, 0
/* 8006A2DC  98 01 00 18 */	stb r0, 0x18(r1)
/* 8006A2E0  98 01 00 19 */	stb r0, 0x19(r1)
/* 8006A2E4  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8006A2E8  38 61 00 88 */	addi r3, r1, 0x88
/* 8006A2EC  7C 8E D8 2E */	lwzx r4, r14, r27
/* 8006A2F0  4B FF 17 35 */	bl dKyr_set_btitex__FP9_GXTexObjP7ResTIMG
/* 8006A2F4  38 60 00 00 */	li r3, 0
/* 8006A2F8  48 2F 38 39 */	bl GXSetNumChans
/* 8006A2FC  80 1D 00 00 */	lwz r0, 0(r29)
/* 8006A300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006A304  38 60 00 01 */	li r3, 1
/* 8006A308  38 81 00 14 */	addi r4, r1, 0x14
/* 8006A30C  48 2F 50 71 */	bl GXSetTevColor
/* 8006A310  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8006A314  90 01 00 10 */	stw r0, 0x10(r1)
/* 8006A318  38 60 00 02 */	li r3, 2
/* 8006A31C  38 81 00 10 */	addi r4, r1, 0x10
/* 8006A320  48 2F 50 5D */	bl GXSetTevColor
/* 8006A324  38 60 00 01 */	li r3, 1
/* 8006A328  48 2F 1A D5 */	bl GXSetNumTexGens
/* 8006A32C  38 60 00 00 */	li r3, 0
/* 8006A330  38 80 00 01 */	li r4, 1
/* 8006A334  38 A0 00 04 */	li r5, 4
/* 8006A338  38 C0 00 3C */	li r6, 0x3c
/* 8006A33C  38 E0 00 00 */	li r7, 0
/* 8006A340  39 00 00 7D */	li r8, 0x7d
/* 8006A344  48 2F 18 39 */	bl GXSetTexCoordGen2
/* 8006A348  38 60 00 01 */	li r3, 1
/* 8006A34C  48 2F 55 45 */	bl GXSetNumTevStages
/* 8006A350  38 60 00 00 */	li r3, 0
/* 8006A354  38 80 00 00 */	li r4, 0
/* 8006A358  38 A0 00 00 */	li r5, 0
/* 8006A35C  38 C0 00 FF */	li r6, 0xff
/* 8006A360  48 2F 53 95 */	bl GXSetTevOrder
/* 8006A364  38 60 00 00 */	li r3, 0
/* 8006A368  38 80 00 04 */	li r4, 4
/* 8006A36C  38 A0 00 02 */	li r5, 2
/* 8006A370  38 C0 00 08 */	li r6, 8
/* 8006A374  38 E0 00 0F */	li r7, 0xf
/* 8006A378  48 2F 4E AD */	bl GXSetTevColorIn
/* 8006A37C  38 60 00 00 */	li r3, 0
/* 8006A380  38 80 00 00 */	li r4, 0
/* 8006A384  38 A0 00 00 */	li r5, 0
/* 8006A388  38 C0 00 00 */	li r6, 0
/* 8006A38C  38 E0 00 01 */	li r7, 1
/* 8006A390  39 00 00 00 */	li r8, 0
/* 8006A394  48 2F 4F 19 */	bl GXSetTevColorOp
/* 8006A398  38 60 00 00 */	li r3, 0
/* 8006A39C  38 80 00 07 */	li r4, 7
/* 8006A3A0  38 A0 00 01 */	li r5, 1
/* 8006A3A4  38 C0 00 04 */	li r6, 4
/* 8006A3A8  38 E0 00 07 */	li r7, 7
/* 8006A3AC  48 2F 4E BD */	bl GXSetTevAlphaIn
/* 8006A3B0  38 60 00 00 */	li r3, 0
/* 8006A3B4  38 80 00 00 */	li r4, 0
/* 8006A3B8  38 A0 00 00 */	li r5, 0
/* 8006A3BC  38 C0 00 00 */	li r6, 0
/* 8006A3C0  38 E0 00 01 */	li r7, 1
/* 8006A3C4  39 00 00 00 */	li r8, 0
/* 8006A3C8  48 2F 4F 4D */	bl GXSetTevAlphaOp
/* 8006A3CC  80 1D 00 00 */	lwz r0, 0(r29)
/* 8006A3D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8006A3D4  38 60 00 00 */	li r3, 0
/* 8006A3D8  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006A3DC  C0 42 88 14 */	lfs f2, lit_4354(r2)
/* 8006A3E0  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8006A3E4  FC 80 10 90 */	fmr f4, f2
/* 8006A3E8  38 81 00 0C */	addi r4, r1, 0xc
/* 8006A3EC  48 2F 54 CD */	bl GXSetFog
/* 8006A3F0  38 60 00 01 */	li r3, 1
/* 8006A3F4  38 80 00 04 */	li r4, 4
/* 8006A3F8  38 A0 00 05 */	li r5, 5
/* 8006A3FC  38 C0 00 0F */	li r6, 0xf
/* 8006A400  48 2F 57 F1 */	bl GXSetBlendMode
/* 8006A404  2C 10 00 00 */	cmpwi r16, 0
/* 8006A408  40 82 00 38 */	bne lbl_8006A440
/* 8006A40C  38 60 00 04 */	li r3, 4
/* 8006A410  38 80 00 00 */	li r4, 0
/* 8006A414  38 A0 00 01 */	li r5, 1
/* 8006A418  38 C0 00 04 */	li r6, 4
/* 8006A41C  38 E0 00 00 */	li r7, 0
/* 8006A420  48 2F 52 05 */	bl GXSetAlphaCompare
/* 8006A424  38 60 00 00 */	li r3, 0
/* 8006A428  48 2F 58 A9 */	bl GXSetZCompLoc
/* 8006A42C  38 60 00 01 */	li r3, 1
/* 8006A430  38 80 00 03 */	li r4, 3
/* 8006A434  38 A0 00 01 */	li r5, 1
/* 8006A438  48 2F 58 65 */	bl GXSetZMode
/* 8006A43C  48 00 00 34 */	b lbl_8006A470
lbl_8006A440:
/* 8006A440  38 60 00 04 */	li r3, 4
/* 8006A444  38 80 00 04 */	li r4, 4
/* 8006A448  38 A0 00 01 */	li r5, 1
/* 8006A44C  38 C0 00 04 */	li r6, 4
/* 8006A450  38 E0 00 04 */	li r7, 4
/* 8006A454  48 2F 51 D1 */	bl GXSetAlphaCompare
/* 8006A458  38 60 00 01 */	li r3, 1
/* 8006A45C  48 2F 58 75 */	bl GXSetZCompLoc
/* 8006A460  38 60 00 00 */	li r3, 0
/* 8006A464  38 80 00 03 */	li r4, 3
/* 8006A468  38 A0 00 00 */	li r5, 0
/* 8006A46C  48 2F 58 31 */	bl GXSetZMode
lbl_8006A470:
/* 8006A470  38 60 00 00 */	li r3, 0
/* 8006A474  48 2F 4C 61 */	bl GXSetNumIndStages
/* 8006A478  38 60 00 00 */	li r3, 0
/* 8006A47C  38 80 00 09 */	li r4, 9
/* 8006A480  38 A0 00 01 */	li r5, 1
/* 8006A484  38 C0 00 04 */	li r6, 4
/* 8006A488  38 E0 00 00 */	li r7, 0
/* 8006A48C  48 2F 11 39 */	bl GXSetVtxAttrFmt
/* 8006A490  38 60 00 00 */	li r3, 0
/* 8006A494  38 80 00 0D */	li r4, 0xd
/* 8006A498  38 A0 00 01 */	li r5, 1
/* 8006A49C  38 C0 00 03 */	li r6, 3
/* 8006A4A0  38 E0 00 08 */	li r7, 8
/* 8006A4A4  48 2F 11 21 */	bl GXSetVtxAttrFmt
/* 8006A4A8  48 2F 10 E5 */	bl GXClearVtxDesc
/* 8006A4AC  38 60 00 09 */	li r3, 9
/* 8006A4B0  38 80 00 01 */	li r4, 1
/* 8006A4B4  48 2F 0A 05 */	bl GXSetVtxDesc
/* 8006A4B8  38 60 00 0D */	li r3, 0xd
/* 8006A4BC  38 80 00 01 */	li r4, 1
/* 8006A4C0  48 2F 09 F9 */	bl GXSetVtxDesc
/* 8006A4C4  2C 10 00 01 */	cmpwi r16, 1
/* 8006A4C8  40 82 00 2C */	bne lbl_8006A4F4
/* 8006A4CC  2C 1F 00 00 */	cmpwi r31, 0
/* 8006A4D0  40 82 00 24 */	bne lbl_8006A4F4
/* 8006A4D4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8006A4D8  38 80 00 5A */	li r4, 0x5a
/* 8006A4DC  FC 20 F0 90 */	fmr f1, f30
/* 8006A4E0  48 2D C1 C9 */	bl PSMTXRotRad
/* 8006A4E4  38 61 01 08 */	addi r3, r1, 0x108
/* 8006A4E8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8006A4EC  7C 65 1B 78 */	mr r5, r3
/* 8006A4F0  48 2D BF F5 */	bl PSMTXConcat
lbl_8006A4F4:
/* 8006A4F4  7F 83 E3 78 */	mr r3, r28
/* 8006A4F8  38 80 00 00 */	li r4, 0
/* 8006A4FC  48 2F 5D 51 */	bl GXLoadPosMtxImm
/* 8006A500  38 60 00 00 */	li r3, 0
/* 8006A504  48 2F 5D E9 */	bl GXSetCurrentMtx
/* 8006A508  3B C0 00 00 */	li r30, 0
/* 8006A50C  3B 40 00 00 */	li r26, 0
lbl_8006A510:
/* 8006A510  80 01 01 A0 */	lwz r0, 0x1a0(r1)
/* 8006A514  7D E0 D2 14 */	add r15, r0, r26
/* 8006A518  C0 2F 00 40 */	lfs f1, 0x40(r15)
/* 8006A51C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8006A520  4C 40 13 82 */	cror 2, 0, 2
/* 8006A524  41 82 0B AC */	beq lbl_8006B0D0
/* 8006A528  2C 10 00 00 */	cmpwi r16, 0
/* 8006A52C  40 82 00 10 */	bne lbl_8006A53C
/* 8006A530  C0 02 89 B0 */	lfs f0, lit_6358(r2)
/* 8006A534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006A538  41 80 0B 98 */	blt lbl_8006B0D0
lbl_8006A53C:
/* 8006A53C  7C 1F F2 14 */	add r0, r31, r30
/* 8006A540  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8006A544  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006A548  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8006A54C  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8006A550  3C 00 43 30 */	lis r0, 0x4330
/* 8006A554  90 01 01 38 */	stw r0, 0x138(r1)
/* 8006A558  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 8006A55C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8006A560  C0 02 8B 84 */	lfs f0, lit_10595(r2)
/* 8006A564  EF 21 00 32 */	fmuls f25, f1, f0
/* 8006A568  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006A56C  EC 19 06 72 */	fmuls f0, f25, f25
/* 8006A570  EC 19 00 32 */	fmuls f0, f25, f0
/* 8006A574  EE E1 00 28 */	fsubs f23, f1, f0
/* 8006A578  88 0D 89 AC */	lbz r0, data_80450F2C(r13)
/* 8006A57C  7C 00 07 75 */	extsb. r0, r0
/* 8006A580  40 82 00 14 */	bne lbl_8006A594
/* 8006A584  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006A588  D0 0D 89 A8 */	stfs f0, howa_loop_cnt(r13)
/* 8006A58C  38 00 00 01 */	li r0, 1
/* 8006A590  98 0D 89 AC */	stb r0, data_80450F2C(r13)
lbl_8006A594:
/* 8006A594  C2 A2 89 54 */	lfs f21, lit_5729(r2)
/* 8006A598  C2 C2 8B 88 */	lfs f22, lit_10596(r2)
/* 8006A59C  48 14 1F E1 */	bl dKy_darkworld_check__Fv
/* 8006A5A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8006A5A4  41 82 00 0C */	beq lbl_8006A5B0
/* 8006A5A8  C2 A2 88 48 */	lfs f21, lit_4367(r2)
/* 8006A5AC  FE C0 A8 90 */	fmr f22, f21
lbl_8006A5B0:
/* 8006A5B0  7E C3 B3 78 */	mr r3, r22
/* 8006A5B4  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006A5B8  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006A5BC  38 84 00 5C */	addi r4, r4, 0x5c
/* 8006A5C0  48 2F E3 D5 */	bl strcmp
/* 8006A5C4  2C 03 00 00 */	cmpwi r3, 0
/* 8006A5C8  40 82 00 08 */	bne lbl_8006A5D0
/* 8006A5CC  C2 C2 8B 54 */	lfs f22, lit_9833(r2)
lbl_8006A5D0:
/* 8006A5D0  C0 38 0E CC */	lfs f1, 0xecc(r24)
/* 8006A5D4  EC 16 A8 28 */	fsubs f0, f22, f21
/* 8006A5D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006A5DC  EE B5 00 2A */	fadds f21, f21, f0
/* 8006A5E0  C0 2F 00 44 */	lfs f1, 0x44(r15)
/* 8006A5E4  EC 17 05 72 */	fmuls f0, f23, f21
/* 8006A5E8  EF 01 00 32 */	fmuls f24, f1, f0
/* 8006A5EC  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006A5F0  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8006A5F4  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8006A5F8  3C 00 43 30 */	lis r0, 0x4330
/* 8006A5FC  90 01 01 38 */	stw r0, 0x138(r1)
/* 8006A600  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 8006A604  EC 40 08 28 */	fsubs f2, f0, f1
/* 8006A608  C0 22 87 D0 */	lfs f1, lit_4103(r2)
/* 8006A60C  C0 0D 89 A8 */	lfs f0, howa_loop_cnt(r13)
/* 8006A610  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006A614  EC 22 00 2A */	fadds f1, f2, f0
/* 8006A618  48 1F CF CD */	bl cM_rad2s__Ff
/* 8006A61C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8006A620  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8006A624  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8006A628  7C 23 04 2E */	lfsx f1, r3, r0
/* 8006A62C  C0 0F 00 44 */	lfs f0, 0x44(r15)
/* 8006A630  EC 41 00 32 */	fmuls f2, f1, f0
/* 8006A634  C0 2D 89 A8 */	lfs f1, howa_loop_cnt(r13)
/* 8006A638  C0 02 89 34 */	lfs f0, lit_5721(r2)
/* 8006A63C  EC 00 06 72 */	fmuls f0, f0, f25
/* 8006A640  EC 01 00 2A */	fadds f0, f1, f0
/* 8006A644  D0 0D 89 A8 */	stfs f0, howa_loop_cnt(r13)
/* 8006A648  C0 02 88 1C */	lfs f0, lit_4356(r2)
/* 8006A64C  EC 00 06 32 */	fmuls f0, f0, f24
/* 8006A650  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8006A654  EF 18 00 2A */	fadds f24, f24, f0
/* 8006A658  C0 0F 00 3C */	lfs f0, 0x3c(r15)
/* 8006A65C  EC 18 00 32 */	fmuls f0, f24, f0
/* 8006A660  EF 98 00 2A */	fadds f28, f24, f0
/* 8006A664  2C 10 00 00 */	cmpwi r16, 0
/* 8006A668  40 82 00 10 */	bne lbl_8006A678
/* 8006A66C  38 00 00 01 */	li r0, 1
/* 8006A670  98 1D 00 03 */	stb r0, 3(r29)
/* 8006A674  48 00 02 5C */	b lbl_8006A8D0
lbl_8006A678:
/* 8006A678  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006A67C  C0 0F 00 44 */	lfs f0, 0x44(r15)
/* 8006A680  EC 21 00 28 */	fsubs f1, f1, f0
/* 8006A684  A8 18 10 C8 */	lha r0, 0x10c8(r24)
/* 8006A688  C8 02 87 C8 */	lfd f0, lit_3995(r2)
/* 8006A68C  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8006A690  90 81 01 3C */	stw r4, 0x13c(r1)
/* 8006A694  3C 00 43 30 */	lis r0, 0x4330
/* 8006A698  90 01 01 38 */	stw r0, 0x138(r1)
/* 8006A69C  C8 41 01 38 */	lfd f2, 0x138(r1)
/* 8006A6A0  EC 82 00 28 */	fsubs f4, f2, f0
/* 8006A6A4  A8 78 10 D0 */	lha r3, 0x10d0(r24)
/* 8006A6A8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8006A6AC  90 61 01 44 */	stw r3, 0x144(r1)
/* 8006A6B0  90 01 01 40 */	stw r0, 0x140(r1)
/* 8006A6B4  C8 41 01 40 */	lfd f2, 0x140(r1)
/* 8006A6B8  EC 62 00 28 */	fsubs f3, f2, f0
/* 8006A6BC  90 81 01 4C */	stw r4, 0x14c(r1)
/* 8006A6C0  90 01 01 48 */	stw r0, 0x148(r1)
/* 8006A6C4  C8 41 01 48 */	lfd f2, 0x148(r1)
/* 8006A6C8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8006A6CC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8006A6D0  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8006A6D4  EC 44 10 2A */	fadds f2, f4, f2
/* 8006A6D8  FC 40 10 1E */	fctiwz f2, f2
/* 8006A6DC  D8 41 01 50 */	stfd f2, 0x150(r1)
/* 8006A6E0  80 61 01 54 */	lwz r3, 0x154(r1)
/* 8006A6E4  98 7D 00 00 */	stb r3, 0(r29)
/* 8006A6E8  A8 78 10 CA */	lha r3, 0x10ca(r24)
/* 8006A6EC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8006A6F0  90 81 01 5C */	stw r4, 0x15c(r1)
/* 8006A6F4  90 01 01 58 */	stw r0, 0x158(r1)
/* 8006A6F8  C8 41 01 58 */	lfd f2, 0x158(r1)
/* 8006A6FC  EC 82 00 28 */	fsubs f4, f2, f0
/* 8006A700  A8 78 10 D2 */	lha r3, 0x10d2(r24)
/* 8006A704  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8006A708  90 61 01 64 */	stw r3, 0x164(r1)
/* 8006A70C  90 01 01 60 */	stw r0, 0x160(r1)
/* 8006A710  C8 41 01 60 */	lfd f2, 0x160(r1)
/* 8006A714  EC 62 00 28 */	fsubs f3, f2, f0
/* 8006A718  90 81 01 6C */	stw r4, 0x16c(r1)
/* 8006A71C  90 01 01 68 */	stw r0, 0x168(r1)
/* 8006A720  C8 41 01 68 */	lfd f2, 0x168(r1)
/* 8006A724  EC 42 00 28 */	fsubs f2, f2, f0
/* 8006A728  EC 43 10 28 */	fsubs f2, f3, f2
/* 8006A72C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 8006A730  EC 44 10 2A */	fadds f2, f4, f2
/* 8006A734  FC 40 10 1E */	fctiwz f2, f2
/* 8006A738  D8 41 01 70 */	stfd f2, 0x170(r1)
/* 8006A73C  80 61 01 74 */	lwz r3, 0x174(r1)
/* 8006A740  98 7D 00 01 */	stb r3, 1(r29)
/* 8006A744  A8 78 10 CC */	lha r3, 0x10cc(r24)
/* 8006A748  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8006A74C  90 81 01 7C */	stw r4, 0x17c(r1)
/* 8006A750  90 01 01 78 */	stw r0, 0x178(r1)
/* 8006A754  C8 41 01 78 */	lfd f2, 0x178(r1)
/* 8006A758  EC 82 00 28 */	fsubs f4, f2, f0
/* 8006A75C  A8 78 10 D4 */	lha r3, 0x10d4(r24)
/* 8006A760  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8006A764  90 61 01 84 */	stw r3, 0x184(r1)
/* 8006A768  90 01 01 80 */	stw r0, 0x180(r1)
/* 8006A76C  C8 41 01 80 */	lfd f2, 0x180(r1)
/* 8006A770  EC 62 00 28 */	fsubs f3, f2, f0
/* 8006A774  90 81 01 8C */	stw r4, 0x18c(r1)
/* 8006A778  90 01 01 88 */	stw r0, 0x188(r1)
/* 8006A77C  C8 41 01 88 */	lfd f2, 0x188(r1)
/* 8006A780  EC 02 00 28 */	fsubs f0, f2, f0
/* 8006A784  EC 03 00 28 */	fsubs f0, f3, f0
/* 8006A788  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006A78C  EC 04 00 2A */	fadds f0, f4, f0
/* 8006A790  FC 00 00 1E */	fctiwz f0, f0
/* 8006A794  D8 01 01 90 */	stfd f0, 0x190(r1)
/* 8006A798  80 61 01 94 */	lwz r3, 0x194(r1)
/* 8006A79C  98 7D 00 02 */	stb r3, 2(r29)
/* 8006A7A0  C0 22 88 4C */	lfs f1, lit_4368(r2)
/* 8006A7A4  C0 0F 00 40 */	lfs f0, 0x40(r15)
/* 8006A7A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006A7AC  FC 00 00 1E */	fctiwz f0, f0
/* 8006A7B0  D8 01 01 98 */	stfd f0, 0x198(r1)
/* 8006A7B4  80 61 01 9C */	lwz r3, 0x19c(r1)
/* 8006A7B8  98 7D 00 03 */	stb r3, 3(r29)
/* 8006A7BC  2C 1F 00 01 */	cmpwi r31, 1
/* 8006A7C0  40 82 00 88 */	bne lbl_8006A848
/* 8006A7C4  88 7D 00 00 */	lbz r3, 0(r29)
/* 8006A7C8  C8 42 88 70 */	lfd f2, lit_4379(r2)
/* 8006A7CC  90 61 01 9C */	stw r3, 0x19c(r1)
/* 8006A7D0  90 01 01 98 */	stw r0, 0x198(r1)
/* 8006A7D4  C8 01 01 98 */	lfd f0, 0x198(r1)
/* 8006A7D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8006A7DC  C0 22 88 48 */	lfs f1, lit_4367(r2)
/* 8006A7E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006A7E4  FC 00 00 1E */	fctiwz f0, f0
/* 8006A7E8  D8 01 01 90 */	stfd f0, 0x190(r1)
/* 8006A7EC  80 61 01 94 */	lwz r3, 0x194(r1)
/* 8006A7F0  98 7D 00 00 */	stb r3, 0(r29)
/* 8006A7F4  88 7D 00 01 */	lbz r3, 1(r29)
/* 8006A7F8  90 61 01 8C */	stw r3, 0x18c(r1)
/* 8006A7FC  90 01 01 88 */	stw r0, 0x188(r1)
/* 8006A800  C8 01 01 88 */	lfd f0, 0x188(r1)
/* 8006A804  EC 00 10 28 */	fsubs f0, f0, f2
/* 8006A808  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006A80C  FC 00 00 1E */	fctiwz f0, f0
/* 8006A810  D8 01 01 80 */	stfd f0, 0x180(r1)
/* 8006A814  80 61 01 84 */	lwz r3, 0x184(r1)
/* 8006A818  98 7D 00 01 */	stb r3, 1(r29)
/* 8006A81C  88 7D 00 02 */	lbz r3, 2(r29)
/* 8006A820  90 61 01 7C */	stw r3, 0x17c(r1)
/* 8006A824  90 01 01 78 */	stw r0, 0x178(r1)
/* 8006A828  C8 01 01 78 */	lfd f0, 0x178(r1)
/* 8006A82C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8006A830  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006A834  FC 00 00 1E */	fctiwz f0, f0
/* 8006A838  D8 01 01 70 */	stfd f0, 0x170(r1)
/* 8006A83C  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8006A840  98 1D 00 02 */	stb r0, 2(r29)
/* 8006A844  48 00 00 8C */	b lbl_8006A8D0
lbl_8006A848:
/* 8006A848  2C 1F 00 02 */	cmpwi r31, 2
/* 8006A84C  40 82 00 84 */	bne lbl_8006A8D0
/* 8006A850  88 7D 00 00 */	lbz r3, 0(r29)
/* 8006A854  C8 42 88 70 */	lfd f2, lit_4379(r2)
/* 8006A858  90 61 01 9C */	stw r3, 0x19c(r1)
/* 8006A85C  90 01 01 98 */	stw r0, 0x198(r1)
/* 8006A860  C8 01 01 98 */	lfd f0, 0x198(r1)
/* 8006A864  EC 00 10 28 */	fsubs f0, f0, f2
/* 8006A868  C0 22 8B 8C */	lfs f1, lit_10597(r2)
/* 8006A86C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006A870  FC 00 00 1E */	fctiwz f0, f0
/* 8006A874  D8 01 01 90 */	stfd f0, 0x190(r1)
/* 8006A878  80 61 01 94 */	lwz r3, 0x194(r1)
/* 8006A87C  98 7D 00 00 */	stb r3, 0(r29)
/* 8006A880  88 7D 00 01 */	lbz r3, 1(r29)
/* 8006A884  90 61 01 8C */	stw r3, 0x18c(r1)
/* 8006A888  90 01 01 88 */	stw r0, 0x188(r1)
/* 8006A88C  C8 01 01 88 */	lfd f0, 0x188(r1)
/* 8006A890  EC 00 10 28 */	fsubs f0, f0, f2
/* 8006A894  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006A898  FC 00 00 1E */	fctiwz f0, f0
/* 8006A89C  D8 01 01 80 */	stfd f0, 0x180(r1)
/* 8006A8A0  80 61 01 84 */	lwz r3, 0x184(r1)
/* 8006A8A4  98 7D 00 01 */	stb r3, 1(r29)
/* 8006A8A8  88 7D 00 02 */	lbz r3, 2(r29)
/* 8006A8AC  90 61 01 7C */	stw r3, 0x17c(r1)
/* 8006A8B0  90 01 01 78 */	stw r0, 0x178(r1)
/* 8006A8B4  C8 01 01 78 */	lfd f0, 0x178(r1)
/* 8006A8B8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8006A8BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006A8C0  FC 00 00 1E */	fctiwz f0, f0
/* 8006A8C4  D8 01 01 70 */	stfd f0, 0x170(r1)
/* 8006A8C8  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8006A8CC  98 1D 00 02 */	stb r0, 2(r29)
lbl_8006A8D0:
/* 8006A8D0  C0 2F 00 40 */	lfs f1, 0x40(r15)
/* 8006A8D4  C0 02 89 E8 */	lfs f0, lit_6721(r2)
/* 8006A8D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006A8DC  4C 40 13 82 */	cror 2, 0, 2
/* 8006A8E0  41 82 07 F0 */	beq lbl_8006B0D0
/* 8006A8E4  38 61 00 88 */	addi r3, r1, 0x88
/* 8006A8E8  38 80 00 00 */	li r4, 0
/* 8006A8EC  48 2F 3B 29 */	bl GXLoadTexObj
/* 8006A8F0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8006A8F4  90 01 00 08 */	stw r0, 8(r1)
/* 8006A8F8  38 60 00 01 */	li r3, 1
/* 8006A8FC  38 81 00 08 */	addi r4, r1, 8
/* 8006A900  48 2F 4A 7D */	bl GXSetTevColor
/* 8006A904  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8006A908  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006A90C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 8006A910  90 01 01 9C */	stw r0, 0x19c(r1)
/* 8006A914  3C 00 43 30 */	lis r0, 0x4330
/* 8006A918  90 01 01 98 */	stw r0, 0x198(r1)
/* 8006A91C  C8 01 01 98 */	lfd f0, 0x198(r1)
/* 8006A920  EC 20 08 28 */	fsubs f1, f0, f1
/* 8006A924  C0 02 89 A4 */	lfs f0, lit_6355(r2)
/* 8006A928  EC 61 00 24 */	fdivs f3, f1, f0
/* 8006A92C  EC 02 00 F2 */	fmuls f0, f2, f3
/* 8006A930  EC 02 00 2A */	fadds f0, f2, f0
/* 8006A934  EC 58 00 32 */	fmuls f2, f24, f0
/* 8006A938  C0 22 8B 74 */	lfs f1, lit_10030(r2)
/* 8006A93C  C0 02 88 44 */	lfs f0, lit_4366(r2)
/* 8006A940  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8006A944  EC 01 00 2A */	fadds f0, f1, f0
/* 8006A948  EC 38 00 32 */	fmuls f1, f24, f0
/* 8006A94C  C0 0F 00 24 */	lfs f0, 0x24(r15)
/* 8006A950  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8006A954  C0 0F 00 28 */	lfs f0, 0x28(r15)
/* 8006A958  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8006A95C  C0 0F 00 2C */	lfs f0, 0x2c(r15)
/* 8006A960  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8006A964  C2 A2 87 B8 */	lfs f21, lit_3954(r2)
/* 8006A968  FE C0 A8 90 */	fmr f22, f21
/* 8006A96C  2C 1F 00 00 */	cmpwi r31, 0
/* 8006A970  41 82 00 C8 */	beq lbl_8006AA38
/* 8006A974  57 C0 07 BE */	clrlwi r0, r30, 0x1e
/* 8006A978  2C 00 00 01 */	cmpwi r0, 1
/* 8006A97C  41 82 00 48 */	beq lbl_8006A9C4
/* 8006A980  40 80 00 10 */	bge lbl_8006A990
/* 8006A984  2C 00 00 00 */	cmpwi r0, 0
/* 8006A988  40 80 00 14 */	bge lbl_8006A99C
/* 8006A98C  48 00 00 88 */	b lbl_8006AA14
lbl_8006A990:
/* 8006A990  2C 00 00 03 */	cmpwi r0, 3
/* 8006A994  40 80 00 80 */	bge lbl_8006AA14
/* 8006A998  48 00 00 54 */	b lbl_8006A9EC
lbl_8006A99C:
/* 8006A99C  2C 1F 00 01 */	cmpwi r31, 1
/* 8006A9A0  40 82 00 10 */	bne lbl_8006A9B0
/* 8006A9A4  FE A0 10 90 */	fmr f21, f2
/* 8006A9A8  FE C0 08 90 */	fmr f22, f1
/* 8006A9AC  48 00 00 8C */	b lbl_8006AA38
lbl_8006A9B0:
/* 8006A9B0  2C 1F 00 02 */	cmpwi r31, 2
/* 8006A9B4  40 82 00 84 */	bne lbl_8006AA38
/* 8006A9B8  FE A0 08 90 */	fmr f21, f1
/* 8006A9BC  FE C0 10 90 */	fmr f22, f2
/* 8006A9C0  48 00 00 78 */	b lbl_8006AA38
lbl_8006A9C4:
/* 8006A9C4  2C 1F 00 01 */	cmpwi r31, 1
/* 8006A9C8  40 82 00 10 */	bne lbl_8006A9D8
/* 8006A9CC  FE A0 10 50 */	fneg f21, f2
/* 8006A9D0  FE C0 10 90 */	fmr f22, f2
/* 8006A9D4  48 00 00 64 */	b lbl_8006AA38
lbl_8006A9D8:
/* 8006A9D8  2C 1F 00 02 */	cmpwi r31, 2
/* 8006A9DC  40 82 00 5C */	bne lbl_8006AA38
/* 8006A9E0  FE A0 08 50 */	fneg f21, f1
/* 8006A9E4  FE C0 08 90 */	fmr f22, f1
/* 8006A9E8  48 00 00 50 */	b lbl_8006AA38
lbl_8006A9EC:
/* 8006A9EC  2C 1F 00 01 */	cmpwi r31, 1
/* 8006A9F0  40 82 00 10 */	bne lbl_8006AA00
/* 8006A9F4  FE A0 08 90 */	fmr f21, f1
/* 8006A9F8  FE C0 10 50 */	fneg f22, f2
/* 8006A9FC  48 00 00 3C */	b lbl_8006AA38
lbl_8006AA00:
/* 8006AA00  2C 1F 00 02 */	cmpwi r31, 2
/* 8006AA04  40 82 00 34 */	bne lbl_8006AA38
/* 8006AA08  FE A0 10 90 */	fmr f21, f2
/* 8006AA0C  FE C0 08 50 */	fneg f22, f1
/* 8006AA10  48 00 00 28 */	b lbl_8006AA38
lbl_8006AA14:
/* 8006AA14  2C 1F 00 01 */	cmpwi r31, 1
/* 8006AA18  40 82 00 10 */	bne lbl_8006AA28
/* 8006AA1C  FE A0 08 50 */	fneg f21, f1
/* 8006AA20  FE C0 08 90 */	fmr f22, f1
/* 8006AA24  48 00 00 14 */	b lbl_8006AA38
lbl_8006AA28:
/* 8006AA28  2C 1F 00 02 */	cmpwi r31, 2
/* 8006AA2C  40 82 00 0C */	bne lbl_8006AA38
/* 8006AA30  FE A0 10 50 */	fneg f21, f2
/* 8006AA34  FE C0 10 90 */	fmr f22, f2
lbl_8006AA38:
/* 8006AA38  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8006AA3C  EC 61 00 72 */	fmuls f3, f1, f1
/* 8006AA40  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8006AA44  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8006AA48  EF 23 00 2A */	fadds f25, f3, f0
/* 8006AA4C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006AA50  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 8006AA54  40 81 00 0C */	ble lbl_8006AA60
/* 8006AA58  FC 00 C8 34 */	frsqrte f0, f25
/* 8006AA5C  EF 20 06 72 */	fmuls f25, f0, f25
lbl_8006AA60:
/* 8006AA60  48 30 1C C1 */	bl atan2
/* 8006AA64  FF 40 08 18 */	frsp f26, f1
/* 8006AA68  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8006AA6C  FC 40 C8 90 */	fmr f2, f25
/* 8006AA70  48 30 1C B1 */	bl atan2
/* 8006AA74  FC 00 08 18 */	frsp f0, f1
/* 8006AA78  EF 5A B0 2A */	fadds f26, f26, f22
/* 8006AA7C  EF 60 A8 2A */	fadds f27, f0, f21
/* 8006AA80  C0 02 8B 90 */	lfs f0, lit_10598(r2)
/* 8006AA84  EC 9B 00 24 */	fdivs f4, f27, f0
/* 8006AA88  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006AA8C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8006AA90  40 81 00 08 */	ble lbl_8006AA98
/* 8006AA94  FC 80 00 90 */	fmr f4, f0
lbl_8006AA98:
/* 8006AA98  EC 04 01 32 */	fmuls f0, f4, f4
/* 8006AA9C  EC 84 00 32 */	fmuls f4, f4, f0
/* 8006AAA0  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 8006AAA4  EC 60 06 32 */	fmuls f3, f0, f24
/* 8006AAA8  C0 42 88 14 */	lfs f2, lit_4354(r2)
/* 8006AAAC  C0 02 8B 94 */	lfs f0, lit_10599(r2)
/* 8006AAB0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006AAB4  EC 02 00 2A */	fadds f0, f2, f0
/* 8006AAB8  EF 23 00 32 */	fmuls f25, f3, f0
/* 8006AABC  C0 02 8B 98 */	lfs f0, lit_10600(r2)
/* 8006AAC0  EC 20 07 32 */	fmuls f1, f0, f28
/* 8006AAC4  C0 02 8B 9C */	lfs f0, lit_10601(r2)
/* 8006AAC8  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006AACC  EC 02 00 2A */	fadds f0, f2, f0
/* 8006AAD0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006AAD4  C0 02 89 78 */	lfs f0, lit_5738(r2)
/* 8006AAD8  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006AADC  EC 02 00 2A */	fadds f0, f2, f0
/* 8006AAE0  EF 03 00 32 */	fmuls f24, f3, f0
/* 8006AAE4  EE BA C8 2A */	fadds f21, f26, f25
/* 8006AAE8  EF 9B 08 2A */	fadds f28, f27, f1
/* 8006AAEC  FE C0 E0 90 */	fmr f22, f28
/* 8006AAF0  C0 02 8B A0 */	lfs f0, lit_10602(r2)
/* 8006AAF4  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8006AAF8  40 81 00 08 */	ble lbl_8006AB00
/* 8006AAFC  FE C0 00 90 */	fmr f22, f0
lbl_8006AB00:
/* 8006AB00  FC 20 A8 90 */	fmr f1, f21
/* 8006AB04  48 30 1A 8D */	bl sin
/* 8006AB08  FE E0 08 18 */	frsp f23, f1
/* 8006AB0C  FC 20 B0 90 */	fmr f1, f22
/* 8006AB10  48 30 15 19 */	bl cos
/* 8006AB14  FC 00 08 18 */	frsp f0, f1
/* 8006AB18  EC 00 05 F2 */	fmuls f0, f0, f23
/* 8006AB1C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8006AB20  FC 20 B0 90 */	fmr f1, f22
/* 8006AB24  48 30 1A 6D */	bl sin
/* 8006AB28  FC 00 08 18 */	frsp f0, f1
/* 8006AB2C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8006AB30  FC 20 A8 90 */	fmr f1, f21
/* 8006AB34  48 30 14 F5 */	bl cos
/* 8006AB38  FE E0 08 18 */	frsp f23, f1
/* 8006AB3C  FC 20 B0 90 */	fmr f1, f22
/* 8006AB40  48 30 14 E9 */	bl cos
/* 8006AB44  FC 00 08 18 */	frsp f0, f1
/* 8006AB48  EC 20 05 F2 */	fmuls f1, f0, f23
/* 8006AB4C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8006AB50  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8006AB54  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8006AB58  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8006AB5C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8006AB60  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8006AB64  EF 3A C8 28 */	fsubs f25, f26, f25
/* 8006AB68  C0 02 8B A0 */	lfs f0, lit_10602(r2)
/* 8006AB6C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8006AB70  40 81 00 08 */	ble lbl_8006AB78
/* 8006AB74  FF 80 00 90 */	fmr f28, f0
lbl_8006AB78:
/* 8006AB78  FC 20 C8 90 */	fmr f1, f25
/* 8006AB7C  48 30 1A 15 */	bl sin
/* 8006AB80  FE E0 08 18 */	frsp f23, f1
/* 8006AB84  FC 20 E0 90 */	fmr f1, f28
/* 8006AB88  48 30 14 A1 */	bl cos
/* 8006AB8C  FC 00 08 18 */	frsp f0, f1
/* 8006AB90  EC 00 05 F2 */	fmuls f0, f0, f23
/* 8006AB94  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8006AB98  FC 20 E0 90 */	fmr f1, f28
/* 8006AB9C  48 30 19 F5 */	bl sin
/* 8006ABA0  FC 00 08 18 */	frsp f0, f1
/* 8006ABA4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8006ABA8  FC 20 C8 90 */	fmr f1, f25
/* 8006ABAC  48 30 14 7D */	bl cos
/* 8006ABB0  FE E0 08 18 */	frsp f23, f1
/* 8006ABB4  FC 20 E0 90 */	fmr f1, f28
/* 8006ABB8  48 30 14 71 */	bl cos
/* 8006ABBC  FC 00 08 18 */	frsp f0, f1
/* 8006ABC0  EC 20 05 F2 */	fmuls f1, f0, f23
/* 8006ABC4  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8006ABC8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8006ABCC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8006ABD0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8006ABD4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8006ABD8  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8006ABDC  EF 3A C0 28 */	fsubs f25, f26, f24
/* 8006ABE0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006ABE4  EF 9B 00 28 */	fsubs f28, f27, f0
/* 8006ABE8  FC 20 C8 90 */	fmr f1, f25
/* 8006ABEC  48 30 19 A5 */	bl sin
/* 8006ABF0  FE E0 08 18 */	frsp f23, f1
/* 8006ABF4  FC 20 E0 90 */	fmr f1, f28
/* 8006ABF8  48 30 14 31 */	bl cos
/* 8006ABFC  FC 00 08 18 */	frsp f0, f1
/* 8006AC00  EC 00 05 F2 */	fmuls f0, f0, f23
/* 8006AC04  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8006AC08  FC 20 E0 90 */	fmr f1, f28
/* 8006AC0C  48 30 19 85 */	bl sin
/* 8006AC10  FC 00 08 18 */	frsp f0, f1
/* 8006AC14  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8006AC18  FC 20 C8 90 */	fmr f1, f25
/* 8006AC1C  48 30 14 0D */	bl cos
/* 8006AC20  FE E0 08 18 */	frsp f23, f1
/* 8006AC24  FC 20 E0 90 */	fmr f1, f28
/* 8006AC28  48 30 14 01 */	bl cos
/* 8006AC2C  FC 00 08 18 */	frsp f0, f1
/* 8006AC30  EC 20 05 F2 */	fmuls f1, f0, f23
/* 8006AC34  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8006AC38  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8006AC3C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8006AC40  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8006AC44  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8006AC48  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8006AC4C  EF 1A C0 2A */	fadds f24, f26, f24
/* 8006AC50  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006AC54  EF 3B 00 28 */	fsubs f25, f27, f0
/* 8006AC58  FC 20 C0 90 */	fmr f1, f24
/* 8006AC5C  48 30 19 35 */	bl sin
/* 8006AC60  FE E0 08 18 */	frsp f23, f1
/* 8006AC64  FC 20 C8 90 */	fmr f1, f25
/* 8006AC68  48 30 13 C1 */	bl cos
/* 8006AC6C  FC 00 08 18 */	frsp f0, f1
/* 8006AC70  EC 00 05 F2 */	fmuls f0, f0, f23
/* 8006AC74  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8006AC78  FC 20 C8 90 */	fmr f1, f25
/* 8006AC7C  48 30 19 15 */	bl sin
/* 8006AC80  FC 00 08 18 */	frsp f0, f1
/* 8006AC84  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8006AC88  FC 20 C0 90 */	fmr f1, f24
/* 8006AC8C  48 30 13 9D */	bl cos
/* 8006AC90  FE E0 08 18 */	frsp f23, f1
/* 8006AC94  FC 20 C8 90 */	fmr f1, f25
/* 8006AC98  48 30 13 91 */	bl cos
/* 8006AC9C  FC 00 08 18 */	frsp f0, f1
/* 8006ACA0  EC 80 05 F2 */	fmuls f4, f0, f23
/* 8006ACA4  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 8006ACA8  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 8006ACAC  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8006ACB0  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 8006ACB4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8006ACB8  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8006ACBC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8006ACC0  C0 22 89 24 */	lfs f1, lit_5717(r2)
/* 8006ACC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ACC8  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8006ACCC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8006ACD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ACD4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8006ACD8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8006ACDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ACE0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8006ACE4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8006ACE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ACEC  D0 15 00 00 */	stfs f0, 0(r21)
/* 8006ACF0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8006ACF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006ACF8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8006ACFC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8006AD00  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006AD04  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8006AD08  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8006AD0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006AD10  D0 14 00 00 */	stfs f0, 0(r20)
/* 8006AD14  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006AD18  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006AD1C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8006AD20  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8006AD24  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006AD28  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8006AD2C  EC 03 00 72 */	fmuls f0, f3, f1
/* 8006AD30  D0 13 00 00 */	stfs f0, 0(r19)
/* 8006AD34  EC 02 00 72 */	fmuls f0, f2, f1
/* 8006AD38  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8006AD3C  FC 00 20 18 */	frsp f0, f4
/* 8006AD40  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006AD44  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8006AD48  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8006AD4C  38 92 00 D8 */	addi r4, r18, 0xd8
/* 8006AD50  7C 65 1B 78 */	mr r5, r3
/* 8006AD54  48 2D C3 3D */	bl PSVECAdd
/* 8006AD58  7E A3 AB 78 */	mr r3, r21
/* 8006AD5C  38 92 00 D8 */	addi r4, r18, 0xd8
/* 8006AD60  7E A5 AB 78 */	mr r5, r21
/* 8006AD64  48 2D C3 2D */	bl PSVECAdd
/* 8006AD68  7E 83 A3 78 */	mr r3, r20
/* 8006AD6C  38 92 00 D8 */	addi r4, r18, 0xd8
/* 8006AD70  7E 85 A3 78 */	mr r5, r20
/* 8006AD74  48 2D C3 1D */	bl PSVECAdd
/* 8006AD78  7E 63 9B 78 */	mr r3, r19
/* 8006AD7C  38 92 00 D8 */	addi r4, r18, 0xd8
/* 8006AD80  7E 65 9B 78 */	mr r5, r19
/* 8006AD84  48 2D C3 0D */	bl PSVECAdd
/* 8006AD88  3A 20 00 00 */	li r17, 0
/* 8006AD8C  80 77 61 B0 */	lwz r3, 0x61b0(r23)
/* 8006AD90  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 8006AD94  C0 02 88 B8 */	lfs f0, lit_5109(r2)
/* 8006AD98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006AD9C  40 81 00 84 */	ble lbl_8006AE20
/* 8006ADA0  39 E0 00 00 */	li r15, 0
/* 8006ADA4  3B 20 00 00 */	li r25, 0
lbl_8006ADA8:
/* 8006ADA8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8006ADAC  7C 63 CA 14 */	add r3, r3, r25
/* 8006ADB0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8006ADB4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8006ADB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8006ADBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8006ADC0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8006ADC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8006ADC8  38 61 00 28 */	addi r3, r1, 0x28
/* 8006ADCC  38 81 00 7C */	addi r4, r1, 0x7c
/* 8006ADD0  4B FA A5 41 */	bl mDoLib_project__FP3VecP3Vec
/* 8006ADD4  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8006ADD8  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8006ADDC  40 81 00 28 */	ble lbl_8006AE04
/* 8006ADE0  C0 02 8B A4 */	lfs f0, lit_10603(r2)
/* 8006ADE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006ADE8  40 80 00 1C */	bge lbl_8006AE04
/* 8006ADEC  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8006ADF0  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8006ADF4  40 81 00 10 */	ble lbl_8006AE04
/* 8006ADF8  C0 02 8B A8 */	lfs f0, lit_10604(r2)
/* 8006ADFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006AE00  41 80 00 20 */	blt lbl_8006AE20
lbl_8006AE04:
/* 8006AE04  2C 0F 00 03 */	cmpwi r15, 3
/* 8006AE08  40 82 00 08 */	bne lbl_8006AE10
/* 8006AE0C  3A 20 00 01 */	li r17, 1
lbl_8006AE10:
/* 8006AE10  39 EF 00 01 */	addi r15, r15, 1
/* 8006AE14  2C 0F 00 04 */	cmpwi r15, 4
/* 8006AE18  3B 39 00 0C */	addi r25, r25, 0xc
/* 8006AE1C  41 80 FF 8C */	blt lbl_8006ADA8
lbl_8006AE20:
/* 8006AE20  2C 11 00 00 */	cmpwi r17, 0
/* 8006AE24  40 82 00 A0 */	bne lbl_8006AEC4
/* 8006AE28  38 60 00 80 */	li r3, 0x80
/* 8006AE2C  38 80 00 00 */	li r4, 0
/* 8006AE30  38 A0 00 04 */	li r5, 4
/* 8006AE34  48 2F 19 31 */	bl GXBegin
/* 8006AE38  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8006AE3C  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8006AE40  D0 04 80 00 */	stfs f0, 0x8000(r4)  /* 0xCC008000@l */
/* 8006AE44  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8006AE48  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AE4C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8006AE50  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AE54  38 60 00 00 */	li r3, 0
/* 8006AE58  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006AE5C  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006AE60  C0 15 00 00 */	lfs f0, 0(r21)
/* 8006AE64  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AE68  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8006AE6C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AE70  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8006AE74  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AE78  38 00 00 FF */	li r0, 0xff
/* 8006AE7C  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006AE80  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006AE84  C0 14 00 00 */	lfs f0, 0(r20)
/* 8006AE88  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AE8C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8006AE90  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AE94  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8006AE98  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AE9C  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006AEA0  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006AEA4  C0 13 00 00 */	lfs f0, 0(r19)
/* 8006AEA8  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AEAC  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8006AEB0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AEB4  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8006AEB8  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006AEBC  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006AEC0  B0 04 80 00 */	sth r0, -0x8000(r4)
lbl_8006AEC4:
/* 8006AEC4  7E C3 B3 78 */	mr r3, r22
/* 8006AEC8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006AECC  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006AED0  38 84 00 4C */	addi r4, r4, 0x4c
/* 8006AED4  48 2F DA C1 */	bl strcmp
/* 8006AED8  2C 03 00 00 */	cmpwi r3, 0
/* 8006AEDC  41 82 00 9C */	beq lbl_8006AF78
/* 8006AEE0  7E C3 B3 78 */	mr r3, r22
/* 8006AEE4  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006AEE8  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006AEEC  38 84 00 88 */	addi r4, r4, 0x88
/* 8006AEF0  48 2F DA A5 */	bl strcmp
/* 8006AEF4  2C 03 00 00 */	cmpwi r3, 0
/* 8006AEF8  41 82 00 80 */	beq lbl_8006AF78
/* 8006AEFC  7E C3 B3 78 */	mr r3, r22
/* 8006AF00  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006AF04  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006AF08  38 84 00 45 */	addi r4, r4, 0x45
/* 8006AF0C  48 2F DA 89 */	bl strcmp
/* 8006AF10  2C 03 00 00 */	cmpwi r3, 0
/* 8006AF14  41 82 00 64 */	beq lbl_8006AF78
/* 8006AF18  7E C3 B3 78 */	mr r3, r22
/* 8006AF1C  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006AF20  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006AF24  38 84 00 5C */	addi r4, r4, 0x5c
/* 8006AF28  48 2F DA 6D */	bl strcmp
/* 8006AF2C  2C 03 00 00 */	cmpwi r3, 0
/* 8006AF30  41 82 00 48 */	beq lbl_8006AF78
/* 8006AF34  7E C3 B3 78 */	mr r3, r22
/* 8006AF38  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006AF3C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006AF40  38 84 00 5C */	addi r4, r4, 0x5c
/* 8006AF44  48 2F DA 51 */	bl strcmp
/* 8006AF48  2C 03 00 00 */	cmpwi r3, 0
/* 8006AF4C  41 82 00 2C */	beq lbl_8006AF78
/* 8006AF50  7E C3 B3 78 */	mr r3, r22
/* 8006AF54  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006AF58  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006AF5C  38 84 00 64 */	addi r4, r4, 0x64
/* 8006AF60  48 2F DA 35 */	bl strcmp
/* 8006AF64  2C 03 00 00 */	cmpwi r3, 0
/* 8006AF68  40 82 01 68 */	bne lbl_8006B0D0
/* 8006AF6C  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8006AF70  7C 00 07 75 */	extsb. r0, r0
/* 8006AF74  40 82 01 5C */	bne lbl_8006B0D0
lbl_8006AF78:
/* 8006AF78  3A 20 00 00 */	li r17, 0
/* 8006AF7C  80 77 61 B0 */	lwz r3, 0x61b0(r23)
/* 8006AF80  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 8006AF84  C0 02 88 B8 */	lfs f0, lit_5109(r2)
/* 8006AF88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006AF8C  40 81 00 90 */	ble lbl_8006B01C
/* 8006AF90  39 E0 00 00 */	li r15, 0
/* 8006AF94  3B 20 00 00 */	li r25, 0
lbl_8006AF98:
/* 8006AF98  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8006AF9C  7C 63 CA 14 */	add r3, r3, r25
/* 8006AFA0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8006AFA4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8006AFA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8006AFAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8006AFB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8006AFB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8006AFB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8006AFBC  FC 00 00 50 */	fneg f0, f0
/* 8006AFC0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8006AFC4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8006AFC8  38 81 00 7C */	addi r4, r1, 0x7c
/* 8006AFCC  4B FA A3 45 */	bl mDoLib_project__FP3VecP3Vec
/* 8006AFD0  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8006AFD4  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8006AFD8  40 81 00 28 */	ble lbl_8006B000
/* 8006AFDC  C0 02 8B A4 */	lfs f0, lit_10603(r2)
/* 8006AFE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006AFE4  40 80 00 1C */	bge lbl_8006B000
/* 8006AFE8  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8006AFEC  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8006AFF0  40 81 00 10 */	ble lbl_8006B000
/* 8006AFF4  C0 02 8B A8 */	lfs f0, lit_10604(r2)
/* 8006AFF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006AFFC  41 80 00 20 */	blt lbl_8006B01C
lbl_8006B000:
/* 8006B000  2C 0F 00 03 */	cmpwi r15, 3
/* 8006B004  40 82 00 08 */	bne lbl_8006B00C
/* 8006B008  3A 20 00 01 */	li r17, 1
lbl_8006B00C:
/* 8006B00C  39 EF 00 01 */	addi r15, r15, 1
/* 8006B010  2C 0F 00 04 */	cmpwi r15, 4
/* 8006B014  3B 39 00 0C */	addi r25, r25, 0xc
/* 8006B018  41 80 FF 80 */	blt lbl_8006AF98
lbl_8006B01C:
/* 8006B01C  2C 11 00 00 */	cmpwi r17, 0
/* 8006B020  40 82 00 B0 */	bne lbl_8006B0D0
/* 8006B024  38 60 00 80 */	li r3, 0x80
/* 8006B028  38 80 00 00 */	li r4, 0
/* 8006B02C  38 A0 00 04 */	li r5, 4
/* 8006B030  48 2F 17 35 */	bl GXBegin
/* 8006B034  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8006B038  FC 20 00 50 */	fneg f1, f0
/* 8006B03C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8006B040  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8006B044  D0 04 80 00 */	stfs f0, 0x8000(r4)  /* 0xCC008000@l */
/* 8006B048  D0 24 80 00 */	stfs f1, -0x8000(r4)
/* 8006B04C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8006B050  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006B054  38 60 00 00 */	li r3, 0
/* 8006B058  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006B05C  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006B060  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8006B064  FC 20 00 50 */	fneg f1, f0
/* 8006B068  C0 15 00 00 */	lfs f0, 0(r21)
/* 8006B06C  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006B070  D0 24 80 00 */	stfs f1, -0x8000(r4)
/* 8006B074  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8006B078  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006B07C  38 00 00 FF */	li r0, 0xff
/* 8006B080  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006B084  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006B088  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8006B08C  FC 20 00 50 */	fneg f1, f0
/* 8006B090  C0 14 00 00 */	lfs f0, 0(r20)
/* 8006B094  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006B098  D0 24 80 00 */	stfs f1, -0x8000(r4)
/* 8006B09C  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8006B0A0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006B0A4  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006B0A8  B0 04 80 00 */	sth r0, -0x8000(r4)
/* 8006B0AC  C0 13 00 00 */	lfs f0, 0(r19)
/* 8006B0B0  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006B0B4  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8006B0B8  FC 00 00 50 */	fneg f0, f0
/* 8006B0BC  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006B0C0  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8006B0C4  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8006B0C8  B0 64 80 00 */	sth r3, -0x8000(r4)
/* 8006B0CC  B0 04 80 00 */	sth r0, -0x8000(r4)
lbl_8006B0D0:
/* 8006B0D0  3B DE 00 01 */	addi r30, r30, 1
/* 8006B0D4  2C 1E 00 64 */	cmpwi r30, 0x64
/* 8006B0D8  3B 5A 00 2C */	addi r26, r26, 0x2c
/* 8006B0DC  41 80 F4 34 */	blt lbl_8006A510
/* 8006B0E0  3B FF 00 01 */	addi r31, r31, 1
/* 8006B0E4  2C 1F 00 03 */	cmpwi r31, 3
/* 8006B0E8  3B 7B 00 04 */	addi r27, r27, 4
/* 8006B0EC  41 80 F1 D4 */	blt lbl_8006A2C0
/* 8006B0F0  2C 10 00 00 */	cmpwi r16, 0
/* 8006B0F4  40 82 00 0C */	bne lbl_8006B100
/* 8006B0F8  38 60 00 01 */	li r3, 1
/* 8006B0FC  48 2F 4B 49 */	bl GXSetColorUpdate
lbl_8006B100:
/* 8006B100  3A 10 00 01 */	addi r16, r16, 1
lbl_8006B104:
/* 8006B104  2C 10 00 02 */	cmpwi r16, 2
/* 8006B108  41 80 F1 8C */	blt lbl_8006A294
/* 8006B10C  38 60 00 00 */	li r3, 0
/* 8006B110  48 2F 54 C1 */	bl GXSetClipMode
/* 8006B114  48 13 D5 19 */	bl dKy_GxFog_set__Fv
/* 8006B118  38 00 00 00 */	li r0, 0
/* 8006B11C  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
lbl_8006B120:
/* 8006B120  E3 E1 02 98 */	psq_l f31, 664(r1), 0, 0 /* qr0 */
/* 8006B124  CB E1 02 90 */	lfd f31, 0x290(r1)
/* 8006B128  E3 C1 02 88 */	psq_l f30, 648(r1), 0, 0 /* qr0 */
/* 8006B12C  CB C1 02 80 */	lfd f30, 0x280(r1)
/* 8006B130  E3 A1 02 78 */	psq_l f29, 632(r1), 0, 0 /* qr0 */
/* 8006B134  CB A1 02 70 */	lfd f29, 0x270(r1)
/* 8006B138  E3 81 02 68 */	psq_l f28, 616(r1), 0, 0 /* qr0 */
/* 8006B13C  CB 81 02 60 */	lfd f28, 0x260(r1)
/* 8006B140  E3 61 02 58 */	psq_l f27, 600(r1), 0, 0 /* qr0 */
/* 8006B144  CB 61 02 50 */	lfd f27, 0x250(r1)
/* 8006B148  E3 41 02 48 */	psq_l f26, 584(r1), 0, 0 /* qr0 */
/* 8006B14C  CB 41 02 40 */	lfd f26, 0x240(r1)
/* 8006B150  E3 21 02 38 */	psq_l f25, 568(r1), 0, 0 /* qr0 */
/* 8006B154  CB 21 02 30 */	lfd f25, 0x230(r1)
/* 8006B158  E3 01 02 28 */	psq_l f24, 552(r1), 0, 0 /* qr0 */
/* 8006B15C  CB 01 02 20 */	lfd f24, 0x220(r1)
/* 8006B160  E2 E1 02 18 */	psq_l f23, 536(r1), 0, 0 /* qr0 */
/* 8006B164  CA E1 02 10 */	lfd f23, 0x210(r1)
/* 8006B168  E2 C1 02 08 */	psq_l f22, 520(r1), 0, 0 /* qr0 */
/* 8006B16C  CA C1 02 00 */	lfd f22, 0x200(r1)
/* 8006B170  E2 A1 01 F8 */	psq_l f21, 504(r1), 0, 0 /* qr0 */
/* 8006B174  CA A1 01 F0 */	lfd f21, 0x1f0(r1)
/* 8006B178  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 8006B17C  48 2F 70 71 */	bl __restore_gpr
/* 8006B180  80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 8006B184  7C 08 03 A6 */	mtlr r0
/* 8006B188  38 21 02 A0 */	addi r1, r1, 0x2a0
/* 8006B18C  4E 80 00 20 */	blr 

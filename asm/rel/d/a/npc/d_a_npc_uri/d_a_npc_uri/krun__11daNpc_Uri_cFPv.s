lbl_80B29EA0:
/* 80B29EA0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B29EA4  7C 08 02 A6 */	mflr r0
/* 80B29EA8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B29EAC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B29EB0  4B 83 83 29 */	bl _savegpr_28
/* 80B29EB4  7C 7D 1B 78 */	mr r29, r3
/* 80B29EB8  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B29EBC  3B E3 CE 14 */	addi r31, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B29EC0  38 7F 00 00 */	addi r3, r31, 0
/* 80B29EC4  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 80B29EC8  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B29ECC  7F C0 01 94 */	addze r30, r0
/* 80B29ED0  A0 1D 0E 22 */	lhz r0, 0xe22(r29)
/* 80B29ED4  2C 00 00 02 */	cmpwi r0, 2
/* 80B29ED8  41 82 00 84 */	beq lbl_80B29F5C
/* 80B29EDC  40 80 02 BC */	bge lbl_80B2A198
/* 80B29EE0  2C 00 00 00 */	cmpwi r0, 0
/* 80B29EE4  40 80 00 0C */	bge lbl_80B29EF0
/* 80B29EE8  48 00 02 B0 */	b lbl_80B2A198
/* 80B29EEC  48 00 02 AC */	b lbl_80B2A198
lbl_80B29EF0:
/* 80B29EF0  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80B29EF4  2C 00 00 00 */	cmpwi r0, 0
/* 80B29EF8  40 82 00 64 */	bne lbl_80B29F5C
/* 80B29EFC  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B29F00  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B29F04  41 82 00 24 */	beq lbl_80B29F28
/* 80B29F08  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B29F0C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B29F10  4B 61 B9 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B29F14  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B29F18  38 00 00 0D */	li r0, 0xd
/* 80B29F1C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B29F20  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B29F24  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B29F28:
/* 80B29F28  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B29F2C  2C 00 00 19 */	cmpwi r0, 0x19
/* 80B29F30  41 82 00 24 */	beq lbl_80B29F54
/* 80B29F34  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B29F38  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B29F3C  4B 61 B9 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B29F40  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B29F44  38 00 00 19 */	li r0, 0x19
/* 80B29F48  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B29F4C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B29F50  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B29F54:
/* 80B29F54  38 00 00 02 */	li r0, 2
/* 80B29F58  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_80B29F5C:
/* 80B29F5C  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80B29F60  2C 00 00 00 */	cmpwi r0, 0
/* 80B29F64  40 82 02 2C */	bne lbl_80B2A190
/* 80B29F68  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B29F6C  2C 00 00 00 */	cmpwi r0, 0
/* 80B29F70  41 82 00 24 */	beq lbl_80B29F94
/* 80B29F74  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B29F78  4B 61 B7 85 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B29F7C  38 00 00 00 */	li r0, 0
/* 80B29F80  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B29F84  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B29F88  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B29F8C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B29F90  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B29F94:
/* 80B29F94  38 00 00 00 */	li r0, 0
/* 80B29F98  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B29F9C  80 1D 0F EC */	lwz r0, 0xfec(r29)
/* 80B29FA0  2C 00 00 00 */	cmpwi r0, 0
/* 80B29FA4  40 82 01 60 */	bne lbl_80B2A104
/* 80B29FA8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B29FAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B29FB0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B29FB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B29FB8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B29FBC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B29FC0  38 7D 0F 98 */	addi r3, r29, 0xf98
/* 80B29FC4  38 81 00 18 */	addi r4, r1, 0x18
/* 80B29FC8  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B29FCC  80 DD 0F 98 */	lwz r6, 0xf98(r29)
/* 80B29FD0  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80B29FD4  38 E0 00 04 */	li r7, 4
/* 80B29FD8  4B 61 BF DD */	bl getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 80B29FDC  7C 7C 1B 78 */	mr r28, r3
/* 80B29FE0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B29FE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B29FE8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B29FEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B29FF0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B29FF4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B29FF8  7F A3 EB 78 */	mr r3, r29
/* 80B29FFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B2A000  7F 85 E3 78 */	mr r5, r28
/* 80B2A004  38 C0 00 06 */	li r6, 6
/* 80B2A008  38 E0 08 00 */	li r7, 0x800
/* 80B2A00C  4B 62 17 FD */	bl calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 80B2A010  2C 1C 00 00 */	cmpwi r28, 0
/* 80B2A014  41 82 01 7C */	beq lbl_80B2A190
/* 80B2A018  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80B2A01C  FC 00 02 10 */	fabs f0, f0
/* 80B2A020  FC 20 00 18 */	frsp f1, f0
/* 80B2A024  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80B2A028  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80B2A02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2A030  40 80 01 60 */	bge lbl_80B2A190
/* 80B2A034  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A038  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2A03C  41 82 00 24 */	beq lbl_80B2A060
/* 80B2A040  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A044  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A048  4B 61 B8 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A04C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A050  38 00 00 11 */	li r0, 0x11
/* 80B2A054  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A058  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A05C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A060:
/* 80B2A060  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A064  2C 00 00 0B */	cmpwi r0, 0xb
/* 80B2A068  41 82 00 24 */	beq lbl_80B2A08C
/* 80B2A06C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A070  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A074  4B 61 B8 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A078  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A07C  38 00 00 0B */	li r0, 0xb
/* 80B2A080  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A084  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A088  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B2A08C:
/* 80B2A08C  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80B2A090  C8 7F 01 10 */	lfd f3, 0x110(r31)
/* 80B2A094  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 80B2A098  90 61 00 34 */	stw r3, 0x34(r1)
/* 80B2A09C  3C 00 43 30 */	lis r0, 0x4330
/* 80B2A0A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B2A0A4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B2A0A8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2A0AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B2A0B0  C0 5F 01 54 */	lfs f2, 0x154(r31)
/* 80B2A0B4  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B2A0B8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B2A0BC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B2A0C0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2A0C4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B2A0C8  48 00 2A 65 */	bl func_80B2CB2C
/* 80B2A0CC  FC 00 08 1E */	fctiwz f0, f1
/* 80B2A0D0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B2A0D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B2A0D8  90 1D 0F EC */	stw r0, 0xfec(r29)
/* 80B2A0DC  38 7D 0F 98 */	addi r3, r29, 0xf98
/* 80B2A0E0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B2A0E4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B2A0E8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B2A0EC  7C 05 07 74 */	extsb r5, r0
/* 80B2A0F0  38 C0 00 00 */	li r6, 0
/* 80B2A0F4  4B 61 BB 81 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
/* 80B2A0F8  38 60 00 25 */	li r3, 0x25
/* 80B2A0FC  4B 62 29 31 */	bl daNpcT_onEvtBit__FUl
/* 80B2A100  48 00 00 90 */	b lbl_80B2A190
lbl_80B2A104:
/* 80B2A104  7F A3 EB 78 */	mr r3, r29
/* 80B2A108  3C 80 80 B3 */	lis r4, l_motionAnmData@ha /* 0x80B2D338@ha */
/* 80B2A10C  38 A4 D3 38 */	addi r5, r4, l_motionAnmData@l /* 0x80B2D338@l */
/* 80B2A110  80 05 01 AC */	lwz r0, 0x1ac(r5)
/* 80B2A114  54 00 10 3A */	slwi r0, r0, 2
/* 80B2A118  3C 80 80 B3 */	lis r4, l_resNameList@ha /* 0x80B2D0D0@ha */
/* 80B2A11C  38 84 D0 D0 */	addi r4, r4, l_resNameList@l /* 0x80B2D0D0@l */
/* 80B2A120  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B2A124  80 A5 01 A4 */	lwz r5, 0x1a4(r5)
/* 80B2A128  4B 61 DF 31 */	bl getTrnsfrmAnmP__8daNpcT_cFPCci
/* 80B2A12C  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B2A130  80 04 00 08 */	lwz r0, 8(r4)
/* 80B2A134  7C 03 00 40 */	cmplw r3, r0
/* 80B2A138  40 82 00 40 */	bne lbl_80B2A178
/* 80B2A13C  38 64 00 0C */	addi r3, r4, 0xc
/* 80B2A140  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80B2A144  4B 7F E2 E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80B2A148  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A14C  41 82 00 2C */	beq lbl_80B2A178
/* 80B2A150  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004A@ha */
/* 80B2A154  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0005004A@l */
/* 80B2A158  90 01 00 08 */	stw r0, 8(r1)
/* 80B2A15C  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B2A160  38 81 00 08 */	addi r4, r1, 8
/* 80B2A164  38 A0 FF FF */	li r5, -1
/* 80B2A168  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80B2A16C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B2A170  7D 89 03 A6 */	mtctr r12
/* 80B2A174  4E 80 04 21 */	bctrl 
lbl_80B2A178:
/* 80B2A178  38 7D 0F EC */	addi r3, r29, 0xfec
/* 80B2A17C  48 00 29 95 */	bl func_80B2CB10
/* 80B2A180  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A184  40 82 00 0C */	bne lbl_80B2A190
/* 80B2A188  38 00 00 01 */	li r0, 1
/* 80B2A18C  98 1D 10 0E */	stb r0, 0x100e(r29)
lbl_80B2A190:
/* 80B2A190  38 00 00 00 */	li r0, 0
/* 80B2A194  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80B2A198:
/* 80B2A198  38 60 00 01 */	li r3, 1
/* 80B2A19C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B2A1A0  4B 83 80 85 */	bl _restgpr_28
/* 80B2A1A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B2A1A8  7C 08 03 A6 */	mtlr r0
/* 80B2A1AC  38 21 00 60 */	addi r1, r1, 0x60
/* 80B2A1B0  4E 80 00 20 */	blr 

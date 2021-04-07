lbl_80B1FF2C:
/* 80B1FF2C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B1FF30  7C 08 02 A6 */	mflr r0
/* 80B1FF34  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B1FF38  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B1FF3C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B1FF40  39 61 00 60 */	addi r11, r1, 0x60
/* 80B1FF44  4B 84 22 8D */	bl _savegpr_26
/* 80B1FF48  7C 7D 1B 78 */	mr r29, r3
/* 80B1FF4C  3C 60 80 B2 */	lis r3, lit_1109@ha /* 0x80B25840@ha */
/* 80B1FF50  3B C3 58 40 */	addi r30, r3, lit_1109@l /* 0x80B25840@l */
/* 80B1FF54  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B1FF58  3B E3 49 E4 */	addi r31, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B1FF5C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80B1FF60  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B1FF64  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B1FF68  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B1FF6C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B1FF70  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 80B1FF74  38 80 00 00 */	li r4, 0
/* 80B1FF78  4B 62 7E C5 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80B1FF7C  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 80B1FF80  A8 7D 0D 80 */	lha r3, 0xd80(r29)
/* 80B1FF84  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80B1FF88  7C 03 00 50 */	subf r0, r3, r0
/* 80B1FF8C  7C 00 07 34 */	extsh r0, r0
/* 80B1FF90  C8 3F 01 10 */	lfd f1, 0x110(r31)
/* 80B1FF94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B1FF98  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B1FF9C  3C 00 43 30 */	lis r0, 0x4330
/* 80B1FFA0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B1FFA4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B1FFA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B1FFAC  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B1FFB0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B1FFB4  83 43 00 04 */	lwz r26, 4(r3)
/* 80B1FFB8  7F A3 EB 78 */	mr r3, r29
/* 80B1FFBC  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B1FFC0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B1FFC4  7D 89 03 A6 */	mtctr r12
/* 80B1FFC8  4E 80 04 21 */	bctrl 
/* 80B1FFCC  7C 7B 1B 78 */	mr r27, r3
/* 80B1FFD0  7F A3 EB 78 */	mr r3, r29
/* 80B1FFD4  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B1FFD8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B1FFDC  7D 89 03 A6 */	mtctr r12
/* 80B1FFE0  4E 80 04 21 */	bctrl 
/* 80B1FFE4  7C 7C 1B 78 */	mr r28, r3
/* 80B1FFE8  7F A3 EB 78 */	mr r3, r29
/* 80B1FFEC  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B1FFF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B1FFF4  7D 89 03 A6 */	mtctr r12
/* 80B1FFF8  4E 80 04 21 */	bctrl 
/* 80B1FFFC  7C 67 1B 78 */	mr r7, r3
/* 80B20000  39 5F 00 00 */	addi r10, r31, 0
/* 80B20004  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B20008  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B2000C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B20010  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B20014  7F A4 EB 78 */	mr r4, r29
/* 80B20018  7F 45 D3 78 */	mr r5, r26
/* 80B2001C  38 C1 00 34 */	addi r6, r1, 0x34
/* 80B20020  7F 88 E3 78 */	mr r8, r28
/* 80B20024  7F 69 DB 78 */	mr r9, r27
/* 80B20028  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B2002C  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B20030  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B20034  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B20038  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B2003C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B20040  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B20044  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B20048  39 40 00 00 */	li r10, 0
/* 80B2004C  4B 62 6C 8D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B20050  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B20054  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80B20058  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80B2005C  FC 60 F8 90 */	fmr f3, f31
/* 80B20060  4B 62 7B D9 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B20064  7F A3 EB 78 */	mr r3, r29
/* 80B20068  4B 62 91 29 */	bl setMtx__8daNpcT_cFv
/* 80B2006C  7F A3 EB 78 */	mr r3, r29
/* 80B20070  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B20074  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B20078  7D 89 03 A6 */	mtctr r12
/* 80B2007C  4E 80 04 21 */	bctrl 
/* 80B20080  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B20084  80 84 00 04 */	lwz r4, 4(r4)
/* 80B20088  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B2008C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B20090  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B20094  7C 64 02 14 */	add r3, r4, r0
/* 80B20098  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B2009C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B200A0  4B 82 64 11 */	bl PSMTXCopy
/* 80B200A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B200A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B200AC  38 81 00 34 */	addi r4, r1, 0x34
/* 80B200B0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B200B4  4B 82 6C B9 */	bl PSMTXMultVec
/* 80B200B8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80B200BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B200C0  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80B200C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B200C8  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80B200CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B200D0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B200D4  38 81 00 28 */	addi r4, r1, 0x28
/* 80B200D8  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80B200DC  38 A0 00 00 */	li r5, 0
/* 80B200E0  48 00 43 95 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B200E4  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80B200E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B200EC  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80B200F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B200F4  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80B200F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B200FC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B20100  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B20104  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 80B20108  38 C0 00 01 */	li r6, 1
/* 80B2010C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80B20110  38 E0 00 00 */	li r7, 0
/* 80B20114  48 00 42 45 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B20118  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B2011C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B20120  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B20124  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80B20128  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B2012C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B20130  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B20134  7F A3 EB 78 */	mr r3, r29
/* 80B20138  48 00 24 DD */	bl chkAttnZra__12daNpc_Toby_cFv
/* 80B2013C  2C 03 00 00 */	cmpwi r3, 0
/* 80B20140  41 82 00 20 */	beq lbl_80B20160
/* 80B20144  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B20148  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B2014C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80B20150  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B20154  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80B20158  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B2015C  48 00 00 34 */	b lbl_80B20190
lbl_80B20160:
/* 80B20160  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B20164  28 00 00 01 */	cmplwi r0, 1
/* 80B20168  40 82 00 28 */	bne lbl_80B20190
/* 80B2016C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B20170  2C 00 00 0B */	cmpwi r0, 0xb
/* 80B20174  40 82 00 1C */	bne lbl_80B20190
/* 80B20178  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B2017C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B20180  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80B20184  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B20188  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B2018C  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80B20190:
/* 80B20190  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B20194  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B20198  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 80B2019C  4B 4E C2 41 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B201A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B201A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B201A8  38 81 00 34 */	addi r4, r1, 0x34
/* 80B201AC  7C 85 23 78 */	mr r5, r4
/* 80B201B0  4B 82 6B BD */	bl PSMTXMultVec
/* 80B201B4  38 61 00 10 */	addi r3, r1, 0x10
/* 80B201B8  38 81 00 34 */	addi r4, r1, 0x34
/* 80B201BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B201C0  4B 74 69 25 */	bl __pl__4cXyzCFRC3Vec
/* 80B201C4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B201C8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80B201CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B201D0  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80B201D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B201D8  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80B201DC  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80B201E0  7C 00 07 75 */	extsb. r0, r0
/* 80B201E4  40 82 00 30 */	bne lbl_80B20214
/* 80B201E8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80B201EC  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80B201F0  38 7E 00 60 */	addi r3, r30, 0x60
/* 80B201F4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B201F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B201FC  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B20200  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B20204  38 BE 00 50 */	addi r5, r30, 0x50
/* 80B20208  4B FF E3 D1 */	bl __register_global_object
/* 80B2020C  38 00 00 01 */	li r0, 1
/* 80B20210  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80B20214:
/* 80B20214  7F A3 EB 78 */	mr r3, r29
/* 80B20218  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B2021C  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80B20220  7D 89 03 A6 */	mtctr r12
/* 80B20224  4E 80 04 21 */	bctrl 
/* 80B20228  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 80B2022C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80B20230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B20234  40 80 00 24 */	bge lbl_80B20258
/* 80B20238  7F A3 EB 78 */	mr r3, r29
/* 80B2023C  38 9E 00 60 */	addi r4, r30, 0x60
/* 80B20240  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80B20244  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80B20248  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B2024C  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80B20250  7D 89 03 A6 */	mtctr r12
/* 80B20254  4E 80 04 21 */	bctrl 
lbl_80B20258:
/* 80B20258  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B2025C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B20260  39 61 00 60 */	addi r11, r1, 0x60
/* 80B20264  4B 84 1F B9 */	bl _restgpr_26
/* 80B20268  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B2026C  7C 08 03 A6 */	mtlr r0
/* 80B20270  38 21 00 70 */	addi r1, r1, 0x70
/* 80B20274  4E 80 00 20 */	blr 

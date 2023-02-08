lbl_80C061F4:
/* 80C061F4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C061F8  7C 08 02 A6 */	mflr r0
/* 80C061FC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C06200  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C06204  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C06208  39 61 00 80 */	addi r11, r1, 0x80
/* 80C0620C  4B 75 BF D1 */	bl _savegpr_29
/* 80C06210  7C 7E 1B 78 */	mr r30, r3
/* 80C06214  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C06218  3B E4 FA 7C */	addi r31, r4, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0621C  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C06220  2C 00 00 01 */	cmpwi r0, 1
/* 80C06224  41 82 00 78 */	beq lbl_80C0629C
/* 80C06228  40 80 05 84 */	bge lbl_80C067AC
/* 80C0622C  2C 00 00 00 */	cmpwi r0, 0
/* 80C06230  40 80 00 0C */	bge lbl_80C0623C
/* 80C06234  48 00 05 78 */	b lbl_80C067AC
/* 80C06238  48 00 05 74 */	b lbl_80C067AC
lbl_80C0623C:
/* 80C0623C  38 00 00 01 */	li r0, 1
/* 80C06240  90 1E 0A AC */	stw r0, 0xaac(r30)
/* 80C06244  4B FF C8 25 */	bl ppMoveInit__11daObj_GrA_cFv
/* 80C06248  38 00 00 00 */	li r0, 0
/* 80C0624C  90 1E 0A A8 */	stw r0, 0xaa8(r30)
/* 80C06250  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80C06254  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80C06258  A0 1E 08 42 */	lhz r0, 0x842(r30)
/* 80C0625C  90 1E 20 2C */	stw r0, 0x202c(r30)
/* 80C06260  88 1E 0A 7E */	lbz r0, 0xa7e(r30)
/* 80C06264  28 00 00 01 */	cmplwi r0, 1
/* 80C06268  41 82 05 44 */	beq lbl_80C067AC
/* 80C0626C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C06270  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C06274  3B A3 09 78 */	addi r29, r3, 0x978
/* 80C06278  7F A3 EB 78 */	mr r3, r29
/* 80C0627C  38 80 00 1D */	li r4, 0x1d
/* 80C06280  4B 42 E9 69 */	bl isSwitch__12dSv_danBit_cCFi
/* 80C06284  2C 03 00 00 */	cmpwi r3, 0
/* 80C06288  40 82 05 24 */	bne lbl_80C067AC
/* 80C0628C  7F A3 EB 78 */	mr r3, r29
/* 80C06290  38 80 00 1D */	li r4, 0x1d
/* 80C06294  4B 42 E9 05 */	bl onSwitch__12dSv_danBit_cFi
/* 80C06298  48 00 05 14 */	b lbl_80C067AC
lbl_80C0629C:
/* 80C0629C  80 1E 0A AC */	lwz r0, 0xaac(r30)
/* 80C062A0  2C 00 00 02 */	cmpwi r0, 2
/* 80C062A4  41 82 02 A0 */	beq lbl_80C06544
/* 80C062A8  40 80 00 10 */	bge lbl_80C062B8
/* 80C062AC  2C 00 00 01 */	cmpwi r0, 1
/* 80C062B0  40 80 00 14 */	bge lbl_80C062C4
/* 80C062B4  48 00 04 F8 */	b lbl_80C067AC
lbl_80C062B8:
/* 80C062B8  2C 00 00 04 */	cmpwi r0, 4
/* 80C062BC  40 80 04 F0 */	bge lbl_80C067AC
/* 80C062C0  48 00 04 30 */	b lbl_80C066F0
lbl_80C062C4:
/* 80C062C4  80 1E 10 9C */	lwz r0, 0x109c(r30)
/* 80C062C8  2C 00 00 00 */	cmpwi r0, 0
/* 80C062CC  41 82 01 C0 */	beq lbl_80C0648C
/* 80C062D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C062D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C062D8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C062DC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C062E0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C062E4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C062E8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C062EC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C062F0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C062F4  38 61 00 28 */	addi r3, r1, 0x28
/* 80C062F8  38 81 00 40 */	addi r4, r1, 0x40
/* 80C062FC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C06300  4B 66 08 35 */	bl __mi__4cXyzCFRC3Vec
/* 80C06304  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C06308  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C0630C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C06310  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C06314  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C06318  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C0631C  38 61 00 10 */	addi r3, r1, 0x10
/* 80C06320  4B 74 0E 19 */	bl PSVECSquareMag
/* 80C06324  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C06328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0632C  40 81 00 58 */	ble lbl_80C06384
/* 80C06330  FC 00 08 34 */	frsqrte f0, f1
/* 80C06334  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C06338  FC 44 00 32 */	fmul f2, f4, f0
/* 80C0633C  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C06340  FC 00 00 32 */	fmul f0, f0, f0
/* 80C06344  FC 01 00 32 */	fmul f0, f1, f0
/* 80C06348  FC 03 00 28 */	fsub f0, f3, f0
/* 80C0634C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C06350  FC 44 00 32 */	fmul f2, f4, f0
/* 80C06354  FC 00 00 32 */	fmul f0, f0, f0
/* 80C06358  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0635C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C06360  FC 02 00 32 */	fmul f0, f2, f0
/* 80C06364  FC 44 00 32 */	fmul f2, f4, f0
/* 80C06368  FC 00 00 32 */	fmul f0, f0, f0
/* 80C0636C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C06370  FC 03 00 28 */	fsub f0, f3, f0
/* 80C06374  FC 02 00 32 */	fmul f0, f2, f0
/* 80C06378  FF E1 00 32 */	fmul f31, f1, f0
/* 80C0637C  FF E0 F8 18 */	frsp f31, f31
/* 80C06380  48 00 00 90 */	b lbl_80C06410
lbl_80C06384:
/* 80C06384  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C06388  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0638C  40 80 00 10 */	bge lbl_80C0639C
/* 80C06390  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C06394  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C06398  48 00 00 78 */	b lbl_80C06410
lbl_80C0639C:
/* 80C0639C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C063A0  80 81 00 08 */	lwz r4, 8(r1)
/* 80C063A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C063A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C063AC  7C 03 00 00 */	cmpw r3, r0
/* 80C063B0  41 82 00 14 */	beq lbl_80C063C4
/* 80C063B4  40 80 00 40 */	bge lbl_80C063F4
/* 80C063B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C063BC  41 82 00 20 */	beq lbl_80C063DC
/* 80C063C0  48 00 00 34 */	b lbl_80C063F4
lbl_80C063C4:
/* 80C063C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C063C8  41 82 00 0C */	beq lbl_80C063D4
/* 80C063CC  38 00 00 01 */	li r0, 1
/* 80C063D0  48 00 00 28 */	b lbl_80C063F8
lbl_80C063D4:
/* 80C063D4  38 00 00 02 */	li r0, 2
/* 80C063D8  48 00 00 20 */	b lbl_80C063F8
lbl_80C063DC:
/* 80C063DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C063E0  41 82 00 0C */	beq lbl_80C063EC
/* 80C063E4  38 00 00 05 */	li r0, 5
/* 80C063E8  48 00 00 10 */	b lbl_80C063F8
lbl_80C063EC:
/* 80C063EC  38 00 00 03 */	li r0, 3
/* 80C063F0  48 00 00 08 */	b lbl_80C063F8
lbl_80C063F4:
/* 80C063F4  38 00 00 04 */	li r0, 4
lbl_80C063F8:
/* 80C063F8  2C 00 00 01 */	cmpwi r0, 1
/* 80C063FC  40 82 00 10 */	bne lbl_80C0640C
/* 80C06400  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C06404  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C06408  48 00 00 08 */	b lbl_80C06410
lbl_80C0640C:
/* 80C0640C  FF E0 08 90 */	fmr f31, f1
lbl_80C06410:
/* 80C06410  80 7E 0A A8 */	lwz r3, 0xaa8(r30)
/* 80C06414  2C 03 00 00 */	cmpwi r3, 0
/* 80C06418  41 82 00 2C */	beq lbl_80C06444
/* 80C0641C  38 03 FF FF */	addi r0, r3, -1
/* 80C06420  90 1E 0A A8 */	stw r0, 0xaa8(r30)
/* 80C06424  80 1E 0A A8 */	lwz r0, 0xaa8(r30)
/* 80C06428  2C 00 00 00 */	cmpwi r0, 0
/* 80C0642C  41 81 03 80 */	bgt lbl_80C067AC
/* 80C06430  38 00 00 5A */	li r0, 0x5a
/* 80C06434  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80C06438  38 00 00 02 */	li r0, 2
/* 80C0643C  90 1E 0A AC */	stw r0, 0xaac(r30)
/* 80C06440  48 00 03 6C */	b lbl_80C067AC
lbl_80C06444:
/* 80C06444  7F C3 F3 78 */	mr r3, r30
/* 80C06448  4B FF EF 25 */	bl getSrchCircleR__11daObj_GrA_cFv
/* 80C0644C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C06450  41 81 00 30 */	bgt lbl_80C06480
/* 80C06454  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80C06458  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C0645C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C06460  FC 00 02 10 */	fabs f0, f0
/* 80C06464  FC 20 00 18 */	frsp f1, f0
/* 80C06468  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 80C0646C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C06470  41 81 00 10 */	bgt lbl_80C06480
/* 80C06474  80 1E 10 C4 */	lwz r0, 0x10c4(r30)
/* 80C06478  2C 00 00 00 */	cmpwi r0, 0
/* 80C0647C  41 82 03 30 */	beq lbl_80C067AC
lbl_80C06480:
/* 80C06480  38 00 00 1E */	li r0, 0x1e
/* 80C06484  90 1E 0A A8 */	stw r0, 0xaa8(r30)
/* 80C06488  48 00 03 24 */	b lbl_80C067AC
lbl_80C0648C:
/* 80C0648C  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C06490  38 63 00 0C */	addi r3, r3, 0xc
/* 80C06494  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C06498  4B 72 1F 95 */	bl checkPass__12J3DFrameCtrlFf
/* 80C0649C  2C 03 00 00 */	cmpwi r3, 0
/* 80C064A0  41 82 03 0C */	beq lbl_80C067AC
/* 80C064A4  7F C3 F3 78 */	mr r3, r30
/* 80C064A8  38 80 00 04 */	li r4, 4
/* 80C064AC  3B BF 00 00 */	addi r29, r31, 0
/* 80C064B0  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80C064B4  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80C064B8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C064BC  4B FF B2 D1 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C064C0  7F C3 F3 78 */	mr r3, r30
/* 80C064C4  38 80 00 0D */	li r4, 0xd
/* 80C064C8  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80C064CC  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80C064D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C064D4  4B FF B2 D9 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C064D8  7F C3 F3 78 */	mr r3, r30
/* 80C064DC  4B FF B3 15 */	bl calcMotion__11daObj_GrA_cFv
/* 80C064E0  80 9E 07 54 */	lwz r4, 0x754(r30)
/* 80C064E4  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80C064E8  C8 3F 01 30 */	lfd f1, 0x130(r31)
/* 80C064EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C064F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C064F4  3C 60 43 30 */	lis r3, 0x4330
/* 80C064F8  90 61 00 50 */	stw r3, 0x50(r1)
/* 80C064FC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80C06500  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C06504  FC 00 00 1E */	fctiwz f0, f0
/* 80C06508  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80C0650C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80C06510  7C 00 07 34 */	extsh r0, r0
/* 80C06514  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C06518  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C0651C  90 61 00 60 */	stw r3, 0x60(r1)
/* 80C06520  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80C06524  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C06528  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C0652C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C06530  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C06534  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C06538  38 00 00 01 */	li r0, 1
/* 80C0653C  90 1E 10 9C */	stw r0, 0x109c(r30)
/* 80C06540  48 00 02 6C */	b lbl_80C067AC
lbl_80C06544:
/* 80C06544  80 1E 10 A0 */	lwz r0, 0x10a0(r30)
/* 80C06548  2C 00 00 00 */	cmpwi r0, 0
/* 80C0654C  41 82 00 A0 */	beq lbl_80C065EC
/* 80C06550  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C06554  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C06558  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C0655C  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C06560  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C06564  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C06568  4B 40 67 FD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C0656C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C06570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C06574  A8 9E 09 1C */	lha r4, 0x91c(r30)
/* 80C06578  4B 40 5E BD */	bl mDoMtx_YrotM__FPA4_fs
/* 80C0657C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C06580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C06584  38 81 00 34 */	addi r4, r1, 0x34
/* 80C06588  38 BE 0C 2C */	addi r5, r30, 0xc2c
/* 80C0658C  4B 74 07 E1 */	bl PSMTXMultVec
/* 80C06590  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C06594  B0 1E 0C 38 */	sth r0, 0xc38(r30)
/* 80C06598  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C0659C  B0 1E 0C 3A */	sth r0, 0xc3a(r30)
/* 80C065A0  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C065A4  B0 1E 0C 3C */	sth r0, 0xc3c(r30)
/* 80C065A8  38 00 00 01 */	li r0, 1
/* 80C065AC  98 1E 0C 28 */	stb r0, 0xc28(r30)
/* 80C065B0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060008@ha */
/* 80C065B4  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x00060008@l */
/* 80C065B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C065BC  38 7E 07 58 */	addi r3, r30, 0x758
/* 80C065C0  38 81 00 0C */	addi r4, r1, 0xc
/* 80C065C4  38 A0 00 00 */	li r5, 0
/* 80C065C8  38 C0 FF FF */	li r6, -1
/* 80C065CC  81 9E 07 58 */	lwz r12, 0x758(r30)
/* 80C065D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C065D4  7D 89 03 A6 */	mtctr r12
/* 80C065D8  4E 80 04 21 */	bctrl 
/* 80C065DC  80 7E 10 A0 */	lwz r3, 0x10a0(r30)
/* 80C065E0  38 03 FF FF */	addi r0, r3, -1
/* 80C065E4  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80C065E8  48 00 01 C4 */	b lbl_80C067AC
lbl_80C065EC:
/* 80C065EC  80 1E 10 C4 */	lwz r0, 0x10c4(r30)
/* 80C065F0  2C 00 00 00 */	cmpwi r0, 0
/* 80C065F4  41 82 00 A8 */	beq lbl_80C0669C
/* 80C065F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C065FC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C06600  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80C06604  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80C06608  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C0660C  40 82 00 90 */	bne lbl_80C0669C
/* 80C06610  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 80C06614  38 7F 00 00 */	addi r3, r31, 0
/* 80C06618  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80C0661C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C06620  FC 00 00 1E */	fctiwz f0, f0
/* 80C06624  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C06628  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80C0662C  38 64 4E 00 */	addi r3, r4, 0x4e00
/* 80C06630  3C 80 80 C1 */	lis r4, d_a_obj_gra2__stringBase0@ha /* 0x80C0FE14@ha */
/* 80C06634  38 84 FE 14 */	addi r4, r4, d_a_obj_gra2__stringBase0@l /* 0x80C0FE14@l */
/* 80C06638  38 84 00 4C */	addi r4, r4, 0x4c
/* 80C0663C  4B 76 23 59 */	bl strcmp
/* 80C06640  2C 03 00 00 */	cmpwi r3, 0
/* 80C06644  40 82 00 0C */	bne lbl_80C06650
/* 80C06648  C0 5F 02 8C */	lfs f2, 0x28c(r31)
/* 80C0664C  48 00 00 0C */	b lbl_80C06658
lbl_80C06650:
/* 80C06650  38 7F 00 00 */	addi r3, r31, 0
/* 80C06654  C0 43 00 48 */	lfs f2, 0x48(r3)
lbl_80C06658:
/* 80C06658  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 80C0665C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C06660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C06664  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C06668  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C0666C  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C06670  7C 85 02 14 */	add r4, r5, r0
/* 80C06674  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C06678  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C0667C  7C 05 04 2E */	lfsx f0, r5, r0
/* 80C06680  EC 42 00 32 */	fmuls f2, f2, f0
/* 80C06684  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 80C06688  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C0668C  81 8C 01 68 */	lwz r12, 0x168(r12)
/* 80C06690  7D 89 03 A6 */	mtctr r12
/* 80C06694  4E 80 04 21 */	bctrl 
/* 80C06698  48 00 00 18 */	b lbl_80C066B0
lbl_80C0669C:
/* 80C0669C  80 1E 0F 50 */	lwz r0, 0xf50(r30)
/* 80C066A0  60 00 00 01 */	ori r0, r0, 1
/* 80C066A4  90 1E 0F 50 */	stw r0, 0xf50(r30)
/* 80C066A8  38 00 00 00 */	li r0, 0
/* 80C066AC  90 1E 10 9C */	stw r0, 0x109c(r30)
lbl_80C066B0:
/* 80C066B0  7F C3 F3 78 */	mr r3, r30
/* 80C066B4  38 80 00 06 */	li r4, 6
/* 80C066B8  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C066BC  4B FF B0 D1 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C066C0  7F C3 F3 78 */	mr r3, r30
/* 80C066C4  38 80 00 03 */	li r4, 3
/* 80C066C8  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C066CC  4B FF B0 E1 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C066D0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C066D4  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C066D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C066DC  38 00 00 00 */	li r0, 0
/* 80C066E0  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80C066E4  38 00 00 03 */	li r0, 3
/* 80C066E8  90 1E 0A AC */	stw r0, 0xaac(r30)
/* 80C066EC  48 00 00 C0 */	b lbl_80C067AC
lbl_80C066F0:
/* 80C066F0  A0 1E 08 42 */	lhz r0, 0x842(r30)
/* 80C066F4  28 00 00 00 */	cmplwi r0, 0
/* 80C066F8  41 82 00 64 */	beq lbl_80C0675C
/* 80C066FC  80 1E 0F 50 */	lwz r0, 0xf50(r30)
/* 80C06700  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C06704  90 1E 0F 50 */	stw r0, 0xf50(r30)
/* 80C06708  3C 80 80 C1 */	lis r4, lit_6763@ha /* 0x80C101E4@ha */
/* 80C0670C  38 A4 01 E4 */	addi r5, r4, lit_6763@l /* 0x80C101E4@l */
/* 80C06710  80 85 00 00 */	lwz r4, 0(r5)
/* 80C06714  80 05 00 04 */	lwz r0, 4(r5)
/* 80C06718  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C0671C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C06720  80 05 00 08 */	lwz r0, 8(r5)
/* 80C06724  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C06728  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C0672C  4B FF B1 C9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C06730  7F C3 F3 78 */	mr r3, r30
/* 80C06734  38 80 00 01 */	li r4, 1
/* 80C06738  4B FF C3 9D */	bl setLookMode__11daObj_GrA_cFi
/* 80C0673C  38 80 00 00 */	li r4, 0
/* 80C06740  90 9E 1F 40 */	stw r4, 0x1f40(r30)
/* 80C06744  90 9E 0A AC */	stw r4, 0xaac(r30)
/* 80C06748  38 7F 00 00 */	addi r3, r31, 0
/* 80C0674C  A8 03 00 10 */	lha r0, 0x10(r3)
/* 80C06750  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80C06754  90 9E 10 9C */	stw r4, 0x109c(r30)
/* 80C06758  48 00 00 54 */	b lbl_80C067AC
lbl_80C0675C:
/* 80C0675C  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C06760  38 63 00 0C */	addi r3, r3, 0xc
/* 80C06764  C0 3F 02 90 */	lfs f1, 0x290(r31)
/* 80C06768  4B 72 1C C5 */	bl checkPass__12J3DFrameCtrlFf
/* 80C0676C  2C 03 00 00 */	cmpwi r3, 0
/* 80C06770  41 82 00 3C */	beq lbl_80C067AC
/* 80C06774  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C06778  D0 1E 0B D0 */	stfs f0, 0xbd0(r30)
/* 80C0677C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C06780  D0 1E 0B D4 */	stfs f0, 0xbd4(r30)
/* 80C06784  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C06788  D0 1E 0B D8 */	stfs f0, 0xbd8(r30)
/* 80C0678C  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C06790  B0 1E 0B DC */	sth r0, 0xbdc(r30)
/* 80C06794  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C06798  B0 1E 0B DE */	sth r0, 0xbde(r30)
/* 80C0679C  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C067A0  B0 1E 0B E0 */	sth r0, 0xbe0(r30)
/* 80C067A4  38 00 00 01 */	li r0, 1
/* 80C067A8  98 1E 0B CC */	stb r0, 0xbcc(r30)
lbl_80C067AC:
/* 80C067AC  38 00 00 00 */	li r0, 0
/* 80C067B0  90 1E 10 C4 */	stw r0, 0x10c4(r30)
/* 80C067B4  38 60 00 01 */	li r3, 1
/* 80C067B8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C067BC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C067C0  39 61 00 80 */	addi r11, r1, 0x80
/* 80C067C4  4B 75 BA 65 */	bl _restgpr_29
/* 80C067C8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C067CC  7C 08 03 A6 */	mtlr r0
/* 80C067D0  38 21 00 90 */	addi r1, r1, 0x90
/* 80C067D4  4E 80 00 20 */	blr 

lbl_80C2BFE8:
/* 80C2BFE8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C2BFEC  7C 08 02 A6 */	mflr r0
/* 80C2BFF0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C2BFF4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C2BFF8  4B 73 61 E1 */	bl _savegpr_28
/* 80C2BFFC  7C 7C 1B 78 */	mr r28, r3
/* 80C2C000  3C 60 80 C3 */	lis r3, lit_3775@ha /* 0x80C2E110@ha */
/* 80C2C004  3B E3 E1 10 */	addi r31, r3, lit_3775@l /* 0x80C2E110@l */
/* 80C2C008  38 60 00 00 */	li r3, 0
/* 80C2C00C  7C 64 1B 78 */	mr r4, r3
/* 80C2C010  38 00 00 03 */	li r0, 3
/* 80C2C014  7C 09 03 A6 */	mtctr r0
lbl_80C2C018:
/* 80C2C018  38 C3 07 12 */	addi r6, r3, 0x712
/* 80C2C01C  7C BC 32 AE */	lhax r5, r28, r6
/* 80C2C020  38 05 FF FF */	addi r0, r5, -1
/* 80C2C024  7C 1C 33 2E */	sthx r0, r28, r6
/* 80C2C028  7C 1C 32 AE */	lhax r0, r28, r6
/* 80C2C02C  2C 00 00 00 */	cmpwi r0, 0
/* 80C2C030  41 81 00 08 */	bgt lbl_80C2C038
/* 80C2C034  7C 9C 33 2E */	sthx r4, r28, r6
lbl_80C2C038:
/* 80C2C038  38 63 00 02 */	addi r3, r3, 2
/* 80C2C03C  42 00 FF DC */	bdnz lbl_80C2C018
/* 80C2C040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2C044  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2C048  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C2C04C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C2C050  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C2C054  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2C058  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C2C05C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C2C060  38 61 00 44 */	addi r3, r1, 0x44
/* 80C2C064  4B 44 BC 05 */	bl __ct__11dBgS_LinChkFv
/* 80C2C068  88 1C 07 11 */	lbz r0, 0x711(r28)
/* 80C2C06C  2C 00 00 01 */	cmpwi r0, 1
/* 80C2C070  41 82 00 7C */	beq lbl_80C2C0EC
/* 80C2C074  40 80 00 10 */	bge lbl_80C2C084
/* 80C2C078  2C 00 00 00 */	cmpwi r0, 0
/* 80C2C07C  40 80 00 14 */	bge lbl_80C2C090
/* 80C2C080  48 00 06 E4 */	b lbl_80C2C764
lbl_80C2C084:
/* 80C2C084  2C 00 00 03 */	cmpwi r0, 3
/* 80C2C088  40 80 06 DC */	bge lbl_80C2C764
/* 80C2C08C  48 00 01 4C */	b lbl_80C2C1D8
lbl_80C2C090:
/* 80C2C090  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2C094  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2C098  38 80 00 06 */	li r4, 6
/* 80C2C09C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2C0A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2C0A4  3C A5 00 02 */	addis r5, r5, 2
/* 80C2C0A8  38 C0 00 80 */	li r6, 0x80
/* 80C2C0AC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2C0B0  4B 41 02 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2C0B4  7C 64 1B 78 */	mr r4, r3
/* 80C2C0B8  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 80C2C0BC  38 A0 00 02 */	li r5, 2
/* 80C2C0C0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2C0C4  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80C2C0C8  FC 60 10 90 */	fmr f3, f2
/* 80C2C0CC  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 80C2C0D0  4B 3E 4D A1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2C0D4  88 7C 07 11 */	lbz r3, 0x711(r28)
/* 80C2C0D8  38 03 00 01 */	addi r0, r3, 1
/* 80C2C0DC  98 1C 07 11 */	stb r0, 0x711(r28)
/* 80C2C0E0  38 00 00 14 */	li r0, 0x14
/* 80C2C0E4  B0 1C 07 12 */	sth r0, 0x712(r28)
/* 80C2C0E8  48 00 06 7C */	b lbl_80C2C764
lbl_80C2C0EC:
/* 80C2C0EC  A8 1C 07 12 */	lha r0, 0x712(r28)
/* 80C2C0F0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C2C0F4  40 82 00 10 */	bne lbl_80C2C104
/* 80C2C0F8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2C0FC  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 80C2C100  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80C2C104:
/* 80C2C104  A8 1C 07 12 */	lha r0, 0x712(r28)
/* 80C2C108  2C 00 00 00 */	cmpwi r0, 0
/* 80C2C10C  40 82 06 58 */	bne lbl_80C2C764
/* 80C2C110  88 7C 07 11 */	lbz r3, 0x711(r28)
/* 80C2C114  38 03 00 01 */	addi r0, r3, 1
/* 80C2C118  98 1C 07 11 */	stb r0, 0x711(r28)
/* 80C2C11C  38 7C 07 2A */	addi r3, r28, 0x72a
/* 80C2C120  4B 3E 0D ED */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80C2C124  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2C128  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2C12C  38 81 00 38 */	addi r4, r1, 0x38
/* 80C2C130  7C 85 23 78 */	mr r5, r4
/* 80C2C134  4B 71 AC 39 */	bl PSMTXMultVec
/* 80C2C138  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80C2C13C  4B 63 B8 19 */	bl cM_rndF__Ff
/* 80C2C140  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80C2C144  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2C148  FC 00 00 1E */	fctiwz f0, f0
/* 80C2C14C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C2C150  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C2C154  B0 1C 07 12 */	sth r0, 0x712(r28)
/* 80C2C158  88 1C 07 36 */	lbz r0, 0x736(r28)
/* 80C2C15C  28 00 00 00 */	cmplwi r0, 0
/* 80C2C160  40 82 00 28 */	bne lbl_80C2C188
/* 80C2C164  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80C2C168  4B 63 B7 ED */	bl cM_rndF__Ff
/* 80C2C16C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80C2C170  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2C174  FC 00 00 1E */	fctiwz f0, f0
/* 80C2C178  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C2C17C  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C2C180  B0 1C 07 14 */	sth r0, 0x714(r28)
/* 80C2C184  48 00 00 24 */	b lbl_80C2C1A8
lbl_80C2C188:
/* 80C2C188  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C2C18C  4B 63 B7 C9 */	bl cM_rndF__Ff
/* 80C2C190  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C2C194  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2C198  FC 00 00 1E */	fctiwz f0, f0
/* 80C2C19C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C2C1A0  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C2C1A4  B0 1C 07 14 */	sth r0, 0x714(r28)
lbl_80C2C1A8:
/* 80C2C1A8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2C1AC  4B 63 B7 A9 */	bl cM_rndF__Ff
/* 80C2C1B0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80C2C1B4  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2C1B8  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 80C2C1BC  A8 1C 07 32 */	lha r0, 0x732(r28)
/* 80C2C1C0  B0 1C 07 20 */	sth r0, 0x720(r28)
/* 80C2C1C4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80C2C1C8  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80C2C1CC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C2C1D0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C2C1D4  48 00 05 90 */	b lbl_80C2C764
lbl_80C2C1D8:
/* 80C2C1D8  7F C3 F3 78 */	mr r3, r30
/* 80C2C1DC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80C2C1E0  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80C2C1E4  7D 89 03 A6 */	mtctr r12
/* 80C2C1E8  4E 80 04 21 */	bctrl 
/* 80C2C1EC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C2C1F0  41 82 03 C0 */	beq lbl_80C2C5B0
/* 80C2C1F4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C2C1F8  7F A4 EB 78 */	mr r4, r29
/* 80C2C1FC  4B 64 4A 09 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C2C200  B0 7C 07 20 */	sth r3, 0x720(r28)
/* 80C2C204  7F A3 EB 78 */	mr r3, r29
/* 80C2C208  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C2C20C  4B 71 B1 91 */	bl PSVECSquareDistance
/* 80C2C210  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2C214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2C218  40 81 00 58 */	ble lbl_80C2C270
/* 80C2C21C  FC 00 08 34 */	frsqrte f0, f1
/* 80C2C220  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80C2C224  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2C228  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80C2C22C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2C230  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2C234  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2C238  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2C23C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2C240  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2C244  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2C248  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2C24C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2C250  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2C254  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2C258  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2C25C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2C260  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2C264  FC 21 00 32 */	fmul f1, f1, f0
/* 80C2C268  FC 20 08 18 */	frsp f1, f1
/* 80C2C26C  48 00 00 88 */	b lbl_80C2C2F4
lbl_80C2C270:
/* 80C2C270  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80C2C274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2C278  40 80 00 10 */	bge lbl_80C2C288
/* 80C2C27C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2C280  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2C284  48 00 00 70 */	b lbl_80C2C2F4
lbl_80C2C288:
/* 80C2C288  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C2C28C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C2C290  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2C294  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2C298  7C 03 00 00 */	cmpw r3, r0
/* 80C2C29C  41 82 00 14 */	beq lbl_80C2C2B0
/* 80C2C2A0  40 80 00 40 */	bge lbl_80C2C2E0
/* 80C2C2A4  2C 03 00 00 */	cmpwi r3, 0
/* 80C2C2A8  41 82 00 20 */	beq lbl_80C2C2C8
/* 80C2C2AC  48 00 00 34 */	b lbl_80C2C2E0
lbl_80C2C2B0:
/* 80C2C2B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2C2B4  41 82 00 0C */	beq lbl_80C2C2C0
/* 80C2C2B8  38 00 00 01 */	li r0, 1
/* 80C2C2BC  48 00 00 28 */	b lbl_80C2C2E4
lbl_80C2C2C0:
/* 80C2C2C0  38 00 00 02 */	li r0, 2
/* 80C2C2C4  48 00 00 20 */	b lbl_80C2C2E4
lbl_80C2C2C8:
/* 80C2C2C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2C2CC  41 82 00 0C */	beq lbl_80C2C2D8
/* 80C2C2D0  38 00 00 05 */	li r0, 5
/* 80C2C2D4  48 00 00 10 */	b lbl_80C2C2E4
lbl_80C2C2D8:
/* 80C2C2D8  38 00 00 03 */	li r0, 3
/* 80C2C2DC  48 00 00 08 */	b lbl_80C2C2E4
lbl_80C2C2E0:
/* 80C2C2E0  38 00 00 04 */	li r0, 4
lbl_80C2C2E4:
/* 80C2C2E4  2C 00 00 01 */	cmpwi r0, 1
/* 80C2C2E8  40 82 00 0C */	bne lbl_80C2C2F4
/* 80C2C2EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2C2F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C2C2F4:
/* 80C2C2F4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80C2C2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2C2FC  40 80 00 2C */	bge lbl_80C2C328
/* 80C2C300  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80C2C304  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2C308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2C30C  40 80 00 1C */	bge lbl_80C2C328
/* 80C2C310  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C2C314  A8 9C 07 20 */	lha r4, 0x720(r28)
/* 80C2C318  38 A0 00 02 */	li r5, 2
/* 80C2C31C  38 C0 05 00 */	li r6, 0x500
/* 80C2C320  4B 64 42 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 80C2C324  48 00 00 18 */	b lbl_80C2C33C
lbl_80C2C328:
/* 80C2C328  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C2C32C  A8 9C 07 20 */	lha r4, 0x720(r28)
/* 80C2C330  38 A0 00 10 */	li r5, 0x10
/* 80C2C334  38 C0 02 00 */	li r6, 0x200
/* 80C2C338  4B 64 42 D1 */	bl cLib_addCalcAngleS2__FPssss
lbl_80C2C33C:
/* 80C2C33C  7F A3 EB 78 */	mr r3, r29
/* 80C2C340  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C2C344  4B 71 B0 59 */	bl PSVECSquareDistance
/* 80C2C348  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2C34C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2C350  40 81 00 58 */	ble lbl_80C2C3A8
/* 80C2C354  FC 00 08 34 */	frsqrte f0, f1
/* 80C2C358  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80C2C35C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2C360  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80C2C364  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2C368  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2C36C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2C370  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2C374  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2C378  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2C37C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2C380  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2C384  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2C388  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2C38C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2C390  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2C394  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2C398  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2C39C  FC 21 00 32 */	fmul f1, f1, f0
/* 80C2C3A0  FC 20 08 18 */	frsp f1, f1
/* 80C2C3A4  48 00 00 88 */	b lbl_80C2C42C
lbl_80C2C3A8:
/* 80C2C3A8  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80C2C3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2C3B0  40 80 00 10 */	bge lbl_80C2C3C0
/* 80C2C3B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2C3B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2C3BC  48 00 00 70 */	b lbl_80C2C42C
lbl_80C2C3C0:
/* 80C2C3C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C2C3C4  80 81 00 08 */	lwz r4, 8(r1)
/* 80C2C3C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2C3CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2C3D0  7C 03 00 00 */	cmpw r3, r0
/* 80C2C3D4  41 82 00 14 */	beq lbl_80C2C3E8
/* 80C2C3D8  40 80 00 40 */	bge lbl_80C2C418
/* 80C2C3DC  2C 03 00 00 */	cmpwi r3, 0
/* 80C2C3E0  41 82 00 20 */	beq lbl_80C2C400
/* 80C2C3E4  48 00 00 34 */	b lbl_80C2C418
lbl_80C2C3E8:
/* 80C2C3E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2C3EC  41 82 00 0C */	beq lbl_80C2C3F8
/* 80C2C3F0  38 00 00 01 */	li r0, 1
/* 80C2C3F4  48 00 00 28 */	b lbl_80C2C41C
lbl_80C2C3F8:
/* 80C2C3F8  38 00 00 02 */	li r0, 2
/* 80C2C3FC  48 00 00 20 */	b lbl_80C2C41C
lbl_80C2C400:
/* 80C2C400  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2C404  41 82 00 0C */	beq lbl_80C2C410
/* 80C2C408  38 00 00 05 */	li r0, 5
/* 80C2C40C  48 00 00 10 */	b lbl_80C2C41C
lbl_80C2C410:
/* 80C2C410  38 00 00 03 */	li r0, 3
/* 80C2C414  48 00 00 08 */	b lbl_80C2C41C
lbl_80C2C418:
/* 80C2C418  38 00 00 04 */	li r0, 4
lbl_80C2C41C:
/* 80C2C41C  2C 00 00 01 */	cmpwi r0, 1
/* 80C2C420  40 82 00 0C */	bne lbl_80C2C42C
/* 80C2C424  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2C428  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C2C42C:
/* 80C2C42C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80C2C430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2C434  40 80 00 FC */	bge lbl_80C2C530
/* 80C2C438  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C2C43C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2C440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2C444  40 80 00 EC */	bge lbl_80C2C530
/* 80C2C448  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2C44C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2C450  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C2C454  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C2C458  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C2C45C  88 1C 07 35 */	lbz r0, 0x735(r28)
/* 80C2C460  28 00 00 00 */	cmplwi r0, 0
/* 80C2C464  40 82 00 14 */	bne lbl_80C2C478
/* 80C2C468  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C2C46C  7F A4 EB 78 */	mr r4, r29
/* 80C2C470  4B 64 47 95 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C2C474  B0 7C 07 32 */	sth r3, 0x732(r28)
lbl_80C2C478:
/* 80C2C478  38 61 00 20 */	addi r3, r1, 0x20
/* 80C2C47C  7F A4 EB 78 */	mr r4, r29
/* 80C2C480  A8 BC 07 32 */	lha r5, 0x732(r28)
/* 80C2C484  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C2C488  4B 64 49 39 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C2C48C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C2C490  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80C2C494  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C2C498  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80C2C49C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C2C4A0  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80C2C4A4  38 00 40 00 */	li r0, 0x4000
/* 80C2C4A8  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80C2C4AC  A8 1C 07 32 */	lha r0, 0x732(r28)
/* 80C2C4B0  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C2C4B4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2C4B8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C2C4BC  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 80C2C4C0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C2C4C4  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80C2C4C8  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 80C2C4CC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C2C4D0  38 00 00 00 */	li r0, 0
/* 80C2C4D4  B0 1C 07 20 */	sth r0, 0x720(r28)
/* 80C2C4D8  A8 1C 07 32 */	lha r0, 0x732(r28)
/* 80C2C4DC  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C2C4E0  38 00 00 01 */	li r0, 1
/* 80C2C4E4  98 1C 07 35 */	stb r0, 0x735(r28)
/* 80C2C4E8  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2C4EC  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2C4F0  38 80 00 07 */	li r4, 7
/* 80C2C4F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2C4F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2C4FC  3C A5 00 02 */	addis r5, r5, 2
/* 80C2C500  38 C0 00 80 */	li r6, 0x80
/* 80C2C504  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2C508  4B 40 FD E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2C50C  7C 64 1B 78 */	mr r4, r3
/* 80C2C510  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 80C2C514  38 A0 00 02 */	li r5, 2
/* 80C2C518  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2C51C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C2C520  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C2C524  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 80C2C528  4B 3E 49 49 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2C52C  48 00 00 84 */	b lbl_80C2C5B0
lbl_80C2C530:
/* 80C2C530  88 1C 07 35 */	lbz r0, 0x735(r28)
/* 80C2C534  28 00 00 00 */	cmplwi r0, 0
/* 80C2C538  41 82 00 78 */	beq lbl_80C2C5B0
/* 80C2C53C  38 00 00 00 */	li r0, 0
/* 80C2C540  98 1C 07 35 */	stb r0, 0x735(r28)
/* 80C2C544  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80C2C548  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80C2C54C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C2C550  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80C2C554  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C2C558  D0 1C 07 18 */	stfs f0, 0x718(r28)
/* 80C2C55C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2C560  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 80C2C564  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C2C568  B0 1C 07 32 */	sth r0, 0x732(r28)
/* 80C2C56C  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2C570  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2C574  38 80 00 06 */	li r4, 6
/* 80C2C578  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2C57C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2C580  3C A5 00 02 */	addis r5, r5, 2
/* 80C2C584  38 C0 00 80 */	li r6, 0x80
/* 80C2C588  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2C58C  4B 40 FD 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2C590  7C 64 1B 78 */	mr r4, r3
/* 80C2C594  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 80C2C598  38 A0 00 02 */	li r5, 2
/* 80C2C59C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2C5A0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C2C5A4  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C2C5A8  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 80C2C5AC  4B 3E 48 C5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80C2C5B0:
/* 80C2C5B0  A8 1C 07 12 */	lha r0, 0x712(r28)
/* 80C2C5B4  2C 00 00 00 */	cmpwi r0, 0
/* 80C2C5B8  40 82 00 9C */	bne lbl_80C2C654
/* 80C2C5BC  28 1D 00 00 */	cmplwi r29, 0
/* 80C2C5C0  40 82 00 60 */	bne lbl_80C2C620
/* 80C2C5C4  38 61 00 14 */	addi r3, r1, 0x14
/* 80C2C5C8  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80C2C5CC  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C2C5D0  4B 63 A5 65 */	bl __mi__4cXyzCFRC3Vec
/* 80C2C5D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C2C5D8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2C5DC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C2C5E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C2C5E4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C2C5E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C2C5EC  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80C2C5F0  4B 63 B3 9D */	bl cM_rndFX__Ff
/* 80C2C5F4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C2C5F8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2C5FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2C600  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80C2C604  4B 63 B3 89 */	bl cM_rndFX__Ff
/* 80C2C608  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C2C60C  EC 40 08 2A */	fadds f2, f0, f1
/* 80C2C610  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80C2C614  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C2C618  4B 63 B0 5D */	bl cM_atan2s__Fff
/* 80C2C61C  B0 7C 07 20 */	sth r3, 0x720(r28)
lbl_80C2C620:
/* 80C2C620  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C2C624  4B 63 B3 31 */	bl cM_rndF__Ff
/* 80C2C628  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C2C62C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2C630  FC 00 00 1E */	fctiwz f0, f0
/* 80C2C634  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C2C638  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C2C63C  B0 1C 07 12 */	sth r0, 0x712(r28)
/* 80C2C640  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C2C644  4B 63 B3 11 */	bl cM_rndF__Ff
/* 80C2C648  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80C2C64C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2C650  D0 1C 07 18 */	stfs f0, 0x718(r28)
lbl_80C2C654:
/* 80C2C654  A8 1C 07 14 */	lha r0, 0x714(r28)
/* 80C2C658  2C 00 00 00 */	cmpwi r0, 0
/* 80C2C65C  40 82 00 34 */	bne lbl_80C2C690
/* 80C2C660  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80C2C664  4B 63 B2 F1 */	bl cM_rndF__Ff
/* 80C2C668  FC 00 08 50 */	fneg f0, f1
/* 80C2C66C  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80C2C670  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C2C674  4B 63 B2 E1 */	bl cM_rndF__Ff
/* 80C2C678  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C2C67C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2C680  FC 00 00 1E */	fctiwz f0, f0
/* 80C2C684  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C2C688  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C2C68C  B0 1C 07 14 */	sth r0, 0x714(r28)
lbl_80C2C690:
/* 80C2C690  7F 83 E3 78 */	mr r3, r28
/* 80C2C694  4B FF F1 F9 */	bl SpeedSet__13daObjKABUTO_cFv
/* 80C2C698  88 1C 07 36 */	lbz r0, 0x736(r28)
/* 80C2C69C  28 00 00 00 */	cmplwi r0, 0
/* 80C2C6A0  40 82 00 30 */	bne lbl_80C2C6D0
/* 80C2C6A4  38 7C 07 2A */	addi r3, r28, 0x72a
/* 80C2C6A8  38 80 00 00 */	li r4, 0
/* 80C2C6AC  38 A0 00 10 */	li r5, 0x10
/* 80C2C6B0  38 C0 10 00 */	li r6, 0x1000
/* 80C2C6B4  4B 64 3F 55 */	bl cLib_addCalcAngleS2__FPssss
/* 80C2C6B8  38 7C 07 2E */	addi r3, r28, 0x72e
/* 80C2C6BC  38 80 00 00 */	li r4, 0
/* 80C2C6C0  38 A0 00 10 */	li r5, 0x10
/* 80C2C6C4  38 C0 10 00 */	li r6, 0x1000
/* 80C2C6C8  4B 64 3F 41 */	bl cLib_addCalcAngleS2__FPssss
/* 80C2C6CC  48 00 00 2C */	b lbl_80C2C6F8
lbl_80C2C6D0:
/* 80C2C6D0  38 7C 07 2A */	addi r3, r28, 0x72a
/* 80C2C6D4  38 80 00 00 */	li r4, 0
/* 80C2C6D8  38 A0 00 10 */	li r5, 0x10
/* 80C2C6DC  38 C0 01 00 */	li r6, 0x100
/* 80C2C6E0  4B 64 3F 29 */	bl cLib_addCalcAngleS2__FPssss
/* 80C2C6E4  38 7C 07 2E */	addi r3, r28, 0x72e
/* 80C2C6E8  38 80 00 00 */	li r4, 0
/* 80C2C6EC  38 A0 00 10 */	li r5, 0x10
/* 80C2C6F0  38 C0 01 00 */	li r6, 0x100
/* 80C2C6F4  4B 64 3F 15 */	bl cLib_addCalcAngleS2__FPssss
lbl_80C2C6F8:
/* 80C2C6F8  88 1C 07 35 */	lbz r0, 0x735(r28)
/* 80C2C6FC  28 00 00 00 */	cmplwi r0, 0
/* 80C2C700  40 82 00 14 */	bne lbl_80C2C714
/* 80C2C704  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80C2C708  38 80 00 00 */	li r4, 0
/* 80C2C70C  38 A0 04 00 */	li r5, 0x400
/* 80C2C710  4B 64 44 81 */	bl cLib_chaseAngleS__FPsss
lbl_80C2C714:
/* 80C2C714  7F 83 E3 78 */	mr r3, r28
/* 80C2C718  4B FF EF 01 */	bl WallCheck__13daObjKABUTO_cFv
/* 80C2C71C  2C 03 00 00 */	cmpwi r3, 0
/* 80C2C720  41 82 00 24 */	beq lbl_80C2C744
/* 80C2C724  38 00 00 00 */	li r0, 0
/* 80C2C728  98 1C 07 10 */	stb r0, 0x710(r28)
/* 80C2C72C  98 1C 07 11 */	stb r0, 0x711(r28)
/* 80C2C730  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2C734  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C2C738  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C2C73C  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80C2C740  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
lbl_80C2C744:
/* 80C2C744  88 1C 07 36 */	lbz r0, 0x736(r28)
/* 80C2C748  28 00 00 01 */	cmplwi r0, 1
/* 80C2C74C  40 82 00 18 */	bne lbl_80C2C764
/* 80C2C750  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C2C754  A8 9C 07 20 */	lha r4, 0x720(r28)
/* 80C2C758  38 A0 00 10 */	li r5, 0x10
/* 80C2C75C  38 C0 01 00 */	li r6, 0x100
/* 80C2C760  4B 64 3E A9 */	bl cLib_addCalcAngleS2__FPssss
lbl_80C2C764:
/* 80C2C764  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 80C2C768  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80C2C76C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2C770  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C2C774  40 82 00 30 */	bne lbl_80C2C7A4
/* 80C2C778  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A4@ha */
/* 80C2C77C  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000600A4@l */
/* 80C2C780  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2C784  38 7C 09 70 */	addi r3, r28, 0x970
/* 80C2C788  38 81 00 10 */	addi r4, r1, 0x10
/* 80C2C78C  38 A0 00 00 */	li r5, 0
/* 80C2C790  38 C0 FF FF */	li r6, -1
/* 80C2C794  81 9C 09 70 */	lwz r12, 0x970(r28)
/* 80C2C798  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C2C79C  7D 89 03 A6 */	mtctr r12
/* 80C2C7A0  4E 80 04 21 */	bctrl 
lbl_80C2C7A4:
/* 80C2C7A4  38 61 00 44 */	addi r3, r1, 0x44
/* 80C2C7A8  38 80 FF FF */	li r4, -1
/* 80C2C7AC  4B 44 B5 31 */	bl __dt__11dBgS_LinChkFv
/* 80C2C7B0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C2C7B4  4B 73 5A 71 */	bl _restgpr_28
/* 80C2C7B8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C2C7BC  7C 08 03 A6 */	mtlr r0
/* 80C2C7C0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C2C7C4  4E 80 00 20 */	blr 

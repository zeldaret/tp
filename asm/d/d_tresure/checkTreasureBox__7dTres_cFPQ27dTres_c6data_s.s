lbl_8009BE28:
/* 8009BE28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8009BE2C  7C 08 02 A6 */	mflr r0
/* 8009BE30  90 01 00 74 */	stw r0, 0x74(r1)
/* 8009BE34  39 61 00 70 */	addi r11, r1, 0x70
/* 8009BE38  48 2C 63 99 */	bl _savegpr_26
/* 8009BE3C  7C 7D 1B 78 */	mr r29, r3
/* 8009BE40  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8009BE44  28 00 00 FF */	cmplwi r0, 0xff
/* 8009BE48  41 82 03 08 */	beq lbl_8009C150
/* 8009BE4C  88 7D 00 03 */	lbz r3, 3(r29)
/* 8009BE50  28 03 00 FF */	cmplwi r3, 0xff
/* 8009BE54  41 82 02 FC */	beq lbl_8009C150
/* 8009BE58  38 80 FF FF */	li r4, -1
/* 8009BE5C  4B FB 59 91 */	bl dPath_GetRoomPath__Fii
/* 8009BE60  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009BE64  41 82 02 EC */	beq lbl_8009C150
/* 8009BE68  88 1D 00 12 */	lbz r0, 0x12(r29)
/* 8009BE6C  28 00 00 00 */	cmplwi r0, 0
/* 8009BE70  40 82 02 80 */	bne lbl_8009C0F0
/* 8009BE74  3B 60 00 00 */	li r27, 0
/* 8009BE78  3B 40 00 00 */	li r26, 0
/* 8009BE7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009BE80  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009BE84  3B C0 00 01 */	li r30, 1
lbl_8009BE88:
/* 8009BE88  7F 83 E3 78 */	mr r3, r28
/* 8009BE8C  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 8009BE90  7C 80 D2 14 */	add r4, r0, r26
/* 8009BE94  88 BD 00 01 */	lbz r5, 1(r29)
/* 8009BE98  7C A5 07 74 */	extsb r5, r5
/* 8009BE9C  4B F9 94 C5 */	bl isSwitch__10dSv_info_cCFii
/* 8009BEA0  20 03 00 00 */	subfic r0, r3, 0
/* 8009BEA4  7C 60 01 10 */	subfe r3, r0, r0
/* 8009BEA8  7F C0 D0 30 */	slw r0, r30, r26
/* 8009BEAC  7C 00 18 38 */	and r0, r0, r3
/* 8009BEB0  7C 1B 02 14 */	add r0, r27, r0
/* 8009BEB4  7C 1B 07 34 */	extsh r27, r0
/* 8009BEB8  3B 5A 00 01 */	addi r26, r26, 1
/* 8009BEBC  2C 1A 00 04 */	cmpwi r26, 4
/* 8009BEC0  41 80 FF C8 */	blt lbl_8009BE88
/* 8009BEC4  7F 60 07 35 */	extsh. r0, r27
/* 8009BEC8  41 82 01 FC */	beq lbl_8009C0C4
/* 8009BECC  C0 42 91 E8 */	lfs f2, lit_3839(r2)
/* 8009BED0  38 1B FF FF */	addi r0, r27, -1
/* 8009BED4  1C 60 00 18 */	mulli r3, r0, 0x18
/* 8009BED8  38 03 00 0C */	addi r0, r3, 0xc
/* 8009BEDC  C8 22 92 08 */	lfd f1, lit_3845(r2)
/* 8009BEE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009BEE4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8009BEE8  3C 00 43 30 */	lis r0, 0x4330
/* 8009BEEC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8009BEF0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8009BEF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009BEF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8009BEFC  FC 00 00 1E */	fctiwz f0, f0
/* 8009BF00  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8009BF04  83 C1 00 54 */	lwz r30, 0x54(r1)
/* 8009BF08  80 9F 00 08 */	lwz r4, 8(r31)
/* 8009BF0C  C0 84 00 04 */	lfs f4, 4(r4)
/* 8009BF10  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8009BF14  C0 04 00 08 */	lfs f0, 8(r4)
/* 8009BF18  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8009BF1C  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 8009BF20  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8009BF24  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8009BF28  38 03 FF FF */	addi r0, r3, -1
/* 8009BF2C  54 03 20 36 */	slwi r3, r0, 4
/* 8009BF30  38 63 00 04 */	addi r3, r3, 4
/* 8009BF34  7C 64 1A 14 */	add r3, r4, r3
/* 8009BF38  C0 43 00 00 */	lfs f2, 0(r3)
/* 8009BF3C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8009BF40  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009BF44  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8009BF48  C0 23 00 08 */	lfs f1, 8(r3)
/* 8009BF4C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8009BF50  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8009BF54  C0 02 91 EC */	lfs f0, lit_3840(r2)
/* 8009BF58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8009BF5C  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8009BF60  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8009BF64  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8009BF68  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8009BF6C  38 61 00 0C */	addi r3, r1, 0xc
/* 8009BF70  38 81 00 18 */	addi r4, r1, 0x18
/* 8009BF74  48 2A B4 29 */	bl PSVECSquareDistance
/* 8009BF78  C0 02 91 EC */	lfs f0, lit_3840(r2)
/* 8009BF7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009BF80  40 81 00 58 */	ble lbl_8009BFD8
/* 8009BF84  FC 00 08 34 */	frsqrte f0, f1
/* 8009BF88  C8 82 91 F0 */	lfd f4, lit_3841(r2)
/* 8009BF8C  FC 44 00 32 */	fmul f2, f4, f0
/* 8009BF90  C8 62 91 F8 */	lfd f3, lit_3842(r2)
/* 8009BF94  FC 00 00 32 */	fmul f0, f0, f0
/* 8009BF98  FC 01 00 32 */	fmul f0, f1, f0
/* 8009BF9C  FC 03 00 28 */	fsub f0, f3, f0
/* 8009BFA0  FC 02 00 32 */	fmul f0, f2, f0
/* 8009BFA4  FC 44 00 32 */	fmul f2, f4, f0
/* 8009BFA8  FC 00 00 32 */	fmul f0, f0, f0
/* 8009BFAC  FC 01 00 32 */	fmul f0, f1, f0
/* 8009BFB0  FC 03 00 28 */	fsub f0, f3, f0
/* 8009BFB4  FC 02 00 32 */	fmul f0, f2, f0
/* 8009BFB8  FC 44 00 32 */	fmul f2, f4, f0
/* 8009BFBC  FC 00 00 32 */	fmul f0, f0, f0
/* 8009BFC0  FC 01 00 32 */	fmul f0, f1, f0
/* 8009BFC4  FC 03 00 28 */	fsub f0, f3, f0
/* 8009BFC8  FC 02 00 32 */	fmul f0, f2, f0
/* 8009BFCC  FC 21 00 32 */	fmul f1, f1, f0
/* 8009BFD0  FC 20 08 18 */	frsp f1, f1
/* 8009BFD4  48 00 00 88 */	b lbl_8009C05C
lbl_8009BFD8:
/* 8009BFD8  C8 02 92 00 */	lfd f0, lit_3843(r2)
/* 8009BFDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009BFE0  40 80 00 10 */	bge lbl_8009BFF0
/* 8009BFE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009BFE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8009BFEC  48 00 00 70 */	b lbl_8009C05C
lbl_8009BFF0:
/* 8009BFF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8009BFF4  80 81 00 08 */	lwz r4, 8(r1)
/* 8009BFF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8009BFFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8009C000  7C 03 00 00 */	cmpw r3, r0
/* 8009C004  41 82 00 14 */	beq lbl_8009C018
/* 8009C008  40 80 00 40 */	bge lbl_8009C048
/* 8009C00C  2C 03 00 00 */	cmpwi r3, 0
/* 8009C010  41 82 00 20 */	beq lbl_8009C030
/* 8009C014  48 00 00 34 */	b lbl_8009C048
lbl_8009C018:
/* 8009C018  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009C01C  41 82 00 0C */	beq lbl_8009C028
/* 8009C020  38 00 00 01 */	li r0, 1
/* 8009C024  48 00 00 28 */	b lbl_8009C04C
lbl_8009C028:
/* 8009C028  38 00 00 02 */	li r0, 2
/* 8009C02C  48 00 00 20 */	b lbl_8009C04C
lbl_8009C030:
/* 8009C030  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009C034  41 82 00 0C */	beq lbl_8009C040
/* 8009C038  38 00 00 05 */	li r0, 5
/* 8009C03C  48 00 00 10 */	b lbl_8009C04C
lbl_8009C040:
/* 8009C040  38 00 00 03 */	li r0, 3
/* 8009C044  48 00 00 08 */	b lbl_8009C04C
lbl_8009C048:
/* 8009C048  38 00 00 04 */	li r0, 4
lbl_8009C04C:
/* 8009C04C  2C 00 00 01 */	cmpwi r0, 1
/* 8009C050  40 82 00 0C */	bne lbl_8009C05C
/* 8009C054  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009C058  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8009C05C:
/* 8009C05C  C0 02 91 EC */	lfs f0, lit_3840(r2)
/* 8009C060  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8009C064  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009C068  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8009C06C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009C070  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009C074  7F C4 F3 78 */	mr r4, r30
/* 8009C078  4B F7 03 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 8009C07C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009C080  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009C084  38 81 00 24 */	addi r4, r1, 0x24
/* 8009C088  7C 85 23 78 */	mr r5, r4
/* 8009C08C  48 2A AC E1 */	bl PSMTXMultVec
/* 8009C090  38 61 00 24 */	addi r3, r1, 0x24
/* 8009C094  38 81 00 3C */	addi r4, r1, 0x3c
/* 8009C098  7C 65 1B 78 */	mr r5, r3
/* 8009C09C  48 2A AF F5 */	bl PSVECAdd
/* 8009C0A0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8009C0A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009C0A8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8009C0AC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8009C0B0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8009C0B4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8009C0B8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8009C0BC  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8009C0C0  48 00 00 20 */	b lbl_8009C0E0
lbl_8009C0C4:
/* 8009C0C4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8009C0C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009C0CC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8009C0D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009C0D4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8009C0D8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009C0DC  D0 1D 00 0C */	stfs f0, 0xc(r29)
lbl_8009C0E0:
/* 8009C0E0  88 7D 00 01 */	lbz r3, 1(r29)
/* 8009C0E4  38 9D 00 04 */	addi r4, r29, 4
/* 8009C0E8  4B FA 2C 79 */	bl correctionOriginPos__10dMapInfo_nFScP3Vec
/* 8009C0EC  48 00 00 64 */	b lbl_8009C150
lbl_8009C0F0:
/* 8009C0F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009C0F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009C0F8  88 9D 00 10 */	lbz r4, 0x10(r29)
/* 8009C0FC  88 BD 00 01 */	lbz r5, 1(r29)
/* 8009C100  7C A5 07 74 */	extsb r5, r5
/* 8009C104  4B F9 92 5D */	bl isSwitch__10dSv_info_cCFii
/* 8009C108  2C 03 00 00 */	cmpwi r3, 0
/* 8009C10C  41 82 00 1C */	beq lbl_8009C128
/* 8009C110  80 9F 00 08 */	lwz r4, 8(r31)
/* 8009C114  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8009C118  38 03 FF FF */	addi r0, r3, -1
/* 8009C11C  54 00 20 36 */	slwi r0, r0, 4
/* 8009C120  7C 64 02 14 */	add r3, r4, r0
/* 8009C124  48 00 00 08 */	b lbl_8009C12C
lbl_8009C128:
/* 8009C128  80 7F 00 08 */	lwz r3, 8(r31)
lbl_8009C12C:
/* 8009C12C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009C130  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8009C134  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009C138  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8009C13C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009C140  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8009C144  88 7D 00 01 */	lbz r3, 1(r29)
/* 8009C148  38 9D 00 04 */	addi r4, r29, 4
/* 8009C14C  4B FA 2C 15 */	bl correctionOriginPos__10dMapInfo_nFScP3Vec
lbl_8009C150:
/* 8009C150  39 61 00 70 */	addi r11, r1, 0x70
/* 8009C154  48 2C 60 C9 */	bl _restgpr_26
/* 8009C158  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8009C15C  7C 08 03 A6 */	mtlr r0
/* 8009C160  38 21 00 70 */	addi r1, r1, 0x70
/* 8009C164  4E 80 00 20 */	blr 

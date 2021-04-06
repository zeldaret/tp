lbl_80BCCD64:
/* 80BCCD64  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80BCCD68  7C 08 02 A6 */	mflr r0
/* 80BCCD6C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80BCCD70  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80BCCD74  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80BCCD78  39 61 00 90 */	addi r11, r1, 0x90
/* 80BCCD7C  4B 79 54 59 */	bl _savegpr_27
/* 80BCCD80  7C 7D 1B 78 */	mr r29, r3
/* 80BCCD84  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BCEACC@ha */
/* 80BCCD88  3B E4 EA CC */	addi r31, r4, l_arcName@l /* 0x80BCEACC@l */
/* 80BCCD8C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BCCD90  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BCCD94  40 82 01 00 */	bne lbl_80BCCE94
/* 80BCCD98  7F A0 EB 79 */	or. r0, r29, r29
/* 80BCCD9C  41 82 00 EC */	beq lbl_80BCCE88
/* 80BCCDA0  7C 1E 03 78 */	mr r30, r0
/* 80BCCDA4  4B 44 BD C1 */	bl __ct__10fopAc_ac_cFv
/* 80BCCDA8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BCCDAC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BCCDB0  90 1E 05 88 */	stw r0, 0x588(r30)
/* 80BCCDB4  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80BCCDB8  4B 4B 69 A9 */	bl __ct__10dCcD_GSttsFv
/* 80BCCDBC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BCCDC0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BCCDC4  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80BCCDC8  38 03 00 20 */	addi r0, r3, 0x20
/* 80BCCDCC  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BCCDD0  3B 7E 05 AC */	addi r27, r30, 0x5ac
/* 80BCCDD4  7F 63 DB 78 */	mr r3, r27
/* 80BCCDD8  4B 4B 6C 51 */	bl __ct__12dCcD_GObjInfFv
/* 80BCCDDC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BCCDE0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BCCDE4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80BCCDE8  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha /* 0x80BCEC14@ha */
/* 80BCCDEC  38 03 EC 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BCEC14@l */
/* 80BCCDF0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80BCCDF4  3C 60 80 BD */	lis r3, __vt__8cM3dGSph@ha /* 0x80BCEC08@ha */
/* 80BCCDF8  38 03 EC 08 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BCEC08@l */
/* 80BCCDFC  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80BCCE00  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BCCE04  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BCCE08  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80BCCE0C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BCCE10  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80BCCE14  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BCCE18  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BCCE1C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80BCCE20  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BCCE24  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80BCCE28  38 03 00 84 */	addi r0, r3, 0x84
/* 80BCCE2C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80BCCE30  38 7E 07 40 */	addi r3, r30, 0x740
/* 80BCCE34  3C 80 80 BD */	lis r4, __ct__4cXyzFv@ha /* 0x80BCD3D8@ha */
/* 80BCCE38  38 84 D3 D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BCD3D8@l */
/* 80BCCE3C  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha /* 0x80BCD4C8@ha */
/* 80BCCE40  38 A5 D4 C8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BCD4C8@l */
/* 80BCCE44  38 C0 00 0C */	li r6, 0xc
/* 80BCCE48  38 E0 00 62 */	li r7, 0x62
/* 80BCCE4C  4B 79 4F 15 */	bl __construct_array
/* 80BCCE50  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80BCCE54  3C 80 80 BD */	lis r4, __ct__4cXyzFv@ha /* 0x80BCD3D8@ha */
/* 80BCCE58  38 84 D3 D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BCD3D8@l */
/* 80BCCE5C  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha /* 0x80BCD4C8@ha */
/* 80BCCE60  38 A5 D4 C8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BCD4C8@l */
/* 80BCCE64  38 C0 00 0C */	li r6, 0xc
/* 80BCCE68  38 E0 00 62 */	li r7, 0x62
/* 80BCCE6C  4B 79 4E F5 */	bl __construct_array
/* 80BCCE70  3C 60 80 BD */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x80BCEBF4@ha */
/* 80BCCE74  38 03 EB F4 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x80BCEBF4@l */
/* 80BCCE78  90 1E 10 70 */	stw r0, 0x1070(r30)
/* 80BCCE7C  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha /* 0x803A3248@ha */
/* 80BCCE80  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l /* 0x803A3248@l */
/* 80BCCE84  90 1E 10 70 */	stw r0, 0x1070(r30)
lbl_80BCCE88:
/* 80BCCE88  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BCCE8C  60 00 00 08 */	ori r0, r0, 8
/* 80BCCE90  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BCCE94:
/* 80BCCE94  38 7D 05 68 */	addi r3, r29, 0x568
/* 80BCCE98  38 9F 00 00 */	addi r4, r31, 0
/* 80BCCE9C  4B 46 00 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BCCEA0  7C 7E 1B 78 */	mr r30, r3
/* 80BCCEA4  2C 1E 00 04 */	cmpwi r30, 4
/* 80BCCEA8  40 82 05 0C */	bne lbl_80BCD3B4
/* 80BCCEAC  7F A3 EB 78 */	mr r3, r29
/* 80BCCEB0  3C 80 80 BD */	lis r4, daObjCrope_createHeap__FP10fopAc_ac_c@ha /* 0x80BCCD44@ha */
/* 80BCCEB4  38 84 CD 44 */	addi r4, r4, daObjCrope_createHeap__FP10fopAc_ac_c@l /* 0x80BCCD44@l */
/* 80BCCEB8  38 A0 29 00 */	li r5, 0x2900
/* 80BCCEBC  4B 44 D5 F5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BCCEC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCCEC4  40 82 00 0C */	bne lbl_80BCCED0
/* 80BCCEC8  38 60 00 05 */	li r3, 5
/* 80BCCECC  48 00 04 EC */	b lbl_80BCD3B8
lbl_80BCCED0:
/* 80BCCED0  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80BCCED4  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80BCCED8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80BCCEDC  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80BCCEE0  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80BCCEE4  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80BCCEE8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80BCCEEC  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80BCCEF0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80BCCEF4  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BCCEF8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80BCCEFC  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80BCCF00  38 7D 05 70 */	addi r3, r29, 0x570
/* 80BCCF04  38 80 00 00 */	li r4, 0
/* 80BCCF08  38 A0 00 FF */	li r5, 0xff
/* 80BCCF0C  7F A6 EB 78 */	mr r6, r29
/* 80BCCF10  4B 4B 69 51 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BCCF14  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BCCF18  98 1D 05 92 */	stb r0, 0x592(r29)
/* 80BCCF1C  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80BCCF20  3C 80 80 BD */	lis r4, l_sphSrc@ha /* 0x80BCEB3C@ha */
/* 80BCCF24  38 84 EB 3C */	addi r4, r4, l_sphSrc@l /* 0x80BCEB3C@l */
/* 80BCCF28  4B 4B 7B 0D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BCCF2C  38 1D 05 70 */	addi r0, r29, 0x570
/* 80BCCF30  90 1D 05 F0 */	stw r0, 0x5f0(r29)
/* 80BCCF34  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BCCF38  98 1D 04 8C */	stb r0, 0x48c(r29)
/* 80BCCF3C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BCCF40  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80BCCF44  80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 80BCCF48  28 03 00 FF */	cmplwi r3, 0xff
/* 80BCCF4C  40 82 00 0C */	bne lbl_80BCCF58
/* 80BCCF50  38 60 00 05 */	li r3, 5
/* 80BCCF54  48 00 04 64 */	b lbl_80BCD3B8
lbl_80BCCF58:
/* 80BCCF58  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BCCF5C  7C 04 07 74 */	extsb r4, r0
/* 80BCCF60  4B 48 48 8D */	bl dPath_GetRoomPath__Fii
/* 80BCCF64  28 03 00 00 */	cmplwi r3, 0
/* 80BCCF68  41 82 00 10 */	beq lbl_80BCCF78
/* 80BCCF6C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80BCCF70  28 00 00 02 */	cmplwi r0, 2
/* 80BCCF74  41 82 00 0C */	beq lbl_80BCCF80
lbl_80BCCF78:
/* 80BCCF78  38 60 00 05 */	li r3, 5
/* 80BCCF7C  48 00 04 3C */	b lbl_80BCD3B8
lbl_80BCCF80:
/* 80BCCF80  80 63 00 08 */	lwz r3, 8(r3)
/* 80BCCF84  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BCCF88  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BCCF8C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BCCF90  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BCCF94  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BCCF98  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BCCF9C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80BCCFA0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BCCFA4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80BCCFA8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BCCFAC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BCCFB0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BCCFB4  38 61 00 40 */	addi r3, r1, 0x40
/* 80BCCFB8  38 81 00 64 */	addi r4, r1, 0x64
/* 80BCCFBC  38 A1 00 58 */	addi r5, r1, 0x58
/* 80BCCFC0  4B 69 9B 25 */	bl __pl__4cXyzCFRC3Vec
/* 80BCCFC4  38 61 00 34 */	addi r3, r1, 0x34
/* 80BCCFC8  38 81 00 40 */	addi r4, r1, 0x40
/* 80BCCFCC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BCCFD0  4B 69 9B B5 */	bl __ml__4cXyzCFf
/* 80BCCFD4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BCCFD8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80BCCFDC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BCCFE0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80BCCFE4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BCCFE8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80BCCFEC  38 61 00 28 */	addi r3, r1, 0x28
/* 80BCCFF0  38 81 00 58 */	addi r4, r1, 0x58
/* 80BCCFF4  38 A1 00 64 */	addi r5, r1, 0x64
/* 80BCCFF8  4B 69 9B 3D */	bl __mi__4cXyzCFRC3Vec
/* 80BCCFFC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BCD000  D0 1D 07 28 */	stfs f0, 0x728(r29)
/* 80BCD004  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BCD008  D0 1D 07 2C */	stfs f0, 0x72c(r29)
/* 80BCD00C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BCD010  D0 1D 07 30 */	stfs f0, 0x730(r29)
/* 80BCD014  C0 5D 07 30 */	lfs f2, 0x730(r29)
/* 80BCD018  FC 00 12 10 */	fabs f0, f2
/* 80BCD01C  FC 00 00 18 */	frsp f0, f0
/* 80BCD020  C0 3D 07 28 */	lfs f1, 0x728(r29)
/* 80BCD024  FC 60 0A 10 */	fabs f3, f1
/* 80BCD028  FC 60 18 18 */	frsp f3, f3
/* 80BCD02C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80BCD030  40 81 00 1C */	ble lbl_80BCD04C
/* 80BCD034  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BCD038  EC 00 08 24 */	fdivs f0, f0, f1
/* 80BCD03C  D0 1D 07 24 */	stfs f0, 0x724(r29)
/* 80BCD040  38 00 00 01 */	li r0, 1
/* 80BCD044  98 1D 07 14 */	stb r0, 0x714(r29)
/* 80BCD048  48 00 00 18 */	b lbl_80BCD060
lbl_80BCD04C:
/* 80BCD04C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BCD050  EC 00 10 24 */	fdivs f0, f0, f2
/* 80BCD054  D0 1D 07 24 */	stfs f0, 0x724(r29)
/* 80BCD058  38 00 00 00 */	li r0, 0
/* 80BCD05C  98 1D 07 14 */	stb r0, 0x714(r29)
lbl_80BCD060:
/* 80BCD060  38 7D 07 28 */	addi r3, r29, 0x728
/* 80BCD064  4B 69 A0 C5 */	bl atan2sX_Z__4cXyzCFv
/* 80BCD068  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 80BCD06C  38 7D 07 28 */	addi r3, r29, 0x728
/* 80BCD070  4B 69 A0 E1 */	bl atan2sY_XZ__4cXyzCFv
/* 80BCD074  B0 7D 04 E4 */	sth r3, 0x4e4(r29)
/* 80BCD078  38 7D 06 E4 */	addi r3, r29, 0x6e4
/* 80BCD07C  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80BCD080  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80BCD084  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80BCD088  4B 77 98 61 */	bl PSMTXTrans
/* 80BCD08C  38 7D 06 E4 */	addi r3, r29, 0x6e4
/* 80BCD090  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80BCD094  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80BCD098  38 C0 00 00 */	li r6, 0
/* 80BCD09C  4B 43 F2 05 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BCD0A0  C0 3D 07 30 */	lfs f1, 0x730(r29)
/* 80BCD0A4  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 80BCD0A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCD0AC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCD0B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BCD0B4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BCD0B8  38 61 00 10 */	addi r3, r1, 0x10
/* 80BCD0BC  4B 77 A0 7D */	bl PSVECSquareMag
/* 80BCD0C0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCD0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCD0C8  40 81 00 58 */	ble lbl_80BCD120
/* 80BCD0CC  FC 00 08 34 */	frsqrte f0, f1
/* 80BCD0D0  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCD0D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCD0D8  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCD0DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCD0E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCD0E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCD0E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCD0EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCD0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCD0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCD0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCD0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCD100  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCD104  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCD108  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCD10C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCD110  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCD114  FC 21 00 32 */	fmul f1, f1, f0
/* 80BCD118  FC 20 08 18 */	frsp f1, f1
/* 80BCD11C  48 00 00 88 */	b lbl_80BCD1A4
lbl_80BCD120:
/* 80BCD120  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCD124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCD128  40 80 00 10 */	bge lbl_80BCD138
/* 80BCD12C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BCD130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BCD134  48 00 00 70 */	b lbl_80BCD1A4
lbl_80BCD138:
/* 80BCD138  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BCD13C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BCD140  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCD144  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCD148  7C 03 00 00 */	cmpw r3, r0
/* 80BCD14C  41 82 00 14 */	beq lbl_80BCD160
/* 80BCD150  40 80 00 40 */	bge lbl_80BCD190
/* 80BCD154  2C 03 00 00 */	cmpwi r3, 0
/* 80BCD158  41 82 00 20 */	beq lbl_80BCD178
/* 80BCD15C  48 00 00 34 */	b lbl_80BCD190
lbl_80BCD160:
/* 80BCD160  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCD164  41 82 00 0C */	beq lbl_80BCD170
/* 80BCD168  38 00 00 01 */	li r0, 1
/* 80BCD16C  48 00 00 28 */	b lbl_80BCD194
lbl_80BCD170:
/* 80BCD170  38 00 00 02 */	li r0, 2
/* 80BCD174  48 00 00 20 */	b lbl_80BCD194
lbl_80BCD178:
/* 80BCD178  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCD17C  41 82 00 0C */	beq lbl_80BCD188
/* 80BCD180  38 00 00 05 */	li r0, 5
/* 80BCD184  48 00 00 10 */	b lbl_80BCD194
lbl_80BCD188:
/* 80BCD188  38 00 00 03 */	li r0, 3
/* 80BCD18C  48 00 00 08 */	b lbl_80BCD194
lbl_80BCD190:
/* 80BCD190  38 00 00 04 */	li r0, 4
lbl_80BCD194:
/* 80BCD194  2C 00 00 01 */	cmpwi r0, 1
/* 80BCD198  40 82 00 0C */	bne lbl_80BCD1A4
/* 80BCD19C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BCD1A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BCD1A4:
/* 80BCD1A4  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80BCD1A8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BCD1AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BCD1B0  EF E2 00 2A */	fadds f31, f2, f0
/* 80BCD1B4  38 1D 06 E4 */	addi r0, r29, 0x6e4
/* 80BCD1B8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BCD1BC  7F A3 EB 78 */	mr r3, r29
/* 80BCD1C0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80BCD1C4  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80BCD1C8  FC 60 F8 90 */	fmr f3, f31
/* 80BCD1CC  4B 44 D3 6D */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BCD1D0  7F A3 EB 78 */	mr r3, r29
/* 80BCD1D4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80BCD1D8  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80BCD1DC  FC 60 F8 50 */	fneg f3, f31
/* 80BCD1E0  4B 44 D3 49 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BCD1E4  38 7D 07 28 */	addi r3, r29, 0x728
/* 80BCD1E8  4B 77 9F 51 */	bl PSVECSquareMag
/* 80BCD1EC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BCD1F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCD1F4  40 81 00 58 */	ble lbl_80BCD24C
/* 80BCD1F8  FC 00 08 34 */	frsqrte f0, f1
/* 80BCD1FC  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80BCD200  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCD204  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80BCD208  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCD20C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCD210  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCD214  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCD218  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCD21C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCD220  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCD224  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCD228  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCD22C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCD230  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCD234  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCD238  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCD23C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCD240  FC 21 00 32 */	fmul f1, f1, f0
/* 80BCD244  FC 20 08 18 */	frsp f1, f1
/* 80BCD248  48 00 00 88 */	b lbl_80BCD2D0
lbl_80BCD24C:
/* 80BCD24C  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80BCD250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCD254  40 80 00 10 */	bge lbl_80BCD264
/* 80BCD258  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BCD25C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BCD260  48 00 00 70 */	b lbl_80BCD2D0
lbl_80BCD264:
/* 80BCD264  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BCD268  80 81 00 08 */	lwz r4, 8(r1)
/* 80BCD26C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCD270  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCD274  7C 03 00 00 */	cmpw r3, r0
/* 80BCD278  41 82 00 14 */	beq lbl_80BCD28C
/* 80BCD27C  40 80 00 40 */	bge lbl_80BCD2BC
/* 80BCD280  2C 03 00 00 */	cmpwi r3, 0
/* 80BCD284  41 82 00 20 */	beq lbl_80BCD2A4
/* 80BCD288  48 00 00 34 */	b lbl_80BCD2BC
lbl_80BCD28C:
/* 80BCD28C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCD290  41 82 00 0C */	beq lbl_80BCD29C
/* 80BCD294  38 00 00 01 */	li r0, 1
/* 80BCD298  48 00 00 28 */	b lbl_80BCD2C0
lbl_80BCD29C:
/* 80BCD29C  38 00 00 02 */	li r0, 2
/* 80BCD2A0  48 00 00 20 */	b lbl_80BCD2C0
lbl_80BCD2A4:
/* 80BCD2A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCD2A8  41 82 00 0C */	beq lbl_80BCD2B4
/* 80BCD2AC  38 00 00 05 */	li r0, 5
/* 80BCD2B0  48 00 00 10 */	b lbl_80BCD2C0
lbl_80BCD2B4:
/* 80BCD2B4  38 00 00 03 */	li r0, 3
/* 80BCD2B8  48 00 00 08 */	b lbl_80BCD2C0
lbl_80BCD2BC:
/* 80BCD2BC  38 00 00 04 */	li r0, 4
lbl_80BCD2C0:
/* 80BCD2C0  2C 00 00 01 */	cmpwi r0, 1
/* 80BCD2C4  40 82 00 0C */	bne lbl_80BCD2D0
/* 80BCD2C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BCD2CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BCD2D0:
/* 80BCD2D0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BCD2D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BCD2D8  D0 1D 07 20 */	stfs f0, 0x720(r29)
/* 80BCD2DC  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 80BCD2E0  EC 60 08 24 */	fdivs f3, f0, f1
/* 80BCD2E4  C0 1D 07 30 */	lfs f0, 0x730(r29)
/* 80BCD2E8  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80BCD2EC  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 80BCD2F0  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80BCD2F4  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 80BCD2F8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BCD2FC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BCD300  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80BCD304  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80BCD308  80 7D 10 A8 */	lwz r3, 0x10a8(r29)
/* 80BCD30C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCD310  3B 9D 0B D8 */	addi r28, r29, 0xbd8
/* 80BCD314  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80BCD318  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BCD31C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80BCD320  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BCD324  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80BCD328  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BCD32C  3B 60 00 01 */	li r27, 1
/* 80BCD330  3B E3 00 0C */	addi r31, r3, 0xc
lbl_80BCD334:
/* 80BCD334  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BCD338  38 9F FF F4 */	addi r4, r31, -12
/* 80BCD33C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80BCD340  4B 69 97 A5 */	bl __pl__4cXyzCFRC3Vec
/* 80BCD344  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BCD348  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80BCD34C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BCD350  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80BCD354  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BCD358  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80BCD35C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BCD360  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BCD364  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BCD368  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BCD36C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BCD370  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BCD374  3B 7B 00 01 */	addi r27, r27, 1
/* 80BCD378  2C 1B 00 63 */	cmpwi r27, 0x63
/* 80BCD37C  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BCD380  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BCD384  41 80 FF B0 */	blt lbl_80BCD334
/* 80BCD388  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80BCD38C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80BCD390  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80BCD394  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80BCD398  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80BCD39C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80BCD3A0  38 00 FF FF */	li r0, -1
/* 80BCD3A4  90 1D 07 18 */	stw r0, 0x718(r29)
/* 80BCD3A8  90 1D 07 1C */	stw r0, 0x71c(r29)
/* 80BCD3AC  7F A3 EB 78 */	mr r3, r29
/* 80BCD3B0  48 00 03 15 */	bl setNormalRopePos__12daObjCrope_cFv
lbl_80BCD3B4:
/* 80BCD3B4  7F C3 F3 78 */	mr r3, r30
lbl_80BCD3B8:
/* 80BCD3B8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80BCD3BC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80BCD3C0  39 61 00 90 */	addi r11, r1, 0x90
/* 80BCD3C4  4B 79 4E 5D */	bl _restgpr_27
/* 80BCD3C8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80BCD3CC  7C 08 03 A6 */	mtlr r0
/* 80BCD3D0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80BCD3D4  4E 80 00 20 */	blr 

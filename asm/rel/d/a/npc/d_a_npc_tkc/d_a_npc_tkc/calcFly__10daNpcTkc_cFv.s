lbl_80B0DEF8:
/* 80B0DEF8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B0DEFC  7C 08 02 A6 */	mflr r0
/* 80B0DF00  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B0DF04  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B0DF08  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B0DF0C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80B0DF10  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80B0DF14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B0DF18  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B0DF1C  7C 7F 1B 78 */	mr r31, r3
/* 80B0DF20  3C 60 80 B1 */	lis r3, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0DF24  3B C3 08 B4 */	addi r30, r3, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0DF28  A8 1F 0D 78 */	lha r0, 0xd78(r31)
/* 80B0DF2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0DF30  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B0DF34  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B0DF38  7C 23 04 2E */	lfsx f1, r3, r0
/* 80B0DF3C  38 9E 00 00 */	addi r4, r30, 0
/* 80B0DF40  C0 04 00 98 */	lfs f0, 0x98(r4)
/* 80B0DF44  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B0DF48  D0 1F 0D 64 */	stfs f0, 0xd64(r31)
/* 80B0DF4C  A8 7F 0D 78 */	lha r3, 0xd78(r31)
/* 80B0DF50  A8 04 00 9C */	lha r0, 0x9c(r4)
/* 80B0DF54  7C 03 02 14 */	add r0, r3, r0
/* 80B0DF58  B0 1F 0D 78 */	sth r0, 0xd78(r31)
/* 80B0DF5C  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80B0DF60  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
/* 80B0DF64  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80B0DF68  D0 1F 0D 54 */	stfs f0, 0xd54(r31)
/* 80B0DF6C  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80B0DF70  D0 1F 0D 58 */	stfs f0, 0xd58(r31)
/* 80B0DF74  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B0DF78  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80B0DF7C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B0DF80  4B 75 8B B5 */	bl __mi__4cXyzCFRC3Vec
/* 80B0DF84  38 7E 00 00 */	addi r3, r30, 0
/* 80B0DF88  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 80B0DF8C  C8 5E 01 10 */	lfd f2, 0x110(r30)
/* 80B0DF90  4B 85 E7 F1 */	bl pow
/* 80B0DF94  FF C0 08 18 */	frsp f30, f1
/* 80B0DF98  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B0DF9C  4B 83 91 9D */	bl PSVECSquareMag
/* 80B0DFA0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80B0DFA4  40 81 00 5C */	ble lbl_80B0E000
/* 80B0DFA8  38 61 00 20 */	addi r3, r1, 0x20
/* 80B0DFAC  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80B0DFB0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B0DFB4  4B 75 8B 81 */	bl __mi__4cXyzCFRC3Vec
/* 80B0DFB8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B0DFBC  D0 1F 0D 38 */	stfs f0, 0xd38(r31)
/* 80B0DFC0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B0DFC4  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 80B0DFC8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B0DFCC  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 80B0DFD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80B0DFD4  38 9F 0D 38 */	addi r4, r31, 0xd38
/* 80B0DFD8  4B 75 8F 71 */	bl normalizeZP__4cXyzFv
/* 80B0DFDC  38 7F 0D 38 */	addi r3, r31, 0xd38
/* 80B0DFE0  7C 64 1B 78 */	mr r4, r3
/* 80B0DFE4  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 80B0DFE8  4B 83 90 F1 */	bl PSVECScale
/* 80B0DFEC  38 60 00 14 */	li r3, 0x14
/* 80B0DFF0  38 80 00 14 */	li r4, 0x14
/* 80B0DFF4  48 00 27 1D */	bl func_80B10710
/* 80B0DFF8  90 7F 0D 5C */	stw r3, 0xd5c(r31)
/* 80B0DFFC  48 00 00 80 */	b lbl_80B0E07C
lbl_80B0E000:
/* 80B0E000  38 7F 0D 5C */	addi r3, r31, 0xd5c
/* 80B0E004  48 00 26 B5 */	bl func_80B106B8
/* 80B0E008  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E00C  40 82 00 70 */	bne lbl_80B0E07C
/* 80B0E010  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80B0E014  C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 80B0E018  48 00 26 BD */	bl func_80B106D4
/* 80B0E01C  FF C0 08 90 */	fmr f30, f1
/* 80B0E020  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 80B0E024  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 80B0E028  48 00 26 AD */	bl func_80B106D4
/* 80B0E02C  FF E0 08 90 */	fmr f31, f1
/* 80B0E030  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80B0E034  C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 80B0E038  48 00 26 9D */	bl func_80B106D4
/* 80B0E03C  D0 3F 0D 38 */	stfs f1, 0xd38(r31)
/* 80B0E040  D3 FF 0D 3C */	stfs f31, 0xd3c(r31)
/* 80B0E044  D3 DF 0D 40 */	stfs f30, 0xd40(r31)
/* 80B0E048  38 61 00 08 */	addi r3, r1, 8
/* 80B0E04C  38 9F 0D 38 */	addi r4, r31, 0xd38
/* 80B0E050  4B 75 8E F9 */	bl normalizeZP__4cXyzFv
/* 80B0E054  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B0E058  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 80B0E05C  48 00 26 79 */	bl func_80B106D4
/* 80B0E060  38 7F 0D 38 */	addi r3, r31, 0xd38
/* 80B0E064  7C 64 1B 78 */	mr r4, r3
/* 80B0E068  4B 83 90 71 */	bl PSVECScale
/* 80B0E06C  38 60 00 1E */	li r3, 0x1e
/* 80B0E070  38 80 00 5A */	li r4, 0x5a
/* 80B0E074  48 00 26 9D */	bl func_80B10710
/* 80B0E078  90 7F 0D 5C */	stw r3, 0xd5c(r31)
lbl_80B0E07C:
/* 80B0E07C  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80B0E080  38 9F 0D 38 */	addi r4, r31, 0xd38
/* 80B0E084  38 BE 00 00 */	addi r5, r30, 0
/* 80B0E088  C0 25 00 94 */	lfs f1, 0x94(r5)
/* 80B0E08C  4B 76 27 21 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0E090  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80B0E094  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80B0E098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E09C  40 81 00 14 */	ble lbl_80B0E0B0
/* 80B0E0A0  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80B0E0A4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B0E0A8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B0E0AC  48 00 00 2C */	b lbl_80B0E0D8
lbl_80B0E0B0:
/* 80B0E0B0  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80B0E0B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E0B8  40 80 00 14 */	bge lbl_80B0E0CC
/* 80B0E0BC  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 80B0E0C0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B0E0C4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B0E0C8  48 00 00 10 */	b lbl_80B0E0D8
lbl_80B0E0CC:
/* 80B0E0CC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B0E0D0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B0E0D4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B0E0D8:
/* 80B0E0D8  38 7F 0D 50 */	addi r3, r31, 0xd50
/* 80B0E0DC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80B0E0E0  7C 65 1B 78 */	mr r5, r3
/* 80B0E0E4  4B 83 8F D1 */	bl PSVECSubtract
/* 80B0E0E8  38 7E 00 00 */	addi r3, r30, 0
/* 80B0E0EC  A8 03 00 A0 */	lha r0, 0xa0(r3)
/* 80B0E0F0  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80B0E0F4  A8 03 00 A2 */	lha r0, 0xa2(r3)
/* 80B0E0F8  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80B0E0FC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B0E100  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B0E104  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80B0E108  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80B0E10C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B0E110  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B0E114  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B0E118  7C 08 03 A6 */	mtlr r0
/* 80B0E11C  38 21 00 60 */	addi r1, r1, 0x60
/* 80B0E120  4E 80 00 20 */	blr 

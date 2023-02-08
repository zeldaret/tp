lbl_8063A96C:
/* 8063A96C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8063A970  7C 08 02 A6 */	mflr r0
/* 8063A974  90 01 00 54 */	stw r0, 0x54(r1)
/* 8063A978  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8063A97C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8063A980  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8063A984  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8063A988  7C 7E 1B 78 */	mr r30, r3
/* 8063A98C  3C 60 80 64 */	lis r3, lit_3776@ha /* 0x8063DC84@ha */
/* 8063A990  3B E3 DC 84 */	addi r31, r3, lit_3776@l /* 0x8063DC84@l */
/* 8063A994  38 61 00 18 */	addi r3, r1, 0x18
/* 8063A998  80 9E 06 68 */	lwz r4, 0x668(r30)
/* 8063A99C  48 00 32 B9 */	bl getIceCenterPos__8daB_YO_cFv
/* 8063A9A0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8063A9A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8063A9A8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8063A9AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8063A9B0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8063A9B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8063A9B8  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 8063A9BC  C3 E3 0F 4C */	lfs f31, 0xf4c(r3)
/* 8063A9C0  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8063A9C4  2C 00 00 01 */	cmpwi r0, 1
/* 8063A9C8  41 82 00 5C */	beq lbl_8063AA24
/* 8063A9CC  40 80 00 10 */	bge lbl_8063A9DC
/* 8063A9D0  2C 00 00 00 */	cmpwi r0, 0
/* 8063A9D4  40 80 00 14 */	bge lbl_8063A9E8
/* 8063A9D8  48 00 01 C8 */	b lbl_8063ABA0
lbl_8063A9DC:
/* 8063A9DC  2C 00 00 03 */	cmpwi r0, 3
/* 8063A9E0  40 80 01 C0 */	bge lbl_8063ABA0
/* 8063A9E4  48 00 00 F8 */	b lbl_8063AADC
lbl_8063A9E8:
/* 8063A9E8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063A9EC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8063A9F0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8063A9F4  38 00 00 01 */	li r0, 1
/* 8063A9F8  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063A9FC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8063AA00  4B C2 CF 8D */	bl cM_rndFX__Ff
/* 8063AA04  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8063AA08  EC 00 08 2A */	fadds f0, f0, f1
/* 8063AA0C  FC 00 00 1E */	fctiwz f0, f0
/* 8063AA10  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8063AA14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063AA18  90 1E 06 A4 */	stw r0, 0x6a4(r30)
/* 8063AA1C  38 00 00 C8 */	li r0, 0xc8
/* 8063AA20  90 1E 06 A8 */	stw r0, 0x6a8(r30)
lbl_8063AA24:
/* 8063AA24  7F C3 F3 78 */	mr r3, r30
/* 8063AA28  4B FF FD 75 */	bl setApperEffect__9daB_YOI_cFv
/* 8063AA2C  80 7E 06 8C */	lwz r3, 0x68c(r30)
/* 8063AA30  38 03 00 01 */	addi r0, r3, 1
/* 8063AA34  1C 60 15 55 */	mulli r3, r0, 0x1555
/* 8063AA38  38 03 0A AA */	addi r0, r3, 0xaaa
/* 8063AA3C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8063AA40  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063AA44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8063AA48  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8063AA4C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8063AA50  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063AA54  EC 01 00 2A */	fadds f0, f1, f0
/* 8063AA58  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8063AA5C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8063AA60  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8063AA64  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8063AA68  7C 63 02 14 */	add r3, r3, r0
/* 8063AA6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8063AA70  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063AA74  EC 01 00 2A */	fadds f0, f1, f0
/* 8063AA78  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8063AA7C  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 8063AA80  2C 00 00 00 */	cmpwi r0, 0
/* 8063AA84  40 82 01 1C */	bne lbl_8063ABA0
/* 8063AA88  7F C3 F3 78 */	mr r3, r30
/* 8063AA8C  4B FF FD 99 */	bl setApperEffect2__9daB_YOI_cFv
/* 8063AA90  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063AA94  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8063AA98  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8063AA9C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8063AAA0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8063AAA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063AAA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063AAAC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8063AAB0  38 80 00 04 */	li r4, 4
/* 8063AAB4  38 A0 00 1F */	li r5, 0x1f
/* 8063AAB8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8063AABC  4B A3 4F 69 */	bl StartShock__12dVibration_cFii4cXyz
/* 8063AAC0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8063AAC4  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8063AAC8  38 00 00 02 */	li r0, 2
/* 8063AACC  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063AAD0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8063AAD4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8063AAD8  48 00 00 C8 */	b lbl_8063ABA0
lbl_8063AADC:
/* 8063AADC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F7@ha */
/* 8063AAE0  38 03 02 F7 */	addi r0, r3, 0x02F7 /* 0x000702F7@l */
/* 8063AAE4  90 01 00 08 */	stw r0, 8(r1)
/* 8063AAE8  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063AAEC  38 81 00 08 */	addi r4, r1, 8
/* 8063AAF0  38 A0 00 00 */	li r5, 0
/* 8063AAF4  38 C0 FF FF */	li r6, -1
/* 8063AAF8  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063AAFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063AB00  7D 89 03 A6 */	mtctr r12
/* 8063AB04  4E 80 04 21 */	bctrl 
/* 8063AB08  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8063AB0C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8063AB10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063AB14  40 80 00 18 */	bge lbl_8063AB2C
/* 8063AB18  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063AB1C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8063AB20  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063AB24  4B C3 5C 1D */	bl cLib_chaseF__FPfff
/* 8063AB28  48 00 00 14 */	b lbl_8063AB3C
lbl_8063AB2C:
/* 8063AB2C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063AB30  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8063AB34  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063AB38  4B C3 5C 09 */	bl cLib_chaseF__FPfff
lbl_8063AB3C:
/* 8063AB3C  80 1E 06 A8 */	lwz r0, 0x6a8(r30)
/* 8063AB40  2C 00 00 00 */	cmpwi r0, 0
/* 8063AB44  40 82 00 5C */	bne lbl_8063ABA0
/* 8063AB48  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8063AB4C  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063AB50  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8063AB54  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8063AB58  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8063AB5C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063AB60  7C 64 02 14 */	add r3, r4, r0
/* 8063AB64  C0 03 00 04 */	lfs f0, 4(r3)
/* 8063AB68  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063AB6C  EC 61 00 2A */	fadds f3, f1, f0
/* 8063AB70  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8063AB74  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8063AB78  7C 04 04 2E */	lfsx f0, r4, r0
/* 8063AB7C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063AB80  EC 01 00 2A */	fadds f0, f1, f0
/* 8063AB84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8063AB88  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8063AB8C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8063AB90  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8063AB94  38 81 00 24 */	addi r4, r1, 0x24
/* 8063AB98  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8063AB9C  4B C3 5D F5 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
lbl_8063ABA0:
/* 8063ABA0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8063ABA4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8063ABA8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8063ABAC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8063ABB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063ABB4  7C 08 03 A6 */	mtlr r0
/* 8063ABB8  38 21 00 50 */	addi r1, r1, 0x50
/* 8063ABBC  4E 80 00 20 */	blr 

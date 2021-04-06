lbl_804CC7D8:
/* 804CC7D8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804CC7DC  7C 08 02 A6 */	mflr r0
/* 804CC7E0  90 01 00 94 */	stw r0, 0x94(r1)
/* 804CC7E4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804CC7E8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804CC7EC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804CC7F0  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804CC7F4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 804CC7F8  93 C1 00 68 */	stw r30, 0x68(r1)
/* 804CC7FC  7C 7F 1B 78 */	mr r31, r3
/* 804CC800  FF E0 08 90 */	fmr f31, f1
/* 804CC804  3C 60 80 4D */	lis r3, l_cyl_src@ha /* 0x804CE3F4@ha */
/* 804CC808  3B C3 E3 F4 */	addi r30, r3, l_cyl_src@l /* 0x804CE3F4@l */
/* 804CC80C  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804CE694@ha */
/* 804CC810  38 03 E6 94 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804CE694@l */
/* 804CC814  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804CC818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CC81C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CC820  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804CC824  38 A1 00 4C */	addi r5, r1, 0x4c
/* 804CC828  4B BA 7F 1D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804CC82C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CC830  41 82 02 6C */	beq lbl_804CCA9C
/* 804CC834  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804CC838  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804CC83C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804CC840  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804CC844  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804CC848  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804CC84C  38 61 00 1C */	addi r3, r1, 0x1c
/* 804CC850  4B E7 A8 E9 */	bl PSVECSquareMag
/* 804CC854  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804CC858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CC85C  40 81 00 58 */	ble lbl_804CC8B4
/* 804CC860  FC 00 08 34 */	frsqrte f0, f1
/* 804CC864  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 804CC868  FC 44 00 32 */	fmul f2, f4, f0
/* 804CC86C  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 804CC870  FC 00 00 32 */	fmul f0, f0, f0
/* 804CC874  FC 01 00 32 */	fmul f0, f1, f0
/* 804CC878  FC 03 00 28 */	fsub f0, f3, f0
/* 804CC87C  FC 02 00 32 */	fmul f0, f2, f0
/* 804CC880  FC 44 00 32 */	fmul f2, f4, f0
/* 804CC884  FC 00 00 32 */	fmul f0, f0, f0
/* 804CC888  FC 01 00 32 */	fmul f0, f1, f0
/* 804CC88C  FC 03 00 28 */	fsub f0, f3, f0
/* 804CC890  FC 02 00 32 */	fmul f0, f2, f0
/* 804CC894  FC 44 00 32 */	fmul f2, f4, f0
/* 804CC898  FC 00 00 32 */	fmul f0, f0, f0
/* 804CC89C  FC 01 00 32 */	fmul f0, f1, f0
/* 804CC8A0  FC 03 00 28 */	fsub f0, f3, f0
/* 804CC8A4  FC 02 00 32 */	fmul f0, f2, f0
/* 804CC8A8  FF C1 00 32 */	fmul f30, f1, f0
/* 804CC8AC  FF C0 F0 18 */	frsp f30, f30
/* 804CC8B0  48 00 00 90 */	b lbl_804CC940
lbl_804CC8B4:
/* 804CC8B4  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 804CC8B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CC8BC  40 80 00 10 */	bge lbl_804CC8CC
/* 804CC8C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804CC8C4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804CC8C8  48 00 00 78 */	b lbl_804CC940
lbl_804CC8CC:
/* 804CC8CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804CC8D0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804CC8D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CC8D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CC8DC  7C 03 00 00 */	cmpw r3, r0
/* 804CC8E0  41 82 00 14 */	beq lbl_804CC8F4
/* 804CC8E4  40 80 00 40 */	bge lbl_804CC924
/* 804CC8E8  2C 03 00 00 */	cmpwi r3, 0
/* 804CC8EC  41 82 00 20 */	beq lbl_804CC90C
/* 804CC8F0  48 00 00 34 */	b lbl_804CC924
lbl_804CC8F4:
/* 804CC8F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CC8F8  41 82 00 0C */	beq lbl_804CC904
/* 804CC8FC  38 00 00 01 */	li r0, 1
/* 804CC900  48 00 00 28 */	b lbl_804CC928
lbl_804CC904:
/* 804CC904  38 00 00 02 */	li r0, 2
/* 804CC908  48 00 00 20 */	b lbl_804CC928
lbl_804CC90C:
/* 804CC90C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CC910  41 82 00 0C */	beq lbl_804CC91C
/* 804CC914  38 00 00 05 */	li r0, 5
/* 804CC918  48 00 00 10 */	b lbl_804CC928
lbl_804CC91C:
/* 804CC91C  38 00 00 03 */	li r0, 3
/* 804CC920  48 00 00 08 */	b lbl_804CC928
lbl_804CC924:
/* 804CC924  38 00 00 04 */	li r0, 4
lbl_804CC928:
/* 804CC928  2C 00 00 01 */	cmpwi r0, 1
/* 804CC92C  40 82 00 10 */	bne lbl_804CC93C
/* 804CC930  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804CC934  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804CC938  48 00 00 08 */	b lbl_804CC940
lbl_804CC93C:
/* 804CC93C  FF C0 08 90 */	fmr f30, f1
lbl_804CC940:
/* 804CC940  7F E3 FB 78 */	mr r3, r31
/* 804CC944  38 81 00 4C */	addi r4, r1, 0x4c
/* 804CC948  38 A1 00 40 */	addi r5, r1, 0x40
/* 804CC94C  4B E7 A9 7D */	bl C_VECReflect
/* 804CC950  38 61 00 34 */	addi r3, r1, 0x34
/* 804CC954  38 81 00 40 */	addi r4, r1, 0x40
/* 804CC958  FC 20 F0 90 */	fmr f1, f30
/* 804CC95C  4B D9 A2 29 */	bl __ml__4cXyzCFf
/* 804CC960  38 61 00 28 */	addi r3, r1, 0x28
/* 804CC964  38 81 00 34 */	addi r4, r1, 0x34
/* 804CC968  FC 20 F8 90 */	fmr f1, f31
/* 804CC96C  4B D9 A2 19 */	bl __ml__4cXyzCFf
/* 804CC970  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804CC974  D0 1F 00 00 */	stfs f0, 0(r31)
/* 804CC978  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804CC97C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 804CC980  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804CC984  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804CC988  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804CC98C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804CC990  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804CC994  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804CC998  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804CC99C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804CC9A0  38 61 00 10 */	addi r3, r1, 0x10
/* 804CC9A4  4B E7 A7 95 */	bl PSVECSquareMag
/* 804CC9A8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804CC9AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CC9B0  40 81 00 58 */	ble lbl_804CCA08
/* 804CC9B4  FC 00 08 34 */	frsqrte f0, f1
/* 804CC9B8  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 804CC9BC  FC 44 00 32 */	fmul f2, f4, f0
/* 804CC9C0  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 804CC9C4  FC 00 00 32 */	fmul f0, f0, f0
/* 804CC9C8  FC 01 00 32 */	fmul f0, f1, f0
/* 804CC9CC  FC 03 00 28 */	fsub f0, f3, f0
/* 804CC9D0  FC 02 00 32 */	fmul f0, f2, f0
/* 804CC9D4  FC 44 00 32 */	fmul f2, f4, f0
/* 804CC9D8  FC 00 00 32 */	fmul f0, f0, f0
/* 804CC9DC  FC 01 00 32 */	fmul f0, f1, f0
/* 804CC9E0  FC 03 00 28 */	fsub f0, f3, f0
/* 804CC9E4  FC 02 00 32 */	fmul f0, f2, f0
/* 804CC9E8  FC 44 00 32 */	fmul f2, f4, f0
/* 804CC9EC  FC 00 00 32 */	fmul f0, f0, f0
/* 804CC9F0  FC 01 00 32 */	fmul f0, f1, f0
/* 804CC9F4  FC 03 00 28 */	fsub f0, f3, f0
/* 804CC9F8  FC 02 00 32 */	fmul f0, f2, f0
/* 804CC9FC  FC 21 00 32 */	fmul f1, f1, f0
/* 804CCA00  FC 20 08 18 */	frsp f1, f1
/* 804CCA04  48 00 00 88 */	b lbl_804CCA8C
lbl_804CCA08:
/* 804CCA08  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 804CCA0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CCA10  40 80 00 10 */	bge lbl_804CCA20
/* 804CCA14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804CCA18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804CCA1C  48 00 00 70 */	b lbl_804CCA8C
lbl_804CCA20:
/* 804CCA20  D0 21 00 08 */	stfs f1, 8(r1)
/* 804CCA24  80 81 00 08 */	lwz r4, 8(r1)
/* 804CCA28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CCA2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CCA30  7C 03 00 00 */	cmpw r3, r0
/* 804CCA34  41 82 00 14 */	beq lbl_804CCA48
/* 804CCA38  40 80 00 40 */	bge lbl_804CCA78
/* 804CCA3C  2C 03 00 00 */	cmpwi r3, 0
/* 804CCA40  41 82 00 20 */	beq lbl_804CCA60
/* 804CCA44  48 00 00 34 */	b lbl_804CCA78
lbl_804CCA48:
/* 804CCA48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CCA4C  41 82 00 0C */	beq lbl_804CCA58
/* 804CCA50  38 00 00 01 */	li r0, 1
/* 804CCA54  48 00 00 28 */	b lbl_804CCA7C
lbl_804CCA58:
/* 804CCA58  38 00 00 02 */	li r0, 2
/* 804CCA5C  48 00 00 20 */	b lbl_804CCA7C
lbl_804CCA60:
/* 804CCA60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CCA64  41 82 00 0C */	beq lbl_804CCA70
/* 804CCA68  38 00 00 05 */	li r0, 5
/* 804CCA6C  48 00 00 10 */	b lbl_804CCA7C
lbl_804CCA70:
/* 804CCA70  38 00 00 03 */	li r0, 3
/* 804CCA74  48 00 00 08 */	b lbl_804CCA7C
lbl_804CCA78:
/* 804CCA78  38 00 00 04 */	li r0, 4
lbl_804CCA7C:
/* 804CCA7C  2C 00 00 01 */	cmpwi r0, 1
/* 804CCA80  40 82 00 0C */	bne lbl_804CCA8C
/* 804CCA84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804CCA88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804CCA8C:
/* 804CCA8C  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804CE694@ha */
/* 804CCA90  38 03 E6 94 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804CE694@l */
/* 804CCA94  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804CCA98  48 00 00 14 */	b lbl_804CCAAC
lbl_804CCA9C:
/* 804CCA9C  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804CE694@ha */
/* 804CCAA0  38 03 E6 94 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804CE694@l */
/* 804CCAA4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804CCAA8  C0 3E 00 44 */	lfs f1, 0x44(r30)
lbl_804CCAAC:
/* 804CCAAC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804CCAB0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804CCAB4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804CCAB8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804CCABC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804CCAC0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804CCAC4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804CCAC8  7C 08 03 A6 */	mtlr r0
/* 804CCACC  38 21 00 90 */	addi r1, r1, 0x90
/* 804CCAD0  4E 80 00 20 */	blr 

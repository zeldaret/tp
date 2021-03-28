lbl_80B0E304:
/* 80B0E304  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B0E308  7C 08 02 A6 */	mflr r0
/* 80B0E30C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B0E310  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80B0E314  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80B0E318  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80B0E31C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80B0E320  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80B0E324  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80B0E328  7C 7E 1B 78 */	mr r30, r3
/* 80B0E32C  3C 80 80 B1 */	lis r4, m__16daNpcTkc_Param_c@ha
/* 80B0E330  3B E4 08 B4 */	addi r31, r4, m__16daNpcTkc_Param_c@l
/* 80B0E334  A0 03 0D 76 */	lhz r0, 0xd76(r3)
/* 80B0E338  2C 00 00 02 */	cmpwi r0, 2
/* 80B0E33C  41 82 00 40 */	beq lbl_80B0E37C
/* 80B0E340  40 80 04 1C */	bge lbl_80B0E75C
/* 80B0E344  2C 00 00 00 */	cmpwi r0, 0
/* 80B0E348  41 82 00 0C */	beq lbl_80B0E354
/* 80B0E34C  48 00 04 10 */	b lbl_80B0E75C
/* 80B0E350  48 00 04 0C */	b lbl_80B0E75C
lbl_80B0E354:
/* 80B0E354  A8 1E 0D 74 */	lha r0, 0xd74(r30)
/* 80B0E358  2C 00 00 03 */	cmpwi r0, 3
/* 80B0E35C  41 82 00 0C */	beq lbl_80B0E368
/* 80B0E360  38 00 00 03 */	li r0, 3
/* 80B0E364  B0 1E 0D 74 */	sth r0, 0xd74(r30)
lbl_80B0E368:
/* 80B0E368  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B0E36C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B0E370  38 00 00 02 */	li r0, 2
/* 80B0E374  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0E378  48 00 03 E4 */	b lbl_80B0E75C
lbl_80B0E37C:
/* 80B0E37C  4B FF FD A9 */	bl searchPlayer__10daNpcTkc_cFv
/* 80B0E380  A8 1E 0D 78 */	lha r0, 0xd78(r30)
/* 80B0E384  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0E388  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B0E38C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B0E390  7C 23 04 2E */	lfsx f1, r3, r0
/* 80B0E394  38 9F 00 00 */	addi r4, r31, 0
/* 80B0E398  C0 04 00 98 */	lfs f0, 0x98(r4)
/* 80B0E39C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B0E3A0  D0 1E 0D 64 */	stfs f0, 0xd64(r30)
/* 80B0E3A4  A8 7E 0D 78 */	lha r3, 0xd78(r30)
/* 80B0E3A8  A8 04 00 9C */	lha r0, 0x9c(r4)
/* 80B0E3AC  7C 03 02 14 */	add r0, r3, r0
/* 80B0E3B0  B0 1E 0D 78 */	sth r0, 0xd78(r30)
/* 80B0E3B4  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80B0E3B8  D0 1E 0D 50 */	stfs f0, 0xd50(r30)
/* 80B0E3BC  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80B0E3C0  D0 1E 0D 54 */	stfs f0, 0xd54(r30)
/* 80B0E3C4  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80B0E3C8  D0 1E 0D 58 */	stfs f0, 0xd58(r30)
/* 80B0E3CC  38 61 00 40 */	addi r3, r1, 0x40
/* 80B0E3D0  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80B0E3D4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B0E3D8  4B 75 87 5C */	b __mi__4cXyzCFRC3Vec
/* 80B0E3DC  38 61 00 40 */	addi r3, r1, 0x40
/* 80B0E3E0  4B 83 8D 58 */	b PSVECSquareMag
/* 80B0E3E4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B0E3E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E3EC  40 81 00 58 */	ble lbl_80B0E444
/* 80B0E3F0  FC 00 08 34 */	frsqrte f0, f1
/* 80B0E3F4  C8 9F 01 38 */	lfd f4, 0x138(r31)
/* 80B0E3F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0E3FC  C8 7F 01 40 */	lfd f3, 0x140(r31)
/* 80B0E400  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0E404  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0E408  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0E40C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0E410  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0E414  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0E418  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0E41C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0E420  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0E424  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0E428  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0E42C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0E430  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0E434  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0E438  FF C1 00 32 */	fmul f30, f1, f0
/* 80B0E43C  FF C0 F0 18 */	frsp f30, f30
/* 80B0E440  48 00 00 90 */	b lbl_80B0E4D0
lbl_80B0E444:
/* 80B0E444  C8 1F 01 48 */	lfd f0, 0x148(r31)
/* 80B0E448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E44C  40 80 00 10 */	bge lbl_80B0E45C
/* 80B0E450  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B0E454  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80B0E458  48 00 00 78 */	b lbl_80B0E4D0
lbl_80B0E45C:
/* 80B0E45C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B0E460  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B0E464  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0E468  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B0E46C  7C 03 00 00 */	cmpw r3, r0
/* 80B0E470  41 82 00 14 */	beq lbl_80B0E484
/* 80B0E474  40 80 00 40 */	bge lbl_80B0E4B4
/* 80B0E478  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E47C  41 82 00 20 */	beq lbl_80B0E49C
/* 80B0E480  48 00 00 34 */	b lbl_80B0E4B4
lbl_80B0E484:
/* 80B0E484  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0E488  41 82 00 0C */	beq lbl_80B0E494
/* 80B0E48C  38 00 00 01 */	li r0, 1
/* 80B0E490  48 00 00 28 */	b lbl_80B0E4B8
lbl_80B0E494:
/* 80B0E494  38 00 00 02 */	li r0, 2
/* 80B0E498  48 00 00 20 */	b lbl_80B0E4B8
lbl_80B0E49C:
/* 80B0E49C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0E4A0  41 82 00 0C */	beq lbl_80B0E4AC
/* 80B0E4A4  38 00 00 05 */	li r0, 5
/* 80B0E4A8  48 00 00 10 */	b lbl_80B0E4B8
lbl_80B0E4AC:
/* 80B0E4AC  38 00 00 03 */	li r0, 3
/* 80B0E4B0  48 00 00 08 */	b lbl_80B0E4B8
lbl_80B0E4B4:
/* 80B0E4B4  38 00 00 04 */	li r0, 4
lbl_80B0E4B8:
/* 80B0E4B8  2C 00 00 01 */	cmpwi r0, 1
/* 80B0E4BC  40 82 00 10 */	bne lbl_80B0E4CC
/* 80B0E4C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B0E4C4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80B0E4C8  48 00 00 08 */	b lbl_80B0E4D0
lbl_80B0E4CC:
/* 80B0E4CC  FF C0 08 90 */	fmr f30, f1
lbl_80B0E4D0:
/* 80B0E4D0  38 7F 00 00 */	addi r3, r31, 0
/* 80B0E4D4  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 80B0E4D8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80B0E4DC  40 81 00 70 */	ble lbl_80B0E54C
/* 80B0E4E0  38 61 00 34 */	addi r3, r1, 0x34
/* 80B0E4E4  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80B0E4E8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B0E4EC  4B 75 86 48 */	b __mi__4cXyzCFRC3Vec
/* 80B0E4F0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B0E4F4  D0 1E 0D 38 */	stfs f0, 0xd38(r30)
/* 80B0E4F8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B0E4FC  D0 1E 0D 3C */	stfs f0, 0xd3c(r30)
/* 80B0E500  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B0E504  D0 1E 0D 40 */	stfs f0, 0xd40(r30)
/* 80B0E508  38 61 00 28 */	addi r3, r1, 0x28
/* 80B0E50C  38 9E 0D 38 */	addi r4, r30, 0xd38
/* 80B0E510  4B 75 8A 38 */	b normalizeZP__4cXyzFv
/* 80B0E514  38 7E 0D 38 */	addi r3, r30, 0xd38
/* 80B0E518  7C 64 1B 78 */	mr r4, r3
/* 80B0E51C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80B0E520  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80B0E524  4B 83 8B B4 */	b PSVECScale
/* 80B0E528  C0 1E 0D 38 */	lfs f0, 0xd38(r30)
/* 80B0E52C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80B0E530  C0 1E 0D 3C */	lfs f0, 0xd3c(r30)
/* 80B0E534  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B0E538  C0 1E 0D 40 */	lfs f0, 0xd40(r30)
/* 80B0E53C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80B0E540  38 00 00 03 */	li r0, 3
/* 80B0E544  90 1E 0D 5C */	stw r0, 0xd5c(r30)
/* 80B0E548  48 00 01 A8 */	b lbl_80B0E6F0
lbl_80B0E54C:
/* 80B0E54C  38 7E 0D 5C */	addi r3, r30, 0xd5c
/* 80B0E550  48 00 21 69 */	bl func_80B106B8
/* 80B0E554  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E558  40 82 01 98 */	bne lbl_80B0E6F0
/* 80B0E55C  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B0E560  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 80B0E564  48 00 21 71 */	bl func_80B106D4
/* 80B0E568  FF C0 08 90 */	fmr f30, f1
/* 80B0E56C  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80B0E570  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 80B0E574  48 00 21 61 */	bl func_80B106D4
/* 80B0E578  FF E0 08 90 */	fmr f31, f1
/* 80B0E57C  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B0E580  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 80B0E584  48 00 21 51 */	bl func_80B106D4
/* 80B0E588  D0 3E 0D 38 */	stfs f1, 0xd38(r30)
/* 80B0E58C  D3 FE 0D 3C */	stfs f31, 0xd3c(r30)
/* 80B0E590  D3 DE 0D 40 */	stfs f30, 0xd40(r30)
/* 80B0E594  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B0E598  38 9E 0D 38 */	addi r4, r30, 0xd38
/* 80B0E59C  4B 75 89 AC */	b normalizeZP__4cXyzFv
/* 80B0E5A0  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B0E5A4  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 80B0E5A8  48 00 21 2D */	bl func_80B106D4
/* 80B0E5AC  38 7E 0D 38 */	addi r3, r30, 0xd38
/* 80B0E5B0  7C 64 1B 78 */	mr r4, r3
/* 80B0E5B4  4B 83 8B 24 */	b PSVECScale
/* 80B0E5B8  38 60 00 1E */	li r3, 0x1e
/* 80B0E5BC  38 80 00 3C */	li r4, 0x3c
/* 80B0E5C0  48 00 21 51 */	bl func_80B10710
/* 80B0E5C4  90 7E 0D 5C */	stw r3, 0xd5c(r30)
/* 80B0E5C8  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80B0E5CC  4B 83 8B 6C */	b PSVECSquareMag
/* 80B0E5D0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B0E5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E5D8  40 81 00 58 */	ble lbl_80B0E630
/* 80B0E5DC  FC 00 08 34 */	frsqrte f0, f1
/* 80B0E5E0  C8 9F 01 38 */	lfd f4, 0x138(r31)
/* 80B0E5E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0E5E8  C8 7F 01 40 */	lfd f3, 0x140(r31)
/* 80B0E5EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0E5F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0E5F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0E5F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0E5FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0E600  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0E604  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0E608  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0E60C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0E610  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0E614  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0E618  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0E61C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0E620  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0E624  FC 21 00 32 */	fmul f1, f1, f0
/* 80B0E628  FC 20 08 18 */	frsp f1, f1
/* 80B0E62C  48 00 00 88 */	b lbl_80B0E6B4
lbl_80B0E630:
/* 80B0E630  C8 1F 01 48 */	lfd f0, 0x148(r31)
/* 80B0E634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E638  40 80 00 10 */	bge lbl_80B0E648
/* 80B0E63C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B0E640  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B0E644  48 00 00 70 */	b lbl_80B0E6B4
lbl_80B0E648:
/* 80B0E648  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B0E64C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B0E650  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0E654  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B0E658  7C 03 00 00 */	cmpw r3, r0
/* 80B0E65C  41 82 00 14 */	beq lbl_80B0E670
/* 80B0E660  40 80 00 40 */	bge lbl_80B0E6A0
/* 80B0E664  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E668  41 82 00 20 */	beq lbl_80B0E688
/* 80B0E66C  48 00 00 34 */	b lbl_80B0E6A0
lbl_80B0E670:
/* 80B0E670  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0E674  41 82 00 0C */	beq lbl_80B0E680
/* 80B0E678  38 00 00 01 */	li r0, 1
/* 80B0E67C  48 00 00 28 */	b lbl_80B0E6A4
lbl_80B0E680:
/* 80B0E680  38 00 00 02 */	li r0, 2
/* 80B0E684  48 00 00 20 */	b lbl_80B0E6A4
lbl_80B0E688:
/* 80B0E688  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0E68C  41 82 00 0C */	beq lbl_80B0E698
/* 80B0E690  38 00 00 05 */	li r0, 5
/* 80B0E694  48 00 00 10 */	b lbl_80B0E6A4
lbl_80B0E698:
/* 80B0E698  38 00 00 03 */	li r0, 3
/* 80B0E69C  48 00 00 08 */	b lbl_80B0E6A4
lbl_80B0E6A0:
/* 80B0E6A0  38 00 00 04 */	li r0, 4
lbl_80B0E6A4:
/* 80B0E6A4  2C 00 00 01 */	cmpwi r0, 1
/* 80B0E6A8  40 82 00 0C */	bne lbl_80B0E6B4
/* 80B0E6AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B0E6B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B0E6B4:
/* 80B0E6B4  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80B0E6B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E6BC  40 81 00 20 */	ble lbl_80B0E6DC
/* 80B0E6C0  38 61 00 10 */	addi r3, r1, 0x10
/* 80B0E6C4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80B0E6C8  4B 75 88 80 */	b normalizeZP__4cXyzFv
/* 80B0E6CC  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80B0E6D0  7C 64 1B 78 */	mr r4, r3
/* 80B0E6D4  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80B0E6D8  4B 83 8A 00 */	b PSVECScale
lbl_80B0E6DC:
/* 80B0E6DC  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80B0E6E0  38 9E 0D 38 */	addi r4, r30, 0xd38
/* 80B0E6E4  38 BF 00 00 */	addi r5, r31, 0
/* 80B0E6E8  C0 25 00 94 */	lfs f1, 0x94(r5)
/* 80B0E6EC  4B 76 20 C0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
lbl_80B0E6F0:
/* 80B0E6F0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80B0E6F4  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80B0E6F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E6FC  40 81 00 14 */	ble lbl_80B0E710
/* 80B0E700  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80B0E704  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0E708  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B0E70C  48 00 00 2C */	b lbl_80B0E738
lbl_80B0E710:
/* 80B0E710  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80B0E714  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0E718  40 80 00 14 */	bge lbl_80B0E72C
/* 80B0E71C  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 80B0E720  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0E724  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B0E728  48 00 00 10 */	b lbl_80B0E738
lbl_80B0E72C:
/* 80B0E72C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B0E730  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0E734  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B0E738:
/* 80B0E738  38 7E 0D 50 */	addi r3, r30, 0xd50
/* 80B0E73C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80B0E740  7C 65 1B 78 */	mr r5, r3
/* 80B0E744  4B 83 89 70 */	b PSVECSubtract
/* 80B0E748  38 7F 00 00 */	addi r3, r31, 0
/* 80B0E74C  A8 03 00 A0 */	lha r0, 0xa0(r3)
/* 80B0E750  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 80B0E754  A8 03 00 A2 */	lha r0, 0xa2(r3)
/* 80B0E758  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
lbl_80B0E75C:
/* 80B0E75C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80B0E760  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80B0E764  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80B0E768  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80B0E76C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80B0E770  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80B0E774  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B0E778  7C 08 03 A6 */	mtlr r0
/* 80B0E77C  38 21 00 80 */	addi r1, r1, 0x80
/* 80B0E780  4E 80 00 20 */	blr 

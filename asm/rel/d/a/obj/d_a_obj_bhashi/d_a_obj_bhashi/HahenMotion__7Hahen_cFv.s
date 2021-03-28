lbl_80577868:
/* 80577868  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8057786C  7C 08 02 A6 */	mflr r0
/* 80577870  90 01 00 44 */	stw r0, 0x44(r1)
/* 80577874  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80577878  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8057787C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80577880  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80577884  7C 7E 1B 78 */	mr r30, r3
/* 80577888  3C 80 80 58 */	lis r4, ccCylSrc@ha
/* 8057788C  3B E4 8A 88 */	addi r31, r4, ccCylSrc@l
/* 80577890  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80577894  28 00 00 00 */	cmplwi r0, 0
/* 80577898  40 82 02 20 */	bne lbl_80577AB8
/* 8057789C  4B FF FF 09 */	bl Wall_Check__7Hahen_cFv
/* 805778A0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805778A4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805778A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805778AC  4C 41 13 82 */	cror 2, 1, 2
/* 805778B0  40 82 00 64 */	bne lbl_80577914
/* 805778B4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805778B8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 805778BC  EC 01 00 2A */	fadds f0, f1, f0
/* 805778C0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 805778C4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805778C8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805778CC  EC 01 00 2A */	fadds f0, f1, f0
/* 805778D0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805778D4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805778D8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 805778DC  EC 01 00 2A */	fadds f0, f1, f0
/* 805778E0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 805778E4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805778E8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805778EC  EC 01 00 2A */	fadds f0, f1, f0
/* 805778F0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 805778F4  A8 7E 00 24 */	lha r3, 0x24(r30)
/* 805778F8  A8 1E 00 2A */	lha r0, 0x2a(r30)
/* 805778FC  7C 03 02 14 */	add r0, r3, r0
/* 80577900  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 80577904  A8 7E 00 26 */	lha r3, 0x26(r30)
/* 80577908  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8057790C  7C 03 02 14 */	add r0, r3, r0
/* 80577910  B0 1E 00 26 */	sth r0, 0x26(r30)
lbl_80577914:
/* 80577914  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80577918  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8057791C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577920  40 80 02 DC */	bge lbl_80577BFC
/* 80577924  C3 FE 00 10 */	lfs f31, 0x10(r30)
/* 80577928  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8057792C  38 7E 00 18 */	addi r3, r30, 0x18
/* 80577930  4B DC F8 08 */	b PSVECSquareMag
/* 80577934  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80577938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057793C  40 81 00 58 */	ble lbl_80577994
/* 80577940  FC 00 08 34 */	frsqrte f0, f1
/* 80577944  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80577948  FC 44 00 32 */	fmul f2, f4, f0
/* 8057794C  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80577950  FC 00 00 32 */	fmul f0, f0, f0
/* 80577954  FC 01 00 32 */	fmul f0, f1, f0
/* 80577958  FC 03 00 28 */	fsub f0, f3, f0
/* 8057795C  FC 02 00 32 */	fmul f0, f2, f0
/* 80577960  FC 44 00 32 */	fmul f2, f4, f0
/* 80577964  FC 00 00 32 */	fmul f0, f0, f0
/* 80577968  FC 01 00 32 */	fmul f0, f1, f0
/* 8057796C  FC 03 00 28 */	fsub f0, f3, f0
/* 80577970  FC 02 00 32 */	fmul f0, f2, f0
/* 80577974  FC 44 00 32 */	fmul f2, f4, f0
/* 80577978  FC 00 00 32 */	fmul f0, f0, f0
/* 8057797C  FC 01 00 32 */	fmul f0, f1, f0
/* 80577980  FC 03 00 28 */	fsub f0, f3, f0
/* 80577984  FC 02 00 32 */	fmul f0, f2, f0
/* 80577988  FC 21 00 32 */	fmul f1, f1, f0
/* 8057798C  FC 20 08 18 */	frsp f1, f1
/* 80577990  48 00 00 88 */	b lbl_80577A18
lbl_80577994:
/* 80577994  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80577998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057799C  40 80 00 10 */	bge lbl_805779AC
/* 805779A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805779A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805779A8  48 00 00 70 */	b lbl_80577A18
lbl_805779AC:
/* 805779AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805779B0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805779B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805779B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805779BC  7C 03 00 00 */	cmpw r3, r0
/* 805779C0  41 82 00 14 */	beq lbl_805779D4
/* 805779C4  40 80 00 40 */	bge lbl_80577A04
/* 805779C8  2C 03 00 00 */	cmpwi r3, 0
/* 805779CC  41 82 00 20 */	beq lbl_805779EC
/* 805779D0  48 00 00 34 */	b lbl_80577A04
lbl_805779D4:
/* 805779D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805779D8  41 82 00 0C */	beq lbl_805779E4
/* 805779DC  38 00 00 01 */	li r0, 1
/* 805779E0  48 00 00 28 */	b lbl_80577A08
lbl_805779E4:
/* 805779E4  38 00 00 02 */	li r0, 2
/* 805779E8  48 00 00 20 */	b lbl_80577A08
lbl_805779EC:
/* 805779EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805779F0  41 82 00 0C */	beq lbl_805779FC
/* 805779F4  38 00 00 05 */	li r0, 5
/* 805779F8  48 00 00 10 */	b lbl_80577A08
lbl_805779FC:
/* 805779FC  38 00 00 03 */	li r0, 3
/* 80577A00  48 00 00 08 */	b lbl_80577A08
lbl_80577A04:
/* 80577A04  38 00 00 04 */	li r0, 4
lbl_80577A08:
/* 80577A08  2C 00 00 01 */	cmpwi r0, 1
/* 80577A0C  40 82 00 0C */	bne lbl_80577A18
/* 80577A10  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80577A14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80577A18:
/* 80577A18  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80577A1C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80577A20  EC 01 00 24 */	fdivs f0, f1, f0
/* 80577A24  EC 02 00 28 */	fsubs f0, f2, f0
/* 80577A28  FC 00 00 50 */	fneg f0, f0
/* 80577A2C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80577A30  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80577A34  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80577A38  4B CE FF 1C */	b cM_rndF__Ff
/* 80577A3C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80577A40  EC 20 08 2A */	fadds f1, f0, f1
/* 80577A44  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80577A48  EC 00 00 72 */	fmuls f0, f0, f1
/* 80577A4C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 80577A50  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80577A54  4B CE FF 00 */	b cM_rndF__Ff
/* 80577A58  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80577A5C  EC 20 08 2A */	fadds f1, f0, f1
/* 80577A60  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80577A64  EC 00 00 72 */	fmuls f0, f0, f1
/* 80577A68  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80577A6C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80577A70  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80577A74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577A78  40 80 00 0C */	bge lbl_80577A84
/* 80577A7C  38 00 00 01 */	li r0, 1
/* 80577A80  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_80577A84:
/* 80577A84  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80577A88  4B CE FF 04 */	b cM_rndFX__Ff
/* 80577A8C  FC 00 08 1E */	fctiwz f0, f1
/* 80577A90  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80577A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577A98  B0 1E 00 2A */	sth r0, 0x2a(r30)
/* 80577A9C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80577AA0  4B CE FE EC */	b cM_rndFX__Ff
/* 80577AA4  FC 00 08 1E */	fctiwz f0, f1
/* 80577AA8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80577AAC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80577AB0  B0 1E 00 2C */	sth r0, 0x2c(r30)
/* 80577AB4  48 00 01 48 */	b lbl_80577BFC
lbl_80577AB8:
/* 80577AB8  28 00 00 01 */	cmplwi r0, 1
/* 80577ABC  40 82 01 40 */	bne lbl_80577BFC
/* 80577AC0  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 80577AC4  28 00 00 00 */	cmplwi r0, 0
/* 80577AC8  41 82 00 0C */	beq lbl_80577AD4
/* 80577ACC  38 00 00 02 */	li r0, 2
/* 80577AD0  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_80577AD4:
/* 80577AD4  7F C3 F3 78 */	mr r3, r30
/* 80577AD8  48 00 01 45 */	bl CheckCull__7Hahen_cFv
/* 80577ADC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80577AE0  41 82 01 1C */	beq lbl_80577BFC
/* 80577AE4  38 00 00 02 */	li r0, 2
/* 80577AE8  98 1E 00 30 */	stb r0, 0x30(r30)
/* 80577AEC  38 7E 00 18 */	addi r3, r30, 0x18
/* 80577AF0  4B DC F6 48 */	b PSVECSquareMag
/* 80577AF4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80577AF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577AFC  40 81 00 58 */	ble lbl_80577B54
/* 80577B00  FC 00 08 34 */	frsqrte f0, f1
/* 80577B04  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80577B08  FC 44 00 32 */	fmul f2, f4, f0
/* 80577B0C  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80577B10  FC 00 00 32 */	fmul f0, f0, f0
/* 80577B14  FC 01 00 32 */	fmul f0, f1, f0
/* 80577B18  FC 03 00 28 */	fsub f0, f3, f0
/* 80577B1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80577B20  FC 44 00 32 */	fmul f2, f4, f0
/* 80577B24  FC 00 00 32 */	fmul f0, f0, f0
/* 80577B28  FC 01 00 32 */	fmul f0, f1, f0
/* 80577B2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80577B30  FC 02 00 32 */	fmul f0, f2, f0
/* 80577B34  FC 44 00 32 */	fmul f2, f4, f0
/* 80577B38  FC 00 00 32 */	fmul f0, f0, f0
/* 80577B3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80577B40  FC 03 00 28 */	fsub f0, f3, f0
/* 80577B44  FC 02 00 32 */	fmul f0, f2, f0
/* 80577B48  FC 21 00 32 */	fmul f1, f1, f0
/* 80577B4C  FC 20 08 18 */	frsp f1, f1
/* 80577B50  48 00 00 88 */	b lbl_80577BD8
lbl_80577B54:
/* 80577B54  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80577B58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577B5C  40 80 00 10 */	bge lbl_80577B6C
/* 80577B60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80577B64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80577B68  48 00 00 70 */	b lbl_80577BD8
lbl_80577B6C:
/* 80577B6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80577B70  80 81 00 08 */	lwz r4, 8(r1)
/* 80577B74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80577B78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80577B7C  7C 03 00 00 */	cmpw r3, r0
/* 80577B80  41 82 00 14 */	beq lbl_80577B94
/* 80577B84  40 80 00 40 */	bge lbl_80577BC4
/* 80577B88  2C 03 00 00 */	cmpwi r3, 0
/* 80577B8C  41 82 00 20 */	beq lbl_80577BAC
/* 80577B90  48 00 00 34 */	b lbl_80577BC4
lbl_80577B94:
/* 80577B94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80577B98  41 82 00 0C */	beq lbl_80577BA4
/* 80577B9C  38 00 00 01 */	li r0, 1
/* 80577BA0  48 00 00 28 */	b lbl_80577BC8
lbl_80577BA4:
/* 80577BA4  38 00 00 02 */	li r0, 2
/* 80577BA8  48 00 00 20 */	b lbl_80577BC8
lbl_80577BAC:
/* 80577BAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80577BB0  41 82 00 0C */	beq lbl_80577BBC
/* 80577BB4  38 00 00 05 */	li r0, 5
/* 80577BB8  48 00 00 10 */	b lbl_80577BC8
lbl_80577BBC:
/* 80577BBC  38 00 00 03 */	li r0, 3
/* 80577BC0  48 00 00 08 */	b lbl_80577BC8
lbl_80577BC4:
/* 80577BC4  38 00 00 04 */	li r0, 4
lbl_80577BC8:
/* 80577BC8  2C 00 00 01 */	cmpwi r0, 1
/* 80577BCC  40 82 00 0C */	bne lbl_80577BD8
/* 80577BD0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80577BD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80577BD8:
/* 80577BD8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80577BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577BE0  40 81 00 14 */	ble lbl_80577BF4
/* 80577BE4  38 7E 00 18 */	addi r3, r30, 0x18
/* 80577BE8  7C 64 1B 78 */	mr r4, r3
/* 80577BEC  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80577BF0  4B DC F4 E8 */	b PSVECScale
lbl_80577BF4:
/* 80577BF4  38 00 00 01 */	li r0, 1
/* 80577BF8  98 1E 00 31 */	stb r0, 0x31(r30)
lbl_80577BFC:
/* 80577BFC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80577C00  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80577C04  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80577C08  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80577C0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80577C10  7C 08 03 A6 */	mtlr r0
/* 80577C14  38 21 00 40 */	addi r1, r1, 0x40
/* 80577C18  4E 80 00 20 */	blr 

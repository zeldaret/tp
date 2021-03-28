lbl_80878B38:
/* 80878B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878B3C  7C 08 02 A6 */	mflr r0
/* 80878B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878B44  3C 60 80 88 */	lis r3, __THPJpegNaturalOrder@ha
/* 80878B48  38 83 90 34 */	addi r4, r3, __THPJpegNaturalOrder@l
/* 80878B4C  3C 60 80 94 */	lis r3, daMP_Fail_alloc@ha
/* 80878B50  80 03 5B 08 */	lwz r0, daMP_Fail_alloc@l(r3)
/* 80878B54  2C 00 00 00 */	cmpwi r0, 0
/* 80878B58  40 82 00 50 */	bne lbl_80878BA8
/* 80878B5C  C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 80878B60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80878B64  4C 41 13 82 */	cror 2, 1, 2
/* 80878B68  40 82 00 0C */	bne lbl_80878B74
/* 80878B6C  38 60 00 7F */	li r3, 0x7f
/* 80878B70  48 00 00 30 */	b lbl_80878BA0
lbl_80878B74:
/* 80878B74  C0 04 00 C8 */	lfs f0, 0xc8(r4)
/* 80878B78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80878B7C  4C 40 13 82 */	cror 2, 0, 2
/* 80878B80  40 82 00 0C */	bne lbl_80878B8C
/* 80878B84  38 60 00 00 */	li r3, 0
/* 80878B88  48 00 00 18 */	b lbl_80878BA0
lbl_80878B8C:
/* 80878B8C  C0 04 00 E4 */	lfs f0, 0xe4(r4)
/* 80878B90  EC 01 00 24 */	fdivs f0, f1, f0
/* 80878B94  FC 00 00 1E */	fctiwz f0, f0
/* 80878B98  D8 01 00 08 */	stfd f0, 8(r1)
/* 80878B9C  80 61 00 0C */	lwz r3, 0xc(r1)
lbl_80878BA0:
/* 80878BA0  38 80 03 E8 */	li r4, 0x3e8
/* 80878BA4  4B FF FA 89 */	bl daMP_THPPlayerSetVolume__Fll
lbl_80878BA8:
/* 80878BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878BAC  7C 08 03 A6 */	mtlr r0
/* 80878BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80878BB4  4E 80 00 20 */	blr 

lbl_8001A964:
/* 8001A964  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001A968  7C 08 02 A6 */	mflr r0
/* 8001A96C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001A970  38 A3 04 D0 */	addi r5, r3, 0x4d0
/* 8001A974  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8001A978  38 61 00 18 */	addi r3, r1, 0x18
/* 8001A97C  48 24 C1 B9 */	bl __mi__4cXyzCFRC3Vec
/* 8001A980  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8001A984  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001A988  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001A98C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001A990  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8001A994  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8001A998  38 61 00 0C */	addi r3, r1, 0xc
/* 8001A99C  48 32 C7 9D */	bl PSVECSquareMag
/* 8001A9A0  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001A9A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001A9A8  40 81 00 58 */	ble lbl_8001AA00
/* 8001A9AC  FC 00 08 34 */	frsqrte f0, f1
/* 8001A9B0  C8 82 82 08 */	lfd f4, lit_4745(r2)
/* 8001A9B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8001A9B8  C8 62 82 10 */	lfd f3, lit_4746(r2)
/* 8001A9BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8001A9C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8001A9C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8001A9C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8001A9CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8001A9D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8001A9D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8001A9D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8001A9DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8001A9E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8001A9E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8001A9E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8001A9EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8001A9F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8001A9F4  FC 21 00 32 */	fmul f1, f1, f0
/* 8001A9F8  FC 20 08 18 */	frsp f1, f1
/* 8001A9FC  48 00 00 88 */	b lbl_8001AA84
lbl_8001AA00:
/* 8001AA00  C8 02 82 18 */	lfd f0, lit_4747(r2)
/* 8001AA04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001AA08  40 80 00 10 */	bge lbl_8001AA18
/* 8001AA0C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8001AA10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8001AA14  48 00 00 70 */	b lbl_8001AA84
lbl_8001AA18:
/* 8001AA18  D0 21 00 08 */	stfs f1, 8(r1)
/* 8001AA1C  80 81 00 08 */	lwz r4, 8(r1)
/* 8001AA20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8001AA24  3C 00 7F 80 */	lis r0, 0x7f80
/* 8001AA28  7C 03 00 00 */	cmpw r3, r0
/* 8001AA2C  41 82 00 14 */	beq lbl_8001AA40
/* 8001AA30  40 80 00 40 */	bge lbl_8001AA70
/* 8001AA34  2C 03 00 00 */	cmpwi r3, 0
/* 8001AA38  41 82 00 20 */	beq lbl_8001AA58
/* 8001AA3C  48 00 00 34 */	b lbl_8001AA70
lbl_8001AA40:
/* 8001AA40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8001AA44  41 82 00 0C */	beq lbl_8001AA50
/* 8001AA48  38 00 00 01 */	li r0, 1
/* 8001AA4C  48 00 00 28 */	b lbl_8001AA74
lbl_8001AA50:
/* 8001AA50  38 00 00 02 */	li r0, 2
/* 8001AA54  48 00 00 20 */	b lbl_8001AA74
lbl_8001AA58:
/* 8001AA58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8001AA5C  41 82 00 0C */	beq lbl_8001AA68
/* 8001AA60  38 00 00 05 */	li r0, 5
/* 8001AA64  48 00 00 10 */	b lbl_8001AA74
lbl_8001AA68:
/* 8001AA68  38 00 00 03 */	li r0, 3
/* 8001AA6C  48 00 00 08 */	b lbl_8001AA74
lbl_8001AA70:
/* 8001AA70  38 00 00 04 */	li r0, 4
lbl_8001AA74:
/* 8001AA74  2C 00 00 01 */	cmpwi r0, 1
/* 8001AA78  40 82 00 0C */	bne lbl_8001AA84
/* 8001AA7C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8001AA80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8001AA84:
/* 8001AA84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001AA88  7C 08 03 A6 */	mtlr r0
/* 8001AA8C  38 21 00 30 */	addi r1, r1, 0x30
/* 8001AA90  4E 80 00 20 */	blr 

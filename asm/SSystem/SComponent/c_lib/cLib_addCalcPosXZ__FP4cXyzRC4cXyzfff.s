lbl_8026FDF4:
/* 8026FDF4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8026FDF8  7C 08 02 A6 */	mflr r0
/* 8026FDFC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8026FE00  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8026FE04  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8026FE08  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8026FE0C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8026FE10  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8026FE14  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8026FE18  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8026FE1C  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 8026FE20  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8026FE24  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8026FE28  7C 7E 1B 78 */	mr r30, r3
/* 8026FE2C  7C 9F 23 78 */	mr r31, r4
/* 8026FE30  FF A0 08 90 */	fmr f29, f1
/* 8026FE34  FF C0 10 90 */	fmr f30, f2
/* 8026FE38  FF E0 18 90 */	fmr f31, f3
/* 8026FE3C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8026FE40  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026FE44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8026FE48  40 82 00 14 */	bne lbl_8026FE5C
/* 8026FE4C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8026FE50  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8026FE54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8026FE58  41 82 01 D4 */	beq lbl_8027002C
lbl_8026FE5C:
/* 8026FE5C  38 61 00 34 */	addi r3, r1, 0x34
/* 8026FE60  7F C4 F3 78 */	mr r4, r30
/* 8026FE64  7F E5 FB 78 */	mr r5, r31
/* 8026FE68  4B FF 6C CD */	bl __mi__4cXyzCFRC3Vec
/* 8026FE6C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8026FE70  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8026FE74  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8026FE78  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8026FE7C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8026FE80  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8026FE84  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8026FE88  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 8026FE8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8026FE90  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8026FE94  38 61 00 1C */	addi r3, r1, 0x1c
/* 8026FE98  48 0D 72 A1 */	bl PSVECSquareMag
/* 8026FE9C  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 8026FEA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FEA4  40 81 00 58 */	ble lbl_8026FEFC
/* 8026FEA8  FC 00 08 34 */	frsqrte f0, f1
/* 8026FEAC  C8 82 B7 E8 */	lfd f4, lit_2379(r2)
/* 8026FEB0  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FEB4  C8 62 B7 F0 */	lfd f3, lit_2380(r2)
/* 8026FEB8  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FEBC  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FEC0  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FEC4  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FEC8  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FECC  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FED0  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FED4  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FED8  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FEDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8026FEE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8026FEE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8026FEE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8026FEEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8026FEF0  FC 21 00 32 */	fmul f1, f1, f0
/* 8026FEF4  FC 20 08 18 */	frsp f1, f1
/* 8026FEF8  48 00 00 88 */	b lbl_8026FF80
lbl_8026FEFC:
/* 8026FEFC  C8 02 B7 F8 */	lfd f0, lit_2381(r2)
/* 8026FF00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FF04  40 80 00 10 */	bge lbl_8026FF14
/* 8026FF08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026FF0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8026FF10  48 00 00 70 */	b lbl_8026FF80
lbl_8026FF14:
/* 8026FF14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8026FF18  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8026FF1C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026FF20  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026FF24  7C 03 00 00 */	cmpw r3, r0
/* 8026FF28  41 82 00 14 */	beq lbl_8026FF3C
/* 8026FF2C  40 80 00 40 */	bge lbl_8026FF6C
/* 8026FF30  2C 03 00 00 */	cmpwi r3, 0
/* 8026FF34  41 82 00 20 */	beq lbl_8026FF54
/* 8026FF38  48 00 00 34 */	b lbl_8026FF6C
lbl_8026FF3C:
/* 8026FF3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026FF40  41 82 00 0C */	beq lbl_8026FF4C
/* 8026FF44  38 00 00 01 */	li r0, 1
/* 8026FF48  48 00 00 28 */	b lbl_8026FF70
lbl_8026FF4C:
/* 8026FF4C  38 00 00 02 */	li r0, 2
/* 8026FF50  48 00 00 20 */	b lbl_8026FF70
lbl_8026FF54:
/* 8026FF54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026FF58  41 82 00 0C */	beq lbl_8026FF64
/* 8026FF5C  38 00 00 05 */	li r0, 5
/* 8026FF60  48 00 00 10 */	b lbl_8026FF70
lbl_8026FF64:
/* 8026FF64  38 00 00 03 */	li r0, 3
/* 8026FF68  48 00 00 08 */	b lbl_8026FF70
lbl_8026FF6C:
/* 8026FF6C  38 00 00 04 */	li r0, 4
lbl_8026FF70:
/* 8026FF70  2C 00 00 01 */	cmpwi r0, 1
/* 8026FF74  40 82 00 0C */	bne lbl_8026FF80
/* 8026FF78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026FF7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8026FF80:
/* 8026FF80  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8026FF84  40 80 00 18 */	bge lbl_8026FF9C
/* 8026FF88  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8026FF8C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8026FF90  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8026FF94  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8026FF98  48 00 00 94 */	b lbl_8027002C
lbl_8026FF9C:
/* 8026FF9C  EF 81 07 72 */	fmuls f28, f1, f29
/* 8026FFA0  38 61 00 40 */	addi r3, r1, 0x40
/* 8026FFA4  7C 64 1B 78 */	mr r4, r3
/* 8026FFA8  FC 20 E8 90 */	fmr f1, f29
/* 8026FFAC  48 0D 71 2D */	bl PSVECScale
/* 8026FFB0  FC 00 E2 10 */	fabs f0, f28
/* 8026FFB4  FC 20 00 18 */	frsp f1, f0
/* 8026FFB8  C0 02 B8 00 */	lfs f0, lit_2382(r2)
/* 8026FFBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FFC0  41 80 00 5C */	blt lbl_8027001C
/* 8026FFC4  FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 8026FFC8  40 81 00 18 */	ble lbl_8026FFE0
/* 8026FFCC  38 61 00 40 */	addi r3, r1, 0x40
/* 8026FFD0  7C 64 1B 78 */	mr r4, r3
/* 8026FFD4  EC 3E E0 24 */	fdivs f1, f30, f28
/* 8026FFD8  48 0D 71 01 */	bl PSVECScale
/* 8026FFDC  48 00 00 1C */	b lbl_8026FFF8
lbl_8026FFE0:
/* 8026FFE0  FC 1C F8 40 */	fcmpo cr0, f28, f31
/* 8026FFE4  40 80 00 14 */	bge lbl_8026FFF8
/* 8026FFE8  38 61 00 40 */	addi r3, r1, 0x40
/* 8026FFEC  7C 64 1B 78 */	mr r4, r3
/* 8026FFF0  EC 3F E0 24 */	fdivs f1, f31, f28
/* 8026FFF4  48 0D 70 E5 */	bl PSVECScale
lbl_8026FFF8:
/* 8026FFF8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8026FFFC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80270000  EC 01 00 28 */	fsubs f0, f1, f0
/* 80270004  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80270008  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8027000C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80270010  EC 01 00 28 */	fsubs f0, f1, f0
/* 80270014  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80270018  48 00 00 14 */	b lbl_8027002C
lbl_8027001C:
/* 8027001C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80270020  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80270024  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80270028  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8027002C:
/* 8027002C  38 61 00 28 */	addi r3, r1, 0x28
/* 80270030  7F C4 F3 78 */	mr r4, r30
/* 80270034  7F E5 FB 78 */	mr r5, r31
/* 80270038  4B FF 6A FD */	bl __mi__4cXyzCFRC3Vec
/* 8027003C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80270040  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80270044  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 80270048  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8027004C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80270050  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80270054  38 61 00 10 */	addi r3, r1, 0x10
/* 80270058  48 0D 70 E1 */	bl PSVECSquareMag
/* 8027005C  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 80270060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80270064  40 81 00 58 */	ble lbl_802700BC
/* 80270068  FC 00 08 34 */	frsqrte f0, f1
/* 8027006C  C8 82 B7 E8 */	lfd f4, lit_2379(r2)
/* 80270070  FC 44 00 32 */	fmul f2, f4, f0
/* 80270074  C8 62 B7 F0 */	lfd f3, lit_2380(r2)
/* 80270078  FC 00 00 32 */	fmul f0, f0, f0
/* 8027007C  FC 01 00 32 */	fmul f0, f1, f0
/* 80270080  FC 03 00 28 */	fsub f0, f3, f0
/* 80270084  FC 02 00 32 */	fmul f0, f2, f0
/* 80270088  FC 44 00 32 */	fmul f2, f4, f0
/* 8027008C  FC 00 00 32 */	fmul f0, f0, f0
/* 80270090  FC 01 00 32 */	fmul f0, f1, f0
/* 80270094  FC 03 00 28 */	fsub f0, f3, f0
/* 80270098  FC 02 00 32 */	fmul f0, f2, f0
/* 8027009C  FC 44 00 32 */	fmul f2, f4, f0
/* 802700A0  FC 00 00 32 */	fmul f0, f0, f0
/* 802700A4  FC 01 00 32 */	fmul f0, f1, f0
/* 802700A8  FC 03 00 28 */	fsub f0, f3, f0
/* 802700AC  FC 02 00 32 */	fmul f0, f2, f0
/* 802700B0  FC 21 00 32 */	fmul f1, f1, f0
/* 802700B4  FC 20 08 18 */	frsp f1, f1
/* 802700B8  48 00 00 88 */	b lbl_80270140
lbl_802700BC:
/* 802700BC  C8 02 B7 F8 */	lfd f0, lit_2381(r2)
/* 802700C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802700C4  40 80 00 10 */	bge lbl_802700D4
/* 802700C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 802700CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 802700D0  48 00 00 70 */	b lbl_80270140
lbl_802700D4:
/* 802700D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 802700D8  80 81 00 08 */	lwz r4, 8(r1)
/* 802700DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 802700E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 802700E4  7C 03 00 00 */	cmpw r3, r0
/* 802700E8  41 82 00 14 */	beq lbl_802700FC
/* 802700EC  40 80 00 40 */	bge lbl_8027012C
/* 802700F0  2C 03 00 00 */	cmpwi r3, 0
/* 802700F4  41 82 00 20 */	beq lbl_80270114
/* 802700F8  48 00 00 34 */	b lbl_8027012C
lbl_802700FC:
/* 802700FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80270100  41 82 00 0C */	beq lbl_8027010C
/* 80270104  38 00 00 01 */	li r0, 1
/* 80270108  48 00 00 28 */	b lbl_80270130
lbl_8027010C:
/* 8027010C  38 00 00 02 */	li r0, 2
/* 80270110  48 00 00 20 */	b lbl_80270130
lbl_80270114:
/* 80270114  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80270118  41 82 00 0C */	beq lbl_80270124
/* 8027011C  38 00 00 05 */	li r0, 5
/* 80270120  48 00 00 10 */	b lbl_80270130
lbl_80270124:
/* 80270124  38 00 00 03 */	li r0, 3
/* 80270128  48 00 00 08 */	b lbl_80270130
lbl_8027012C:
/* 8027012C  38 00 00 04 */	li r0, 4
lbl_80270130:
/* 80270130  2C 00 00 01 */	cmpwi r0, 1
/* 80270134  40 82 00 0C */	bne lbl_80270140
/* 80270138  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8027013C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80270140:
/* 80270140  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80270144  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80270148  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8027014C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80270150  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80270154  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80270158  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 8027015C  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 80270160  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80270164  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80270168  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8027016C  7C 08 03 A6 */	mtlr r0
/* 80270170  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80270174  4E 80 00 20 */	blr 

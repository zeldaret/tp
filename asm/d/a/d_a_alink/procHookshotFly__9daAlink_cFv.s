lbl_8010BEF0:
/* 8010BEF0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8010BEF4  7C 08 02 A6 */	mflr r0
/* 8010BEF8  90 01 01 14 */	stw r0, 0x114(r1)
/* 8010BEFC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8010BF00  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8010BF04  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8010BF08  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 8010BF0C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8010BF10  48 25 62 B9 */	bl _savegpr_24
/* 8010BF14  7C 79 1B 78 */	mr r25, r3
/* 8010BF18  83 E3 28 50 */	lwz r31, 0x2850(r3)
/* 8010BF1C  28 1F 00 00 */	cmplwi r31, 0
/* 8010BF20  41 82 00 0C */	beq lbl_8010BF2C
/* 8010BF24  AB DF 00 08 */	lha r30, 8(r31)
/* 8010BF28  48 00 00 08 */	b lbl_8010BF30
lbl_8010BF2C:
/* 8010BF2C  3B C0 00 FD */	li r30, 0xfd
lbl_8010BF30:
/* 8010BF30  3B A0 00 00 */	li r29, 0
/* 8010BF34  7F C0 07 34 */	extsh r0, r30
/* 8010BF38  2C 00 00 C4 */	cmpwi r0, 0xc4
/* 8010BF3C  40 82 00 1C */	bne lbl_8010BF58
/* 8010BF40  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 8010BF44  2C 00 00 03 */	cmpwi r0, 3
/* 8010BF48  41 82 00 0C */	beq lbl_8010BF54
/* 8010BF4C  2C 00 00 04 */	cmpwi r0, 4
/* 8010BF50  40 82 00 08 */	bne lbl_8010BF58
lbl_8010BF54:
/* 8010BF54  3B A0 00 01 */	li r29, 1
lbl_8010BF58:
/* 8010BF58  AB 19 30 1E */	lha r24, 0x301e(r25)
/* 8010BF5C  C0 19 37 EC */	lfs f0, 0x37ec(r25)
/* 8010BF60  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8010BF64  C0 19 37 F0 */	lfs f0, 0x37f0(r25)
/* 8010BF68  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8010BF6C  C0 19 37 F4 */	lfs f0, 0x37f4(r25)
/* 8010BF70  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8010BF74  7F 23 CB 78 */	mr r3, r25
/* 8010BF78  4B FF DB 35 */	bl setHookshotTopPosFly__9daAlink_cFv
/* 8010BF7C  38 61 00 70 */	addi r3, r1, 0x70
/* 8010BF80  38 99 37 EC */	addi r4, r25, 0x37ec
/* 8010BF84  38 B9 37 E0 */	addi r5, r25, 0x37e0
/* 8010BF88  48 15 AB AD */	bl __mi__4cXyzCFRC3Vec
/* 8010BF8C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8010BF90  D0 19 37 D4 */	stfs f0, 0x37d4(r25)
/* 8010BF94  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8010BF98  D0 19 37 D8 */	stfs f0, 0x37d8(r25)
/* 8010BF9C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8010BFA0  D0 19 37 DC */	stfs f0, 0x37dc(r25)
/* 8010BFA4  A8 19 30 08 */	lha r0, 0x3008(r25)
/* 8010BFA8  2C 00 00 00 */	cmpwi r0, 0
/* 8010BFAC  41 82 00 28 */	beq lbl_8010BFD4
/* 8010BFB0  38 79 37 D4 */	addi r3, r25, 0x37d4
/* 8010BFB4  48 15 B1 75 */	bl atan2sX_Z__4cXyzCFv
/* 8010BFB8  7F 04 C3 78 */	mr r4, r24
/* 8010BFBC  48 16 4E 69 */	bl cLib_distanceAngleS__Fss
/* 8010BFC0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8010BFC4  40 81 00 10 */	ble lbl_8010BFD4
/* 8010BFC8  7F 23 CB 78 */	mr r3, r25
/* 8010BFCC  4B FF D7 D5 */	bl setHookshotReturnEnd__9daAlink_cFv
/* 8010BFD0  48 00 02 68 */	b lbl_8010C238
lbl_8010BFD4:
/* 8010BFD4  38 00 00 00 */	li r0, 0
/* 8010BFD8  B0 19 30 08 */	sth r0, 0x3008(r25)
/* 8010BFDC  38 79 37 D4 */	addi r3, r25, 0x37d4
/* 8010BFE0  48 23 B1 59 */	bl PSVECSquareMag
/* 8010BFE4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010BFE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010BFEC  40 81 00 58 */	ble lbl_8010C044
/* 8010BFF0  FC 00 08 34 */	frsqrte f0, f1
/* 8010BFF4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8010BFF8  FC 44 00 32 */	fmul f2, f4, f0
/* 8010BFFC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8010C000  FC 00 00 32 */	fmul f0, f0, f0
/* 8010C004  FC 01 00 32 */	fmul f0, f1, f0
/* 8010C008  FC 03 00 28 */	fsub f0, f3, f0
/* 8010C00C  FC 02 00 32 */	fmul f0, f2, f0
/* 8010C010  FC 44 00 32 */	fmul f2, f4, f0
/* 8010C014  FC 00 00 32 */	fmul f0, f0, f0
/* 8010C018  FC 01 00 32 */	fmul f0, f1, f0
/* 8010C01C  FC 03 00 28 */	fsub f0, f3, f0
/* 8010C020  FC 02 00 32 */	fmul f0, f2, f0
/* 8010C024  FC 44 00 32 */	fmul f2, f4, f0
/* 8010C028  FC 00 00 32 */	fmul f0, f0, f0
/* 8010C02C  FC 01 00 32 */	fmul f0, f1, f0
/* 8010C030  FC 03 00 28 */	fsub f0, f3, f0
/* 8010C034  FC 02 00 32 */	fmul f0, f2, f0
/* 8010C038  FF E1 00 32 */	fmul f31, f1, f0
/* 8010C03C  FF E0 F8 18 */	frsp f31, f31
/* 8010C040  48 00 00 90 */	b lbl_8010C0D0
lbl_8010C044:
/* 8010C044  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8010C048  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C04C  40 80 00 10 */	bge lbl_8010C05C
/* 8010C050  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8010C054  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8010C058  48 00 00 78 */	b lbl_8010C0D0
lbl_8010C05C:
/* 8010C05C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8010C060  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8010C064  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8010C068  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010C06C  7C 03 00 00 */	cmpw r3, r0
/* 8010C070  41 82 00 14 */	beq lbl_8010C084
/* 8010C074  40 80 00 40 */	bge lbl_8010C0B4
/* 8010C078  2C 03 00 00 */	cmpwi r3, 0
/* 8010C07C  41 82 00 20 */	beq lbl_8010C09C
/* 8010C080  48 00 00 34 */	b lbl_8010C0B4
lbl_8010C084:
/* 8010C084  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010C088  41 82 00 0C */	beq lbl_8010C094
/* 8010C08C  38 00 00 01 */	li r0, 1
/* 8010C090  48 00 00 28 */	b lbl_8010C0B8
lbl_8010C094:
/* 8010C094  38 00 00 02 */	li r0, 2
/* 8010C098  48 00 00 20 */	b lbl_8010C0B8
lbl_8010C09C:
/* 8010C09C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010C0A0  41 82 00 0C */	beq lbl_8010C0AC
/* 8010C0A4  38 00 00 05 */	li r0, 5
/* 8010C0A8  48 00 00 10 */	b lbl_8010C0B8
lbl_8010C0AC:
/* 8010C0AC  38 00 00 03 */	li r0, 3
/* 8010C0B0  48 00 00 08 */	b lbl_8010C0B8
lbl_8010C0B4:
/* 8010C0B4  38 00 00 04 */	li r0, 4
lbl_8010C0B8:
/* 8010C0B8  2C 00 00 01 */	cmpwi r0, 1
/* 8010C0BC  40 82 00 10 */	bne lbl_8010C0CC
/* 8010C0C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8010C0C4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8010C0C8  48 00 00 08 */	b lbl_8010C0D0
lbl_8010C0CC:
/* 8010C0CC  FF E0 08 90 */	fmr f31, f1
lbl_8010C0D0:
/* 8010C0D0  38 61 00 AC */	addi r3, r1, 0xac
/* 8010C0D4  38 99 37 EC */	addi r4, r25, 0x37ec
/* 8010C0D8  48 23 B2 C5 */	bl PSVECSquareDistance
/* 8010C0DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010C0E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C0E4  40 81 00 58 */	ble lbl_8010C13C
/* 8010C0E8  FC 00 08 34 */	frsqrte f0, f1
/* 8010C0EC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8010C0F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8010C0F4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8010C0F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8010C0FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8010C100  FC 03 00 28 */	fsub f0, f3, f0
/* 8010C104  FC 02 00 32 */	fmul f0, f2, f0
/* 8010C108  FC 44 00 32 */	fmul f2, f4, f0
/* 8010C10C  FC 00 00 32 */	fmul f0, f0, f0
/* 8010C110  FC 01 00 32 */	fmul f0, f1, f0
/* 8010C114  FC 03 00 28 */	fsub f0, f3, f0
/* 8010C118  FC 02 00 32 */	fmul f0, f2, f0
/* 8010C11C  FC 44 00 32 */	fmul f2, f4, f0
/* 8010C120  FC 00 00 32 */	fmul f0, f0, f0
/* 8010C124  FC 01 00 32 */	fmul f0, f1, f0
/* 8010C128  FC 03 00 28 */	fsub f0, f3, f0
/* 8010C12C  FC 02 00 32 */	fmul f0, f2, f0
/* 8010C130  FC 21 00 32 */	fmul f1, f1, f0
/* 8010C134  FC 20 08 18 */	frsp f1, f1
/* 8010C138  48 00 00 88 */	b lbl_8010C1C0
lbl_8010C13C:
/* 8010C13C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8010C140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C144  40 80 00 10 */	bge lbl_8010C154
/* 8010C148  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8010C14C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8010C150  48 00 00 70 */	b lbl_8010C1C0
lbl_8010C154:
/* 8010C154  D0 21 00 08 */	stfs f1, 8(r1)
/* 8010C158  80 81 00 08 */	lwz r4, 8(r1)
/* 8010C15C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8010C160  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010C164  7C 03 00 00 */	cmpw r3, r0
/* 8010C168  41 82 00 14 */	beq lbl_8010C17C
/* 8010C16C  40 80 00 40 */	bge lbl_8010C1AC
/* 8010C170  2C 03 00 00 */	cmpwi r3, 0
/* 8010C174  41 82 00 20 */	beq lbl_8010C194
/* 8010C178  48 00 00 34 */	b lbl_8010C1AC
lbl_8010C17C:
/* 8010C17C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010C180  41 82 00 0C */	beq lbl_8010C18C
/* 8010C184  38 00 00 01 */	li r0, 1
/* 8010C188  48 00 00 28 */	b lbl_8010C1B0
lbl_8010C18C:
/* 8010C18C  38 00 00 02 */	li r0, 2
/* 8010C190  48 00 00 20 */	b lbl_8010C1B0
lbl_8010C194:
/* 8010C194  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010C198  41 82 00 0C */	beq lbl_8010C1A4
/* 8010C19C  38 00 00 05 */	li r0, 5
/* 8010C1A0  48 00 00 10 */	b lbl_8010C1B0
lbl_8010C1A4:
/* 8010C1A4  38 00 00 03 */	li r0, 3
/* 8010C1A8  48 00 00 08 */	b lbl_8010C1B0
lbl_8010C1AC:
/* 8010C1AC  38 00 00 04 */	li r0, 4
lbl_8010C1B0:
/* 8010C1B0  2C 00 00 01 */	cmpwi r0, 1
/* 8010C1B4  40 82 00 0C */	bne lbl_8010C1C0
/* 8010C1B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8010C1BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8010C1C0:
/* 8010C1C0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha /* 0x8038E9C0@ha */
/* 8010C1C4  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l /* 0x8038E9C0@l */
/* 8010C1C8  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 8010C1CC  EF C0 08 2A */	fadds f30, f0, f1
/* 8010C1D0  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8010C1D4  41 80 00 10 */	blt lbl_8010C1E4
/* 8010C1D8  A8 19 30 0A */	lha r0, 0x300a(r25)
/* 8010C1DC  2C 00 00 00 */	cmpwi r0, 0
/* 8010C1E0  40 82 00 10 */	bne lbl_8010C1F0
lbl_8010C1E4:
/* 8010C1E4  7F 23 CB 78 */	mr r3, r25
/* 8010C1E8  4B FF D5 B9 */	bl setHookshotReturnEnd__9daAlink_cFv
/* 8010C1EC  48 00 00 4C */	b lbl_8010C238
lbl_8010C1F0:
/* 8010C1F0  38 79 37 D4 */	addi r3, r25, 0x37d4
/* 8010C1F4  7C 64 1B 78 */	mr r4, r3
/* 8010C1F8  EC 3E F8 24 */	fdivs f1, f30, f31
/* 8010C1FC  48 23 AE DD */	bl PSVECScale
/* 8010C200  7F 23 CB 78 */	mr r3, r25
/* 8010C204  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004A@ha */
/* 8010C208  38 84 00 4A */	addi r4, r4, 0x004A /* 0x0002004A@l */
/* 8010C20C  81 99 06 28 */	lwz r12, 0x628(r25)
/* 8010C210  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8010C214  7D 89 03 A6 */	mtctr r12
/* 8010C218  4E 80 04 21 */	bctrl 
/* 8010C21C  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 8010C220  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8010C224  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8010C228  40 80 00 10 */	bge lbl_8010C238
/* 8010C22C  A8 79 30 0A */	lha r3, 0x300a(r25)
/* 8010C230  38 03 FF FF */	addi r0, r3, -1
/* 8010C234  B0 19 30 0A */	sth r0, 0x300a(r25)
lbl_8010C238:
/* 8010C238  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 8010C23C  38 99 37 D4 */	addi r4, r25, 0x37d4
/* 8010C240  7C 65 1B 78 */	mr r5, r3
/* 8010C244  48 23 AE 4D */	bl PSVECAdd
/* 8010C248  7F 23 CB 78 */	mr r3, r25
/* 8010C24C  38 80 00 47 */	li r4, 0x47
/* 8010C250  4B FB 3F 15 */	bl checkSetItemTrigger__9daAlink_cFi
/* 8010C254  2C 03 00 00 */	cmpwi r3, 0
/* 8010C258  41 82 00 10 */	beq lbl_8010C268
/* 8010C25C  38 00 00 01 */	li r0, 1
/* 8010C260  B0 19 30 12 */	sth r0, 0x3012(r25)
/* 8010C264  48 00 00 28 */	b lbl_8010C28C
lbl_8010C268:
/* 8010C268  A8 19 30 12 */	lha r0, 0x3012(r25)
/* 8010C26C  2C 00 00 00 */	cmpwi r0, 0
/* 8010C270  41 82 00 1C */	beq lbl_8010C28C
/* 8010C274  7F 23 CB 78 */	mr r3, r25
/* 8010C278  4B FA 63 8D */	bl itemButton__9daAlink_cFv
/* 8010C27C  2C 03 00 00 */	cmpwi r3, 0
/* 8010C280  40 82 00 0C */	bne lbl_8010C28C
/* 8010C284  38 00 00 00 */	li r0, 0
/* 8010C288  B0 19 30 12 */	sth r0, 0x3012(r25)
lbl_8010C28C:
/* 8010C28C  A8 19 30 1A */	lha r0, 0x301a(r25)
/* 8010C290  2C 00 00 05 */	cmpwi r0, 5
/* 8010C294  41 82 04 E8 */	beq lbl_8010C77C
/* 8010C298  2C 00 00 04 */	cmpwi r0, 4
/* 8010C29C  41 82 04 E0 */	beq lbl_8010C77C
/* 8010C2A0  7F C0 07 34 */	extsh r0, r30
/* 8010C2A4  2C 00 00 F3 */	cmpwi r0, 0xf3
/* 8010C2A8  41 82 00 18 */	beq lbl_8010C2C0
/* 8010C2AC  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 8010C2B0  40 82 00 50 */	bne lbl_8010C300
/* 8010C2B4  88 1F 07 EA */	lbz r0, 0x7ea(r31)
/* 8010C2B8  28 00 00 00 */	cmplwi r0, 0
/* 8010C2BC  41 82 00 44 */	beq lbl_8010C300
lbl_8010C2C0:
/* 8010C2C0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010C2C4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8010C2C8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010C2CC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8010C2D0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8010C2D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010C2D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010C2DC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8010C2E0  38 80 00 01 */	li r4, 1
/* 8010C2E4  38 A0 00 01 */	li r5, 1
/* 8010C2E8  38 C1 00 64 */	addi r6, r1, 0x64
/* 8010C2EC  4B F6 37 39 */	bl StartShock__12dVibration_cFii4cXyz
/* 8010C2F0  7F 23 CB 78 */	mr r3, r25
/* 8010C2F4  7F E4 FB 78 */	mr r4, r31
/* 8010C2F8  4B FF 04 85 */	bl procBossBodyHangInit__9daAlink_cFP10fopAc_ac_c
/* 8010C2FC  48 00 05 0C */	b lbl_8010C808
lbl_8010C300:
/* 8010C300  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8010C304  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8010C308  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 8010C30C  3B 80 00 00 */	li r28, 0
/* 8010C310  3B 60 00 00 */	li r27, 0
/* 8010C314  3B 40 00 00 */	li r26, 0
/* 8010C318  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8010C31C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8010C320  38 63 00 96 */	addi r3, r3, 0x96
/* 8010C324  4B F9 17 3D */	bl checkStageName__9daAlink_cFPCc
/* 8010C328  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C32C  41 82 00 14 */	beq lbl_8010C340
/* 8010C330  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8010C334  2C 00 00 04 */	cmpwi r0, 4
/* 8010C338  40 82 00 08 */	bne lbl_8010C340
/* 8010C33C  3B 40 00 01 */	li r26, 1
lbl_8010C340:
/* 8010C340  57 5A 06 3E */	clrlwi r26, r26, 0x18
/* 8010C344  A8 19 30 0C */	lha r0, 0x300c(r25)
/* 8010C348  2C 00 00 04 */	cmpwi r0, 4
/* 8010C34C  40 82 00 5C */	bne lbl_8010C3A8
/* 8010C350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010C354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010C358  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 8010C35C  7F 03 C3 78 */	mr r3, r24
/* 8010C360  38 99 1E 2C */	addi r4, r25, 0x1e2c
/* 8010C364  4B F6 82 FD */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8010C368  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C36C  41 82 00 3C */	beq lbl_8010C3A8
/* 8010C370  7F 03 C3 78 */	mr r3, r24
/* 8010C374  38 99 1E 2C */	addi r4, r25, 0x1e2c
/* 8010C378  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 8010C37C  4B F6 83 C9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8010C380  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 8010C384  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8010C388  48 15 BE 75 */	bl cBgW_CheckBRoof__Ff
/* 8010C38C  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 8010C390  7F 23 CB 78 */	mr r3, r25
/* 8010C394  38 99 1E 2C */	addi r4, r25, 0x1e2c
/* 8010C398  4B FF C4 19 */	bl checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo
/* 8010C39C  2C 03 00 00 */	cmpwi r3, 0
/* 8010C3A0  40 82 00 08 */	bne lbl_8010C3A8
/* 8010C3A4  3B 80 00 00 */	li r28, 0
lbl_8010C3A8:
/* 8010C3A8  2C 1A 00 00 */	cmpwi r26, 0
/* 8010C3AC  40 82 00 88 */	bne lbl_8010C434
/* 8010C3B0  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 8010C3B4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8010C3B8  40 82 00 7C */	bne lbl_8010C434
/* 8010C3BC  2C 1B 00 00 */	cmpwi r27, 0
/* 8010C3C0  40 82 00 74 */	bne lbl_8010C434
/* 8010C3C4  7F 23 CB 78 */	mr r3, r25
/* 8010C3C8  4B FA A6 69 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 8010C3CC  2C 03 00 00 */	cmpwi r3, 0
/* 8010C3D0  41 82 00 64 */	beq lbl_8010C434
/* 8010C3D4  7F 23 CB 78 */	mr r3, r25
/* 8010C3D8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010018@ha */
/* 8010C3DC  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00010018@l */
/* 8010C3E0  81 99 06 28 */	lwz r12, 0x628(r25)
/* 8010C3E4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8010C3E8  7D 89 03 A6 */	mtctr r12
/* 8010C3EC  4E 80 04 21 */	bctrl 
/* 8010C3F0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010C3F4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8010C3F8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010C3FC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8010C400  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8010C404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010C408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010C40C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8010C410  38 80 00 01 */	li r4, 1
/* 8010C414  38 A0 00 01 */	li r5, 1
/* 8010C418  38 C1 00 58 */	addi r6, r1, 0x58
/* 8010C41C  4B F6 36 09 */	bl StartShock__12dVibration_cFii4cXyz
/* 8010C420  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8010C424  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8010C428  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 8010C42C  38 60 00 01 */	li r3, 1
/* 8010C430  48 00 03 D8 */	b lbl_8010C808
lbl_8010C434:
/* 8010C434  38 61 00 4C */	addi r3, r1, 0x4c
/* 8010C438  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 8010C43C  38 B9 37 C8 */	addi r5, r25, 0x37c8
/* 8010C440  48 15 A6 F5 */	bl __mi__4cXyzCFRC3Vec
/* 8010C444  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8010C448  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8010C44C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8010C450  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8010C454  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8010C458  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8010C45C  7F 23 CB 78 */	mr r3, r25
/* 8010C460  38 99 37 C8 */	addi r4, r25, 0x37c8
/* 8010C464  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 8010C468  4B F9 5D 31 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 8010C46C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C470  41 82 00 5C */	beq lbl_8010C4CC
/* 8010C474  C0 19 1B 78 */	lfs f0, 0x1b78(r25)
/* 8010C478  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 8010C47C  C0 19 1B 7C */	lfs f0, 0x1b7c(r25)
/* 8010C480  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 8010C484  C0 19 1B 80 */	lfs f0, 0x1b80(r25)
/* 8010C488  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
/* 8010C48C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010C490  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8010C494  38 61 00 40 */	addi r3, r1, 0x40
/* 8010C498  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8010C49C  48 15 AA AD */	bl normalizeZP__4cXyzFv
/* 8010C4A0  C0 39 04 D0 */	lfs f1, 0x4d0(r25)
/* 8010C4A4  C0 42 93 BC */	lfs f2, lit_10042(r2)
/* 8010C4A8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8010C4AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010C4B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010C4B4  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 8010C4B8  C0 39 04 D8 */	lfs f1, 0x4d8(r25)
/* 8010C4BC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8010C4C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010C4C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010C4C8  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
lbl_8010C4CC:
/* 8010C4CC  2C 1C 00 00 */	cmpwi r28, 0
/* 8010C4D0  41 82 00 98 */	beq lbl_8010C568
/* 8010C4D4  2C 1B 00 00 */	cmpwi r27, 0
/* 8010C4D8  40 82 00 90 */	bne lbl_8010C568
/* 8010C4DC  C0 39 37 F4 */	lfs f1, 0x37f4(r25)
/* 8010C4E0  C0 42 93 BC */	lfs f2, lit_10042(r2)
/* 8010C4E4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8010C4E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010C4EC  EC 81 00 2A */	fadds f4, f1, f0
/* 8010C4F0  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8010C4F4  C0 19 37 F0 */	lfs f0, 0x37f0(r25)
/* 8010C4F8  EC 61 00 2A */	fadds f3, f1, f0
/* 8010C4FC  C0 39 37 EC */	lfs f1, 0x37ec(r25)
/* 8010C500  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8010C504  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010C508  EC 01 00 2A */	fadds f0, f1, f0
/* 8010C50C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8010C510  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 8010C514  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 8010C518  38 79 1D 08 */	addi r3, r25, 0x1d08
/* 8010C51C  38 81 00 94 */	addi r4, r1, 0x94
/* 8010C520  48 15 B8 09 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8010C524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010C528  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010C52C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8010C530  38 99 1D 08 */	addi r4, r25, 0x1d08
/* 8010C534  4B F6 7F 6D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8010C538  C0 59 37 F0 */	lfs f2, 0x37f0(r25)
/* 8010C53C  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 8010C540  EC 02 00 28 */	fsubs f0, f2, f0
/* 8010C544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C548  41 81 00 0C */	bgt lbl_8010C554
/* 8010C54C  2C 1A 00 00 */	cmpwi r26, 0
/* 8010C550  41 82 00 18 */	beq lbl_8010C568
lbl_8010C554:
/* 8010C554  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8010C558  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 8010C55C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8010C560  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
/* 8010C564  3B 40 00 01 */	li r26, 1
lbl_8010C568:
/* 8010C568  7F 23 CB 78 */	mr r3, r25
/* 8010C56C  4B FA 83 65 */	bl setJumpMode__9daAlink_cFv
/* 8010C570  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 8010C574  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8010C578  41 82 00 14 */	beq lbl_8010C58C
/* 8010C57C  7F 23 CB 78 */	mr r3, r25
/* 8010C580  38 80 00 00 */	li r4, 0
/* 8010C584  4B FA DB 4D */	bl checkNextAction__9daAlink_cFi
/* 8010C588  48 00 01 8C */	b lbl_8010C714
lbl_8010C58C:
/* 8010C58C  2C 1A 00 00 */	cmpwi r26, 0
/* 8010C590  41 82 00 20 */	beq lbl_8010C5B0
/* 8010C594  7F 23 CB 78 */	mr r3, r25
/* 8010C598  38 80 00 01 */	li r4, 1
/* 8010C59C  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8010C5A0  4B FB A4 A9 */	bl procFallInit__9daAlink_cFif
/* 8010C5A4  38 00 00 70 */	li r0, 0x70
/* 8010C5A8  98 19 2F 99 */	stb r0, 0x2f99(r25)
/* 8010C5AC  48 00 01 68 */	b lbl_8010C714
lbl_8010C5B0:
/* 8010C5B0  7F C0 07 34 */	extsh r0, r30
/* 8010C5B4  2C 00 00 E4 */	cmpwi r0, 0xe4
/* 8010C5B8  41 82 00 14 */	beq lbl_8010C5CC
/* 8010C5BC  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 8010C5C0  41 82 00 0C */	beq lbl_8010C5CC
/* 8010C5C4  2C 1D 00 00 */	cmpwi r29, 0
/* 8010C5C8  41 82 00 1C */	beq lbl_8010C5E4
lbl_8010C5CC:
/* 8010C5CC  7F 23 CB 78 */	mr r3, r25
/* 8010C5D0  38 80 00 01 */	li r4, 1
/* 8010C5D4  7F E5 FB 78 */	mr r5, r31
/* 8010C5D8  A8 D9 30 12 */	lha r6, 0x3012(r25)
/* 8010C5DC  48 00 02 55 */	bl procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci
/* 8010C5E0  48 00 01 34 */	b lbl_8010C714
lbl_8010C5E4:
/* 8010C5E4  2C 1C 00 00 */	cmpwi r28, 0
/* 8010C5E8  41 82 00 A0 */	beq lbl_8010C688
/* 8010C5EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010C5F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010C5F4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8010C5F8  38 99 1E 2C */	addi r4, r25, 0x1e2c
/* 8010C5FC  4B F6 87 61 */	bl GetMonkeyBarsCode__4dBgSFRC13cBgS_PolyInfo
/* 8010C600  2C 03 00 00 */	cmpwi r3, 0
/* 8010C604  41 82 00 84 */	beq lbl_8010C688
/* 8010C608  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8010C60C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8010C610  A8 99 30 1C */	lha r4, 0x301c(r25)
/* 8010C614  A8 B9 30 1E */	lha r5, 0x301e(r25)
/* 8010C618  38 C0 00 00 */	li r6, 0
/* 8010C61C  4B EF FB ED */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 8010C620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8010C624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8010C628  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 8010C62C  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 8010C630  38 A1 00 88 */	addi r5, r1, 0x88
/* 8010C634  48 23 A7 39 */	bl PSMTXMultVec
/* 8010C638  38 61 00 34 */	addi r3, r1, 0x34
/* 8010C63C  38 81 00 88 */	addi r4, r1, 0x88
/* 8010C640  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 8010C644  48 15 A5 41 */	bl __ml__4cXyzCFf
/* 8010C648  38 61 00 28 */	addi r3, r1, 0x28
/* 8010C64C  38 99 37 EC */	addi r4, r25, 0x37ec
/* 8010C650  38 A1 00 34 */	addi r5, r1, 0x34
/* 8010C654  48 15 A4 91 */	bl __pl__4cXyzCFRC3Vec
/* 8010C658  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8010C65C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8010C660  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8010C664  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8010C668  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8010C66C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8010C670  7F 23 CB 78 */	mr r3, r25
/* 8010C674  38 99 1E 2C */	addi r4, r25, 0x1e2c
/* 8010C678  38 A1 00 88 */	addi r5, r1, 0x88
/* 8010C67C  38 C0 00 00 */	li r6, 0
/* 8010C680  4B FF 43 91 */	bl procRoofHangStartInit__9daAlink_cFRC13cBgS_PolyInfoRC4cXyzi
/* 8010C684  48 00 00 90 */	b lbl_8010C714
lbl_8010C688:
/* 8010C688  2C 1C 00 00 */	cmpwi r28, 0
/* 8010C68C  41 82 00 24 */	beq lbl_8010C6B0
/* 8010C690  2C 1B 00 00 */	cmpwi r27, 0
/* 8010C694  41 82 00 1C */	beq lbl_8010C6B0
/* 8010C698  7F 23 CB 78 */	mr r3, r25
/* 8010C69C  38 80 00 01 */	li r4, 1
/* 8010C6A0  38 A0 00 00 */	li r5, 0
/* 8010C6A4  A8 D9 30 12 */	lha r6, 0x3012(r25)
/* 8010C6A8  48 00 01 89 */	bl procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci
/* 8010C6AC  48 00 00 68 */	b lbl_8010C714
lbl_8010C6B0:
/* 8010C6B0  2C 1C 00 00 */	cmpwi r28, 0
/* 8010C6B4  41 82 00 48 */	beq lbl_8010C6FC
/* 8010C6B8  88 19 2F 91 */	lbz r0, 0x2f91(r25)
/* 8010C6BC  28 00 00 03 */	cmplwi r0, 3
/* 8010C6C0  41 82 00 3C */	beq lbl_8010C6FC
/* 8010C6C4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8010C6C8  FC 00 02 10 */	fabs f0, f0
/* 8010C6CC  FC 20 00 18 */	frsp f1, f0
/* 8010C6D0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8010C6D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C6D8  40 80 00 24 */	bge lbl_8010C6FC
/* 8010C6DC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8010C6E0  48 15 AA 49 */	bl atan2sX_Z__4cXyzCFv
/* 8010C6E4  7C 65 1B 78 */	mr r5, r3
/* 8010C6E8  7F 23 CB 78 */	mr r3, r25
/* 8010C6EC  38 80 00 01 */	li r4, 1
/* 8010C6F0  A8 D9 30 12 */	lha r6, 0x3012(r25)
/* 8010C6F4  48 00 0A 81 */	bl procHookshotWallWaitInit__9daAlink_cFisi
/* 8010C6F8  48 00 00 1C */	b lbl_8010C714
lbl_8010C6FC:
/* 8010C6FC  7F 23 CB 78 */	mr r3, r25
/* 8010C700  38 80 00 01 */	li r4, 1
/* 8010C704  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8010C708  4B FB A3 41 */	bl procFallInit__9daAlink_cFif
/* 8010C70C  38 00 00 70 */	li r0, 0x70
/* 8010C710  98 19 2F 99 */	stb r0, 0x2f99(r25)
lbl_8010C714:
/* 8010C714  7F 23 CB 78 */	mr r3, r25
/* 8010C718  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010018@ha */
/* 8010C71C  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00010018@l */
/* 8010C720  81 99 06 28 */	lwz r12, 0x628(r25)
/* 8010C724  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8010C728  7D 89 03 A6 */	mtctr r12
/* 8010C72C  4E 80 04 21 */	bctrl 
/* 8010C730  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 8010C734  28 00 00 18 */	cmplwi r0, 0x18
/* 8010C738  41 82 00 34 */	beq lbl_8010C76C
/* 8010C73C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010C740  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8010C744  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010C748  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8010C74C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8010C750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010C754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010C758  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8010C75C  38 80 00 01 */	li r4, 1
/* 8010C760  38 A0 00 01 */	li r5, 1
/* 8010C764  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8010C768  4B F6 32 BD */	bl StartShock__12dVibration_cFii4cXyz
lbl_8010C76C:
/* 8010C76C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8010C770  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8010C774  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 8010C778  48 00 00 8C */	b lbl_8010C804
lbl_8010C77C:
/* 8010C77C  38 61 00 10 */	addi r3, r1, 0x10
/* 8010C780  38 99 37 EC */	addi r4, r25, 0x37ec
/* 8010C784  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 8010C788  48 15 A3 AD */	bl __mi__4cXyzCFRC3Vec
/* 8010C78C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8010C790  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8010C794  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8010C798  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8010C79C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8010C7A0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8010C7A4  38 61 00 7C */	addi r3, r1, 0x7c
/* 8010C7A8  48 15 A9 A9 */	bl atan2sY_XZ__4cXyzCFv
/* 8010C7AC  7C 64 1B 78 */	mr r4, r3
/* 8010C7B0  38 79 04 E4 */	addi r3, r25, 0x4e4
/* 8010C7B4  38 A0 00 02 */	li r5, 2
/* 8010C7B8  38 C0 20 00 */	li r6, 0x2000
/* 8010C7BC  38 E0 08 00 */	li r7, 0x800
/* 8010C7C0  48 16 3D 81 */	bl cLib_addCalcAngleS__FPsssss
/* 8010C7C4  38 61 00 7C */	addi r3, r1, 0x7c
/* 8010C7C8  48 15 A9 61 */	bl atan2sX_Z__4cXyzCFv
/* 8010C7CC  7C 64 1B 78 */	mr r4, r3
/* 8010C7D0  38 79 04 E6 */	addi r3, r25, 0x4e6
/* 8010C7D4  38 A0 00 02 */	li r5, 2
/* 8010C7D8  38 C0 20 00 */	li r6, 0x2000
/* 8010C7DC  38 E0 08 00 */	li r7, 0x800
/* 8010C7E0  48 16 3D 61 */	bl cLib_addCalcAngleS__FPsssss
/* 8010C7E4  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 8010C7E8  B0 19 04 DE */	sth r0, 0x4de(r25)
/* 8010C7EC  C0 19 37 98 */	lfs f0, 0x3798(r25)
/* 8010C7F0  D0 19 37 C8 */	stfs f0, 0x37c8(r25)
/* 8010C7F4  C0 19 37 9C */	lfs f0, 0x379c(r25)
/* 8010C7F8  D0 19 37 CC */	stfs f0, 0x37cc(r25)
/* 8010C7FC  C0 19 37 A0 */	lfs f0, 0x37a0(r25)
/* 8010C800  D0 19 37 D0 */	stfs f0, 0x37d0(r25)
lbl_8010C804:
/* 8010C804  38 60 00 01 */	li r3, 1
lbl_8010C808:
/* 8010C808  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8010C80C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8010C810  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 8010C814  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8010C818  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8010C81C  48 25 59 F9 */	bl _restgpr_24
/* 8010C820  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8010C824  7C 08 03 A6 */	mtlr r0
/* 8010C828  38 21 01 10 */	addi r1, r1, 0x110
/* 8010C82C  4E 80 00 20 */	blr 

lbl_8013BE24:
/* 8013BE24  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8013BE28  7C 08 02 A6 */	mflr r0
/* 8013BE2C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8013BE30  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8013BE34  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8013BE38  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8013BE3C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8013BE40  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8013BE44  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8013BE48  7C 7F 1B 78 */	mr r31, r3
/* 8013BE4C  7C 9E 23 78 */	mr r30, r4
/* 8013BE50  38 80 01 25 */	li r4, 0x125
/* 8013BE54  4B F8 61 19 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013BE58  7F E3 FB 78 */	mr r3, r31
/* 8013BE5C  38 80 00 50 */	li r4, 0x50
/* 8013BE60  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlAtNjump_c0@ha /* 0x8038F578@ha */
/* 8013BE64  38 A5 F5 78 */	addi r5, r5, m__23daAlinkHIO_wlAtNjump_c0@l /* 0x8038F578@l */
/* 8013BE68  4B FE D9 E1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013BE6C  80 7F 07 C8 */	lwz r3, 0x7c8(r31)
/* 8013BE70  A8 03 00 08 */	lha r0, 8(r3)
/* 8013BE74  2C 00 01 F6 */	cmpwi r0, 0x1f6
/* 8013BE78  40 82 00 5C */	bne lbl_8013BED4
/* 8013BE7C  38 00 00 01 */	li r0, 1
/* 8013BE80  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8013BE84  2C 1E 00 00 */	cmpwi r30, 0
/* 8013BE88  40 82 00 0C */	bne lbl_8013BE94
/* 8013BE8C  38 00 00 06 */	li r0, 6
/* 8013BE90  B0 1F 30 0A */	sth r0, 0x300a(r31)
lbl_8013BE94:
/* 8013BE94  A8 7F 30 0A */	lha r3, 0x300a(r31)
/* 8013BE98  38 03 FF FF */	addi r0, r3, -1
/* 8013BE9C  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 8013BEA0  80 7F 07 C8 */	lwz r3, 0x7c8(r31)
/* 8013BEA4  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8013BEA8  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 8013BEAC  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 8013BEB0  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 8013BEB4  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 8013BEB8  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 8013BEBC  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 8013BEC0  2C 00 00 00 */	cmpwi r0, 0
/* 8013BEC4  40 82 00 38 */	bne lbl_8013BEFC
/* 8013BEC8  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8013BECC  48 02 2E 31 */	bl clearData__16daPy_actorKeep_cFv
/* 8013BED0  48 00 00 2C */	b lbl_8013BEFC
lbl_8013BED4:
/* 8013BED4  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8013BED8  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 8013BEDC  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 8013BEE0  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 8013BEE4  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 8013BEE8  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 8013BEEC  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8013BEF0  48 02 2E 0D */	bl clearData__16daPy_actorKeep_cFv
/* 8013BEF4  38 00 00 00 */	li r0, 0
/* 8013BEF8  B0 1F 30 12 */	sth r0, 0x3012(r31)
lbl_8013BEFC:
/* 8013BEFC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8013BF00  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 8013BF04  48 13 4D 01 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013BF08  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8013BF0C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013BF10  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013BF14  38 61 00 44 */	addi r3, r1, 0x44
/* 8013BF18  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 8013BF1C  38 BF 05 38 */	addi r5, r31, 0x538
/* 8013BF20  48 12 AC 15 */	bl __mi__4cXyzCFRC3Vec
/* 8013BF24  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8013BF28  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8013BF2C  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8013BF30  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8013BF34  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8013BF38  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8013BF3C  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 8013BF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013BF44  40 80 00 0C */	bge lbl_8013BF50
/* 8013BF48  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8013BF4C  48 00 00 1C */	b lbl_8013BF68
lbl_8013BF50:
/* 8013BF50  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLock_c0@ha /* 0x8038F6F4@ha */
/* 8013BF54  38 63 F6 F4 */	addi r3, r3, m__22daAlinkHIO_wlAtLock_c0@l /* 0x8038F6F4@l */
/* 8013BF58  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8013BF5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013BF60  40 81 00 08 */	ble lbl_8013BF68
/* 8013BF64  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_8013BF68:
/* 8013BF68  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8013BF6C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8013BF70  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013BF74  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8013BF78  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8013BF7C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8013BF80  38 61 00 38 */	addi r3, r1, 0x38
/* 8013BF84  48 20 B1 B5 */	bl PSVECSquareMag
/* 8013BF88  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013BF8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013BF90  40 81 00 58 */	ble lbl_8013BFE8
/* 8013BF94  FC 00 08 34 */	frsqrte f0, f1
/* 8013BF98  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013BF9C  FC 44 00 32 */	fmul f2, f4, f0
/* 8013BFA0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013BFA4  FC 00 00 32 */	fmul f0, f0, f0
/* 8013BFA8  FC 01 00 32 */	fmul f0, f1, f0
/* 8013BFAC  FC 03 00 28 */	fsub f0, f3, f0
/* 8013BFB0  FC 02 00 32 */	fmul f0, f2, f0
/* 8013BFB4  FC 44 00 32 */	fmul f2, f4, f0
/* 8013BFB8  FC 00 00 32 */	fmul f0, f0, f0
/* 8013BFBC  FC 01 00 32 */	fmul f0, f1, f0
/* 8013BFC0  FC 03 00 28 */	fsub f0, f3, f0
/* 8013BFC4  FC 02 00 32 */	fmul f0, f2, f0
/* 8013BFC8  FC 44 00 32 */	fmul f2, f4, f0
/* 8013BFCC  FC 00 00 32 */	fmul f0, f0, f0
/* 8013BFD0  FC 01 00 32 */	fmul f0, f1, f0
/* 8013BFD4  FC 03 00 28 */	fsub f0, f3, f0
/* 8013BFD8  FC 02 00 32 */	fmul f0, f2, f0
/* 8013BFDC  FC 21 00 32 */	fmul f1, f1, f0
/* 8013BFE0  FC 20 08 18 */	frsp f1, f1
/* 8013BFE4  48 00 00 88 */	b lbl_8013C06C
lbl_8013BFE8:
/* 8013BFE8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013BFEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013BFF0  40 80 00 10 */	bge lbl_8013C000
/* 8013BFF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013BFF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013BFFC  48 00 00 70 */	b lbl_8013C06C
lbl_8013C000:
/* 8013C000  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8013C004  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8013C008  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013C00C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013C010  7C 03 00 00 */	cmpw r3, r0
/* 8013C014  41 82 00 14 */	beq lbl_8013C028
/* 8013C018  40 80 00 40 */	bge lbl_8013C058
/* 8013C01C  2C 03 00 00 */	cmpwi r3, 0
/* 8013C020  41 82 00 20 */	beq lbl_8013C040
/* 8013C024  48 00 00 34 */	b lbl_8013C058
lbl_8013C028:
/* 8013C028  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013C02C  41 82 00 0C */	beq lbl_8013C038
/* 8013C030  38 00 00 01 */	li r0, 1
/* 8013C034  48 00 00 28 */	b lbl_8013C05C
lbl_8013C038:
/* 8013C038  38 00 00 02 */	li r0, 2
/* 8013C03C  48 00 00 20 */	b lbl_8013C05C
lbl_8013C040:
/* 8013C040  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013C044  41 82 00 0C */	beq lbl_8013C050
/* 8013C048  38 00 00 05 */	li r0, 5
/* 8013C04C  48 00 00 10 */	b lbl_8013C05C
lbl_8013C050:
/* 8013C050  38 00 00 03 */	li r0, 3
/* 8013C054  48 00 00 08 */	b lbl_8013C05C
lbl_8013C058:
/* 8013C058  38 00 00 04 */	li r0, 4
lbl_8013C05C:
/* 8013C05C  2C 00 00 01 */	cmpwi r0, 1
/* 8013C060  40 82 00 0C */	bne lbl_8013C06C
/* 8013C064  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013C068  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8013C06C:
/* 8013C06C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLock_c0@ha /* 0x8038F6F4@ha */
/* 8013C070  38 63 F6 F4 */	addi r3, r3, m__22daAlinkHIO_wlAtLock_c0@l /* 0x8038F6F4@l */
/* 8013C074  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8013C078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013C07C  40 81 00 20 */	ble lbl_8013C09C
/* 8013C080  EC 20 08 24 */	fdivs f1, f0, f1
/* 8013C084  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8013C088  EC 00 00 72 */	fmuls f0, f0, f1
/* 8013C08C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8013C090  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8013C094  EC 00 00 72 */	fmuls f0, f0, f1
/* 8013C098  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_8013C09C:
/* 8013C09C  38 61 00 50 */	addi r3, r1, 0x50
/* 8013C0A0  48 20 B0 99 */	bl PSVECSquareMag
/* 8013C0A4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013C0A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013C0AC  40 81 00 58 */	ble lbl_8013C104
/* 8013C0B0  FC 00 08 34 */	frsqrte f0, f1
/* 8013C0B4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013C0B8  FC 44 00 32 */	fmul f2, f4, f0
/* 8013C0BC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013C0C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8013C0C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8013C0C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8013C0CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8013C0D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8013C0D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8013C0D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8013C0DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8013C0E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8013C0E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8013C0E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8013C0EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8013C0F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8013C0F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8013C0F8  FC 21 00 32 */	fmul f1, f1, f0
/* 8013C0FC  FC 20 08 18 */	frsp f1, f1
/* 8013C100  48 00 00 88 */	b lbl_8013C188
lbl_8013C104:
/* 8013C104  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013C108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013C10C  40 80 00 10 */	bge lbl_8013C11C
/* 8013C110  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013C114  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013C118  48 00 00 70 */	b lbl_8013C188
lbl_8013C11C:
/* 8013C11C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8013C120  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8013C124  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013C128  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013C12C  7C 03 00 00 */	cmpw r3, r0
/* 8013C130  41 82 00 14 */	beq lbl_8013C144
/* 8013C134  40 80 00 40 */	bge lbl_8013C174
/* 8013C138  2C 03 00 00 */	cmpwi r3, 0
/* 8013C13C  41 82 00 20 */	beq lbl_8013C15C
/* 8013C140  48 00 00 34 */	b lbl_8013C174
lbl_8013C144:
/* 8013C144  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013C148  41 82 00 0C */	beq lbl_8013C154
/* 8013C14C  38 00 00 01 */	li r0, 1
/* 8013C150  48 00 00 28 */	b lbl_8013C178
lbl_8013C154:
/* 8013C154  38 00 00 02 */	li r0, 2
/* 8013C158  48 00 00 20 */	b lbl_8013C178
lbl_8013C15C:
/* 8013C15C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013C160  41 82 00 0C */	beq lbl_8013C16C
/* 8013C164  38 00 00 05 */	li r0, 5
/* 8013C168  48 00 00 10 */	b lbl_8013C178
lbl_8013C16C:
/* 8013C16C  38 00 00 03 */	li r0, 3
/* 8013C170  48 00 00 08 */	b lbl_8013C178
lbl_8013C174:
/* 8013C174  38 00 00 04 */	li r0, 4
lbl_8013C178:
/* 8013C178  2C 00 00 01 */	cmpwi r0, 1
/* 8013C17C  40 82 00 0C */	bne lbl_8013C188
/* 8013C180  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013C184  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8013C188:
/* 8013C188  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLock_c0@ha /* 0x8038F6F4@ha */
/* 8013C18C  38 63 F6 F4 */	addi r3, r3, m__22daAlinkHIO_wlAtLock_c0@l /* 0x8038F6F4@l */
/* 8013C190  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8013C194  EF E1 10 24 */	fdivs f31, f1, f2
/* 8013C198  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013C19C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8013C1A0  40 80 00 08 */	bge lbl_8013C1A8
/* 8013C1A4  FF E0 00 90 */	fmr f31, f0
lbl_8013C1A8:
/* 8013C1A8  EF C2 08 24 */	fdivs f30, f2, f1
/* 8013C1AC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8013C1B0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8013C1B4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013C1B8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8013C1BC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8013C1C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8013C1C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8013C1C8  48 20 AF 71 */	bl PSVECSquareMag
/* 8013C1CC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013C1D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013C1D4  40 81 00 58 */	ble lbl_8013C22C
/* 8013C1D8  FC 00 08 34 */	frsqrte f0, f1
/* 8013C1DC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013C1E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8013C1E4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013C1E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8013C1EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8013C1F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8013C1F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8013C1F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8013C1FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8013C200  FC 01 00 32 */	fmul f0, f1, f0
/* 8013C204  FC 03 00 28 */	fsub f0, f3, f0
/* 8013C208  FC 02 00 32 */	fmul f0, f2, f0
/* 8013C20C  FC 44 00 32 */	fmul f2, f4, f0
/* 8013C210  FC 00 00 32 */	fmul f0, f0, f0
/* 8013C214  FC 01 00 32 */	fmul f0, f1, f0
/* 8013C218  FC 03 00 28 */	fsub f0, f3, f0
/* 8013C21C  FC 02 00 32 */	fmul f0, f2, f0
/* 8013C220  FC 21 00 32 */	fmul f1, f1, f0
/* 8013C224  FC 20 08 18 */	frsp f1, f1
/* 8013C228  48 00 00 88 */	b lbl_8013C2B0
lbl_8013C22C:
/* 8013C22C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013C230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013C234  40 80 00 10 */	bge lbl_8013C244
/* 8013C238  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013C23C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013C240  48 00 00 70 */	b lbl_8013C2B0
lbl_8013C244:
/* 8013C244  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8013C248  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8013C24C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013C250  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013C254  7C 03 00 00 */	cmpw r3, r0
/* 8013C258  41 82 00 14 */	beq lbl_8013C26C
/* 8013C25C  40 80 00 40 */	bge lbl_8013C29C
/* 8013C260  2C 03 00 00 */	cmpwi r3, 0
/* 8013C264  41 82 00 20 */	beq lbl_8013C284
/* 8013C268  48 00 00 34 */	b lbl_8013C29C
lbl_8013C26C:
/* 8013C26C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013C270  41 82 00 0C */	beq lbl_8013C27C
/* 8013C274  38 00 00 01 */	li r0, 1
/* 8013C278  48 00 00 28 */	b lbl_8013C2A0
lbl_8013C27C:
/* 8013C27C  38 00 00 02 */	li r0, 2
/* 8013C280  48 00 00 20 */	b lbl_8013C2A0
lbl_8013C284:
/* 8013C284  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013C288  41 82 00 0C */	beq lbl_8013C294
/* 8013C28C  38 00 00 05 */	li r0, 5
/* 8013C290  48 00 00 10 */	b lbl_8013C2A0
lbl_8013C294:
/* 8013C294  38 00 00 03 */	li r0, 3
/* 8013C298  48 00 00 08 */	b lbl_8013C2A0
lbl_8013C29C:
/* 8013C29C  38 00 00 04 */	li r0, 4
lbl_8013C2A0:
/* 8013C2A0  2C 00 00 01 */	cmpwi r0, 1
/* 8013C2A4  40 82 00 0C */	bne lbl_8013C2B0
/* 8013C2A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013C2AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8013C2B0:
/* 8013C2B0  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8013C2B4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013C2B8  7F E3 FB 78 */	mr r3, r31
/* 8013C2BC  C0 22 93 6C */	lfs f1, lit_8473(r2)
/* 8013C2C0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8013C2C4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8013C2C8  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 8013C2CC  EC 21 00 24 */	fdivs f1, f1, f0
/* 8013C2D0  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8013C2D4  38 80 00 00 */	li r4, 0
/* 8013C2D8  4B F7 F4 99 */	bl setSpecialGravity__9daAlink_cFffi
/* 8013C2DC  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 8013C2E0  FC 00 00 50 */	fneg f0, f0
/* 8013C2E4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8013C2E8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8013C2EC  FC 00 F8 1E */	fctiwz f0, f31
/* 8013C2F0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8013C2F4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8013C2F8  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8013C2FC  7F E3 FB 78 */	mr r3, r31
/* 8013C300  3C 80 08 00 */	lis r4, 0x800
/* 8013C304  38 A0 00 00 */	li r5, 0
/* 8013C308  38 C0 00 01 */	li r6, 1
/* 8013C30C  38 E0 00 04 */	li r7, 4
/* 8013C310  39 00 00 06 */	li r8, 6
/* 8013C314  3D 20 80 39 */	lis r9, m__22daAlinkHIO_wlAtLock_c0@ha /* 0x8038F6F4@ha */
/* 8013C318  39 29 F6 F4 */	addi r9, r9, m__22daAlinkHIO_wlAtLock_c0@l /* 0x8038F6F4@l */
/* 8013C31C  C0 29 00 40 */	lfs f1, 0x40(r9)
/* 8013C320  C0 49 00 44 */	lfs f2, 0x44(r9)
/* 8013C324  4B F9 52 1D */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 8013C328  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLock_c0@ha /* 0x8038F6F4@ha */
/* 8013C32C  38 63 F6 F4 */	addi r3, r3, m__22daAlinkHIO_wlAtLock_c0@l /* 0x8038F6F4@l */
/* 8013C330  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8013C334  D0 1F 34 38 */	stfs f0, 0x3438(r31)
/* 8013C338  7F E3 FB 78 */	mr r3, r31
/* 8013C33C  38 80 00 36 */	li r4, 0x36
/* 8013C340  4B F9 51 ED */	bl setCutType__9daAlink_cFUc
/* 8013C344  7F E3 FB 78 */	mr r3, r31
/* 8013C348  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001003B@ha */
/* 8013C34C  38 84 00 3B */	addi r4, r4, 0x003B /* 0x0001003B@l */
/* 8013C350  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013C354  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013C358  7D 89 03 A6 */	mtctr r12
/* 8013C35C  4E 80 04 21 */	bctrl 
/* 8013C360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013C364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013C368  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013C36C  64 00 01 00 */	oris r0, r0, 0x100
/* 8013C370  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8013C374  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8013C378  38 80 00 00 */	li r4, 0
/* 8013C37C  90 81 00 08 */	stw r4, 8(r1)
/* 8013C380  38 00 FF FF */	li r0, -1
/* 8013C384  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013C388  90 81 00 10 */	stw r4, 0x10(r1)
/* 8013C38C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8013C390  90 81 00 18 */	stw r4, 0x18(r1)
/* 8013C394  38 80 00 00 */	li r4, 0
/* 8013C398  38 A0 02 47 */	li r5, 0x247
/* 8013C39C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8013C3A0  38 E0 00 00 */	li r7, 0
/* 8013C3A4  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 8013C3A8  39 20 00 00 */	li r9, 0
/* 8013C3AC  39 40 00 FF */	li r10, 0xff
/* 8013C3B0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8013C3B4  4B F1 06 DD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8013C3B8  38 60 00 01 */	li r3, 1
/* 8013C3BC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8013C3C0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8013C3C4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8013C3C8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8013C3CC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8013C3D0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8013C3D4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8013C3D8  7C 08 03 A6 */	mtlr r0
/* 8013C3DC  38 21 00 90 */	addi r1, r1, 0x90
/* 8013C3E0  4E 80 00 20 */	blr 

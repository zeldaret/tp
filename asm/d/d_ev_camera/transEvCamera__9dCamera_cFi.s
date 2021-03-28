lbl_8008BE98:
/* 8008BE98  94 21 F6 A0 */	stwu r1, -0x960(r1)
/* 8008BE9C  7C 08 02 A6 */	mflr r0
/* 8008BEA0  90 01 09 64 */	stw r0, 0x964(r1)
/* 8008BEA4  DB E1 09 50 */	stfd f31, 0x950(r1)
/* 8008BEA8  F3 E1 09 58 */	psq_st f31, -1704(r1), 0, 0 /* qr0 */
/* 8008BEAC  DB C1 09 40 */	stfd f30, 0x940(r1)
/* 8008BEB0  F3 C1 09 48 */	psq_st f30, -1720(r1), 0, 0 /* qr0 */
/* 8008BEB4  39 61 09 40 */	addi r11, r1, 0x940
/* 8008BEB8  48 2D 63 1D */	bl _savegpr_27
/* 8008BEBC  7C 7E 1B 78 */	mr r30, r3
/* 8008BEC0  7C 9B 23 78 */	mr r27, r4
/* 8008BEC4  3C 60 80 38 */	lis r3, lit_3871@ha
/* 8008BEC8  3B 83 A7 F0 */	addi r28, r3, lit_3871@l
/* 8008BECC  3B FE 03 E8 */	addi r31, r30, 0x3e8
/* 8008BED0  38 61 09 00 */	addi r3, r1, 0x900
/* 8008BED4  48 00 B9 79 */	bl func_8009784C
/* 8008BED8  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008BEDC  48 00 B9 71 */	bl func_8009784C
/* 8008BEE0  3B A0 00 00 */	li r29, 0
/* 8008BEE4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8008BEE8  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8008BEEC  90 61 08 78 */	stw r3, 0x878(r1)
/* 8008BEF0  90 01 08 7C */	stw r0, 0x87c(r1)
/* 8008BEF4  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8008BEF8  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8008BEFC  90 61 08 80 */	stw r3, 0x880(r1)
/* 8008BF00  90 01 08 84 */	stw r0, 0x884(r1)
/* 8008BF04  38 A1 08 C8 */	addi r5, r1, 0x8c8
/* 8008BF08  38 9C 00 18 */	addi r4, r28, 0x18
/* 8008BF0C  38 00 00 03 */	li r0, 3
/* 8008BF10  7C 09 03 A6 */	mtctr r0
lbl_8008BF14:
/* 8008BF14  80 64 00 04 */	lwz r3, 4(r4)
/* 8008BF18  84 04 00 08 */	lwzu r0, 8(r4)
/* 8008BF1C  90 65 00 04 */	stw r3, 4(r5)
/* 8008BF20  94 05 00 08 */	stwu r0, 8(r5)
/* 8008BF24  42 00 FF F0 */	bdnz lbl_8008BF14
/* 8008BF28  80 04 00 04 */	lwz r0, 4(r4)
/* 8008BF2C  90 05 00 04 */	stw r0, 4(r5)
/* 8008BF30  38 A1 08 AC */	addi r5, r1, 0x8ac
/* 8008BF34  38 9C 00 34 */	addi r4, r28, 0x34
/* 8008BF38  38 00 00 03 */	li r0, 3
/* 8008BF3C  7C 09 03 A6 */	mtctr r0
lbl_8008BF40:
/* 8008BF40  80 64 00 04 */	lwz r3, 4(r4)
/* 8008BF44  84 04 00 08 */	lwzu r0, 8(r4)
/* 8008BF48  90 65 00 04 */	stw r3, 4(r5)
/* 8008BF4C  94 05 00 08 */	stwu r0, 8(r5)
/* 8008BF50  42 00 FF F0 */	bdnz lbl_8008BF40
/* 8008BF54  80 04 00 04 */	lwz r0, 4(r4)
/* 8008BF58  90 05 00 04 */	stw r0, 4(r5)
/* 8008BF5C  38 A1 08 98 */	addi r5, r1, 0x898
/* 8008BF60  38 9C 00 50 */	addi r4, r28, 0x50
/* 8008BF64  38 00 00 02 */	li r0, 2
/* 8008BF68  7C 09 03 A6 */	mtctr r0
lbl_8008BF6C:
/* 8008BF6C  80 64 00 04 */	lwz r3, 4(r4)
/* 8008BF70  84 04 00 08 */	lwzu r0, 8(r4)
/* 8008BF74  90 65 00 04 */	stw r3, 4(r5)
/* 8008BF78  94 05 00 08 */	stwu r0, 8(r5)
/* 8008BF7C  42 00 FF F0 */	bdnz lbl_8008BF6C
/* 8008BF80  80 04 00 04 */	lwz r0, 4(r4)
/* 8008BF84  90 05 00 04 */	stw r0, 4(r5)
/* 8008BF88  38 01 08 78 */	addi r0, r1, 0x878
/* 8008BF8C  90 01 08 A0 */	stw r0, 0x8a0(r1)
/* 8008BF90  38 01 08 CC */	addi r0, r1, 0x8cc
/* 8008BF94  90 01 08 A4 */	stw r0, 0x8a4(r1)
/* 8008BF98  38 01 08 B0 */	addi r0, r1, 0x8b0
/* 8008BF9C  90 01 08 A8 */	stw r0, 0x8a8(r1)
/* 8008BFA0  38 A1 08 84 */	addi r5, r1, 0x884
/* 8008BFA4  38 9C 00 64 */	addi r4, r28, 0x64
/* 8008BFA8  38 00 00 02 */	li r0, 2
/* 8008BFAC  7C 09 03 A6 */	mtctr r0
lbl_8008BFB0:
/* 8008BFB0  80 64 00 04 */	lwz r3, 4(r4)
/* 8008BFB4  84 04 00 08 */	lwzu r0, 8(r4)
/* 8008BFB8  90 65 00 04 */	stw r3, 4(r5)
/* 8008BFBC  94 05 00 08 */	stwu r0, 8(r5)
/* 8008BFC0  42 00 FF F0 */	bdnz lbl_8008BFB0
/* 8008BFC4  80 04 00 04 */	lwz r0, 4(r4)
/* 8008BFC8  90 05 00 04 */	stw r0, 4(r5)
/* 8008BFCC  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8008BFD0  28 00 00 00 */	cmplwi r0, 0
/* 8008BFD4  40 82 13 88 */	bne lbl_8008D35C
/* 8008BFD8  7F C3 F3 78 */	mr r3, r30
/* 8008BFDC  38 9F 00 50 */	addi r4, r31, 0x50
/* 8008BFE0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008BFE4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008BFE8  4B FF CC C9 */	bl getEvIntData__9dCamera_cFPiPc
/* 8008BFEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008BFF0  40 82 00 3C */	bne lbl_8008C02C
/* 8008BFF4  38 61 08 60 */	addi r3, r1, 0x860
/* 8008BFF8  38 80 FF FF */	li r4, -1
/* 8008BFFC  4B F7 D1 89 */	bl __dt__4cXyzFv
/* 8008C000  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008C004  38 80 FF FF */	li r4, -1
/* 8008C008  4B F7 D1 7D */	bl __dt__4cXyzFv
/* 8008C00C  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008C010  38 80 FF FF */	li r4, -1
/* 8008C014  48 00 B7 FD */	bl func_80097810
/* 8008C018  38 61 09 00 */	addi r3, r1, 0x900
/* 8008C01C  38 80 FF FF */	li r4, -1
/* 8008C020  48 00 B7 F1 */	bl func_80097810
/* 8008C024  38 60 00 01 */	li r3, 1
/* 8008C028  48 00 27 00 */	b lbl_8008E728
lbl_8008C02C:
/* 8008C02C  7F C3 F3 78 */	mr r3, r30
/* 8008C030  38 9F 00 6C */	addi r4, r31, 0x6c
/* 8008C034  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C038  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C03C  38 A5 00 B1 */	addi r5, r5, 0xb1
/* 8008C040  7F 66 DB 78 */	mr r6, r27
/* 8008C044  4B FF D0 49 */	bl getEvIntData__9dCamera_cFPiPci
/* 8008C048  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8008C04C  2C 00 00 00 */	cmpwi r0, 0
/* 8008C050  41 82 00 2C */	beq lbl_8008C07C
/* 8008C054  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8008C058  54 00 10 3A */	slwi r0, r0, 2
/* 8008C05C  38 81 08 88 */	addi r4, r1, 0x888
/* 8008C060  7C 84 00 2E */	lwzx r4, r4, r0
/* 8008C064  80 BF 00 50 */	lwz r5, 0x50(r31)
/* 8008C068  38 A5 00 01 */	addi r5, r5, 1
/* 8008C06C  48 00 B8 0D */	bl Init__14d2DBSplinePathFll
/* 8008C070  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8008C074  48 00 B8 91 */	bl Step__14d2DBSplinePathFv
/* 8008C078  48 00 00 44 */	b lbl_8008C0BC
lbl_8008C07C:
/* 8008C07C  7F C3 F3 78 */	mr r3, r30
/* 8008C080  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8008C084  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C088  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C08C  38 A5 00 BA */	addi r5, r5, 0xba
/* 8008C090  4B FF CD C9 */	bl getEvFloatListData__9dCamera_cFPPfPc
/* 8008C094  7C 64 1B 79 */	or. r4, r3, r3
/* 8008C098  41 82 00 24 */	beq lbl_8008C0BC
/* 8008C09C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8008C0A0  80 BF 00 50 */	lwz r5, 0x50(r31)
/* 8008C0A4  38 A5 00 01 */	addi r5, r5, 1
/* 8008C0A8  48 00 B7 D1 */	bl Init__14d2DBSplinePathFll
/* 8008C0AC  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8008C0B0  48 00 B8 55 */	bl Step__14d2DBSplinePathFv
/* 8008C0B4  38 00 FF FF */	li r0, -1
/* 8008C0B8  90 1F 00 6C */	stw r0, 0x6c(r31)
lbl_8008C0BC:
/* 8008C0BC  7F C3 F3 78 */	mr r3, r30
/* 8008C0C0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8008C0C4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C0C8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C0CC  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 8008C0D0  4B FF CB E1 */	bl getEvIntData__9dCamera_cFPiPc
/* 8008C0D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008C0D8  40 82 00 B0 */	bne lbl_8008C188
/* 8008C0DC  38 61 07 E8 */	addi r3, r1, 0x7e8
/* 8008C0E0  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8008C0E4  48 00 B7 11 */	bl __ct__4cXyzFRC4cXyz
/* 8008C0E8  7F C3 F3 78 */	mr r3, r30
/* 8008C0EC  38 9F 00 20 */	addi r4, r31, 0x20
/* 8008C0F0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C0F4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C0F8  38 A5 00 0B */	addi r5, r5, 0xb
/* 8008C0FC  38 C1 07 E8 */	addi r6, r1, 0x7e8
/* 8008C100  4B FF D1 2D */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008C104  38 61 07 E8 */	addi r3, r1, 0x7e8
/* 8008C108  38 80 FF FF */	li r4, -1
/* 8008C10C  4B F7 D0 79 */	bl __dt__4cXyzFv
/* 8008C110  38 61 07 DC */	addi r3, r1, 0x7dc
/* 8008C114  38 9E 00 30 */	addi r4, r30, 0x30
/* 8008C118  48 00 B6 DD */	bl __ct__4cXyzFRC4cXyz
/* 8008C11C  7F C3 F3 78 */	mr r3, r30
/* 8008C120  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8008C124  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C128  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C12C  38 A5 00 0F */	addi r5, r5, 0xf
/* 8008C130  38 C1 07 DC */	addi r6, r1, 0x7dc
/* 8008C134  4B FF D0 F9 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008C138  38 61 07 DC */	addi r3, r1, 0x7dc
/* 8008C13C  38 80 FF FF */	li r4, -1
/* 8008C140  4B F7 D0 45 */	bl __dt__4cXyzFv
/* 8008C144  7F C3 F3 78 */	mr r3, r30
/* 8008C148  38 9F 00 38 */	addi r4, r31, 0x38
/* 8008C14C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C150  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C154  38 A5 00 1E */	addi r5, r5, 0x1e
/* 8008C158  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8008C15C  4B FF CF F9 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008C160  38 7E 00 54 */	addi r3, r30, 0x54
/* 8008C164  48 1E 4E CD */	bl Degree__7cSAngleCFv
/* 8008C168  7F C3 F3 78 */	mr r3, r30
/* 8008C16C  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8008C170  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C174  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C178  38 A5 00 23 */	addi r5, r5, 0x23
/* 8008C17C  4B FF CF D9 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008C180  98 7F 00 68 */	stb r3, 0x68(r31)
/* 8008C184  48 00 00 84 */	b lbl_8008C208
lbl_8008C188:
/* 8008C188  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 8008C18C  54 03 28 34 */	slwi r3, r0, 5
/* 8008C190  3B 63 00 D0 */	addi r27, r3, 0xd0
/* 8008C194  7F 7E DA 14 */	add r27, r30, r27
/* 8008C198  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8008C19C  7F 64 DB 78 */	mr r4, r27
/* 8008C1A0  48 00 B6 39 */	bl __as__4cXyzFRC4cXyz
/* 8008C1A4  38 7F 00 20 */	addi r3, r31, 0x20
/* 8008C1A8  38 9B 00 0C */	addi r4, r27, 0xc
/* 8008C1AC  48 00 B6 2D */	bl __as__4cXyzFRC4cXyz
/* 8008C1B0  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 8008C1B4  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8008C1B8  A8 1B 00 1C */	lha r0, 0x1c(r27)
/* 8008C1BC  C8 42 8E F8 */	lfd f2, lit_5962(r2)
/* 8008C1C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8008C1C4  90 01 09 1C */	stw r0, 0x91c(r1)
/* 8008C1C8  3C 60 43 30 */	lis r3, 0x4330
/* 8008C1CC  90 61 09 18 */	stw r3, 0x918(r1)
/* 8008C1D0  C8 01 09 18 */	lfd f0, 0x918(r1)
/* 8008C1D4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8008C1D8  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8008C1DC  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 8008C1E0  A8 1B 00 1C */	lha r0, 0x1c(r27)
/* 8008C1E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8008C1E8  90 01 09 24 */	stw r0, 0x924(r1)
/* 8008C1EC  90 61 09 20 */	stw r3, 0x920(r1)
/* 8008C1F0  C8 01 09 20 */	lfd f0, 0x920(r1)
/* 8008C1F4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8008C1F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8008C1FC  41 82 00 0C */	beq lbl_8008C208
/* 8008C200  38 00 00 01 */	li r0, 1
/* 8008C204  98 1F 00 68 */	stb r0, 0x68(r31)
lbl_8008C208:
/* 8008C208  7F C3 F3 78 */	mr r3, r30
/* 8008C20C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8008C210  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C214  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C218  38 A5 00 CC */	addi r5, r5, 0xcc
/* 8008C21C  4B FF CA 95 */	bl getEvIntData__9dCamera_cFPiPc
/* 8008C220  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008C224  40 82 00 B8 */	bne lbl_8008C2DC
/* 8008C228  38 61 07 D0 */	addi r3, r1, 0x7d0
/* 8008C22C  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8008C230  48 00 B5 C5 */	bl __ct__4cXyzFRC4cXyz
/* 8008C234  7F C3 F3 78 */	mr r3, r30
/* 8008C238  7F E4 FB 78 */	mr r4, r31
/* 8008C23C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C240  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C244  38 A5 00 D6 */	addi r5, r5, 0xd6
/* 8008C248  38 C1 07 D0 */	addi r6, r1, 0x7d0
/* 8008C24C  4B FF CF E1 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008C250  38 61 07 D0 */	addi r3, r1, 0x7d0
/* 8008C254  38 80 FF FF */	li r4, -1
/* 8008C258  4B F7 CF 2D */	bl __dt__4cXyzFv
/* 8008C25C  38 61 07 C4 */	addi r3, r1, 0x7c4
/* 8008C260  38 9E 00 30 */	addi r4, r30, 0x30
/* 8008C264  48 00 B5 91 */	bl __ct__4cXyzFRC4cXyz
/* 8008C268  7F C3 F3 78 */	mr r3, r30
/* 8008C26C  38 9F 00 0C */	addi r4, r31, 0xc
/* 8008C270  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C274  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C278  38 A5 00 DF */	addi r5, r5, 0xdf
/* 8008C27C  38 C1 07 C4 */	addi r6, r1, 0x7c4
/* 8008C280  4B FF CF AD */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008C284  38 61 07 C4 */	addi r3, r1, 0x7c4
/* 8008C288  38 80 FF FF */	li r4, -1
/* 8008C28C  4B F7 CE F9 */	bl __dt__4cXyzFv
/* 8008C290  7F C3 F3 78 */	mr r3, r30
/* 8008C294  38 9F 00 18 */	addi r4, r31, 0x18
/* 8008C298  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C29C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C2A0  38 A5 00 EB */	addi r5, r5, 0xeb
/* 8008C2A4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8008C2A8  4B FF CE AD */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008C2AC  38 7E 00 54 */	addi r3, r30, 0x54
/* 8008C2B0  48 1E 4D 81 */	bl Degree__7cSAngleCFv
/* 8008C2B4  7F C3 F3 78 */	mr r3, r30
/* 8008C2B8  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8008C2BC  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C2C0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C2C4  38 A5 00 F5 */	addi r5, r5, 0xf5
/* 8008C2C8  4B FF CE 8D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008C2CC  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 8008C2D0  7C 00 1B 78 */	or r0, r0, r3
/* 8008C2D4  98 1F 00 68 */	stb r0, 0x68(r31)
/* 8008C2D8  48 00 00 84 */	b lbl_8008C35C
lbl_8008C2DC:
/* 8008C2DC  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 8008C2E0  54 03 28 34 */	slwi r3, r0, 5
/* 8008C2E4  3B 63 00 D0 */	addi r27, r3, 0xd0
/* 8008C2E8  7F 7E DA 14 */	add r27, r30, r27
/* 8008C2EC  38 7F 00 0C */	addi r3, r31, 0xc
/* 8008C2F0  7F 64 DB 78 */	mr r4, r27
/* 8008C2F4  48 00 B4 E5 */	bl __as__4cXyzFRC4cXyz
/* 8008C2F8  7F E3 FB 78 */	mr r3, r31
/* 8008C2FC  38 9B 00 0C */	addi r4, r27, 0xc
/* 8008C300  48 00 B4 D9 */	bl __as__4cXyzFRC4cXyz
/* 8008C304  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 8008C308  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8008C30C  A8 1B 00 1C */	lha r0, 0x1c(r27)
/* 8008C310  C8 42 8E F8 */	lfd f2, lit_5962(r2)
/* 8008C314  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8008C318  90 01 09 24 */	stw r0, 0x924(r1)
/* 8008C31C  3C 60 43 30 */	lis r3, 0x4330
/* 8008C320  90 61 09 20 */	stw r3, 0x920(r1)
/* 8008C324  C8 01 09 20 */	lfd f0, 0x920(r1)
/* 8008C328  EC 00 10 28 */	fsubs f0, f0, f2
/* 8008C32C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8008C330  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 8008C334  A8 1B 00 1C */	lha r0, 0x1c(r27)
/* 8008C338  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8008C33C  90 01 09 1C */	stw r0, 0x91c(r1)
/* 8008C340  90 61 09 18 */	stw r3, 0x918(r1)
/* 8008C344  C8 01 09 18 */	lfd f0, 0x918(r1)
/* 8008C348  EC 00 10 28 */	fsubs f0, f0, f2
/* 8008C34C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8008C350  41 82 00 0C */	beq lbl_8008C35C
/* 8008C354  38 00 00 01 */	li r0, 1
/* 8008C358  98 1F 00 68 */	stb r0, 0x68(r31)
lbl_8008C35C:
/* 8008C35C  7F C3 F3 78 */	mr r3, r30
/* 8008C360  38 9F 00 54 */	addi r4, r31, 0x54
/* 8008C364  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C368  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C36C  38 A5 00 7A */	addi r5, r5, 0x7a
/* 8008C370  38 C0 00 00 */	li r6, 0
/* 8008C374  4B FF CD 19 */	bl getEvIntData__9dCamera_cFPiPci
/* 8008C378  7F C3 F3 78 */	mr r3, r30
/* 8008C37C  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 8008C380  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l
/* 8008C384  38 84 00 36 */	addi r4, r4, 0x36
/* 8008C388  4B FF D1 3D */	bl getEvActor__9dCamera_cFPc
/* 8008C38C  90 7F 00 40 */	stw r3, 0x40(r31)
/* 8008C390  7F C3 F3 78 */	mr r3, r30
/* 8008C394  38 9F 00 48 */	addi r4, r31, 0x48
/* 8008C398  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C39C  38 C5 AA F4 */	addi r6, r5, d_d_ev_camera__stringBase0@l
/* 8008C3A0  38 A6 00 28 */	addi r5, r6, 0x28
/* 8008C3A4  38 C6 00 FF */	addi r6, r6, 0xff
/* 8008C3A8  4B FF CF 95 */	bl getEvStringData__9dCamera_cFPcPcPc
/* 8008C3AC  7F C3 F3 78 */	mr r3, r30
/* 8008C3B0  38 9F 00 58 */	addi r4, r31, 0x58
/* 8008C3B4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008C3B8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008C3BC  38 A5 01 04 */	addi r5, r5, 0x104
/* 8008C3C0  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 8008C3C4  4B FF CD 91 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008C3C8  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8008C3CC  28 03 00 00 */	cmplwi r3, 0
/* 8008C3D0  41 82 0E 60 */	beq lbl_8008D230
/* 8008C3D4  48 00 B3 ED */	bl fopAcM_GetID__FPCv
/* 8008C3D8  90 7F 00 44 */	stw r3, 0x44(r31)
/* 8008C3DC  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 8008C3E0  2C 00 00 01 */	cmpwi r0, 1
/* 8008C3E4  40 82 01 28 */	bne lbl_8008C50C
/* 8008C3E8  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8008C3EC  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 8008C3F0  7C 00 18 40 */	cmplw r0, r3
/* 8008C3F4  40 82 01 18 */	bne lbl_8008C50C
/* 8008C3F8  7C 7B 1B 78 */	mr r27, r3
/* 8008C3FC  83 8D 8A 98 */	lwz r28, m_midnaActor__9daPy_py_c(r13)
/* 8008C400  38 61 08 54 */	addi r3, r1, 0x854
/* 8008C404  3C 80 80 42 */	lis r4, data_804253B4@ha
/* 8008C408  38 84 53 B4 */	addi r4, r4, data_804253B4@l
/* 8008C40C  48 00 B3 E9 */	bl __ct__4cXyzFRC4cXyz
/* 8008C410  7F 63 DB 78 */	mr r3, r27
/* 8008C414  48 00 B3 A1 */	bl checkMidnaRide__9daPy_py_cCFv
/* 8008C418  28 03 00 00 */	cmplwi r3, 0
/* 8008C41C  41 82 00 24 */	beq lbl_8008C440
/* 8008C420  7F 83 E3 78 */	mr r3, r28
/* 8008C424  48 00 B3 85 */	bl checkNoDraw__9daMidna_cCFv
/* 8008C428  28 03 00 00 */	cmplwi r3, 0
/* 8008C42C  40 82 00 14 */	bne lbl_8008C440
/* 8008C430  38 61 08 54 */	addi r3, r1, 0x854
/* 8008C434  3C 80 80 42 */	lis r4, data_804253CC@ha
/* 8008C438  38 84 53 CC */	addi r4, r4, data_804253CC@l
/* 8008C43C  48 00 B3 9D */	bl __as__4cXyzFRC4cXyz
lbl_8008C440:
/* 8008C440  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 8008C444  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008C448  40 82 00 10 */	bne lbl_8008C458
/* 8008C44C  38 7F 00 0C */	addi r3, r31, 0xc
/* 8008C450  38 81 08 54 */	addi r4, r1, 0x854
/* 8008C454  48 00 24 B1 */	bl __apl__4cXyzFRC3Vec
lbl_8008C458:
/* 8008C458  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 8008C45C  2C 00 00 57 */	cmpwi r0, 0x57
/* 8008C460  40 82 00 10 */	bne lbl_8008C470
/* 8008C464  38 7F 00 0C */	addi r3, r31, 0xc
/* 8008C468  38 81 08 54 */	addi r4, r1, 0x854
/* 8008C46C  48 00 24 65 */	bl __ami__4cXyzFRC3Vec
lbl_8008C470:
/* 8008C470  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8008C474  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008C478  40 82 00 10 */	bne lbl_8008C488
/* 8008C47C  7F E3 FB 78 */	mr r3, r31
/* 8008C480  38 81 08 54 */	addi r4, r1, 0x854
/* 8008C484  48 00 24 81 */	bl __apl__4cXyzFRC3Vec
lbl_8008C488:
/* 8008C488  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8008C48C  2C 00 00 57 */	cmpwi r0, 0x57
/* 8008C490  40 82 00 10 */	bne lbl_8008C4A0
/* 8008C494  7F E3 FB 78 */	mr r3, r31
/* 8008C498  38 81 08 54 */	addi r4, r1, 0x854
/* 8008C49C  48 00 24 35 */	bl __ami__4cXyzFRC3Vec
lbl_8008C4A0:
/* 8008C4A0  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8008C4A4  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008C4A8  40 82 00 10 */	bne lbl_8008C4B8
/* 8008C4AC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8008C4B0  38 81 08 54 */	addi r4, r1, 0x854
/* 8008C4B4  48 00 24 51 */	bl __apl__4cXyzFRC3Vec
lbl_8008C4B8:
/* 8008C4B8  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8008C4BC  2C 00 00 57 */	cmpwi r0, 0x57
/* 8008C4C0  40 82 00 10 */	bne lbl_8008C4D0
/* 8008C4C4  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8008C4C8  38 81 08 54 */	addi r4, r1, 0x854
/* 8008C4CC  48 00 24 05 */	bl __ami__4cXyzFRC3Vec
lbl_8008C4D0:
/* 8008C4D0  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8008C4D4  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008C4D8  40 82 00 10 */	bne lbl_8008C4E8
/* 8008C4DC  38 7F 00 20 */	addi r3, r31, 0x20
/* 8008C4E0  38 81 08 54 */	addi r4, r1, 0x854
/* 8008C4E4  48 00 24 21 */	bl __apl__4cXyzFRC3Vec
lbl_8008C4E8:
/* 8008C4E8  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8008C4EC  2C 00 00 57 */	cmpwi r0, 0x57
/* 8008C4F0  40 82 00 10 */	bne lbl_8008C500
/* 8008C4F4  38 7F 00 20 */	addi r3, r31, 0x20
/* 8008C4F8  38 81 08 54 */	addi r4, r1, 0x854
/* 8008C4FC  48 00 23 D5 */	bl __ami__4cXyzFRC3Vec
lbl_8008C500:
/* 8008C500  38 61 08 54 */	addi r3, r1, 0x854
/* 8008C504  38 80 FF FF */	li r4, -1
/* 8008C508  4B F7 CC 7D */	bl __dt__4cXyzFv
lbl_8008C50C:
/* 8008C50C  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8008C510  2C 00 00 72 */	cmpwi r0, 0x72
/* 8008C514  40 82 00 9C */	bne lbl_8008C5B0
/* 8008C518  38 61 07 B8 */	addi r3, r1, 0x7b8
/* 8008C51C  7F C4 F3 78 */	mr r4, r30
/* 8008C520  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C524  38 DF 00 0C */	addi r6, r31, 0xc
/* 8008C528  48 0D 88 45 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008C52C  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008C530  38 81 07 B8 */	addi r4, r1, 0x7b8
/* 8008C534  48 00 B2 A5 */	bl __as__4cXyzFRC4cXyz
/* 8008C538  38 61 07 B8 */	addi r3, r1, 0x7b8
/* 8008C53C  38 80 FF FF */	li r4, -1
/* 8008C540  4B F7 CC 45 */	bl __dt__4cXyzFv
/* 8008C544  80 1E 00 AC */	lwz r0, 0xac(r30)
/* 8008C548  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8008C54C  41 82 00 10 */	beq lbl_8008C55C
/* 8008C550  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8008C554  FC 00 00 50 */	fneg f0, f0
/* 8008C558  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8008C55C:
/* 8008C55C  38 61 07 AC */	addi r3, r1, 0x7ac
/* 8008C560  7F C4 F3 78 */	mr r4, r30
/* 8008C564  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C568  7F E6 FB 78 */	mr r6, r31
/* 8008C56C  48 0D 88 01 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008C570  38 61 08 60 */	addi r3, r1, 0x860
/* 8008C574  38 81 07 AC */	addi r4, r1, 0x7ac
/* 8008C578  48 00 B2 61 */	bl __as__4cXyzFRC4cXyz
/* 8008C57C  38 61 07 AC */	addi r3, r1, 0x7ac
/* 8008C580  38 80 FF FF */	li r4, -1
/* 8008C584  4B F7 CC 01 */	bl __dt__4cXyzFv
/* 8008C588  7F C3 F3 78 */	mr r3, r30
/* 8008C58C  38 81 08 6C */	addi r4, r1, 0x86c
/* 8008C590  38 A1 08 60 */	addi r5, r1, 0x860
/* 8008C594  38 C0 40 07 */	li r6, 0x4007
/* 8008C598  48 0D 95 59 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008C59C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008C5A0  41 82 00 10 */	beq lbl_8008C5B0
/* 8008C5A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8008C5A8  FC 00 00 50 */	fneg f0, f0
/* 8008C5AC  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8008C5B0:
/* 8008C5B0  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 8008C5B4  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008C5B8  41 82 00 10 */	beq lbl_8008C5C8
/* 8008C5BC  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8008C5C0  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008C5C4  40 82 01 64 */	bne lbl_8008C728
lbl_8008C5C8:
/* 8008C5C8  38 61 07 A0 */	addi r3, r1, 0x7a0
/* 8008C5CC  7F C4 F3 78 */	mr r4, r30
/* 8008C5D0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C5D4  48 00 B1 89 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008C5D8  38 61 07 94 */	addi r3, r1, 0x794
/* 8008C5DC  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8008C5E0  38 A1 07 A0 */	addi r5, r1, 0x7a0
/* 8008C5E4  48 1D A5 51 */	bl __mi__4cXyzCFRC3Vec
/* 8008C5E8  38 61 01 74 */	addi r3, r1, 0x174
/* 8008C5EC  38 81 07 94 */	addi r4, r1, 0x794
/* 8008C5F0  48 1E 52 91 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008C5F4  38 61 07 94 */	addi r3, r1, 0x794
/* 8008C5F8  38 80 FF FF */	li r4, -1
/* 8008C5FC  4B F7 CB 89 */	bl __dt__4cXyzFv
/* 8008C600  38 61 07 A0 */	addi r3, r1, 0x7a0
/* 8008C604  38 80 FF FF */	li r4, -1
/* 8008C608  4B F7 CB 7D */	bl __dt__4cXyzFv
/* 8008C60C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8008C610  7F C4 F3 78 */	mr r4, r30
/* 8008C614  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C618  48 00 B1 21 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008C61C  38 61 00 AC */	addi r3, r1, 0xac
/* 8008C620  38 81 01 7A */	addi r4, r1, 0x17a
/* 8008C624  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8008C628  48 1E 4B 7D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008C62C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8008C630  38 81 00 AC */	addi r4, r1, 0xac
/* 8008C634  48 1E 49 35 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008C638  38 61 00 AC */	addi r3, r1, 0xac
/* 8008C63C  38 80 FF FF */	li r4, -1
/* 8008C640  4B FA 3E D1 */	bl __dt__7cSAngleFv
/* 8008C644  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8008C648  38 80 FF FF */	li r4, -1
/* 8008C64C  4B FA 3E C5 */	bl __dt__7cSAngleFv
/* 8008C650  A8 61 00 C8 */	lha r3, 0xc8(r1)
/* 8008C654  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008C658  7C 03 00 00 */	cmpw r3, r0
/* 8008C65C  40 80 00 34 */	bge lbl_8008C690
/* 8008C660  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 8008C664  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008C668  40 82 00 10 */	bne lbl_8008C678
/* 8008C66C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8008C670  FC 00 00 50 */	fneg f0, f0
/* 8008C674  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8008C678:
/* 8008C678  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8008C67C  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008C680  40 82 00 10 */	bne lbl_8008C690
/* 8008C684  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8008C688  FC 00 00 50 */	fneg f0, f0
/* 8008C68C  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8008C690:
/* 8008C690  38 61 07 88 */	addi r3, r1, 0x788
/* 8008C694  7F C4 F3 78 */	mr r4, r30
/* 8008C698  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C69C  38 DF 00 0C */	addi r6, r31, 0xc
/* 8008C6A0  48 0D 86 CD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008C6A4  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008C6A8  38 81 07 88 */	addi r4, r1, 0x788
/* 8008C6AC  48 00 B1 2D */	bl __as__4cXyzFRC4cXyz
/* 8008C6B0  38 61 07 88 */	addi r3, r1, 0x788
/* 8008C6B4  38 80 FF FF */	li r4, -1
/* 8008C6B8  4B F7 CA CD */	bl __dt__4cXyzFv
/* 8008C6BC  38 61 07 7C */	addi r3, r1, 0x77c
/* 8008C6C0  7F C4 F3 78 */	mr r4, r30
/* 8008C6C4  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C6C8  7F E6 FB 78 */	mr r6, r31
/* 8008C6CC  48 0D 86 A1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008C6D0  38 61 08 60 */	addi r3, r1, 0x860
/* 8008C6D4  38 81 07 7C */	addi r4, r1, 0x77c
/* 8008C6D8  48 00 B1 01 */	bl __as__4cXyzFRC4cXyz
/* 8008C6DC  38 61 07 7C */	addi r3, r1, 0x77c
/* 8008C6E0  38 80 FF FF */	li r4, -1
/* 8008C6E4  4B F7 CA A1 */	bl __dt__4cXyzFv
/* 8008C6E8  7F C3 F3 78 */	mr r3, r30
/* 8008C6EC  38 81 08 6C */	addi r4, r1, 0x86c
/* 8008C6F0  38 A1 08 60 */	addi r5, r1, 0x860
/* 8008C6F4  38 C0 40 07 */	li r6, 0x4007
/* 8008C6F8  48 0D 93 F9 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008C6FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008C700  41 82 00 10 */	beq lbl_8008C710
/* 8008C704  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8008C708  FC 00 00 50 */	fneg f0, f0
/* 8008C70C  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8008C710:
/* 8008C710  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8008C714  38 80 FF FF */	li r4, -1
/* 8008C718  4B FA 3D F9 */	bl __dt__7cSAngleFv
/* 8008C71C  38 61 01 74 */	addi r3, r1, 0x174
/* 8008C720  38 80 FF FF */	li r4, -1
/* 8008C724  4B FE 4F 59 */	bl __dt__7cSGlobeFv
lbl_8008C728:
/* 8008C728  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8008C72C  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008C730  41 82 00 10 */	beq lbl_8008C740
/* 8008C734  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8008C738  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008C73C  40 82 01 64 */	bne lbl_8008C8A0
lbl_8008C740:
/* 8008C740  38 61 07 70 */	addi r3, r1, 0x770
/* 8008C744  7F C4 F3 78 */	mr r4, r30
/* 8008C748  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C74C  48 00 B0 11 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008C750  38 61 07 64 */	addi r3, r1, 0x764
/* 8008C754  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8008C758  38 A1 07 70 */	addi r5, r1, 0x770
/* 8008C75C  48 1D A3 D9 */	bl __mi__4cXyzCFRC3Vec
/* 8008C760  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008C764  38 81 07 64 */	addi r4, r1, 0x764
/* 8008C768  48 1E 51 19 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008C76C  38 61 07 64 */	addi r3, r1, 0x764
/* 8008C770  38 80 FF FF */	li r4, -1
/* 8008C774  4B F7 CA 11 */	bl __dt__4cXyzFv
/* 8008C778  38 61 07 70 */	addi r3, r1, 0x770
/* 8008C77C  38 80 FF FF */	li r4, -1
/* 8008C780  4B F7 CA 05 */	bl __dt__4cXyzFv
/* 8008C784  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8008C788  7F C4 F3 78 */	mr r4, r30
/* 8008C78C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C790  48 00 AF A9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008C794  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8008C798  38 81 01 72 */	addi r4, r1, 0x172
/* 8008C79C  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8008C7A0  48 1E 4A 05 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008C7A4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8008C7A8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8008C7AC  48 1E 47 BD */	bl __ct__7cSAngleFRC7cSAngle
/* 8008C7B0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8008C7B4  38 80 FF FF */	li r4, -1
/* 8008C7B8  4B FA 3D 59 */	bl __dt__7cSAngleFv
/* 8008C7BC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8008C7C0  38 80 FF FF */	li r4, -1
/* 8008C7C4  4B FA 3D 4D */	bl __dt__7cSAngleFv
/* 8008C7C8  A8 61 00 C4 */	lha r3, 0xc4(r1)
/* 8008C7CC  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008C7D0  7C 03 00 00 */	cmpw r3, r0
/* 8008C7D4  40 80 00 34 */	bge lbl_8008C808
/* 8008C7D8  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8008C7DC  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008C7E0  40 82 00 10 */	bne lbl_8008C7F0
/* 8008C7E4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8008C7E8  FC 00 00 50 */	fneg f0, f0
/* 8008C7EC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_8008C7F0:
/* 8008C7F0  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8008C7F4  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8008C7F8  40 82 00 10 */	bne lbl_8008C808
/* 8008C7FC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8008C800  FC 00 00 50 */	fneg f0, f0
/* 8008C804  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8008C808:
/* 8008C808  38 61 07 58 */	addi r3, r1, 0x758
/* 8008C80C  7F C4 F3 78 */	mr r4, r30
/* 8008C810  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C814  38 DF 00 2C */	addi r6, r31, 0x2c
/* 8008C818  48 0D 85 55 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008C81C  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008C820  38 81 07 58 */	addi r4, r1, 0x758
/* 8008C824  48 00 AF B5 */	bl __as__4cXyzFRC4cXyz
/* 8008C828  38 61 07 58 */	addi r3, r1, 0x758
/* 8008C82C  38 80 FF FF */	li r4, -1
/* 8008C830  4B F7 C9 55 */	bl __dt__4cXyzFv
/* 8008C834  38 61 07 4C */	addi r3, r1, 0x74c
/* 8008C838  7F C4 F3 78 */	mr r4, r30
/* 8008C83C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C840  38 DF 00 20 */	addi r6, r31, 0x20
/* 8008C844  48 0D 85 29 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008C848  38 61 08 60 */	addi r3, r1, 0x860
/* 8008C84C  38 81 07 4C */	addi r4, r1, 0x74c
/* 8008C850  48 00 AF 89 */	bl __as__4cXyzFRC4cXyz
/* 8008C854  38 61 07 4C */	addi r3, r1, 0x74c
/* 8008C858  38 80 FF FF */	li r4, -1
/* 8008C85C  4B F7 C9 29 */	bl __dt__4cXyzFv
/* 8008C860  7F C3 F3 78 */	mr r3, r30
/* 8008C864  38 81 08 6C */	addi r4, r1, 0x86c
/* 8008C868  38 A1 08 60 */	addi r5, r1, 0x860
/* 8008C86C  38 C0 40 07 */	li r6, 0x4007
/* 8008C870  48 0D 92 81 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008C874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008C878  41 82 00 10 */	beq lbl_8008C888
/* 8008C87C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8008C880  FC 00 00 50 */	fneg f0, f0
/* 8008C884  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8008C888:
/* 8008C888  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8008C88C  38 80 FF FF */	li r4, -1
/* 8008C890  4B FA 3C 81 */	bl __dt__7cSAngleFv
/* 8008C894  38 61 01 6C */	addi r3, r1, 0x16c
/* 8008C898  38 80 FF FF */	li r4, -1
/* 8008C89C  4B FE 4D E1 */	bl __dt__7cSGlobeFv
lbl_8008C8A0:
/* 8008C8A0  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 8008C8A4  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8008C8A8  41 82 00 10 */	beq lbl_8008C8B8
/* 8008C8AC  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8008C8B0  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8008C8B4  40 82 01 64 */	bne lbl_8008CA18
lbl_8008C8B8:
/* 8008C8B8  38 61 07 40 */	addi r3, r1, 0x740
/* 8008C8BC  7F C4 F3 78 */	mr r4, r30
/* 8008C8C0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C8C4  48 00 AE 99 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008C8C8  38 61 07 34 */	addi r3, r1, 0x734
/* 8008C8CC  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8008C8D0  38 A1 07 40 */	addi r5, r1, 0x740
/* 8008C8D4  48 1D A2 61 */	bl __mi__4cXyzCFRC3Vec
/* 8008C8D8  38 61 01 64 */	addi r3, r1, 0x164
/* 8008C8DC  38 81 07 34 */	addi r4, r1, 0x734
/* 8008C8E0  48 1E 4F A1 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008C8E4  38 61 07 34 */	addi r3, r1, 0x734
/* 8008C8E8  38 80 FF FF */	li r4, -1
/* 8008C8EC  4B F7 C8 99 */	bl __dt__4cXyzFv
/* 8008C8F0  38 61 07 40 */	addi r3, r1, 0x740
/* 8008C8F4  38 80 FF FF */	li r4, -1
/* 8008C8F8  4B F7 C8 8D */	bl __dt__4cXyzFv
/* 8008C8FC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8008C900  7F C4 F3 78 */	mr r4, r30
/* 8008C904  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C908  48 00 AE 31 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008C90C  38 61 00 9C */	addi r3, r1, 0x9c
/* 8008C910  38 81 01 6A */	addi r4, r1, 0x16a
/* 8008C914  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 8008C918  48 1E 48 8D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008C91C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8008C920  38 81 00 9C */	addi r4, r1, 0x9c
/* 8008C924  48 1E 46 45 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008C928  38 61 00 9C */	addi r3, r1, 0x9c
/* 8008C92C  38 80 FF FF */	li r4, -1
/* 8008C930  4B FA 3B E1 */	bl __dt__7cSAngleFv
/* 8008C934  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8008C938  38 80 FF FF */	li r4, -1
/* 8008C93C  4B FA 3B D5 */	bl __dt__7cSAngleFv
/* 8008C940  A8 61 00 C0 */	lha r3, 0xc0(r1)
/* 8008C944  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008C948  7C 03 00 00 */	cmpw r3, r0
/* 8008C94C  40 81 00 34 */	ble lbl_8008C980
/* 8008C950  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 8008C954  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8008C958  40 82 00 10 */	bne lbl_8008C968
/* 8008C95C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8008C960  FC 00 00 50 */	fneg f0, f0
/* 8008C964  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8008C968:
/* 8008C968  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8008C96C  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8008C970  40 82 00 10 */	bne lbl_8008C980
/* 8008C974  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8008C978  FC 00 00 50 */	fneg f0, f0
/* 8008C97C  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8008C980:
/* 8008C980  38 61 07 28 */	addi r3, r1, 0x728
/* 8008C984  7F C4 F3 78 */	mr r4, r30
/* 8008C988  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C98C  38 DF 00 0C */	addi r6, r31, 0xc
/* 8008C990  48 0D 83 DD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008C994  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008C998  38 81 07 28 */	addi r4, r1, 0x728
/* 8008C99C  48 00 AE 3D */	bl __as__4cXyzFRC4cXyz
/* 8008C9A0  38 61 07 28 */	addi r3, r1, 0x728
/* 8008C9A4  38 80 FF FF */	li r4, -1
/* 8008C9A8  4B F7 C7 DD */	bl __dt__4cXyzFv
/* 8008C9AC  38 61 07 1C */	addi r3, r1, 0x71c
/* 8008C9B0  7F C4 F3 78 */	mr r4, r30
/* 8008C9B4  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008C9B8  7F E6 FB 78 */	mr r6, r31
/* 8008C9BC  48 0D 83 B1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008C9C0  38 61 08 60 */	addi r3, r1, 0x860
/* 8008C9C4  38 81 07 1C */	addi r4, r1, 0x71c
/* 8008C9C8  48 00 AE 11 */	bl __as__4cXyzFRC4cXyz
/* 8008C9CC  38 61 07 1C */	addi r3, r1, 0x71c
/* 8008C9D0  38 80 FF FF */	li r4, -1
/* 8008C9D4  4B F7 C7 B1 */	bl __dt__4cXyzFv
/* 8008C9D8  7F C3 F3 78 */	mr r3, r30
/* 8008C9DC  38 81 08 6C */	addi r4, r1, 0x86c
/* 8008C9E0  38 A1 08 60 */	addi r5, r1, 0x860
/* 8008C9E4  38 C0 40 07 */	li r6, 0x4007
/* 8008C9E8  48 0D 91 09 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008C9EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008C9F0  41 82 00 10 */	beq lbl_8008CA00
/* 8008C9F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8008C9F8  FC 00 00 50 */	fneg f0, f0
/* 8008C9FC  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8008CA00:
/* 8008CA00  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8008CA04  38 80 FF FF */	li r4, -1
/* 8008CA08  4B FA 3B 09 */	bl __dt__7cSAngleFv
/* 8008CA0C  38 61 01 64 */	addi r3, r1, 0x164
/* 8008CA10  38 80 FF FF */	li r4, -1
/* 8008CA14  4B FE 4C 69 */	bl __dt__7cSGlobeFv
lbl_8008CA18:
/* 8008CA18  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8008CA1C  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8008CA20  41 82 00 10 */	beq lbl_8008CA30
/* 8008CA24  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8008CA28  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8008CA2C  40 82 01 64 */	bne lbl_8008CB90
lbl_8008CA30:
/* 8008CA30  38 61 07 10 */	addi r3, r1, 0x710
/* 8008CA34  7F C4 F3 78 */	mr r4, r30
/* 8008CA38  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CA3C  48 00 AD 21 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008CA40  38 61 07 04 */	addi r3, r1, 0x704
/* 8008CA44  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8008CA48  38 A1 07 10 */	addi r5, r1, 0x710
/* 8008CA4C  48 1D A0 E9 */	bl __mi__4cXyzCFRC3Vec
/* 8008CA50  38 61 01 5C */	addi r3, r1, 0x15c
/* 8008CA54  38 81 07 04 */	addi r4, r1, 0x704
/* 8008CA58  48 1E 4E 29 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008CA5C  38 61 07 04 */	addi r3, r1, 0x704
/* 8008CA60  38 80 FF FF */	li r4, -1
/* 8008CA64  4B F7 C7 21 */	bl __dt__4cXyzFv
/* 8008CA68  38 61 07 10 */	addi r3, r1, 0x710
/* 8008CA6C  38 80 FF FF */	li r4, -1
/* 8008CA70  4B F7 C7 15 */	bl __dt__4cXyzFv
/* 8008CA74  38 61 00 98 */	addi r3, r1, 0x98
/* 8008CA78  7F C4 F3 78 */	mr r4, r30
/* 8008CA7C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CA80  48 00 AC B9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008CA84  38 61 00 94 */	addi r3, r1, 0x94
/* 8008CA88  38 81 01 62 */	addi r4, r1, 0x162
/* 8008CA8C  38 A1 00 98 */	addi r5, r1, 0x98
/* 8008CA90  48 1E 47 15 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008CA94  38 61 00 BC */	addi r3, r1, 0xbc
/* 8008CA98  38 81 00 94 */	addi r4, r1, 0x94
/* 8008CA9C  48 1E 44 CD */	bl __ct__7cSAngleFRC7cSAngle
/* 8008CAA0  38 61 00 94 */	addi r3, r1, 0x94
/* 8008CAA4  38 80 FF FF */	li r4, -1
/* 8008CAA8  4B FA 3A 69 */	bl __dt__7cSAngleFv
/* 8008CAAC  38 61 00 98 */	addi r3, r1, 0x98
/* 8008CAB0  38 80 FF FF */	li r4, -1
/* 8008CAB4  4B FA 3A 5D */	bl __dt__7cSAngleFv
/* 8008CAB8  A8 61 00 BC */	lha r3, 0xbc(r1)
/* 8008CABC  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008CAC0  7C 03 00 00 */	cmpw r3, r0
/* 8008CAC4  40 81 00 34 */	ble lbl_8008CAF8
/* 8008CAC8  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8008CACC  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8008CAD0  40 82 00 10 */	bne lbl_8008CAE0
/* 8008CAD4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8008CAD8  FC 00 00 50 */	fneg f0, f0
/* 8008CADC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_8008CAE0:
/* 8008CAE0  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8008CAE4  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8008CAE8  40 82 00 10 */	bne lbl_8008CAF8
/* 8008CAEC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8008CAF0  FC 00 00 50 */	fneg f0, f0
/* 8008CAF4  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8008CAF8:
/* 8008CAF8  38 61 06 F8 */	addi r3, r1, 0x6f8
/* 8008CAFC  7F C4 F3 78 */	mr r4, r30
/* 8008CB00  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CB04  38 DF 00 2C */	addi r6, r31, 0x2c
/* 8008CB08  48 0D 82 65 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008CB0C  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008CB10  38 81 06 F8 */	addi r4, r1, 0x6f8
/* 8008CB14  48 00 AC C5 */	bl __as__4cXyzFRC4cXyz
/* 8008CB18  38 61 06 F8 */	addi r3, r1, 0x6f8
/* 8008CB1C  38 80 FF FF */	li r4, -1
/* 8008CB20  4B F7 C6 65 */	bl __dt__4cXyzFv
/* 8008CB24  38 61 06 EC */	addi r3, r1, 0x6ec
/* 8008CB28  7F C4 F3 78 */	mr r4, r30
/* 8008CB2C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CB30  38 DF 00 20 */	addi r6, r31, 0x20
/* 8008CB34  48 0D 82 39 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008CB38  38 61 08 60 */	addi r3, r1, 0x860
/* 8008CB3C  38 81 06 EC */	addi r4, r1, 0x6ec
/* 8008CB40  48 00 AC 99 */	bl __as__4cXyzFRC4cXyz
/* 8008CB44  38 61 06 EC */	addi r3, r1, 0x6ec
/* 8008CB48  38 80 FF FF */	li r4, -1
/* 8008CB4C  4B F7 C6 39 */	bl __dt__4cXyzFv
/* 8008CB50  7F C3 F3 78 */	mr r3, r30
/* 8008CB54  38 81 08 6C */	addi r4, r1, 0x86c
/* 8008CB58  38 A1 08 60 */	addi r5, r1, 0x860
/* 8008CB5C  38 C0 40 07 */	li r6, 0x4007
/* 8008CB60  48 0D 8F 91 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008CB64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008CB68  41 82 00 10 */	beq lbl_8008CB78
/* 8008CB6C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8008CB70  FC 00 00 50 */	fneg f0, f0
/* 8008CB74  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8008CB78:
/* 8008CB78  38 61 00 BC */	addi r3, r1, 0xbc
/* 8008CB7C  38 80 FF FF */	li r4, -1
/* 8008CB80  4B FA 39 91 */	bl __dt__7cSAngleFv
/* 8008CB84  38 61 01 5C */	addi r3, r1, 0x15c
/* 8008CB88  38 80 FF FF */	li r4, -1
/* 8008CB8C  4B FE 4A F1 */	bl __dt__7cSGlobeFv
lbl_8008CB90:
/* 8008CB90  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 8008CB94  2C 00 00 66 */	cmpwi r0, 0x66
/* 8008CB98  40 82 00 C4 */	bne lbl_8008CC5C
/* 8008CB9C  38 61 01 54 */	addi r3, r1, 0x154
/* 8008CBA0  38 9F 00 0C */	addi r4, r31, 0xc
/* 8008CBA4  48 1E 4C DD */	bl __ct__7cSGlobeFRC4cXyz
/* 8008CBA8  38 61 00 90 */	addi r3, r1, 0x90
/* 8008CBAC  7F C4 F3 78 */	mr r4, r30
/* 8008CBB0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CBB4  48 00 AB 85 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008CBB8  38 61 00 8C */	addi r3, r1, 0x8c
/* 8008CBBC  38 81 00 90 */	addi r4, r1, 0x90
/* 8008CBC0  38 A1 01 5A */	addi r5, r1, 0x15a
/* 8008CBC4  48 1E 45 B1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008CBC8  38 61 01 54 */	addi r3, r1, 0x154
/* 8008CBCC  38 81 00 8C */	addi r4, r1, 0x8c
/* 8008CBD0  48 00 1C C5 */	bl U__7cSGlobeFRC7cSAngle
/* 8008CBD4  38 61 00 8C */	addi r3, r1, 0x8c
/* 8008CBD8  38 80 FF FF */	li r4, -1
/* 8008CBDC  4B FA 39 35 */	bl __dt__7cSAngleFv
/* 8008CBE0  38 61 00 90 */	addi r3, r1, 0x90
/* 8008CBE4  38 80 FF FF */	li r4, -1
/* 8008CBE8  4B FA 39 29 */	bl __dt__7cSAngleFv
/* 8008CBEC  38 61 06 E0 */	addi r3, r1, 0x6e0
/* 8008CBF0  7F C4 F3 78 */	mr r4, r30
/* 8008CBF4  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CBF8  48 00 AB 25 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008CBFC  38 61 06 D4 */	addi r3, r1, 0x6d4
/* 8008CC00  38 81 01 54 */	addi r4, r1, 0x154
/* 8008CC04  48 1E 4E B1 */	bl Xyz__7cSGlobeCFv
/* 8008CC08  38 61 06 C8 */	addi r3, r1, 0x6c8
/* 8008CC0C  38 81 06 E0 */	addi r4, r1, 0x6e0
/* 8008CC10  38 A1 06 D4 */	addi r5, r1, 0x6d4
/* 8008CC14  48 1D 9E D1 */	bl __pl__4cXyzCFRC3Vec
/* 8008CC18  38 7F 00 0C */	addi r3, r31, 0xc
/* 8008CC1C  38 81 06 C8 */	addi r4, r1, 0x6c8
/* 8008CC20  48 00 AB B9 */	bl __as__4cXyzFRC4cXyz
/* 8008CC24  38 61 06 C8 */	addi r3, r1, 0x6c8
/* 8008CC28  38 80 FF FF */	li r4, -1
/* 8008CC2C  4B F7 C5 59 */	bl __dt__4cXyzFv
/* 8008CC30  38 61 06 D4 */	addi r3, r1, 0x6d4
/* 8008CC34  38 80 FF FF */	li r4, -1
/* 8008CC38  4B F7 C5 4D */	bl __dt__4cXyzFv
/* 8008CC3C  38 61 06 E0 */	addi r3, r1, 0x6e0
/* 8008CC40  38 80 FF FF */	li r4, -1
/* 8008CC44  4B F7 C5 41 */	bl __dt__4cXyzFv
/* 8008CC48  38 00 00 78 */	li r0, 0x78
/* 8008CC4C  98 1F 00 48 */	stb r0, 0x48(r31)
/* 8008CC50  38 61 01 54 */	addi r3, r1, 0x154
/* 8008CC54  38 80 FF FF */	li r4, -1
/* 8008CC58  4B FE 4A 25 */	bl __dt__7cSGlobeFv
lbl_8008CC5C:
/* 8008CC5C  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8008CC60  2C 00 00 66 */	cmpwi r0, 0x66
/* 8008CC64  40 82 00 C4 */	bne lbl_8008CD28
/* 8008CC68  38 61 01 4C */	addi r3, r1, 0x14c
/* 8008CC6C  7F E4 FB 78 */	mr r4, r31
/* 8008CC70  48 1E 4C 11 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008CC74  38 61 00 88 */	addi r3, r1, 0x88
/* 8008CC78  7F C4 F3 78 */	mr r4, r30
/* 8008CC7C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CC80  48 00 AA B9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008CC84  38 61 00 84 */	addi r3, r1, 0x84
/* 8008CC88  38 81 00 88 */	addi r4, r1, 0x88
/* 8008CC8C  38 A1 01 52 */	addi r5, r1, 0x152
/* 8008CC90  48 1E 44 E5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008CC94  38 61 01 4C */	addi r3, r1, 0x14c
/* 8008CC98  38 81 00 84 */	addi r4, r1, 0x84
/* 8008CC9C  48 00 1B F9 */	bl U__7cSGlobeFRC7cSAngle
/* 8008CCA0  38 61 00 84 */	addi r3, r1, 0x84
/* 8008CCA4  38 80 FF FF */	li r4, -1
/* 8008CCA8  4B FA 38 69 */	bl __dt__7cSAngleFv
/* 8008CCAC  38 61 00 88 */	addi r3, r1, 0x88
/* 8008CCB0  38 80 FF FF */	li r4, -1
/* 8008CCB4  4B FA 38 5D */	bl __dt__7cSAngleFv
/* 8008CCB8  38 61 06 BC */	addi r3, r1, 0x6bc
/* 8008CCBC  7F C4 F3 78 */	mr r4, r30
/* 8008CCC0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CCC4  48 00 AA 59 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008CCC8  38 61 06 B0 */	addi r3, r1, 0x6b0
/* 8008CCCC  38 81 01 4C */	addi r4, r1, 0x14c
/* 8008CCD0  48 1E 4D E5 */	bl Xyz__7cSGlobeCFv
/* 8008CCD4  38 61 06 A4 */	addi r3, r1, 0x6a4
/* 8008CCD8  38 81 06 BC */	addi r4, r1, 0x6bc
/* 8008CCDC  38 A1 06 B0 */	addi r5, r1, 0x6b0
/* 8008CCE0  48 1D 9E 05 */	bl __pl__4cXyzCFRC3Vec
/* 8008CCE4  7F E3 FB 78 */	mr r3, r31
/* 8008CCE8  38 81 06 A4 */	addi r4, r1, 0x6a4
/* 8008CCEC  48 00 AA ED */	bl __as__4cXyzFRC4cXyz
/* 8008CCF0  38 61 06 A4 */	addi r3, r1, 0x6a4
/* 8008CCF4  38 80 FF FF */	li r4, -1
/* 8008CCF8  4B F7 C4 8D */	bl __dt__4cXyzFv
/* 8008CCFC  38 61 06 B0 */	addi r3, r1, 0x6b0
/* 8008CD00  38 80 FF FF */	li r4, -1
/* 8008CD04  4B F7 C4 81 */	bl __dt__4cXyzFv
/* 8008CD08  38 61 06 BC */	addi r3, r1, 0x6bc
/* 8008CD0C  38 80 FF FF */	li r4, -1
/* 8008CD10  4B F7 C4 75 */	bl __dt__4cXyzFv
/* 8008CD14  38 00 00 78 */	li r0, 0x78
/* 8008CD18  98 1F 00 49 */	stb r0, 0x49(r31)
/* 8008CD1C  38 61 01 4C */	addi r3, r1, 0x14c
/* 8008CD20  38 80 FF FF */	li r4, -1
/* 8008CD24  4B FE 49 59 */	bl __dt__7cSGlobeFv
lbl_8008CD28:
/* 8008CD28  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8008CD2C  7C 00 07 74 */	extsb r0, r0
/* 8008CD30  2C 00 00 70 */	cmpwi r0, 0x70
/* 8008CD34  40 82 01 5C */	bne lbl_8008CE90
/* 8008CD38  38 61 08 48 */	addi r3, r1, 0x848
/* 8008CD3C  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8008CD40  48 00 AA B5 */	bl __ct__4cXyzFRC4cXyz
/* 8008CD44  38 61 06 98 */	addi r3, r1, 0x698
/* 8008CD48  7F C4 F3 78 */	mr r4, r30
/* 8008CD4C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CD50  38 C1 08 48 */	addi r6, r1, 0x848
/* 8008CD54  48 0D 80 19 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008CD58  38 61 08 3C */	addi r3, r1, 0x83c
/* 8008CD5C  38 81 06 98 */	addi r4, r1, 0x698
/* 8008CD60  48 00 AA 95 */	bl __ct__4cXyzFRC4cXyz
/* 8008CD64  38 61 06 98 */	addi r3, r1, 0x698
/* 8008CD68  38 80 FF FF */	li r4, -1
/* 8008CD6C  4B F7 C4 19 */	bl __dt__4cXyzFv
/* 8008CD70  38 61 06 8C */	addi r3, r1, 0x68c
/* 8008CD74  7F C4 F3 78 */	mr r4, r30
/* 8008CD78  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8008CD7C  48 00 A9 E1 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008CD80  38 61 06 80 */	addi r3, r1, 0x680
/* 8008CD84  38 81 08 3C */	addi r4, r1, 0x83c
/* 8008CD88  38 A1 06 8C */	addi r5, r1, 0x68c
/* 8008CD8C  48 1D 9D A9 */	bl __mi__4cXyzCFRC3Vec
/* 8008CD90  38 61 06 74 */	addi r3, r1, 0x674
/* 8008CD94  38 81 06 80 */	addi r4, r1, 0x680
/* 8008CD98  48 00 AA 5D */	bl __ct__4cXyzFRC4cXyz
/* 8008CD9C  38 61 06 74 */	addi r3, r1, 0x674
/* 8008CDA0  48 00 19 F1 */	bl abs__4cXyzCFv
/* 8008CDA4  FF E0 08 90 */	fmr f31, f1
/* 8008CDA8  38 61 06 74 */	addi r3, r1, 0x674
/* 8008CDAC  38 80 FF FF */	li r4, -1
/* 8008CDB0  4B F7 C3 D5 */	bl __dt__4cXyzFv
/* 8008CDB4  38 61 06 80 */	addi r3, r1, 0x680
/* 8008CDB8  38 80 FF FF */	li r4, -1
/* 8008CDBC  4B F7 C3 C9 */	bl __dt__4cXyzFv
/* 8008CDC0  38 61 06 8C */	addi r3, r1, 0x68c
/* 8008CDC4  38 80 FF FF */	li r4, -1
/* 8008CDC8  4B F7 C3 BD */	bl __dt__4cXyzFv
/* 8008CDCC  C0 01 08 48 */	lfs f0, 0x848(r1)
/* 8008CDD0  FC 00 00 50 */	fneg f0, f0
/* 8008CDD4  D0 01 08 48 */	stfs f0, 0x848(r1)
/* 8008CDD8  38 61 06 68 */	addi r3, r1, 0x668
/* 8008CDDC  7F C4 F3 78 */	mr r4, r30
/* 8008CDE0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CDE4  38 C1 08 48 */	addi r6, r1, 0x848
/* 8008CDE8  48 0D 7F 85 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008CDEC  38 61 08 3C */	addi r3, r1, 0x83c
/* 8008CDF0  38 81 06 68 */	addi r4, r1, 0x668
/* 8008CDF4  48 00 A9 E5 */	bl __as__4cXyzFRC4cXyz
/* 8008CDF8  38 61 06 68 */	addi r3, r1, 0x668
/* 8008CDFC  38 80 FF FF */	li r4, -1
/* 8008CE00  4B F7 C3 85 */	bl __dt__4cXyzFv
/* 8008CE04  38 61 06 5C */	addi r3, r1, 0x65c
/* 8008CE08  7F C4 F3 78 */	mr r4, r30
/* 8008CE0C  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8008CE10  48 00 A9 4D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008CE14  38 61 06 50 */	addi r3, r1, 0x650
/* 8008CE18  38 81 08 3C */	addi r4, r1, 0x83c
/* 8008CE1C  38 A1 06 5C */	addi r5, r1, 0x65c
/* 8008CE20  48 1D 9D 15 */	bl __mi__4cXyzCFRC3Vec
/* 8008CE24  38 61 06 44 */	addi r3, r1, 0x644
/* 8008CE28  38 81 06 50 */	addi r4, r1, 0x650
/* 8008CE2C  48 00 A9 C9 */	bl __ct__4cXyzFRC4cXyz
/* 8008CE30  38 61 06 44 */	addi r3, r1, 0x644
/* 8008CE34  48 00 19 5D */	bl abs__4cXyzCFv
/* 8008CE38  FF C0 08 90 */	fmr f30, f1
/* 8008CE3C  38 61 06 44 */	addi r3, r1, 0x644
/* 8008CE40  38 80 FF FF */	li r4, -1
/* 8008CE44  4B F7 C3 41 */	bl __dt__4cXyzFv
/* 8008CE48  38 61 06 50 */	addi r3, r1, 0x650
/* 8008CE4C  38 80 FF FF */	li r4, -1
/* 8008CE50  4B F7 C3 35 */	bl __dt__4cXyzFv
/* 8008CE54  38 61 06 5C */	addi r3, r1, 0x65c
/* 8008CE58  38 80 FF FF */	li r4, -1
/* 8008CE5C  4B F7 C3 29 */	bl __dt__4cXyzFv
/* 8008CE60  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8008CE64  40 80 00 10 */	bge lbl_8008CE74
/* 8008CE68  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8008CE6C  FC 00 00 50 */	fneg f0, f0
/* 8008CE70  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_8008CE74:
/* 8008CE74  38 61 08 3C */	addi r3, r1, 0x83c
/* 8008CE78  38 80 FF FF */	li r4, -1
/* 8008CE7C  4B F7 C3 09 */	bl __dt__4cXyzFv
/* 8008CE80  38 61 08 48 */	addi r3, r1, 0x848
/* 8008CE84  38 80 FF FF */	li r4, -1
/* 8008CE88  4B F7 C2 FD */	bl __dt__4cXyzFv
/* 8008CE8C  48 00 00 CC */	b lbl_8008CF58
lbl_8008CE90:
/* 8008CE90  2C 00 00 66 */	cmpwi r0, 0x66
/* 8008CE94  40 82 00 C4 */	bne lbl_8008CF58
/* 8008CE98  38 61 01 44 */	addi r3, r1, 0x144
/* 8008CE9C  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8008CEA0  48 1E 49 E1 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008CEA4  38 61 00 80 */	addi r3, r1, 0x80
/* 8008CEA8  7F C4 F3 78 */	mr r4, r30
/* 8008CEAC  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CEB0  48 00 A8 89 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008CEB4  38 61 00 7C */	addi r3, r1, 0x7c
/* 8008CEB8  38 81 00 80 */	addi r4, r1, 0x80
/* 8008CEBC  38 A1 01 4A */	addi r5, r1, 0x14a
/* 8008CEC0  48 1E 42 B5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008CEC4  38 61 01 44 */	addi r3, r1, 0x144
/* 8008CEC8  38 81 00 7C */	addi r4, r1, 0x7c
/* 8008CECC  48 00 19 C9 */	bl U__7cSGlobeFRC7cSAngle
/* 8008CED0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8008CED4  38 80 FF FF */	li r4, -1
/* 8008CED8  4B FA 36 39 */	bl __dt__7cSAngleFv
/* 8008CEDC  38 61 00 80 */	addi r3, r1, 0x80
/* 8008CEE0  38 80 FF FF */	li r4, -1
/* 8008CEE4  4B FA 36 2D */	bl __dt__7cSAngleFv
/* 8008CEE8  38 61 06 38 */	addi r3, r1, 0x638
/* 8008CEEC  7F C4 F3 78 */	mr r4, r30
/* 8008CEF0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CEF4  48 00 A8 29 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008CEF8  38 61 06 2C */	addi r3, r1, 0x62c
/* 8008CEFC  38 81 01 44 */	addi r4, r1, 0x144
/* 8008CF00  48 1E 4B B5 */	bl Xyz__7cSGlobeCFv
/* 8008CF04  38 61 06 20 */	addi r3, r1, 0x620
/* 8008CF08  38 81 06 38 */	addi r4, r1, 0x638
/* 8008CF0C  38 A1 06 2C */	addi r5, r1, 0x62c
/* 8008CF10  48 1D 9B D5 */	bl __pl__4cXyzCFRC3Vec
/* 8008CF14  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8008CF18  38 81 06 20 */	addi r4, r1, 0x620
/* 8008CF1C  48 00 A8 BD */	bl __as__4cXyzFRC4cXyz
/* 8008CF20  38 61 06 20 */	addi r3, r1, 0x620
/* 8008CF24  38 80 FF FF */	li r4, -1
/* 8008CF28  4B F7 C2 5D */	bl __dt__4cXyzFv
/* 8008CF2C  38 61 06 2C */	addi r3, r1, 0x62c
/* 8008CF30  38 80 FF FF */	li r4, -1
/* 8008CF34  4B F7 C2 51 */	bl __dt__4cXyzFv
/* 8008CF38  38 61 06 38 */	addi r3, r1, 0x638
/* 8008CF3C  38 80 FF FF */	li r4, -1
/* 8008CF40  4B F7 C2 45 */	bl __dt__4cXyzFv
/* 8008CF44  38 00 00 78 */	li r0, 0x78
/* 8008CF48  98 1F 00 4A */	stb r0, 0x4a(r31)
/* 8008CF4C  38 61 01 44 */	addi r3, r1, 0x144
/* 8008CF50  38 80 FF FF */	li r4, -1
/* 8008CF54  4B FE 47 29 */	bl __dt__7cSGlobeFv
lbl_8008CF58:
/* 8008CF58  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8008CF5C  7C 00 07 74 */	extsb r0, r0
/* 8008CF60  2C 00 00 70 */	cmpwi r0, 0x70
/* 8008CF64  40 82 01 5C */	bne lbl_8008D0C0
/* 8008CF68  38 61 08 30 */	addi r3, r1, 0x830
/* 8008CF6C  38 9F 00 20 */	addi r4, r31, 0x20
/* 8008CF70  48 00 A8 85 */	bl __ct__4cXyzFRC4cXyz
/* 8008CF74  38 61 06 14 */	addi r3, r1, 0x614
/* 8008CF78  7F C4 F3 78 */	mr r4, r30
/* 8008CF7C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008CF80  38 C1 08 30 */	addi r6, r1, 0x830
/* 8008CF84  48 0D 7D E9 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008CF88  38 61 08 24 */	addi r3, r1, 0x824
/* 8008CF8C  38 81 06 14 */	addi r4, r1, 0x614
/* 8008CF90  48 00 A8 65 */	bl __ct__4cXyzFRC4cXyz
/* 8008CF94  38 61 06 14 */	addi r3, r1, 0x614
/* 8008CF98  38 80 FF FF */	li r4, -1
/* 8008CF9C  4B F7 C1 E9 */	bl __dt__4cXyzFv
/* 8008CFA0  38 61 06 08 */	addi r3, r1, 0x608
/* 8008CFA4  7F C4 F3 78 */	mr r4, r30
/* 8008CFA8  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8008CFAC  48 00 A7 B1 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008CFB0  38 61 05 FC */	addi r3, r1, 0x5fc
/* 8008CFB4  38 81 08 24 */	addi r4, r1, 0x824
/* 8008CFB8  38 A1 06 08 */	addi r5, r1, 0x608
/* 8008CFBC  48 1D 9B 79 */	bl __mi__4cXyzCFRC3Vec
/* 8008CFC0  38 61 05 F0 */	addi r3, r1, 0x5f0
/* 8008CFC4  38 81 05 FC */	addi r4, r1, 0x5fc
/* 8008CFC8  48 00 A8 2D */	bl __ct__4cXyzFRC4cXyz
/* 8008CFCC  38 61 05 F0 */	addi r3, r1, 0x5f0
/* 8008CFD0  48 00 17 C1 */	bl abs__4cXyzCFv
/* 8008CFD4  FF C0 08 90 */	fmr f30, f1
/* 8008CFD8  38 61 05 F0 */	addi r3, r1, 0x5f0
/* 8008CFDC  38 80 FF FF */	li r4, -1
/* 8008CFE0  4B F7 C1 A5 */	bl __dt__4cXyzFv
/* 8008CFE4  38 61 05 FC */	addi r3, r1, 0x5fc
/* 8008CFE8  38 80 FF FF */	li r4, -1
/* 8008CFEC  4B F7 C1 99 */	bl __dt__4cXyzFv
/* 8008CFF0  38 61 06 08 */	addi r3, r1, 0x608
/* 8008CFF4  38 80 FF FF */	li r4, -1
/* 8008CFF8  4B F7 C1 8D */	bl __dt__4cXyzFv
/* 8008CFFC  C0 01 08 30 */	lfs f0, 0x830(r1)
/* 8008D000  FC 00 00 50 */	fneg f0, f0
/* 8008D004  D0 01 08 30 */	stfs f0, 0x830(r1)
/* 8008D008  38 61 05 E4 */	addi r3, r1, 0x5e4
/* 8008D00C  7F C4 F3 78 */	mr r4, r30
/* 8008D010  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D014  38 C1 08 30 */	addi r6, r1, 0x830
/* 8008D018  48 0D 7D 55 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D01C  38 61 08 24 */	addi r3, r1, 0x824
/* 8008D020  38 81 05 E4 */	addi r4, r1, 0x5e4
/* 8008D024  48 00 A7 B5 */	bl __as__4cXyzFRC4cXyz
/* 8008D028  38 61 05 E4 */	addi r3, r1, 0x5e4
/* 8008D02C  38 80 FF FF */	li r4, -1
/* 8008D030  4B F7 C1 55 */	bl __dt__4cXyzFv
/* 8008D034  38 61 05 D8 */	addi r3, r1, 0x5d8
/* 8008D038  7F C4 F3 78 */	mr r4, r30
/* 8008D03C  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8008D040  48 00 A7 1D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8008D044  38 61 05 CC */	addi r3, r1, 0x5cc
/* 8008D048  38 81 08 24 */	addi r4, r1, 0x824
/* 8008D04C  38 A1 05 D8 */	addi r5, r1, 0x5d8
/* 8008D050  48 1D 9A E5 */	bl __mi__4cXyzCFRC3Vec
/* 8008D054  38 61 05 C0 */	addi r3, r1, 0x5c0
/* 8008D058  38 81 05 CC */	addi r4, r1, 0x5cc
/* 8008D05C  48 00 A7 99 */	bl __ct__4cXyzFRC4cXyz
/* 8008D060  38 61 05 C0 */	addi r3, r1, 0x5c0
/* 8008D064  48 00 17 2D */	bl abs__4cXyzCFv
/* 8008D068  FF E0 08 90 */	fmr f31, f1
/* 8008D06C  38 61 05 C0 */	addi r3, r1, 0x5c0
/* 8008D070  38 80 FF FF */	li r4, -1
/* 8008D074  4B F7 C1 11 */	bl __dt__4cXyzFv
/* 8008D078  38 61 05 CC */	addi r3, r1, 0x5cc
/* 8008D07C  38 80 FF FF */	li r4, -1
/* 8008D080  4B F7 C1 05 */	bl __dt__4cXyzFv
/* 8008D084  38 61 05 D8 */	addi r3, r1, 0x5d8
/* 8008D088  38 80 FF FF */	li r4, -1
/* 8008D08C  4B F7 C0 F9 */	bl __dt__4cXyzFv
/* 8008D090  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 8008D094  40 80 00 10 */	bge lbl_8008D0A4
/* 8008D098  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8008D09C  FC 00 00 50 */	fneg f0, f0
/* 8008D0A0  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8008D0A4:
/* 8008D0A4  38 61 08 24 */	addi r3, r1, 0x824
/* 8008D0A8  38 80 FF FF */	li r4, -1
/* 8008D0AC  4B F7 C0 D9 */	bl __dt__4cXyzFv
/* 8008D0B0  38 61 08 30 */	addi r3, r1, 0x830
/* 8008D0B4  38 80 FF FF */	li r4, -1
/* 8008D0B8  4B F7 C0 CD */	bl __dt__4cXyzFv
/* 8008D0BC  48 00 02 84 */	b lbl_8008D340
lbl_8008D0C0:
/* 8008D0C0  2C 00 00 72 */	cmpwi r0, 0x72
/* 8008D0C4  40 82 00 A0 */	bne lbl_8008D164
/* 8008D0C8  38 61 05 B4 */	addi r3, r1, 0x5b4
/* 8008D0CC  7F C4 F3 78 */	mr r4, r30
/* 8008D0D0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D0D4  38 DF 00 2C */	addi r6, r31, 0x2c
/* 8008D0D8  48 0D 7C 95 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D0DC  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008D0E0  38 81 05 B4 */	addi r4, r1, 0x5b4
/* 8008D0E4  48 00 A6 F5 */	bl __as__4cXyzFRC4cXyz
/* 8008D0E8  38 61 05 B4 */	addi r3, r1, 0x5b4
/* 8008D0EC  38 80 FF FF */	li r4, -1
/* 8008D0F0  4B F7 C0 95 */	bl __dt__4cXyzFv
/* 8008D0F4  80 1E 00 AC */	lwz r0, 0xac(r30)
/* 8008D0F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8008D0FC  41 82 00 10 */	beq lbl_8008D10C
/* 8008D100  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8008D104  FC 00 00 50 */	fneg f0, f0
/* 8008D108  D0 1F 00 20 */	stfs f0, 0x20(r31)
lbl_8008D10C:
/* 8008D10C  38 61 05 A8 */	addi r3, r1, 0x5a8
/* 8008D110  7F C4 F3 78 */	mr r4, r30
/* 8008D114  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D118  38 DF 00 20 */	addi r6, r31, 0x20
/* 8008D11C  48 0D 7C 51 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D120  38 61 08 60 */	addi r3, r1, 0x860
/* 8008D124  38 81 05 A8 */	addi r4, r1, 0x5a8
/* 8008D128  48 00 A6 B1 */	bl __as__4cXyzFRC4cXyz
/* 8008D12C  38 61 05 A8 */	addi r3, r1, 0x5a8
/* 8008D130  38 80 FF FF */	li r4, -1
/* 8008D134  4B F7 C0 51 */	bl __dt__4cXyzFv
/* 8008D138  7F C3 F3 78 */	mr r3, r30
/* 8008D13C  38 81 08 6C */	addi r4, r1, 0x86c
/* 8008D140  38 A1 08 60 */	addi r5, r1, 0x860
/* 8008D144  38 C0 40 07 */	li r6, 0x4007
/* 8008D148  48 0D 89 A9 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8008D14C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008D150  41 82 01 F0 */	beq lbl_8008D340
/* 8008D154  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8008D158  FC 00 00 50 */	fneg f0, f0
/* 8008D15C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8008D160  48 00 01 E0 */	b lbl_8008D340
lbl_8008D164:
/* 8008D164  2C 00 00 66 */	cmpwi r0, 0x66
/* 8008D168  40 82 01 D8 */	bne lbl_8008D340
/* 8008D16C  38 61 01 3C */	addi r3, r1, 0x13c
/* 8008D170  38 9F 00 20 */	addi r4, r31, 0x20
/* 8008D174  48 1E 47 0D */	bl __ct__7cSGlobeFRC4cXyz
/* 8008D178  38 61 00 78 */	addi r3, r1, 0x78
/* 8008D17C  7F C4 F3 78 */	mr r4, r30
/* 8008D180  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D184  48 00 A5 B5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008D188  38 61 00 74 */	addi r3, r1, 0x74
/* 8008D18C  38 81 00 78 */	addi r4, r1, 0x78
/* 8008D190  38 A1 01 42 */	addi r5, r1, 0x142
/* 8008D194  48 1E 3F E1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008D198  38 61 01 3C */	addi r3, r1, 0x13c
/* 8008D19C  38 81 00 74 */	addi r4, r1, 0x74
/* 8008D1A0  48 00 16 F5 */	bl U__7cSGlobeFRC7cSAngle
/* 8008D1A4  38 61 00 74 */	addi r3, r1, 0x74
/* 8008D1A8  38 80 FF FF */	li r4, -1
/* 8008D1AC  4B FA 33 65 */	bl __dt__7cSAngleFv
/* 8008D1B0  38 61 00 78 */	addi r3, r1, 0x78
/* 8008D1B4  38 80 FF FF */	li r4, -1
/* 8008D1B8  4B FA 33 59 */	bl __dt__7cSAngleFv
/* 8008D1BC  38 61 05 9C */	addi r3, r1, 0x59c
/* 8008D1C0  7F C4 F3 78 */	mr r4, r30
/* 8008D1C4  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D1C8  48 00 A5 55 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008D1CC  38 61 05 90 */	addi r3, r1, 0x590
/* 8008D1D0  38 81 01 3C */	addi r4, r1, 0x13c
/* 8008D1D4  48 1E 48 E1 */	bl Xyz__7cSGlobeCFv
/* 8008D1D8  38 61 05 84 */	addi r3, r1, 0x584
/* 8008D1DC  38 81 05 9C */	addi r4, r1, 0x59c
/* 8008D1E0  38 A1 05 90 */	addi r5, r1, 0x590
/* 8008D1E4  48 1D 99 01 */	bl __pl__4cXyzCFRC3Vec
/* 8008D1E8  38 7F 00 20 */	addi r3, r31, 0x20
/* 8008D1EC  38 81 05 84 */	addi r4, r1, 0x584
/* 8008D1F0  48 00 A5 E9 */	bl __as__4cXyzFRC4cXyz
/* 8008D1F4  38 61 05 84 */	addi r3, r1, 0x584
/* 8008D1F8  38 80 FF FF */	li r4, -1
/* 8008D1FC  4B F7 BF 89 */	bl __dt__4cXyzFv
/* 8008D200  38 61 05 90 */	addi r3, r1, 0x590
/* 8008D204  38 80 FF FF */	li r4, -1
/* 8008D208  4B F7 BF 7D */	bl __dt__4cXyzFv
/* 8008D20C  38 61 05 9C */	addi r3, r1, 0x59c
/* 8008D210  38 80 FF FF */	li r4, -1
/* 8008D214  4B F7 BF 71 */	bl __dt__4cXyzFv
/* 8008D218  38 00 00 78 */	li r0, 0x78
/* 8008D21C  98 1F 00 4B */	stb r0, 0x4b(r31)
/* 8008D220  38 61 01 3C */	addi r3, r1, 0x13c
/* 8008D224  38 80 FF FF */	li r4, -1
/* 8008D228  4B FE 44 55 */	bl __dt__7cSGlobeFv
/* 8008D22C  48 00 01 14 */	b lbl_8008D340
lbl_8008D230:
/* 8008D230  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 8008D234  2C 00 00 61 */	cmpwi r0, 0x61
/* 8008D238  40 82 00 80 */	bne lbl_8008D2B8
/* 8008D23C  38 7E 00 62 */	addi r3, r30, 0x62
/* 8008D240  48 1E 3E A9 */	bl Inv__7cSAngleCFv
/* 8008D244  7C 64 1B 78 */	mr r4, r3
/* 8008D248  38 61 00 70 */	addi r3, r1, 0x70
/* 8008D24C  48 1E 3D 4D */	bl __ct__7cSAngleFs
/* 8008D250  38 61 05 78 */	addi r3, r1, 0x578
/* 8008D254  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8008D258  38 A1 00 70 */	addi r5, r1, 0x70
/* 8008D25C  4B FF B1 29 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8008D260  38 61 08 18 */	addi r3, r1, 0x818
/* 8008D264  38 81 05 78 */	addi r4, r1, 0x578
/* 8008D268  48 00 A5 8D */	bl __ct__4cXyzFRC4cXyz
/* 8008D26C  38 61 05 78 */	addi r3, r1, 0x578
/* 8008D270  38 80 FF FF */	li r4, -1
/* 8008D274  4B F7 BF 11 */	bl __dt__4cXyzFv
/* 8008D278  38 61 00 70 */	addi r3, r1, 0x70
/* 8008D27C  38 80 FF FF */	li r4, -1
/* 8008D280  4B FA 32 91 */	bl __dt__7cSAngleFv
/* 8008D284  38 61 05 6C */	addi r3, r1, 0x56c
/* 8008D288  38 9E 00 64 */	addi r4, r30, 0x64
/* 8008D28C  38 A1 08 18 */	addi r5, r1, 0x818
/* 8008D290  48 1D 98 55 */	bl __pl__4cXyzCFRC3Vec
/* 8008D294  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8008D298  38 81 05 6C */	addi r4, r1, 0x56c
/* 8008D29C  48 00 A5 3D */	bl __as__4cXyzFRC4cXyz
/* 8008D2A0  38 61 05 6C */	addi r3, r1, 0x56c
/* 8008D2A4  38 80 FF FF */	li r4, -1
/* 8008D2A8  4B F7 BE DD */	bl __dt__4cXyzFv
/* 8008D2AC  38 61 08 18 */	addi r3, r1, 0x818
/* 8008D2B0  38 80 FF FF */	li r4, -1
/* 8008D2B4  4B F7 BE D1 */	bl __dt__4cXyzFv
lbl_8008D2B8:
/* 8008D2B8  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 8008D2BC  2C 00 00 61 */	cmpwi r0, 0x61
/* 8008D2C0  40 82 00 80 */	bne lbl_8008D340
/* 8008D2C4  38 7E 00 62 */	addi r3, r30, 0x62
/* 8008D2C8  48 1E 3E 21 */	bl Inv__7cSAngleCFv
/* 8008D2CC  7C 64 1B 78 */	mr r4, r3
/* 8008D2D0  38 61 00 6C */	addi r3, r1, 0x6c
/* 8008D2D4  48 1E 3C C5 */	bl __ct__7cSAngleFs
/* 8008D2D8  38 61 05 60 */	addi r3, r1, 0x560
/* 8008D2DC  38 9F 00 20 */	addi r4, r31, 0x20
/* 8008D2E0  38 A1 00 6C */	addi r5, r1, 0x6c
/* 8008D2E4  4B FF B0 A1 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8008D2E8  38 61 08 0C */	addi r3, r1, 0x80c
/* 8008D2EC  38 81 05 60 */	addi r4, r1, 0x560
/* 8008D2F0  48 00 A5 05 */	bl __ct__4cXyzFRC4cXyz
/* 8008D2F4  38 61 05 60 */	addi r3, r1, 0x560
/* 8008D2F8  38 80 FF FF */	li r4, -1
/* 8008D2FC  4B F7 BE 89 */	bl __dt__4cXyzFv
/* 8008D300  38 61 00 6C */	addi r3, r1, 0x6c
/* 8008D304  38 80 FF FF */	li r4, -1
/* 8008D308  4B FA 32 09 */	bl __dt__7cSAngleFv
/* 8008D30C  38 61 05 54 */	addi r3, r1, 0x554
/* 8008D310  38 9E 00 70 */	addi r4, r30, 0x70
/* 8008D314  38 A1 08 0C */	addi r5, r1, 0x80c
/* 8008D318  48 1D 97 CD */	bl __pl__4cXyzCFRC3Vec
/* 8008D31C  38 7F 00 20 */	addi r3, r31, 0x20
/* 8008D320  38 81 05 54 */	addi r4, r1, 0x554
/* 8008D324  48 00 A4 B5 */	bl __as__4cXyzFRC4cXyz
/* 8008D328  38 61 05 54 */	addi r3, r1, 0x554
/* 8008D32C  38 80 FF FF */	li r4, -1
/* 8008D330  4B F7 BE 55 */	bl __dt__4cXyzFv
/* 8008D334  38 61 08 0C */	addi r3, r1, 0x80c
/* 8008D338  38 80 FF FF */	li r4, -1
/* 8008D33C  4B F7 BE 49 */	bl __dt__4cXyzFv
lbl_8008D340:
/* 8008D340  38 7E 00 28 */	addi r3, r30, 0x28
/* 8008D344  48 1E 48 39 */	bl Invert__7cSGlobeFv
/* 8008D348  7C 64 1B 78 */	mr r4, r3
/* 8008D34C  38 7F 00 60 */	addi r3, r31, 0x60
/* 8008D350  48 00 14 25 */	bl __as__7cSGlobeFRC7cSGlobe
/* 8008D354  38 00 00 01 */	li r0, 1
/* 8008D358  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_8008D35C:
/* 8008D35C  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8008D360  28 00 00 00 */	cmplwi r0, 0
/* 8008D364  41 82 00 5C */	beq lbl_8008D3C0
/* 8008D368  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 8008D36C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8008D370  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8008D374  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8008D378  38 81 00 CC */	addi r4, r1, 0xcc
/* 8008D37C  4B F8 C4 7D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8008D380  28 03 00 00 */	cmplwi r3, 0
/* 8008D384  40 82 00 3C */	bne lbl_8008D3C0
/* 8008D388  38 61 08 60 */	addi r3, r1, 0x860
/* 8008D38C  38 80 FF FF */	li r4, -1
/* 8008D390  4B F7 BD F5 */	bl __dt__4cXyzFv
/* 8008D394  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008D398  38 80 FF FF */	li r4, -1
/* 8008D39C  4B F7 BD E9 */	bl __dt__4cXyzFv
/* 8008D3A0  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008D3A4  38 80 FF FF */	li r4, -1
/* 8008D3A8  48 00 A4 69 */	bl func_80097810
/* 8008D3AC  38 61 09 00 */	addi r3, r1, 0x900
/* 8008D3B0  38 80 FF FF */	li r4, -1
/* 8008D3B4  48 00 A4 5D */	bl func_80097810
/* 8008D3B8  38 60 00 01 */	li r3, 1
/* 8008D3BC  48 00 13 6C */	b lbl_8008E728
lbl_8008D3C0:
/* 8008D3C0  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 8008D3C4  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 8008D3C8  7C 03 20 40 */	cmplw r3, r4
/* 8008D3CC  41 80 00 10 */	blt lbl_8008D3DC
/* 8008D3D0  3B A0 00 01 */	li r29, 1
/* 8008D3D4  C3 E2 8E DC */	lfs f31, lit_5346(r2)
/* 8008D3D8  48 00 00 94 */	b lbl_8008D46C
lbl_8008D3DC:
/* 8008D3DC  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8008D3E0  2C 00 FF FF */	cmpwi r0, -1
/* 8008D3E4  40 82 00 20 */	bne lbl_8008D404
/* 8008D3E8  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8008D3EC  48 00 A5 19 */	bl Step__14d2DBSplinePathFv
/* 8008D3F0  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8008D3F4  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 8008D3F8  48 00 A7 29 */	bl Calc__14d2DBSplinePathFPf
/* 8008D3FC  FF E0 08 90 */	fmr f31, f1
/* 8008D400  48 00 00 6C */	b lbl_8008D46C
lbl_8008D404:
/* 8008D404  2C 00 00 00 */	cmpwi r0, 0
/* 8008D408  41 82 00 2C */	beq lbl_8008D434
/* 8008D40C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8008D410  48 00 A4 F5 */	bl Step__14d2DBSplinePathFv
/* 8008D414  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8008D418  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8008D41C  54 00 10 3A */	slwi r0, r0, 2
/* 8008D420  38 81 08 9C */	addi r4, r1, 0x89c
/* 8008D424  7C 84 00 2E */	lwzx r4, r4, r0
/* 8008D428  48 00 A6 F9 */	bl Calc__14d2DBSplinePathFPf
/* 8008D42C  FF E0 08 90 */	fmr f31, f1
/* 8008D430  48 00 00 3C */	b lbl_8008D46C
lbl_8008D434:
/* 8008D434  38 03 00 01 */	addi r0, r3, 1
/* 8008D438  C8 22 8E E8 */	lfd f1, lit_5846(r2)
/* 8008D43C  90 01 09 24 */	stw r0, 0x924(r1)
/* 8008D440  3C 60 43 30 */	lis r3, 0x4330
/* 8008D444  90 61 09 20 */	stw r3, 0x920(r1)
/* 8008D448  C8 01 09 20 */	lfd f0, 0x920(r1)
/* 8008D44C  EC 40 08 28 */	fsubs f2, f0, f1
/* 8008D450  C8 22 8E F8 */	lfd f1, lit_5962(r2)
/* 8008D454  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8008D458  90 01 09 1C */	stw r0, 0x91c(r1)
/* 8008D45C  90 61 09 18 */	stw r3, 0x918(r1)
/* 8008D460  C8 01 09 18 */	lfd f0, 0x918(r1)
/* 8008D464  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008D468  EF E2 00 24 */	fdivs f31, f2, f0
lbl_8008D46C:
/* 8008D46C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D470  28 05 00 00 */	cmplwi r5, 0
/* 8008D474  41 82 06 C8 */	beq lbl_8008DB3C
/* 8008D478  88 7F 00 48 */	lbz r3, 0x48(r31)
/* 8008D47C  7C 60 07 74 */	extsb r0, r3
/* 8008D480  2C 00 00 74 */	cmpwi r0, 0x74
/* 8008D484  40 82 00 48 */	bne lbl_8008D4CC
/* 8008D488  38 61 05 48 */	addi r3, r1, 0x548
/* 8008D48C  7F C4 F3 78 */	mr r4, r30
/* 8008D490  48 00 A2 8D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008D494  38 61 05 3C */	addi r3, r1, 0x53c
/* 8008D498  38 81 05 48 */	addi r4, r1, 0x548
/* 8008D49C  38 BF 00 0C */	addi r5, r31, 0xc
/* 8008D4A0  48 1D 96 45 */	bl __pl__4cXyzCFRC3Vec
/* 8008D4A4  38 61 09 0C */	addi r3, r1, 0x90c
/* 8008D4A8  38 81 05 3C */	addi r4, r1, 0x53c
/* 8008D4AC  48 00 A3 2D */	bl __as__4cXyzFRC4cXyz
/* 8008D4B0  38 61 05 3C */	addi r3, r1, 0x53c
/* 8008D4B4  38 80 FF FF */	li r4, -1
/* 8008D4B8  4B F7 BC CD */	bl __dt__4cXyzFv
/* 8008D4BC  38 61 05 48 */	addi r3, r1, 0x548
/* 8008D4C0  38 80 FF FF */	li r4, -1
/* 8008D4C4  4B F7 BC C1 */	bl __dt__4cXyzFv
/* 8008D4C8  48 00 01 30 */	b lbl_8008D5F8
lbl_8008D4CC:
/* 8008D4CC  2C 00 00 63 */	cmpwi r0, 0x63
/* 8008D4D0  40 82 00 A4 */	bne lbl_8008D574
/* 8008D4D4  38 61 01 34 */	addi r3, r1, 0x134
/* 8008D4D8  38 9F 00 0C */	addi r4, r31, 0xc
/* 8008D4DC  48 1E 43 A5 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008D4E0  38 61 00 68 */	addi r3, r1, 0x68
/* 8008D4E4  38 9F 00 66 */	addi r4, r31, 0x66
/* 8008D4E8  38 A1 01 3A */	addi r5, r1, 0x13a
/* 8008D4EC  48 1E 3C 89 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008D4F0  38 61 01 34 */	addi r3, r1, 0x134
/* 8008D4F4  38 81 00 68 */	addi r4, r1, 0x68
/* 8008D4F8  48 00 13 9D */	bl U__7cSGlobeFRC7cSAngle
/* 8008D4FC  38 61 00 68 */	addi r3, r1, 0x68
/* 8008D500  38 80 FF FF */	li r4, -1
/* 8008D504  4B FA 30 0D */	bl __dt__7cSAngleFv
/* 8008D508  38 61 05 30 */	addi r3, r1, 0x530
/* 8008D50C  7F C4 F3 78 */	mr r4, r30
/* 8008D510  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D514  48 00 A2 09 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008D518  38 61 05 24 */	addi r3, r1, 0x524
/* 8008D51C  38 81 01 34 */	addi r4, r1, 0x134
/* 8008D520  48 1E 45 95 */	bl Xyz__7cSGlobeCFv
/* 8008D524  38 61 05 18 */	addi r3, r1, 0x518
/* 8008D528  38 81 05 30 */	addi r4, r1, 0x530
/* 8008D52C  38 A1 05 24 */	addi r5, r1, 0x524
/* 8008D530  48 1D 95 B5 */	bl __pl__4cXyzCFRC3Vec
/* 8008D534  38 61 09 0C */	addi r3, r1, 0x90c
/* 8008D538  38 81 05 18 */	addi r4, r1, 0x518
/* 8008D53C  48 00 A2 9D */	bl __as__4cXyzFRC4cXyz
/* 8008D540  38 61 05 18 */	addi r3, r1, 0x518
/* 8008D544  38 80 FF FF */	li r4, -1
/* 8008D548  4B F7 BC 3D */	bl __dt__4cXyzFv
/* 8008D54C  38 61 05 24 */	addi r3, r1, 0x524
/* 8008D550  38 80 FF FF */	li r4, -1
/* 8008D554  4B F7 BC 31 */	bl __dt__4cXyzFv
/* 8008D558  38 61 05 30 */	addi r3, r1, 0x530
/* 8008D55C  38 80 FF FF */	li r4, -1
/* 8008D560  4B F7 BC 25 */	bl __dt__4cXyzFv
/* 8008D564  38 61 01 34 */	addi r3, r1, 0x134
/* 8008D568  38 80 FF FF */	li r4, -1
/* 8008D56C  4B FE 41 11 */	bl __dt__7cSGlobeFv
/* 8008D570  48 00 00 88 */	b lbl_8008D5F8
lbl_8008D574:
/* 8008D574  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008D578  41 82 00 0C */	beq lbl_8008D584
/* 8008D57C  2C 00 00 57 */	cmpwi r0, 0x57
/* 8008D580  40 82 00 30 */	bne lbl_8008D5B0
lbl_8008D584:
/* 8008D584  38 61 05 0C */	addi r3, r1, 0x50c
/* 8008D588  7F C4 F3 78 */	mr r4, r30
/* 8008D58C  38 DF 00 0C */	addi r6, r31, 0xc
/* 8008D590  48 0D 77 DD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D594  38 61 09 0C */	addi r3, r1, 0x90c
/* 8008D598  38 81 05 0C */	addi r4, r1, 0x50c
/* 8008D59C  48 00 A2 3D */	bl __as__4cXyzFRC4cXyz
/* 8008D5A0  38 61 05 0C */	addi r3, r1, 0x50c
/* 8008D5A4  38 80 FF FF */	li r4, -1
/* 8008D5A8  4B F7 BB DD */	bl __dt__4cXyzFv
/* 8008D5AC  48 00 00 4C */	b lbl_8008D5F8
lbl_8008D5B0:
/* 8008D5B0  48 00 11 A1 */	bl func_8008E750
/* 8008D5B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008D5B8  41 82 00 34 */	beq lbl_8008D5EC
/* 8008D5BC  38 61 05 00 */	addi r3, r1, 0x500
/* 8008D5C0  7F C4 F3 78 */	mr r4, r30
/* 8008D5C4  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D5C8  38 DF 00 0C */	addi r6, r31, 0xc
/* 8008D5CC  48 0D 77 A1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D5D0  38 61 09 0C */	addi r3, r1, 0x90c
/* 8008D5D4  38 81 05 00 */	addi r4, r1, 0x500
/* 8008D5D8  48 00 A2 01 */	bl __as__4cXyzFRC4cXyz
/* 8008D5DC  38 61 05 00 */	addi r3, r1, 0x500
/* 8008D5E0  38 80 FF FF */	li r4, -1
/* 8008D5E4  4B F7 BB A1 */	bl __dt__4cXyzFv
/* 8008D5E8  48 00 00 10 */	b lbl_8008D5F8
lbl_8008D5EC:
/* 8008D5EC  38 61 09 0C */	addi r3, r1, 0x90c
/* 8008D5F0  38 9F 00 0C */	addi r4, r31, 0xc
/* 8008D5F4  48 00 A1 E5 */	bl __as__4cXyzFRC4cXyz
lbl_8008D5F8:
/* 8008D5F8  88 7F 00 49 */	lbz r3, 0x49(r31)
/* 8008D5FC  7C 60 07 74 */	extsb r0, r3
/* 8008D600  2C 00 00 74 */	cmpwi r0, 0x74
/* 8008D604  40 82 00 4C */	bne lbl_8008D650
/* 8008D608  38 61 04 F4 */	addi r3, r1, 0x4f4
/* 8008D60C  7F C4 F3 78 */	mr r4, r30
/* 8008D610  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D614  48 00 A1 09 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008D618  38 61 04 E8 */	addi r3, r1, 0x4e8
/* 8008D61C  38 81 04 F4 */	addi r4, r1, 0x4f4
/* 8008D620  7F E5 FB 78 */	mr r5, r31
/* 8008D624  48 1D 94 C1 */	bl __pl__4cXyzCFRC3Vec
/* 8008D628  38 61 09 00 */	addi r3, r1, 0x900
/* 8008D62C  38 81 04 E8 */	addi r4, r1, 0x4e8
/* 8008D630  48 00 A1 A9 */	bl __as__4cXyzFRC4cXyz
/* 8008D634  38 61 04 E8 */	addi r3, r1, 0x4e8
/* 8008D638  38 80 FF FF */	li r4, -1
/* 8008D63C  4B F7 BB 49 */	bl __dt__4cXyzFv
/* 8008D640  38 61 04 F4 */	addi r3, r1, 0x4f4
/* 8008D644  38 80 FF FF */	li r4, -1
/* 8008D648  4B F7 BB 3D */	bl __dt__4cXyzFv
/* 8008D64C  48 00 01 34 */	b lbl_8008D780
lbl_8008D650:
/* 8008D650  2C 00 00 63 */	cmpwi r0, 0x63
/* 8008D654  40 82 00 A4 */	bne lbl_8008D6F8
/* 8008D658  38 61 01 2C */	addi r3, r1, 0x12c
/* 8008D65C  7F E4 FB 78 */	mr r4, r31
/* 8008D660  48 1E 42 21 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008D664  38 61 00 64 */	addi r3, r1, 0x64
/* 8008D668  38 9F 00 66 */	addi r4, r31, 0x66
/* 8008D66C  38 A1 01 32 */	addi r5, r1, 0x132
/* 8008D670  48 1E 3B 05 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008D674  38 61 01 2C */	addi r3, r1, 0x12c
/* 8008D678  38 81 00 64 */	addi r4, r1, 0x64
/* 8008D67C  48 00 12 19 */	bl U__7cSGlobeFRC7cSAngle
/* 8008D680  38 61 00 64 */	addi r3, r1, 0x64
/* 8008D684  38 80 FF FF */	li r4, -1
/* 8008D688  4B FA 2E 89 */	bl __dt__7cSAngleFv
/* 8008D68C  38 61 04 DC */	addi r3, r1, 0x4dc
/* 8008D690  7F C4 F3 78 */	mr r4, r30
/* 8008D694  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D698  48 00 A0 85 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008D69C  38 61 04 D0 */	addi r3, r1, 0x4d0
/* 8008D6A0  38 81 01 2C */	addi r4, r1, 0x12c
/* 8008D6A4  48 1E 44 11 */	bl Xyz__7cSGlobeCFv
/* 8008D6A8  38 61 04 C4 */	addi r3, r1, 0x4c4
/* 8008D6AC  38 81 04 DC */	addi r4, r1, 0x4dc
/* 8008D6B0  38 A1 04 D0 */	addi r5, r1, 0x4d0
/* 8008D6B4  48 1D 94 31 */	bl __pl__4cXyzCFRC3Vec
/* 8008D6B8  38 61 09 00 */	addi r3, r1, 0x900
/* 8008D6BC  38 81 04 C4 */	addi r4, r1, 0x4c4
/* 8008D6C0  48 00 A1 19 */	bl __as__4cXyzFRC4cXyz
/* 8008D6C4  38 61 04 C4 */	addi r3, r1, 0x4c4
/* 8008D6C8  38 80 FF FF */	li r4, -1
/* 8008D6CC  4B F7 BA B9 */	bl __dt__4cXyzFv
/* 8008D6D0  38 61 04 D0 */	addi r3, r1, 0x4d0
/* 8008D6D4  38 80 FF FF */	li r4, -1
/* 8008D6D8  4B F7 BA AD */	bl __dt__4cXyzFv
/* 8008D6DC  38 61 04 DC */	addi r3, r1, 0x4dc
/* 8008D6E0  38 80 FF FF */	li r4, -1
/* 8008D6E4  4B F7 BA A1 */	bl __dt__4cXyzFv
/* 8008D6E8  38 61 01 2C */	addi r3, r1, 0x12c
/* 8008D6EC  38 80 FF FF */	li r4, -1
/* 8008D6F0  4B FE 3F 8D */	bl __dt__7cSGlobeFv
/* 8008D6F4  48 00 00 8C */	b lbl_8008D780
lbl_8008D6F8:
/* 8008D6F8  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008D6FC  41 82 00 0C */	beq lbl_8008D708
/* 8008D700  2C 00 00 57 */	cmpwi r0, 0x57
/* 8008D704  40 82 00 34 */	bne lbl_8008D738
lbl_8008D708:
/* 8008D708  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 8008D70C  7F C4 F3 78 */	mr r4, r30
/* 8008D710  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D714  7F E6 FB 78 */	mr r6, r31
/* 8008D718  48 0D 76 55 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D71C  38 61 09 00 */	addi r3, r1, 0x900
/* 8008D720  38 81 04 B8 */	addi r4, r1, 0x4b8
/* 8008D724  48 00 A0 B5 */	bl __as__4cXyzFRC4cXyz
/* 8008D728  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 8008D72C  38 80 FF FF */	li r4, -1
/* 8008D730  4B F7 BA 55 */	bl __dt__4cXyzFv
/* 8008D734  48 00 00 4C */	b lbl_8008D780
lbl_8008D738:
/* 8008D738  48 00 10 19 */	bl func_8008E750
/* 8008D73C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008D740  41 82 00 34 */	beq lbl_8008D774
/* 8008D744  38 61 04 AC */	addi r3, r1, 0x4ac
/* 8008D748  7F C4 F3 78 */	mr r4, r30
/* 8008D74C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D750  7F E6 FB 78 */	mr r6, r31
/* 8008D754  48 0D 76 19 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D758  38 61 09 00 */	addi r3, r1, 0x900
/* 8008D75C  38 81 04 AC */	addi r4, r1, 0x4ac
/* 8008D760  48 00 A0 79 */	bl __as__4cXyzFRC4cXyz
/* 8008D764  38 61 04 AC */	addi r3, r1, 0x4ac
/* 8008D768  38 80 FF FF */	li r4, -1
/* 8008D76C  4B F7 BA 19 */	bl __dt__4cXyzFv
/* 8008D770  48 00 00 10 */	b lbl_8008D780
lbl_8008D774:
/* 8008D774  38 61 09 00 */	addi r3, r1, 0x900
/* 8008D778  7F E4 FB 78 */	mr r4, r31
/* 8008D77C  48 00 A0 5D */	bl __as__4cXyzFRC4cXyz
lbl_8008D780:
/* 8008D780  88 7F 00 4A */	lbz r3, 0x4a(r31)
/* 8008D784  7C 60 07 74 */	extsb r0, r3
/* 8008D788  2C 00 00 74 */	cmpwi r0, 0x74
/* 8008D78C  40 82 00 4C */	bne lbl_8008D7D8
/* 8008D790  38 61 04 A0 */	addi r3, r1, 0x4a0
/* 8008D794  7F C4 F3 78 */	mr r4, r30
/* 8008D798  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D79C  48 00 9F 81 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008D7A0  38 61 04 94 */	addi r3, r1, 0x494
/* 8008D7A4  38 81 04 A0 */	addi r4, r1, 0x4a0
/* 8008D7A8  38 BF 00 2C */	addi r5, r31, 0x2c
/* 8008D7AC  48 1D 93 39 */	bl __pl__4cXyzCFRC3Vec
/* 8008D7B0  38 61 08 F4 */	addi r3, r1, 0x8f4
/* 8008D7B4  38 81 04 94 */	addi r4, r1, 0x494
/* 8008D7B8  48 00 A0 21 */	bl __as__4cXyzFRC4cXyz
/* 8008D7BC  38 61 04 94 */	addi r3, r1, 0x494
/* 8008D7C0  38 80 FF FF */	li r4, -1
/* 8008D7C4  4B F7 B9 C1 */	bl __dt__4cXyzFv
/* 8008D7C8  38 61 04 A0 */	addi r3, r1, 0x4a0
/* 8008D7CC  38 80 FF FF */	li r4, -1
/* 8008D7D0  4B F7 B9 B5 */	bl __dt__4cXyzFv
/* 8008D7D4  48 00 01 88 */	b lbl_8008D95C
lbl_8008D7D8:
/* 8008D7D8  2C 00 00 63 */	cmpwi r0, 0x63
/* 8008D7DC  40 82 00 A4 */	bne lbl_8008D880
/* 8008D7E0  38 61 01 24 */	addi r3, r1, 0x124
/* 8008D7E4  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8008D7E8  48 1E 40 99 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008D7EC  38 61 00 60 */	addi r3, r1, 0x60
/* 8008D7F0  38 9F 00 66 */	addi r4, r31, 0x66
/* 8008D7F4  38 A1 01 2A */	addi r5, r1, 0x12a
/* 8008D7F8  48 1E 39 7D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008D7FC  38 61 01 24 */	addi r3, r1, 0x124
/* 8008D800  38 81 00 60 */	addi r4, r1, 0x60
/* 8008D804  48 00 10 91 */	bl U__7cSGlobeFRC7cSAngle
/* 8008D808  38 61 00 60 */	addi r3, r1, 0x60
/* 8008D80C  38 80 FF FF */	li r4, -1
/* 8008D810  4B FA 2D 01 */	bl __dt__7cSAngleFv
/* 8008D814  38 61 04 88 */	addi r3, r1, 0x488
/* 8008D818  7F C4 F3 78 */	mr r4, r30
/* 8008D81C  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D820  48 00 9E FD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008D824  38 61 04 7C */	addi r3, r1, 0x47c
/* 8008D828  38 81 01 24 */	addi r4, r1, 0x124
/* 8008D82C  48 1E 42 89 */	bl Xyz__7cSGlobeCFv
/* 8008D830  38 61 04 70 */	addi r3, r1, 0x470
/* 8008D834  38 81 04 88 */	addi r4, r1, 0x488
/* 8008D838  38 A1 04 7C */	addi r5, r1, 0x47c
/* 8008D83C  48 1D 92 A9 */	bl __pl__4cXyzCFRC3Vec
/* 8008D840  38 61 08 F4 */	addi r3, r1, 0x8f4
/* 8008D844  38 81 04 70 */	addi r4, r1, 0x470
/* 8008D848  48 00 9F 91 */	bl __as__4cXyzFRC4cXyz
/* 8008D84C  38 61 04 70 */	addi r3, r1, 0x470
/* 8008D850  38 80 FF FF */	li r4, -1
/* 8008D854  4B F7 B9 31 */	bl __dt__4cXyzFv
/* 8008D858  38 61 04 7C */	addi r3, r1, 0x47c
/* 8008D85C  38 80 FF FF */	li r4, -1
/* 8008D860  4B F7 B9 25 */	bl __dt__4cXyzFv
/* 8008D864  38 61 04 88 */	addi r3, r1, 0x488
/* 8008D868  38 80 FF FF */	li r4, -1
/* 8008D86C  4B F7 B9 19 */	bl __dt__4cXyzFv
/* 8008D870  38 61 01 24 */	addi r3, r1, 0x124
/* 8008D874  38 80 FF FF */	li r4, -1
/* 8008D878  4B FE 3E 05 */	bl __dt__7cSGlobeFv
/* 8008D87C  48 00 00 E0 */	b lbl_8008D95C
lbl_8008D880:
/* 8008D880  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008D884  41 82 00 0C */	beq lbl_8008D890
/* 8008D888  2C 00 00 57 */	cmpwi r0, 0x57
/* 8008D88C  40 82 00 34 */	bne lbl_8008D8C0
lbl_8008D890:
/* 8008D890  38 61 04 64 */	addi r3, r1, 0x464
/* 8008D894  7F C4 F3 78 */	mr r4, r30
/* 8008D898  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D89C  38 DF 00 2C */	addi r6, r31, 0x2c
/* 8008D8A0  48 0D 74 CD */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D8A4  38 61 08 F4 */	addi r3, r1, 0x8f4
/* 8008D8A8  38 81 04 64 */	addi r4, r1, 0x464
/* 8008D8AC  48 00 9F 2D */	bl __as__4cXyzFRC4cXyz
/* 8008D8B0  38 61 04 64 */	addi r3, r1, 0x464
/* 8008D8B4  38 80 FF FF */	li r4, -1
/* 8008D8B8  4B F7 B8 CD */	bl __dt__4cXyzFv
/* 8008D8BC  48 00 00 A0 */	b lbl_8008D95C
lbl_8008D8C0:
/* 8008D8C0  48 00 0E 91 */	bl func_8008E750
/* 8008D8C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008D8C8  41 82 00 34 */	beq lbl_8008D8FC
/* 8008D8CC  38 61 04 58 */	addi r3, r1, 0x458
/* 8008D8D0  7F C4 F3 78 */	mr r4, r30
/* 8008D8D4  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D8D8  38 DF 00 2C */	addi r6, r31, 0x2c
/* 8008D8DC  48 0D 74 91 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008D8E0  38 61 08 F4 */	addi r3, r1, 0x8f4
/* 8008D8E4  38 81 04 58 */	addi r4, r1, 0x458
/* 8008D8E8  48 00 9E F1 */	bl __as__4cXyzFRC4cXyz
/* 8008D8EC  38 61 04 58 */	addi r3, r1, 0x458
/* 8008D8F0  38 80 FF FF */	li r4, -1
/* 8008D8F4  4B F7 B8 91 */	bl __dt__4cXyzFv
/* 8008D8F8  48 00 00 64 */	b lbl_8008D95C
lbl_8008D8FC:
/* 8008D8FC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8008D900  2C 00 00 02 */	cmpwi r0, 2
/* 8008D904  40 82 00 4C */	bne lbl_8008D950
/* 8008D908  38 61 00 5C */	addi r3, r1, 0x5c
/* 8008D90C  7F C4 F3 78 */	mr r4, r30
/* 8008D910  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D914  48 00 9E 25 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008D918  38 61 04 4C */	addi r3, r1, 0x44c
/* 8008D91C  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8008D920  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8008D924  4B FF AA 61 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8008D928  38 61 08 F4 */	addi r3, r1, 0x8f4
/* 8008D92C  38 81 04 4C */	addi r4, r1, 0x44c
/* 8008D930  48 00 9E A9 */	bl __as__4cXyzFRC4cXyz
/* 8008D934  38 61 04 4C */	addi r3, r1, 0x44c
/* 8008D938  38 80 FF FF */	li r4, -1
/* 8008D93C  4B F7 B8 49 */	bl __dt__4cXyzFv
/* 8008D940  38 61 00 5C */	addi r3, r1, 0x5c
/* 8008D944  38 80 FF FF */	li r4, -1
/* 8008D948  4B FA 2B C9 */	bl __dt__7cSAngleFv
/* 8008D94C  48 00 00 10 */	b lbl_8008D95C
lbl_8008D950:
/* 8008D950  38 61 08 F4 */	addi r3, r1, 0x8f4
/* 8008D954  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8008D958  48 00 9E 81 */	bl __as__4cXyzFRC4cXyz
lbl_8008D95C:
/* 8008D95C  88 7F 00 4B */	lbz r3, 0x4b(r31)
/* 8008D960  7C 60 07 74 */	extsb r0, r3
/* 8008D964  2C 00 00 74 */	cmpwi r0, 0x74
/* 8008D968  40 82 00 4C */	bne lbl_8008D9B4
/* 8008D96C  38 61 04 40 */	addi r3, r1, 0x440
/* 8008D970  7F C4 F3 78 */	mr r4, r30
/* 8008D974  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D978  48 00 9D A5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008D97C  38 61 04 34 */	addi r3, r1, 0x434
/* 8008D980  38 81 04 40 */	addi r4, r1, 0x440
/* 8008D984  38 BF 00 20 */	addi r5, r31, 0x20
/* 8008D988  48 1D 91 5D */	bl __pl__4cXyzCFRC3Vec
/* 8008D98C  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008D990  38 81 04 34 */	addi r4, r1, 0x434
/* 8008D994  48 00 9E 45 */	bl __as__4cXyzFRC4cXyz
/* 8008D998  38 61 04 34 */	addi r3, r1, 0x434
/* 8008D99C  38 80 FF FF */	li r4, -1
/* 8008D9A0  4B F7 B7 E5 */	bl __dt__4cXyzFv
/* 8008D9A4  38 61 04 40 */	addi r3, r1, 0x440
/* 8008D9A8  38 80 FF FF */	li r4, -1
/* 8008D9AC  4B F7 B7 D9 */	bl __dt__4cXyzFv
/* 8008D9B0  48 00 01 BC */	b lbl_8008DB6C
lbl_8008D9B4:
/* 8008D9B4  2C 00 00 63 */	cmpwi r0, 0x63
/* 8008D9B8  40 82 00 A4 */	bne lbl_8008DA5C
/* 8008D9BC  38 61 01 1C */	addi r3, r1, 0x11c
/* 8008D9C0  38 9F 00 20 */	addi r4, r31, 0x20
/* 8008D9C4  48 1E 3E BD */	bl __ct__7cSGlobeFRC4cXyz
/* 8008D9C8  38 61 00 58 */	addi r3, r1, 0x58
/* 8008D9CC  38 9F 00 66 */	addi r4, r31, 0x66
/* 8008D9D0  38 A1 01 22 */	addi r5, r1, 0x122
/* 8008D9D4  48 1E 37 A1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008D9D8  38 61 01 1C */	addi r3, r1, 0x11c
/* 8008D9DC  38 81 00 58 */	addi r4, r1, 0x58
/* 8008D9E0  48 00 0E B5 */	bl U__7cSGlobeFRC7cSAngle
/* 8008D9E4  38 61 00 58 */	addi r3, r1, 0x58
/* 8008D9E8  38 80 FF FF */	li r4, -1
/* 8008D9EC  4B FA 2B 25 */	bl __dt__7cSAngleFv
/* 8008D9F0  38 61 04 28 */	addi r3, r1, 0x428
/* 8008D9F4  7F C4 F3 78 */	mr r4, r30
/* 8008D9F8  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008D9FC  48 00 9D 21 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008DA00  38 61 04 1C */	addi r3, r1, 0x41c
/* 8008DA04  38 81 01 1C */	addi r4, r1, 0x11c
/* 8008DA08  48 1E 40 AD */	bl Xyz__7cSGlobeCFv
/* 8008DA0C  38 61 04 10 */	addi r3, r1, 0x410
/* 8008DA10  38 81 04 28 */	addi r4, r1, 0x428
/* 8008DA14  38 A1 04 1C */	addi r5, r1, 0x41c
/* 8008DA18  48 1D 90 CD */	bl __pl__4cXyzCFRC3Vec
/* 8008DA1C  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008DA20  38 81 04 10 */	addi r4, r1, 0x410
/* 8008DA24  48 00 9D B5 */	bl __as__4cXyzFRC4cXyz
/* 8008DA28  38 61 04 10 */	addi r3, r1, 0x410
/* 8008DA2C  38 80 FF FF */	li r4, -1
/* 8008DA30  4B F7 B7 55 */	bl __dt__4cXyzFv
/* 8008DA34  38 61 04 1C */	addi r3, r1, 0x41c
/* 8008DA38  38 80 FF FF */	li r4, -1
/* 8008DA3C  4B F7 B7 49 */	bl __dt__4cXyzFv
/* 8008DA40  38 61 04 28 */	addi r3, r1, 0x428
/* 8008DA44  38 80 FF FF */	li r4, -1
/* 8008DA48  4B F7 B7 3D */	bl __dt__4cXyzFv
/* 8008DA4C  38 61 01 1C */	addi r3, r1, 0x11c
/* 8008DA50  38 80 FF FF */	li r4, -1
/* 8008DA54  4B FE 3C 29 */	bl __dt__7cSGlobeFv
/* 8008DA58  48 00 01 14 */	b lbl_8008DB6C
lbl_8008DA5C:
/* 8008DA5C  2C 00 00 77 */	cmpwi r0, 0x77
/* 8008DA60  41 82 00 0C */	beq lbl_8008DA6C
/* 8008DA64  2C 00 00 57 */	cmpwi r0, 0x57
/* 8008DA68  40 82 00 34 */	bne lbl_8008DA9C
lbl_8008DA6C:
/* 8008DA6C  38 61 04 04 */	addi r3, r1, 0x404
/* 8008DA70  7F C4 F3 78 */	mr r4, r30
/* 8008DA74  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008DA78  38 DF 00 20 */	addi r6, r31, 0x20
/* 8008DA7C  48 0D 72 F1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008DA80  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008DA84  38 81 04 04 */	addi r4, r1, 0x404
/* 8008DA88  48 00 9D 51 */	bl __as__4cXyzFRC4cXyz
/* 8008DA8C  38 61 04 04 */	addi r3, r1, 0x404
/* 8008DA90  38 80 FF FF */	li r4, -1
/* 8008DA94  4B F7 B6 F1 */	bl __dt__4cXyzFv
/* 8008DA98  48 00 00 D4 */	b lbl_8008DB6C
lbl_8008DA9C:
/* 8008DA9C  48 00 0C B5 */	bl func_8008E750
/* 8008DAA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008DAA4  41 82 00 34 */	beq lbl_8008DAD8
/* 8008DAA8  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 8008DAAC  7F C4 F3 78 */	mr r4, r30
/* 8008DAB0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008DAB4  38 DF 00 20 */	addi r6, r31, 0x20
/* 8008DAB8  48 0D 72 B5 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008DABC  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008DAC0  38 81 03 F8 */	addi r4, r1, 0x3f8
/* 8008DAC4  48 00 9D 15 */	bl __as__4cXyzFRC4cXyz
/* 8008DAC8  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 8008DACC  38 80 FF FF */	li r4, -1
/* 8008DAD0  4B F7 B6 B5 */	bl __dt__4cXyzFv
/* 8008DAD4  48 00 00 98 */	b lbl_8008DB6C
lbl_8008DAD8:
/* 8008DAD8  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8008DADC  2C 00 00 02 */	cmpwi r0, 2
/* 8008DAE0  40 82 00 4C */	bne lbl_8008DB2C
/* 8008DAE4  38 61 00 54 */	addi r3, r1, 0x54
/* 8008DAE8  7F C4 F3 78 */	mr r4, r30
/* 8008DAEC  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8008DAF0  48 00 9C 49 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8008DAF4  38 61 03 EC */	addi r3, r1, 0x3ec
/* 8008DAF8  38 9F 00 20 */	addi r4, r31, 0x20
/* 8008DAFC  38 A1 00 54 */	addi r5, r1, 0x54
/* 8008DB00  4B FF A8 85 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8008DB04  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008DB08  38 81 03 EC */	addi r4, r1, 0x3ec
/* 8008DB0C  48 00 9C CD */	bl __as__4cXyzFRC4cXyz
/* 8008DB10  38 61 03 EC */	addi r3, r1, 0x3ec
/* 8008DB14  38 80 FF FF */	li r4, -1
/* 8008DB18  4B F7 B6 6D */	bl __dt__4cXyzFv
/* 8008DB1C  38 61 00 54 */	addi r3, r1, 0x54
/* 8008DB20  38 80 FF FF */	li r4, -1
/* 8008DB24  4B FA 29 ED */	bl __dt__7cSAngleFv
/* 8008DB28  48 00 00 44 */	b lbl_8008DB6C
lbl_8008DB2C:
/* 8008DB2C  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008DB30  38 9F 00 20 */	addi r4, r31, 0x20
/* 8008DB34  48 00 9C A5 */	bl __as__4cXyzFRC4cXyz
/* 8008DB38  48 00 00 34 */	b lbl_8008DB6C
lbl_8008DB3C:
/* 8008DB3C  38 61 09 0C */	addi r3, r1, 0x90c
/* 8008DB40  38 9F 00 0C */	addi r4, r31, 0xc
/* 8008DB44  48 00 9C 95 */	bl __as__4cXyzFRC4cXyz
/* 8008DB48  38 61 09 00 */	addi r3, r1, 0x900
/* 8008DB4C  7F E4 FB 78 */	mr r4, r31
/* 8008DB50  48 00 9C 89 */	bl __as__4cXyzFRC4cXyz
/* 8008DB54  38 61 08 F4 */	addi r3, r1, 0x8f4
/* 8008DB58  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8008DB5C  48 00 9C 7D */	bl __as__4cXyzFRC4cXyz
/* 8008DB60  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008DB64  38 9F 00 20 */	addi r4, r31, 0x20
/* 8008DB68  48 00 9C 71 */	bl __as__4cXyzFRC4cXyz
lbl_8008DB6C:
/* 8008DB6C  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8008DB70  2C 00 00 01 */	cmpwi r0, 1
/* 8008DB74  40 82 02 80 */	bne lbl_8008DDF4
/* 8008DB78  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 8008DB7C  3B 81 08 F4 */	addi r28, r1, 0x8f4
/* 8008DB80  7F 84 E3 78 */	mr r4, r28
/* 8008DB84  3B 61 09 0C */	addi r27, r1, 0x90c
/* 8008DB88  7F 65 DB 78 */	mr r5, r27
/* 8008DB8C  48 1D 8F A9 */	bl __mi__4cXyzCFRC3Vec
/* 8008DB90  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 8008DB94  38 81 03 E0 */	addi r4, r1, 0x3e0
/* 8008DB98  FC 20 F8 90 */	fmr f1, f31
/* 8008DB9C  48 1D 8F E9 */	bl __ml__4cXyzCFf
/* 8008DBA0  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8008DBA4  7F 64 DB 78 */	mr r4, r27
/* 8008DBA8  38 A1 03 D4 */	addi r5, r1, 0x3d4
/* 8008DBAC  48 1D 8F 39 */	bl __pl__4cXyzCFRC3Vec
/* 8008DBB0  38 61 08 00 */	addi r3, r1, 0x800
/* 8008DBB4  38 81 03 C8 */	addi r4, r1, 0x3c8
/* 8008DBB8  48 00 9C 21 */	bl __as__4cXyzFRC4cXyz
/* 8008DBBC  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8008DBC0  38 80 FF FF */	li r4, -1
/* 8008DBC4  4B F7 B5 C1 */	bl __dt__4cXyzFv
/* 8008DBC8  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 8008DBCC  38 80 FF FF */	li r4, -1
/* 8008DBD0  4B F7 B5 B5 */	bl __dt__4cXyzFv
/* 8008DBD4  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 8008DBD8  38 80 FF FF */	li r4, -1
/* 8008DBDC  4B F7 B5 A9 */	bl __dt__4cXyzFv
/* 8008DBE0  38 61 03 BC */	addi r3, r1, 0x3bc
/* 8008DBE4  38 81 08 00 */	addi r4, r1, 0x800
/* 8008DBE8  38 BE 00 64 */	addi r5, r30, 0x64
/* 8008DBEC  48 1D 8F 49 */	bl __mi__4cXyzCFRC3Vec
/* 8008DBF0  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 8008DBF4  38 81 03 BC */	addi r4, r1, 0x3bc
/* 8008DBF8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008DBFC  48 1D 8F 89 */	bl __ml__4cXyzCFf
/* 8008DC00  38 7E 00 64 */	addi r3, r30, 0x64
/* 8008DC04  38 81 03 B0 */	addi r4, r1, 0x3b0
/* 8008DC08  48 00 0C FD */	bl __apl__4cXyzFRC3Vec
/* 8008DC0C  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 8008DC10  38 80 FF FF */	li r4, -1
/* 8008DC14  4B F7 B5 71 */	bl __dt__4cXyzFv
/* 8008DC18  38 61 03 BC */	addi r3, r1, 0x3bc
/* 8008DC1C  38 80 FF FF */	li r4, -1
/* 8008DC20  4B F7 B5 65 */	bl __dt__4cXyzFv
/* 8008DC24  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 8008DC28  38 81 09 00 */	addi r4, r1, 0x900
/* 8008DC2C  7F 65 DB 78 */	mr r5, r27
/* 8008DC30  48 1D 8F 05 */	bl __mi__4cXyzCFRC3Vec
/* 8008DC34  38 61 01 14 */	addi r3, r1, 0x114
/* 8008DC38  38 81 03 A4 */	addi r4, r1, 0x3a4
/* 8008DC3C  48 1E 3C 45 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008DC40  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 8008DC44  38 80 FF FF */	li r4, -1
/* 8008DC48  4B F7 B5 3D */	bl __dt__4cXyzFv
/* 8008DC4C  38 61 03 98 */	addi r3, r1, 0x398
/* 8008DC50  38 81 08 E8 */	addi r4, r1, 0x8e8
/* 8008DC54  7F 85 E3 78 */	mr r5, r28
/* 8008DC58  48 1D 8E DD */	bl __mi__4cXyzCFRC3Vec
/* 8008DC5C  38 61 01 0C */	addi r3, r1, 0x10c
/* 8008DC60  38 81 03 98 */	addi r4, r1, 0x398
/* 8008DC64  48 1E 3C 1D */	bl __ct__7cSGlobeFRC4cXyz
/* 8008DC68  38 61 03 98 */	addi r3, r1, 0x398
/* 8008DC6C  38 80 FF FF */	li r4, -1
/* 8008DC70  4B F7 B5 15 */	bl __dt__4cXyzFv
/* 8008DC74  38 61 00 50 */	addi r3, r1, 0x50
/* 8008DC78  38 81 01 10 */	addi r4, r1, 0x110
/* 8008DC7C  3B 61 01 18 */	addi r27, r1, 0x118
/* 8008DC80  7F 65 DB 78 */	mr r5, r27
/* 8008DC84  48 1E 35 21 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008DC88  38 61 00 4C */	addi r3, r1, 0x4c
/* 8008DC8C  38 81 00 50 */	addi r4, r1, 0x50
/* 8008DC90  FC 20 F8 90 */	fmr f1, f31
/* 8008DC94  48 1E 35 D1 */	bl __ml__7cSAngleCFf
/* 8008DC98  38 61 00 48 */	addi r3, r1, 0x48
/* 8008DC9C  7F 64 DB 78 */	mr r4, r27
/* 8008DCA0  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8008DCA4  48 1E 34 D1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008DCA8  38 61 00 44 */	addi r3, r1, 0x44
/* 8008DCAC  38 81 01 12 */	addi r4, r1, 0x112
/* 8008DCB0  3B 61 01 1A */	addi r27, r1, 0x11a
/* 8008DCB4  7F 65 DB 78 */	mr r5, r27
/* 8008DCB8  48 1E 34 ED */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008DCBC  38 61 00 40 */	addi r3, r1, 0x40
/* 8008DCC0  38 81 00 44 */	addi r4, r1, 0x44
/* 8008DCC4  FC 20 F8 90 */	fmr f1, f31
/* 8008DCC8  48 1E 35 9D */	bl __ml__7cSAngleCFf
/* 8008DCCC  38 61 00 3C */	addi r3, r1, 0x3c
/* 8008DCD0  7F 64 DB 78 */	mr r4, r27
/* 8008DCD4  38 A1 00 40 */	addi r5, r1, 0x40
/* 8008DCD8  48 1E 34 9D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008DCDC  38 61 01 04 */	addi r3, r1, 0x104
/* 8008DCE0  C0 21 01 14 */	lfs f1, 0x114(r1)
/* 8008DCE4  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 8008DCE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008DCEC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008DCF0  EC 21 00 2A */	fadds f1, f1, f0
/* 8008DCF4  38 81 00 48 */	addi r4, r1, 0x48
/* 8008DCF8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8008DCFC  48 1E 3B 55 */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8008DD00  38 61 00 3C */	addi r3, r1, 0x3c
/* 8008DD04  38 80 FF FF */	li r4, -1
/* 8008DD08  4B FA 28 09 */	bl __dt__7cSAngleFv
/* 8008DD0C  38 61 00 40 */	addi r3, r1, 0x40
/* 8008DD10  38 80 FF FF */	li r4, -1
/* 8008DD14  4B FA 27 FD */	bl __dt__7cSAngleFv
/* 8008DD18  38 61 00 44 */	addi r3, r1, 0x44
/* 8008DD1C  38 80 FF FF */	li r4, -1
/* 8008DD20  4B FA 27 F1 */	bl __dt__7cSAngleFv
/* 8008DD24  38 61 00 48 */	addi r3, r1, 0x48
/* 8008DD28  38 80 FF FF */	li r4, -1
/* 8008DD2C  4B FA 27 E5 */	bl __dt__7cSAngleFv
/* 8008DD30  38 61 00 4C */	addi r3, r1, 0x4c
/* 8008DD34  38 80 FF FF */	li r4, -1
/* 8008DD38  4B FA 27 D9 */	bl __dt__7cSAngleFv
/* 8008DD3C  38 61 00 50 */	addi r3, r1, 0x50
/* 8008DD40  38 80 FF FF */	li r4, -1
/* 8008DD44  4B FA 27 CD */	bl __dt__7cSAngleFv
/* 8008DD48  38 61 03 8C */	addi r3, r1, 0x38c
/* 8008DD4C  38 81 01 04 */	addi r4, r1, 0x104
/* 8008DD50  48 1E 3D 65 */	bl Xyz__7cSGlobeCFv
/* 8008DD54  38 61 03 80 */	addi r3, r1, 0x380
/* 8008DD58  38 9E 00 64 */	addi r4, r30, 0x64
/* 8008DD5C  38 A1 03 8C */	addi r5, r1, 0x38c
/* 8008DD60  48 1D 8D 85 */	bl __pl__4cXyzCFRC3Vec
/* 8008DD64  38 61 07 F4 */	addi r3, r1, 0x7f4
/* 8008DD68  38 81 03 80 */	addi r4, r1, 0x380
/* 8008DD6C  48 00 9A 6D */	bl __as__4cXyzFRC4cXyz
/* 8008DD70  38 61 03 80 */	addi r3, r1, 0x380
/* 8008DD74  38 80 FF FF */	li r4, -1
/* 8008DD78  4B F7 B4 0D */	bl __dt__4cXyzFv
/* 8008DD7C  38 61 03 8C */	addi r3, r1, 0x38c
/* 8008DD80  38 80 FF FF */	li r4, -1
/* 8008DD84  4B F7 B4 01 */	bl __dt__4cXyzFv
/* 8008DD88  38 61 03 74 */	addi r3, r1, 0x374
/* 8008DD8C  38 81 07 F4 */	addi r4, r1, 0x7f4
/* 8008DD90  38 BE 00 70 */	addi r5, r30, 0x70
/* 8008DD94  48 1D 8D A1 */	bl __mi__4cXyzCFRC3Vec
/* 8008DD98  38 61 03 68 */	addi r3, r1, 0x368
/* 8008DD9C  38 81 03 74 */	addi r4, r1, 0x374
/* 8008DDA0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008DDA4  48 1D 8D E1 */	bl __ml__4cXyzCFf
/* 8008DDA8  38 7E 00 70 */	addi r3, r30, 0x70
/* 8008DDAC  38 81 03 68 */	addi r4, r1, 0x368
/* 8008DDB0  48 00 0B 55 */	bl __apl__4cXyzFRC3Vec
/* 8008DDB4  38 61 03 68 */	addi r3, r1, 0x368
/* 8008DDB8  38 80 FF FF */	li r4, -1
/* 8008DDBC  4B F7 B3 C9 */	bl __dt__4cXyzFv
/* 8008DDC0  38 61 03 74 */	addi r3, r1, 0x374
/* 8008DDC4  38 80 FF FF */	li r4, -1
/* 8008DDC8  4B F7 B3 BD */	bl __dt__4cXyzFv
/* 8008DDCC  38 61 01 04 */	addi r3, r1, 0x104
/* 8008DDD0  38 80 FF FF */	li r4, -1
/* 8008DDD4  4B FE 38 A9 */	bl __dt__7cSGlobeFv
/* 8008DDD8  38 61 01 0C */	addi r3, r1, 0x10c
/* 8008DDDC  38 80 FF FF */	li r4, -1
/* 8008DDE0  4B FE 38 9D */	bl __dt__7cSGlobeFv
/* 8008DDE4  38 61 01 14 */	addi r3, r1, 0x114
/* 8008DDE8  38 80 FF FF */	li r4, -1
/* 8008DDEC  4B FE 38 91 */	bl __dt__7cSGlobeFv
/* 8008DDF0  48 00 08 14 */	b lbl_8008E604
lbl_8008DDF4:
/* 8008DDF4  2C 00 00 03 */	cmpwi r0, 3
/* 8008DDF8  40 82 02 D0 */	bne lbl_8008E0C8
/* 8008DDFC  38 61 03 5C */	addi r3, r1, 0x35c
/* 8008DE00  3B 81 08 F4 */	addi r28, r1, 0x8f4
/* 8008DE04  7F 84 E3 78 */	mr r4, r28
/* 8008DE08  3B 61 09 0C */	addi r27, r1, 0x90c
/* 8008DE0C  7F 65 DB 78 */	mr r5, r27
/* 8008DE10  48 1D 8D 25 */	bl __mi__4cXyzCFRC3Vec
/* 8008DE14  38 61 03 50 */	addi r3, r1, 0x350
/* 8008DE18  38 81 03 5C */	addi r4, r1, 0x35c
/* 8008DE1C  FC 20 F8 90 */	fmr f1, f31
/* 8008DE20  48 1D 8D 65 */	bl __ml__4cXyzCFf
/* 8008DE24  38 61 03 44 */	addi r3, r1, 0x344
/* 8008DE28  7F 64 DB 78 */	mr r4, r27
/* 8008DE2C  38 A1 03 50 */	addi r5, r1, 0x350
/* 8008DE30  48 1D 8C B5 */	bl __pl__4cXyzCFRC3Vec
/* 8008DE34  38 61 08 00 */	addi r3, r1, 0x800
/* 8008DE38  38 81 03 44 */	addi r4, r1, 0x344
/* 8008DE3C  48 00 99 9D */	bl __as__4cXyzFRC4cXyz
/* 8008DE40  38 61 03 44 */	addi r3, r1, 0x344
/* 8008DE44  38 80 FF FF */	li r4, -1
/* 8008DE48  4B F7 B3 3D */	bl __dt__4cXyzFv
/* 8008DE4C  38 61 03 50 */	addi r3, r1, 0x350
/* 8008DE50  38 80 FF FF */	li r4, -1
/* 8008DE54  4B F7 B3 31 */	bl __dt__4cXyzFv
/* 8008DE58  38 61 03 5C */	addi r3, r1, 0x35c
/* 8008DE5C  38 80 FF FF */	li r4, -1
/* 8008DE60  4B F7 B3 25 */	bl __dt__4cXyzFv
/* 8008DE64  38 61 03 38 */	addi r3, r1, 0x338
/* 8008DE68  38 81 08 00 */	addi r4, r1, 0x800
/* 8008DE6C  38 BE 00 64 */	addi r5, r30, 0x64
/* 8008DE70  48 1D 8C C5 */	bl __mi__4cXyzCFRC3Vec
/* 8008DE74  38 61 03 2C */	addi r3, r1, 0x32c
/* 8008DE78  38 81 03 38 */	addi r4, r1, 0x338
/* 8008DE7C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008DE80  48 1D 8D 05 */	bl __ml__4cXyzCFf
/* 8008DE84  38 7E 00 64 */	addi r3, r30, 0x64
/* 8008DE88  38 81 03 2C */	addi r4, r1, 0x32c
/* 8008DE8C  48 00 0A 79 */	bl __apl__4cXyzFRC3Vec
/* 8008DE90  38 61 03 2C */	addi r3, r1, 0x32c
/* 8008DE94  38 80 FF FF */	li r4, -1
/* 8008DE98  4B F7 B2 ED */	bl __dt__4cXyzFv
/* 8008DE9C  38 61 03 38 */	addi r3, r1, 0x338
/* 8008DEA0  38 80 FF FF */	li r4, -1
/* 8008DEA4  4B F7 B2 E1 */	bl __dt__4cXyzFv
/* 8008DEA8  38 61 03 20 */	addi r3, r1, 0x320
/* 8008DEAC  38 81 09 00 */	addi r4, r1, 0x900
/* 8008DEB0  7F 65 DB 78 */	mr r5, r27
/* 8008DEB4  48 1D 8C 81 */	bl __mi__4cXyzCFRC3Vec
/* 8008DEB8  38 61 00 FC */	addi r3, r1, 0xfc
/* 8008DEBC  38 81 03 20 */	addi r4, r1, 0x320
/* 8008DEC0  48 1E 39 C1 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008DEC4  38 61 03 20 */	addi r3, r1, 0x320
/* 8008DEC8  38 80 FF FF */	li r4, -1
/* 8008DECC  4B F7 B2 B9 */	bl __dt__4cXyzFv
/* 8008DED0  38 61 03 14 */	addi r3, r1, 0x314
/* 8008DED4  38 81 08 E8 */	addi r4, r1, 0x8e8
/* 8008DED8  7F 85 E3 78 */	mr r5, r28
/* 8008DEDC  48 1D 8C 59 */	bl __mi__4cXyzCFRC3Vec
/* 8008DEE0  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8008DEE4  38 81 03 14 */	addi r4, r1, 0x314
/* 8008DEE8  48 1E 39 99 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008DEEC  38 61 03 14 */	addi r3, r1, 0x314
/* 8008DEF0  38 80 FF FF */	li r4, -1
/* 8008DEF4  4B F7 B2 91 */	bl __dt__4cXyzFv
/* 8008DEF8  38 61 00 38 */	addi r3, r1, 0x38
/* 8008DEFC  38 81 00 FA */	addi r4, r1, 0xfa
/* 8008DF00  3B 81 01 02 */	addi r28, r1, 0x102
/* 8008DF04  7F 85 E3 78 */	mr r5, r28
/* 8008DF08  48 1E 32 9D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008DF0C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8008DF10  38 81 00 38 */	addi r4, r1, 0x38
/* 8008DF14  48 1E 30 55 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008DF18  38 61 00 38 */	addi r3, r1, 0x38
/* 8008DF1C  38 80 FF FF */	li r4, -1
/* 8008DF20  4B FA 25 F1 */	bl __dt__7cSAngleFv
/* 8008DF24  A8 61 00 B8 */	lha r3, 0xb8(r1)
/* 8008DF28  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008DF2C  7C 03 00 00 */	cmpw r3, r0
/* 8008DF30  40 82 00 18 */	bne lbl_8008DF48
/* 8008DF34  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8008DF38  C0 02 8F 00 */	lfs f0, lit_6682(r2)
/* 8008DF3C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8008DF40  48 1E 30 CD */	bl Val__7cSAngleFf
/* 8008DF44  48 00 00 34 */	b lbl_8008DF78
lbl_8008DF48:
/* 8008DF48  40 81 00 14 */	ble lbl_8008DF5C
/* 8008DF4C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8008DF50  FC 20 F8 90 */	fmr f1, f31
/* 8008DF54  48 1E 33 61 */	bl __amu__7cSAngleFf
/* 8008DF58  48 00 00 20 */	b lbl_8008DF78
lbl_8008DF5C:
/* 8008DF5C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8008DF60  48 1E 30 D1 */	bl Degree__7cSAngleCFv
/* 8008DF64  C0 02 8F 00 */	lfs f0, lit_6682(r2)
/* 8008DF68  EC 00 08 2A */	fadds f0, f0, f1
/* 8008DF6C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8008DF70  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8008DF74  48 1E 30 99 */	bl Val__7cSAngleFf
lbl_8008DF78:
/* 8008DF78  38 61 00 34 */	addi r3, r1, 0x34
/* 8008DF7C  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8008DF80  3B 61 01 00 */	addi r27, r1, 0x100
/* 8008DF84  7F 65 DB 78 */	mr r5, r27
/* 8008DF88  48 1E 32 1D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008DF8C  38 61 00 30 */	addi r3, r1, 0x30
/* 8008DF90  38 81 00 34 */	addi r4, r1, 0x34
/* 8008DF94  FC 20 F8 90 */	fmr f1, f31
/* 8008DF98  48 1E 32 CD */	bl __ml__7cSAngleCFf
/* 8008DF9C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8008DFA0  7F 64 DB 78 */	mr r4, r27
/* 8008DFA4  38 A1 00 30 */	addi r5, r1, 0x30
/* 8008DFA8  48 1E 31 CD */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008DFAC  38 61 00 28 */	addi r3, r1, 0x28
/* 8008DFB0  7F 84 E3 78 */	mr r4, r28
/* 8008DFB4  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 8008DFB8  48 1E 31 BD */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008DFBC  38 61 00 EC */	addi r3, r1, 0xec
/* 8008DFC0  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 8008DFC4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8008DFC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008DFCC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008DFD0  EC 21 00 2A */	fadds f1, f1, f0
/* 8008DFD4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8008DFD8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8008DFDC  48 1E 38 75 */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8008DFE0  38 61 00 28 */	addi r3, r1, 0x28
/* 8008DFE4  38 80 FF FF */	li r4, -1
/* 8008DFE8  4B FA 25 29 */	bl __dt__7cSAngleFv
/* 8008DFEC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8008DFF0  38 80 FF FF */	li r4, -1
/* 8008DFF4  4B FA 25 1D */	bl __dt__7cSAngleFv
/* 8008DFF8  38 61 00 30 */	addi r3, r1, 0x30
/* 8008DFFC  38 80 FF FF */	li r4, -1
/* 8008E000  4B FA 25 11 */	bl __dt__7cSAngleFv
/* 8008E004  38 61 00 34 */	addi r3, r1, 0x34
/* 8008E008  38 80 FF FF */	li r4, -1
/* 8008E00C  4B FA 25 05 */	bl __dt__7cSAngleFv
/* 8008E010  38 61 03 08 */	addi r3, r1, 0x308
/* 8008E014  38 81 00 EC */	addi r4, r1, 0xec
/* 8008E018  48 1E 3A 9D */	bl Xyz__7cSGlobeCFv
/* 8008E01C  38 61 02 FC */	addi r3, r1, 0x2fc
/* 8008E020  38 9E 00 64 */	addi r4, r30, 0x64
/* 8008E024  38 A1 03 08 */	addi r5, r1, 0x308
/* 8008E028  48 1D 8A BD */	bl __pl__4cXyzCFRC3Vec
/* 8008E02C  38 61 07 F4 */	addi r3, r1, 0x7f4
/* 8008E030  38 81 02 FC */	addi r4, r1, 0x2fc
/* 8008E034  48 00 97 A5 */	bl __as__4cXyzFRC4cXyz
/* 8008E038  38 61 02 FC */	addi r3, r1, 0x2fc
/* 8008E03C  38 80 FF FF */	li r4, -1
/* 8008E040  4B F7 B1 45 */	bl __dt__4cXyzFv
/* 8008E044  38 61 03 08 */	addi r3, r1, 0x308
/* 8008E048  38 80 FF FF */	li r4, -1
/* 8008E04C  4B F7 B1 39 */	bl __dt__4cXyzFv
/* 8008E050  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 8008E054  38 81 07 F4 */	addi r4, r1, 0x7f4
/* 8008E058  38 BE 00 70 */	addi r5, r30, 0x70
/* 8008E05C  48 1D 8A D9 */	bl __mi__4cXyzCFRC3Vec
/* 8008E060  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 8008E064  38 81 02 F0 */	addi r4, r1, 0x2f0
/* 8008E068  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E06C  48 1D 8B 19 */	bl __ml__4cXyzCFf
/* 8008E070  38 7E 00 70 */	addi r3, r30, 0x70
/* 8008E074  38 81 02 E4 */	addi r4, r1, 0x2e4
/* 8008E078  48 00 08 8D */	bl __apl__4cXyzFRC3Vec
/* 8008E07C  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 8008E080  38 80 FF FF */	li r4, -1
/* 8008E084  4B F7 B1 01 */	bl __dt__4cXyzFv
/* 8008E088  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 8008E08C  38 80 FF FF */	li r4, -1
/* 8008E090  4B F7 B0 F5 */	bl __dt__4cXyzFv
/* 8008E094  38 61 00 EC */	addi r3, r1, 0xec
/* 8008E098  38 80 FF FF */	li r4, -1
/* 8008E09C  4B FE 35 E1 */	bl __dt__7cSGlobeFv
/* 8008E0A0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8008E0A4  38 80 FF FF */	li r4, -1
/* 8008E0A8  4B FA 24 69 */	bl __dt__7cSAngleFv
/* 8008E0AC  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8008E0B0  38 80 FF FF */	li r4, -1
/* 8008E0B4  4B FE 35 C9 */	bl __dt__7cSGlobeFv
/* 8008E0B8  38 61 00 FC */	addi r3, r1, 0xfc
/* 8008E0BC  38 80 FF FF */	li r4, -1
/* 8008E0C0  4B FE 35 BD */	bl __dt__7cSGlobeFv
/* 8008E0C4  48 00 05 40 */	b lbl_8008E604
lbl_8008E0C8:
/* 8008E0C8  2C 00 00 04 */	cmpwi r0, 4
/* 8008E0CC  40 82 02 D0 */	bne lbl_8008E39C
/* 8008E0D0  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 8008E0D4  3B 81 08 F4 */	addi r28, r1, 0x8f4
/* 8008E0D8  7F 84 E3 78 */	mr r4, r28
/* 8008E0DC  3B 61 09 0C */	addi r27, r1, 0x90c
/* 8008E0E0  7F 65 DB 78 */	mr r5, r27
/* 8008E0E4  48 1D 8A 51 */	bl __mi__4cXyzCFRC3Vec
/* 8008E0E8  38 61 02 CC */	addi r3, r1, 0x2cc
/* 8008E0EC  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 8008E0F0  FC 20 F8 90 */	fmr f1, f31
/* 8008E0F4  48 1D 8A 91 */	bl __ml__4cXyzCFf
/* 8008E0F8  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 8008E0FC  7F 64 DB 78 */	mr r4, r27
/* 8008E100  38 A1 02 CC */	addi r5, r1, 0x2cc
/* 8008E104  48 1D 89 E1 */	bl __pl__4cXyzCFRC3Vec
/* 8008E108  38 61 08 00 */	addi r3, r1, 0x800
/* 8008E10C  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 8008E110  48 00 96 C9 */	bl __as__4cXyzFRC4cXyz
/* 8008E114  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 8008E118  38 80 FF FF */	li r4, -1
/* 8008E11C  4B F7 B0 69 */	bl __dt__4cXyzFv
/* 8008E120  38 61 02 CC */	addi r3, r1, 0x2cc
/* 8008E124  38 80 FF FF */	li r4, -1
/* 8008E128  4B F7 B0 5D */	bl __dt__4cXyzFv
/* 8008E12C  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 8008E130  38 80 FF FF */	li r4, -1
/* 8008E134  4B F7 B0 51 */	bl __dt__4cXyzFv
/* 8008E138  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8008E13C  38 81 08 00 */	addi r4, r1, 0x800
/* 8008E140  38 BE 00 64 */	addi r5, r30, 0x64
/* 8008E144  48 1D 89 F1 */	bl __mi__4cXyzCFRC3Vec
/* 8008E148  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8008E14C  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 8008E150  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E154  48 1D 8A 31 */	bl __ml__4cXyzCFf
/* 8008E158  38 7E 00 64 */	addi r3, r30, 0x64
/* 8008E15C  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 8008E160  48 00 07 A5 */	bl __apl__4cXyzFRC3Vec
/* 8008E164  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8008E168  38 80 FF FF */	li r4, -1
/* 8008E16C  4B F7 B0 19 */	bl __dt__4cXyzFv
/* 8008E170  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 8008E174  38 80 FF FF */	li r4, -1
/* 8008E178  4B F7 B0 0D */	bl __dt__4cXyzFv
/* 8008E17C  38 61 02 9C */	addi r3, r1, 0x29c
/* 8008E180  38 81 09 00 */	addi r4, r1, 0x900
/* 8008E184  7F 65 DB 78 */	mr r5, r27
/* 8008E188  48 1D 89 AD */	bl __mi__4cXyzCFRC3Vec
/* 8008E18C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8008E190  38 81 02 9C */	addi r4, r1, 0x29c
/* 8008E194  48 1E 36 ED */	bl __ct__7cSGlobeFRC4cXyz
/* 8008E198  38 61 02 9C */	addi r3, r1, 0x29c
/* 8008E19C  38 80 FF FF */	li r4, -1
/* 8008E1A0  4B F7 AF E5 */	bl __dt__4cXyzFv
/* 8008E1A4  38 61 02 90 */	addi r3, r1, 0x290
/* 8008E1A8  38 81 08 E8 */	addi r4, r1, 0x8e8
/* 8008E1AC  7F 85 E3 78 */	mr r5, r28
/* 8008E1B0  48 1D 89 85 */	bl __mi__4cXyzCFRC3Vec
/* 8008E1B4  38 61 00 DC */	addi r3, r1, 0xdc
/* 8008E1B8  38 81 02 90 */	addi r4, r1, 0x290
/* 8008E1BC  48 1E 36 C5 */	bl __ct__7cSGlobeFRC4cXyz
/* 8008E1C0  38 61 02 90 */	addi r3, r1, 0x290
/* 8008E1C4  38 80 FF FF */	li r4, -1
/* 8008E1C8  4B F7 AF BD */	bl __dt__4cXyzFv
/* 8008E1CC  38 61 00 24 */	addi r3, r1, 0x24
/* 8008E1D0  38 81 00 E2 */	addi r4, r1, 0xe2
/* 8008E1D4  3B 81 00 EA */	addi r28, r1, 0xea
/* 8008E1D8  7F 85 E3 78 */	mr r5, r28
/* 8008E1DC  48 1E 2F C9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008E1E0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8008E1E4  38 81 00 24 */	addi r4, r1, 0x24
/* 8008E1E8  48 1E 2D 81 */	bl __ct__7cSAngleFRC7cSAngle
/* 8008E1EC  38 61 00 24 */	addi r3, r1, 0x24
/* 8008E1F0  38 80 FF FF */	li r4, -1
/* 8008E1F4  4B FA 23 1D */	bl __dt__7cSAngleFv
/* 8008E1F8  A8 61 00 B4 */	lha r3, 0xb4(r1)
/* 8008E1FC  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8008E200  7C 03 00 00 */	cmpw r3, r0
/* 8008E204  40 82 00 18 */	bne lbl_8008E21C
/* 8008E208  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8008E20C  C0 02 8F 04 */	lfs f0, lit_6683(r2)
/* 8008E210  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8008E214  48 1E 2D F9 */	bl Val__7cSAngleFf
/* 8008E218  48 00 00 34 */	b lbl_8008E24C
lbl_8008E21C:
/* 8008E21C  40 80 00 14 */	bge lbl_8008E230
/* 8008E220  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8008E224  FC 20 F8 90 */	fmr f1, f31
/* 8008E228  48 1E 30 8D */	bl __amu__7cSAngleFf
/* 8008E22C  48 00 00 20 */	b lbl_8008E24C
lbl_8008E230:
/* 8008E230  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8008E234  48 1E 2D FD */	bl Degree__7cSAngleCFv
/* 8008E238  C0 02 8F 04 */	lfs f0, lit_6683(r2)
/* 8008E23C  EC 00 08 2A */	fadds f0, f0, f1
/* 8008E240  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8008E244  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8008E248  48 1E 2D C5 */	bl Val__7cSAngleFf
lbl_8008E24C:
/* 8008E24C  38 61 00 20 */	addi r3, r1, 0x20
/* 8008E250  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8008E254  3B 61 00 E8 */	addi r27, r1, 0xe8
/* 8008E258  7F 65 DB 78 */	mr r5, r27
/* 8008E25C  48 1E 2F 49 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008E260  38 61 00 1C */	addi r3, r1, 0x1c
/* 8008E264  38 81 00 20 */	addi r4, r1, 0x20
/* 8008E268  FC 20 F8 90 */	fmr f1, f31
/* 8008E26C  48 1E 2F F9 */	bl __ml__7cSAngleCFf
/* 8008E270  38 61 00 18 */	addi r3, r1, 0x18
/* 8008E274  7F 64 DB 78 */	mr r4, r27
/* 8008E278  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8008E27C  48 1E 2E F9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008E280  38 61 00 14 */	addi r3, r1, 0x14
/* 8008E284  7F 84 E3 78 */	mr r4, r28
/* 8008E288  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 8008E28C  48 1E 2E E9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8008E290  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8008E294  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 8008E298  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8008E29C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008E2A0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008E2A4  EC 21 00 2A */	fadds f1, f1, f0
/* 8008E2A8  38 81 00 18 */	addi r4, r1, 0x18
/* 8008E2AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8008E2B0  48 1E 35 A1 */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8008E2B4  38 61 00 14 */	addi r3, r1, 0x14
/* 8008E2B8  38 80 FF FF */	li r4, -1
/* 8008E2BC  4B FA 22 55 */	bl __dt__7cSAngleFv
/* 8008E2C0  38 61 00 18 */	addi r3, r1, 0x18
/* 8008E2C4  38 80 FF FF */	li r4, -1
/* 8008E2C8  4B FA 22 49 */	bl __dt__7cSAngleFv
/* 8008E2CC  38 61 00 1C */	addi r3, r1, 0x1c
/* 8008E2D0  38 80 FF FF */	li r4, -1
/* 8008E2D4  4B FA 22 3D */	bl __dt__7cSAngleFv
/* 8008E2D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8008E2DC  38 80 FF FF */	li r4, -1
/* 8008E2E0  4B FA 22 31 */	bl __dt__7cSAngleFv
/* 8008E2E4  38 61 02 84 */	addi r3, r1, 0x284
/* 8008E2E8  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8008E2EC  48 1E 37 C9 */	bl Xyz__7cSGlobeCFv
/* 8008E2F0  38 61 02 78 */	addi r3, r1, 0x278
/* 8008E2F4  38 9E 00 64 */	addi r4, r30, 0x64
/* 8008E2F8  38 A1 02 84 */	addi r5, r1, 0x284
/* 8008E2FC  48 1D 87 E9 */	bl __pl__4cXyzCFRC3Vec
/* 8008E300  38 61 07 F4 */	addi r3, r1, 0x7f4
/* 8008E304  38 81 02 78 */	addi r4, r1, 0x278
/* 8008E308  48 00 94 D1 */	bl __as__4cXyzFRC4cXyz
/* 8008E30C  38 61 02 78 */	addi r3, r1, 0x278
/* 8008E310  38 80 FF FF */	li r4, -1
/* 8008E314  4B F7 AE 71 */	bl __dt__4cXyzFv
/* 8008E318  38 61 02 84 */	addi r3, r1, 0x284
/* 8008E31C  38 80 FF FF */	li r4, -1
/* 8008E320  4B F7 AE 65 */	bl __dt__4cXyzFv
/* 8008E324  38 61 02 6C */	addi r3, r1, 0x26c
/* 8008E328  38 81 07 F4 */	addi r4, r1, 0x7f4
/* 8008E32C  38 BE 00 70 */	addi r5, r30, 0x70
/* 8008E330  48 1D 88 05 */	bl __mi__4cXyzCFRC3Vec
/* 8008E334  38 61 02 60 */	addi r3, r1, 0x260
/* 8008E338  38 81 02 6C */	addi r4, r1, 0x26c
/* 8008E33C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E340  48 1D 88 45 */	bl __ml__4cXyzCFf
/* 8008E344  38 7E 00 70 */	addi r3, r30, 0x70
/* 8008E348  38 81 02 60 */	addi r4, r1, 0x260
/* 8008E34C  48 00 05 B9 */	bl __apl__4cXyzFRC3Vec
/* 8008E350  38 61 02 60 */	addi r3, r1, 0x260
/* 8008E354  38 80 FF FF */	li r4, -1
/* 8008E358  4B F7 AE 2D */	bl __dt__4cXyzFv
/* 8008E35C  38 61 02 6C */	addi r3, r1, 0x26c
/* 8008E360  38 80 FF FF */	li r4, -1
/* 8008E364  4B F7 AE 21 */	bl __dt__4cXyzFv
/* 8008E368  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8008E36C  38 80 FF FF */	li r4, -1
/* 8008E370  4B FE 33 0D */	bl __dt__7cSGlobeFv
/* 8008E374  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8008E378  38 80 FF FF */	li r4, -1
/* 8008E37C  4B FA 21 95 */	bl __dt__7cSAngleFv
/* 8008E380  38 61 00 DC */	addi r3, r1, 0xdc
/* 8008E384  38 80 FF FF */	li r4, -1
/* 8008E388  4B FE 32 F5 */	bl __dt__7cSGlobeFv
/* 8008E38C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8008E390  38 80 FF FF */	li r4, -1
/* 8008E394  4B FE 32 E9 */	bl __dt__7cSGlobeFv
/* 8008E398  48 00 02 6C */	b lbl_8008E604
lbl_8008E39C:
/* 8008E39C  2C 00 00 02 */	cmpwi r0, 2
/* 8008E3A0  40 82 01 18 */	bne lbl_8008E4B8
/* 8008E3A4  38 61 02 54 */	addi r3, r1, 0x254
/* 8008E3A8  38 81 08 F4 */	addi r4, r1, 0x8f4
/* 8008E3AC  FC 20 F8 90 */	fmr f1, f31
/* 8008E3B0  48 1D 87 D5 */	bl __ml__4cXyzCFf
/* 8008E3B4  38 61 02 48 */	addi r3, r1, 0x248
/* 8008E3B8  38 81 09 0C */	addi r4, r1, 0x90c
/* 8008E3BC  38 A1 02 54 */	addi r5, r1, 0x254
/* 8008E3C0  48 1D 87 25 */	bl __pl__4cXyzCFRC3Vec
/* 8008E3C4  38 61 08 00 */	addi r3, r1, 0x800
/* 8008E3C8  38 81 02 48 */	addi r4, r1, 0x248
/* 8008E3CC  48 00 94 0D */	bl __as__4cXyzFRC4cXyz
/* 8008E3D0  38 61 02 48 */	addi r3, r1, 0x248
/* 8008E3D4  38 80 FF FF */	li r4, -1
/* 8008E3D8  4B F7 AD AD */	bl __dt__4cXyzFv
/* 8008E3DC  38 61 02 54 */	addi r3, r1, 0x254
/* 8008E3E0  38 80 FF FF */	li r4, -1
/* 8008E3E4  4B F7 AD A1 */	bl __dt__4cXyzFv
/* 8008E3E8  38 61 02 3C */	addi r3, r1, 0x23c
/* 8008E3EC  38 81 08 00 */	addi r4, r1, 0x800
/* 8008E3F0  38 BE 00 64 */	addi r5, r30, 0x64
/* 8008E3F4  48 1D 87 41 */	bl __mi__4cXyzCFRC3Vec
/* 8008E3F8  38 61 02 30 */	addi r3, r1, 0x230
/* 8008E3FC  38 81 02 3C */	addi r4, r1, 0x23c
/* 8008E400  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E404  48 1D 87 81 */	bl __ml__4cXyzCFf
/* 8008E408  38 7E 00 64 */	addi r3, r30, 0x64
/* 8008E40C  38 81 02 30 */	addi r4, r1, 0x230
/* 8008E410  48 00 04 F5 */	bl __apl__4cXyzFRC3Vec
/* 8008E414  38 61 02 30 */	addi r3, r1, 0x230
/* 8008E418  38 80 FF FF */	li r4, -1
/* 8008E41C  4B F7 AD 69 */	bl __dt__4cXyzFv
/* 8008E420  38 61 02 3C */	addi r3, r1, 0x23c
/* 8008E424  38 80 FF FF */	li r4, -1
/* 8008E428  4B F7 AD 5D */	bl __dt__4cXyzFv
/* 8008E42C  38 61 02 24 */	addi r3, r1, 0x224
/* 8008E430  38 81 08 E8 */	addi r4, r1, 0x8e8
/* 8008E434  FC 20 F8 90 */	fmr f1, f31
/* 8008E438  48 1D 87 4D */	bl __ml__4cXyzCFf
/* 8008E43C  38 61 02 18 */	addi r3, r1, 0x218
/* 8008E440  38 81 09 00 */	addi r4, r1, 0x900
/* 8008E444  38 A1 02 24 */	addi r5, r1, 0x224
/* 8008E448  48 1D 86 9D */	bl __pl__4cXyzCFRC3Vec
/* 8008E44C  38 61 07 F4 */	addi r3, r1, 0x7f4
/* 8008E450  38 81 02 18 */	addi r4, r1, 0x218
/* 8008E454  48 00 93 85 */	bl __as__4cXyzFRC4cXyz
/* 8008E458  38 61 02 18 */	addi r3, r1, 0x218
/* 8008E45C  38 80 FF FF */	li r4, -1
/* 8008E460  4B F7 AD 25 */	bl __dt__4cXyzFv
/* 8008E464  38 61 02 24 */	addi r3, r1, 0x224
/* 8008E468  38 80 FF FF */	li r4, -1
/* 8008E46C  4B F7 AD 19 */	bl __dt__4cXyzFv
/* 8008E470  38 61 02 0C */	addi r3, r1, 0x20c
/* 8008E474  38 81 07 F4 */	addi r4, r1, 0x7f4
/* 8008E478  38 BE 00 70 */	addi r5, r30, 0x70
/* 8008E47C  48 1D 86 B9 */	bl __mi__4cXyzCFRC3Vec
/* 8008E480  38 61 02 00 */	addi r3, r1, 0x200
/* 8008E484  38 81 02 0C */	addi r4, r1, 0x20c
/* 8008E488  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E48C  48 1D 86 F9 */	bl __ml__4cXyzCFf
/* 8008E490  38 7E 00 70 */	addi r3, r30, 0x70
/* 8008E494  38 81 02 00 */	addi r4, r1, 0x200
/* 8008E498  48 00 04 6D */	bl __apl__4cXyzFRC3Vec
/* 8008E49C  38 61 02 00 */	addi r3, r1, 0x200
/* 8008E4A0  38 80 FF FF */	li r4, -1
/* 8008E4A4  4B F7 AC E1 */	bl __dt__4cXyzFv
/* 8008E4A8  38 61 02 0C */	addi r3, r1, 0x20c
/* 8008E4AC  38 80 FF FF */	li r4, -1
/* 8008E4B0  4B F7 AC D5 */	bl __dt__4cXyzFv
/* 8008E4B4  48 00 01 50 */	b lbl_8008E604
lbl_8008E4B8:
/* 8008E4B8  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 8008E4BC  38 81 08 F4 */	addi r4, r1, 0x8f4
/* 8008E4C0  3B 61 09 0C */	addi r27, r1, 0x90c
/* 8008E4C4  7F 65 DB 78 */	mr r5, r27
/* 8008E4C8  48 1D 86 6D */	bl __mi__4cXyzCFRC3Vec
/* 8008E4CC  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 8008E4D0  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 8008E4D4  FC 20 F8 90 */	fmr f1, f31
/* 8008E4D8  48 1D 86 AD */	bl __ml__4cXyzCFf
/* 8008E4DC  38 61 01 DC */	addi r3, r1, 0x1dc
/* 8008E4E0  7F 64 DB 78 */	mr r4, r27
/* 8008E4E4  38 A1 01 E8 */	addi r5, r1, 0x1e8
/* 8008E4E8  48 1D 85 FD */	bl __pl__4cXyzCFRC3Vec
/* 8008E4EC  38 61 08 00 */	addi r3, r1, 0x800
/* 8008E4F0  38 81 01 DC */	addi r4, r1, 0x1dc
/* 8008E4F4  48 00 92 E5 */	bl __as__4cXyzFRC4cXyz
/* 8008E4F8  38 61 01 DC */	addi r3, r1, 0x1dc
/* 8008E4FC  38 80 FF FF */	li r4, -1
/* 8008E500  4B F7 AC 85 */	bl __dt__4cXyzFv
/* 8008E504  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 8008E508  38 80 FF FF */	li r4, -1
/* 8008E50C  4B F7 AC 79 */	bl __dt__4cXyzFv
/* 8008E510  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 8008E514  38 80 FF FF */	li r4, -1
/* 8008E518  4B F7 AC 6D */	bl __dt__4cXyzFv
/* 8008E51C  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8008E520  38 81 08 00 */	addi r4, r1, 0x800
/* 8008E524  38 BE 00 64 */	addi r5, r30, 0x64
/* 8008E528  48 1D 86 0D */	bl __mi__4cXyzCFRC3Vec
/* 8008E52C  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8008E530  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 8008E534  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E538  48 1D 86 4D */	bl __ml__4cXyzCFf
/* 8008E53C  38 7E 00 64 */	addi r3, r30, 0x64
/* 8008E540  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 8008E544  48 00 03 C1 */	bl __apl__4cXyzFRC3Vec
/* 8008E548  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8008E54C  38 80 FF FF */	li r4, -1
/* 8008E550  4B F7 AC 35 */	bl __dt__4cXyzFv
/* 8008E554  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8008E558  38 80 FF FF */	li r4, -1
/* 8008E55C  4B F7 AC 29 */	bl __dt__4cXyzFv
/* 8008E560  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 8008E564  38 81 08 E8 */	addi r4, r1, 0x8e8
/* 8008E568  38 A1 09 00 */	addi r5, r1, 0x900
/* 8008E56C  48 1D 85 C9 */	bl __mi__4cXyzCFRC3Vec
/* 8008E570  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8008E574  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 8008E578  FC 20 F8 90 */	fmr f1, f31
/* 8008E57C  48 1D 86 09 */	bl __ml__4cXyzCFf
/* 8008E580  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8008E584  38 81 09 00 */	addi r4, r1, 0x900
/* 8008E588  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 8008E58C  48 1D 85 59 */	bl __pl__4cXyzCFRC3Vec
/* 8008E590  38 61 07 F4 */	addi r3, r1, 0x7f4
/* 8008E594  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 8008E598  48 00 92 41 */	bl __as__4cXyzFRC4cXyz
/* 8008E59C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8008E5A0  38 80 FF FF */	li r4, -1
/* 8008E5A4  4B F7 AB E1 */	bl __dt__4cXyzFv
/* 8008E5A8  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8008E5AC  38 80 FF FF */	li r4, -1
/* 8008E5B0  4B F7 AB D5 */	bl __dt__4cXyzFv
/* 8008E5B4  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 8008E5B8  38 80 FF FF */	li r4, -1
/* 8008E5BC  4B F7 AB C9 */	bl __dt__4cXyzFv
/* 8008E5C0  38 61 01 94 */	addi r3, r1, 0x194
/* 8008E5C4  38 81 07 F4 */	addi r4, r1, 0x7f4
/* 8008E5C8  38 BE 00 70 */	addi r5, r30, 0x70
/* 8008E5CC  48 1D 85 69 */	bl __mi__4cXyzCFRC3Vec
/* 8008E5D0  38 61 01 88 */	addi r3, r1, 0x188
/* 8008E5D4  38 81 01 94 */	addi r4, r1, 0x194
/* 8008E5D8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E5DC  48 1D 85 A9 */	bl __ml__4cXyzCFf
/* 8008E5E0  38 7E 00 70 */	addi r3, r30, 0x70
/* 8008E5E4  38 81 01 88 */	addi r4, r1, 0x188
/* 8008E5E8  48 00 03 1D */	bl __apl__4cXyzFRC3Vec
/* 8008E5EC  38 61 01 88 */	addi r3, r1, 0x188
/* 8008E5F0  38 80 FF FF */	li r4, -1
/* 8008E5F4  4B F7 AB 91 */	bl __dt__4cXyzFv
/* 8008E5F8  38 61 01 94 */	addi r3, r1, 0x194
/* 8008E5FC  38 80 FF FF */	li r4, -1
/* 8008E600  4B F7 AB 85 */	bl __dt__4cXyzFv
lbl_8008E604:
/* 8008E604  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 8008E608  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E60C  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 8008E610  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8008E614  EC 00 18 28 */	fsubs f0, f0, f3
/* 8008E618  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008E61C  EC 03 00 2A */	fadds f0, f3, f0
/* 8008E620  EC 00 10 28 */	fsubs f0, f0, f2
/* 8008E624  EC 01 00 32 */	fmuls f0, f1, f0
/* 8008E628  EC 02 00 2A */	fadds f0, f2, f0
/* 8008E62C  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 8008E630  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 8008E634  28 00 00 00 */	cmplwi r0, 0
/* 8008E638  41 82 00 7C */	beq lbl_8008E6B4
/* 8008E63C  38 61 00 10 */	addi r3, r1, 0x10
/* 8008E640  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8008E644  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8008E648  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008E64C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8008E650  EC 21 00 2A */	fadds f1, f1, f0
/* 8008E654  48 1E 29 75 */	bl __ct__7cSAngleFf
/* 8008E658  38 61 00 0C */	addi r3, r1, 0xc
/* 8008E65C  38 81 00 10 */	addi r4, r1, 0x10
/* 8008E660  38 BE 00 7C */	addi r5, r30, 0x7c
/* 8008E664  48 1E 2B 41 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8008E668  38 61 00 08 */	addi r3, r1, 8
/* 8008E66C  38 81 00 0C */	addi r4, r1, 0xc
/* 8008E670  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008E674  48 1E 2B F1 */	bl __ml__7cSAngleCFf
/* 8008E678  38 7E 00 7C */	addi r3, r30, 0x7c
/* 8008E67C  38 81 00 08 */	addi r4, r1, 8
/* 8008E680  48 1E 2B 55 */	bl __apl__7cSAngleFRC7cSAngle
/* 8008E684  38 61 00 08 */	addi r3, r1, 8
/* 8008E688  38 80 FF FF */	li r4, -1
/* 8008E68C  4B FA 1E 85 */	bl __dt__7cSAngleFv
/* 8008E690  38 61 00 0C */	addi r3, r1, 0xc
/* 8008E694  38 80 FF FF */	li r4, -1
/* 8008E698  4B FA 1E 79 */	bl __dt__7cSAngleFv
/* 8008E69C  38 61 00 10 */	addi r3, r1, 0x10
/* 8008E6A0  38 80 FF FF */	li r4, -1
/* 8008E6A4  4B FA 1E 6D */	bl __dt__7cSAngleFv
/* 8008E6A8  7F C3 F3 78 */	mr r3, r30
/* 8008E6AC  38 80 04 00 */	li r4, 0x400
/* 8008E6B0  48 00 90 C9 */	bl setFlag__9dCamera_cFUl
lbl_8008E6B4:
/* 8008E6B4  38 61 01 7C */	addi r3, r1, 0x17c
/* 8008E6B8  38 9E 00 70 */	addi r4, r30, 0x70
/* 8008E6BC  38 BE 00 64 */	addi r5, r30, 0x64
/* 8008E6C0  48 1D 84 75 */	bl __mi__4cXyzCFRC3Vec
/* 8008E6C4  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8008E6C8  38 81 01 7C */	addi r4, r1, 0x17c
/* 8008E6CC  48 1E 33 A5 */	bl Val__7cSGlobeFRC4cXyz
/* 8008E6D0  38 61 01 7C */	addi r3, r1, 0x17c
/* 8008E6D4  38 80 FF FF */	li r4, -1
/* 8008E6D8  4B F7 AA AD */	bl __dt__4cXyzFv
/* 8008E6DC  38 61 07 F4 */	addi r3, r1, 0x7f4
/* 8008E6E0  38 80 FF FF */	li r4, -1
/* 8008E6E4  4B F7 AA A1 */	bl __dt__4cXyzFv
/* 8008E6E8  38 61 08 00 */	addi r3, r1, 0x800
/* 8008E6EC  38 80 FF FF */	li r4, -1
/* 8008E6F0  4B F7 AA 95 */	bl __dt__4cXyzFv
/* 8008E6F4  38 61 08 60 */	addi r3, r1, 0x860
/* 8008E6F8  38 80 FF FF */	li r4, -1
/* 8008E6FC  4B F7 AA 89 */	bl __dt__4cXyzFv
/* 8008E700  38 61 08 6C */	addi r3, r1, 0x86c
/* 8008E704  38 80 FF FF */	li r4, -1
/* 8008E708  4B F7 AA 7D */	bl __dt__4cXyzFv
/* 8008E70C  38 61 08 E8 */	addi r3, r1, 0x8e8
/* 8008E710  38 80 FF FF */	li r4, -1
/* 8008E714  48 00 90 FD */	bl func_80097810
/* 8008E718  38 61 09 00 */	addi r3, r1, 0x900
/* 8008E71C  38 80 FF FF */	li r4, -1
/* 8008E720  48 00 90 F1 */	bl func_80097810
/* 8008E724  7F A3 EB 78 */	mr r3, r29
lbl_8008E728:
/* 8008E728  E3 E1 09 58 */	psq_l f31, -1704(r1), 0, 0 /* qr0 */
/* 8008E72C  CB E1 09 50 */	lfd f31, 0x950(r1)
/* 8008E730  E3 C1 09 48 */	psq_l f30, -1720(r1), 0, 0 /* qr0 */
/* 8008E734  CB C1 09 40 */	lfd f30, 0x940(r1)
/* 8008E738  39 61 09 40 */	addi r11, r1, 0x940
/* 8008E73C  48 2D 3A E5 */	bl _restgpr_27
/* 8008E740  80 01 09 64 */	lwz r0, 0x964(r1)
/* 8008E744  7C 08 03 A6 */	mtlr r0
/* 8008E748  38 21 09 60 */	addi r1, r1, 0x960
/* 8008E74C  4E 80 00 20 */	blr 

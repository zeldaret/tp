lbl_8082BE20:
/* 8082BE20  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8082BE24  7C 08 02 A6 */	mflr r0
/* 8082BE28  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8082BE2C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8082BE30  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8082BE34  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8082BE38  4B B3 63 91 */	bl _savegpr_24
/* 8082BE3C  7C 7E 1B 78 */	mr r30, r3
/* 8082BE40  3C 80 80 83 */	lis r4, lit_3778@ha /* 0x8082F208@ha */
/* 8082BE44  3B E4 F2 08 */	addi r31, r4, lit_3778@l /* 0x8082F208@l */
/* 8082BE48  80 83 06 64 */	lwz r4, 0x664(r3)
/* 8082BE4C  28 04 00 00 */	cmplwi r4, 0
/* 8082BE50  40 82 00 14 */	bne lbl_8082BE64
/* 8082BE54  38 80 00 08 */	li r4, 8
/* 8082BE58  38 A0 00 00 */	li r5, 0
/* 8082BE5C  4B FF D5 F9 */	bl setActionMode__8daE_ZH_cFii
/* 8082BE60  48 00 07 F0 */	b lbl_8082C650
lbl_8082BE64:
/* 8082BE64  C3 FF 01 80 */	lfs f31, 0x180(r31)
/* 8082BE68  38 61 00 50 */	addi r3, r1, 0x50
/* 8082BE6C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8082BE70  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8082BE74  4B A3 AC C1 */	bl __mi__4cXyzCFRC3Vec
/* 8082BE78  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8082BE7C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8082BE80  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8082BE84  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8082BE88  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8082BE8C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8082BE90  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082BE94  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8082BE98  38 61 00 68 */	addi r3, r1, 0x68
/* 8082BE9C  4B B1 B2 9D */	bl PSVECSquareMag
/* 8082BEA0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082BEA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082BEA8  40 81 00 58 */	ble lbl_8082BF00
/* 8082BEAC  FC 00 08 34 */	frsqrte f0, f1
/* 8082BEB0  C8 9F 01 88 */	lfd f4, 0x188(r31)
/* 8082BEB4  FC 44 00 32 */	fmul f2, f4, f0
/* 8082BEB8  C8 7F 01 90 */	lfd f3, 0x190(r31)
/* 8082BEBC  FC 00 00 32 */	fmul f0, f0, f0
/* 8082BEC0  FC 01 00 32 */	fmul f0, f1, f0
/* 8082BEC4  FC 03 00 28 */	fsub f0, f3, f0
/* 8082BEC8  FC 02 00 32 */	fmul f0, f2, f0
/* 8082BECC  FC 44 00 32 */	fmul f2, f4, f0
/* 8082BED0  FC 00 00 32 */	fmul f0, f0, f0
/* 8082BED4  FC 01 00 32 */	fmul f0, f1, f0
/* 8082BED8  FC 03 00 28 */	fsub f0, f3, f0
/* 8082BEDC  FC 02 00 32 */	fmul f0, f2, f0
/* 8082BEE0  FC 44 00 32 */	fmul f2, f4, f0
/* 8082BEE4  FC 00 00 32 */	fmul f0, f0, f0
/* 8082BEE8  FC 01 00 32 */	fmul f0, f1, f0
/* 8082BEEC  FC 03 00 28 */	fsub f0, f3, f0
/* 8082BEF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8082BEF4  FC 21 00 32 */	fmul f1, f1, f0
/* 8082BEF8  FC 20 08 18 */	frsp f1, f1
/* 8082BEFC  48 00 00 88 */	b lbl_8082BF84
lbl_8082BF00:
/* 8082BF00  C8 1F 01 98 */	lfd f0, 0x198(r31)
/* 8082BF04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082BF08  40 80 00 10 */	bge lbl_8082BF18
/* 8082BF0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8082BF10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8082BF14  48 00 00 70 */	b lbl_8082BF84
lbl_8082BF18:
/* 8082BF18  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8082BF1C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8082BF20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8082BF24  3C 00 7F 80 */	lis r0, 0x7f80
/* 8082BF28  7C 03 00 00 */	cmpw r3, r0
/* 8082BF2C  41 82 00 14 */	beq lbl_8082BF40
/* 8082BF30  40 80 00 40 */	bge lbl_8082BF70
/* 8082BF34  2C 03 00 00 */	cmpwi r3, 0
/* 8082BF38  41 82 00 20 */	beq lbl_8082BF58
/* 8082BF3C  48 00 00 34 */	b lbl_8082BF70
lbl_8082BF40:
/* 8082BF40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082BF44  41 82 00 0C */	beq lbl_8082BF50
/* 8082BF48  38 00 00 01 */	li r0, 1
/* 8082BF4C  48 00 00 28 */	b lbl_8082BF74
lbl_8082BF50:
/* 8082BF50  38 00 00 02 */	li r0, 2
/* 8082BF54  48 00 00 20 */	b lbl_8082BF74
lbl_8082BF58:
/* 8082BF58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082BF5C  41 82 00 0C */	beq lbl_8082BF68
/* 8082BF60  38 00 00 05 */	li r0, 5
/* 8082BF64  48 00 00 10 */	b lbl_8082BF74
lbl_8082BF68:
/* 8082BF68  38 00 00 03 */	li r0, 3
/* 8082BF6C  48 00 00 08 */	b lbl_8082BF74
lbl_8082BF70:
/* 8082BF70  38 00 00 04 */	li r0, 4
lbl_8082BF74:
/* 8082BF74  2C 00 00 01 */	cmpwi r0, 1
/* 8082BF78  40 82 00 0C */	bne lbl_8082BF84
/* 8082BF7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8082BF80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8082BF84:
/* 8082BF84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8082BF88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8082BF8C  80 63 00 00 */	lwz r3, 0(r3)
/* 8082BF90  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8082BF94  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8082BF98  EC 00 08 2A */	fadds f0, f0, f1
/* 8082BF9C  FC 00 00 1E */	fctiwz f0, f0
/* 8082BFA0  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8082BFA4  80 81 00 84 */	lwz r4, 0x84(r1)
/* 8082BFA8  4B A8 3F E5 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 8082BFAC  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082BFB0  2C 00 00 03 */	cmpwi r0, 3
/* 8082BFB4  41 82 01 F0 */	beq lbl_8082C1A4
/* 8082BFB8  40 80 00 1C */	bge lbl_8082BFD4
/* 8082BFBC  2C 00 00 01 */	cmpwi r0, 1
/* 8082BFC0  41 82 00 88 */	beq lbl_8082C048
/* 8082BFC4  40 80 01 B0 */	bge lbl_8082C174
/* 8082BFC8  2C 00 00 00 */	cmpwi r0, 0
/* 8082BFCC  40 80 00 18 */	bge lbl_8082BFE4
/* 8082BFD0  48 00 04 28 */	b lbl_8082C3F8
lbl_8082BFD4:
/* 8082BFD4  2C 00 00 05 */	cmpwi r0, 5
/* 8082BFD8  41 82 03 EC */	beq lbl_8082C3C4
/* 8082BFDC  40 80 04 1C */	bge lbl_8082C3F8
/* 8082BFE0  48 00 03 94 */	b lbl_8082C374
lbl_8082BFE4:
/* 8082BFE4  38 00 00 0B */	li r0, 0xb
/* 8082BFE8  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082BFEC  90 1E 07 98 */	stw r0, 0x798(r30)
/* 8082BFF0  98 1E 07 AD */	stb r0, 0x7ad(r30)
/* 8082BFF4  7F C3 F3 78 */	mr r3, r30
/* 8082BFF8  38 80 00 05 */	li r4, 5
/* 8082BFFC  38 A0 00 00 */	li r5, 0
/* 8082C000  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082C004  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082C008  4B FF D3 A1 */	bl setBck__8daE_ZH_cFiUcff
/* 8082C00C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070457@ha */
/* 8082C010  38 03 04 57 */	addi r0, r3, 0x0457 /* 0x00070457@l */
/* 8082C014  90 01 00 34 */	stw r0, 0x34(r1)
/* 8082C018  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082C01C  38 81 00 34 */	addi r4, r1, 0x34
/* 8082C020  38 A0 00 00 */	li r5, 0
/* 8082C024  38 C0 FF FF */	li r6, -1
/* 8082C028  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082C02C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082C030  7D 89 03 A6 */	mtctr r12
/* 8082C034  4E 80 04 21 */	bctrl 
/* 8082C038  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082C03C  38 03 00 01 */	addi r0, r3, 1
/* 8082C040  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082C044  48 00 03 B4 */	b lbl_8082C3F8
lbl_8082C048:
/* 8082C048  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082C04C  38 80 00 01 */	li r4, 1
/* 8082C050  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8082C054  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8082C058  40 82 00 18 */	bne lbl_8082C070
/* 8082C05C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082C060  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8082C064  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8082C068  41 82 00 08 */	beq lbl_8082C070
/* 8082C06C  38 80 00 00 */	li r4, 0
lbl_8082C070:
/* 8082C070  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8082C074  40 82 00 94 */	bne lbl_8082C108
/* 8082C078  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082C07C  2C 00 00 00 */	cmpwi r0, 0
/* 8082C080  41 82 00 30 */	beq lbl_8082C0B0
/* 8082C084  7F C3 F3 78 */	mr r3, r30
/* 8082C088  38 80 00 00 */	li r4, 0
/* 8082C08C  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 8082C090  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 8082C094  4B FF D9 65 */	bl mColorSet__8daE_ZH_cFbff
/* 8082C098  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082C09C  2C 00 00 01 */	cmpwi r0, 1
/* 8082C0A0  40 82 03 58 */	bne lbl_8082C3F8
/* 8082C0A4  88 1E 07 AD */	lbz r0, 0x7ad(r30)
/* 8082C0A8  90 1E 07 98 */	stw r0, 0x798(r30)
/* 8082C0AC  48 00 03 4C */	b lbl_8082C3F8
lbl_8082C0B0:
/* 8082C0B0  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 8082C0B4  2C 00 00 00 */	cmpwi r0, 0
/* 8082C0B8  41 82 03 40 */	beq lbl_8082C3F8
/* 8082C0BC  7F C3 F3 78 */	mr r3, r30
/* 8082C0C0  38 80 00 01 */	li r4, 1
/* 8082C0C4  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 8082C0C8  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 8082C0CC  4B FF D9 2D */	bl mColorSet__8daE_ZH_cFbff
/* 8082C0D0  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 8082C0D4  2C 00 00 01 */	cmpwi r0, 1
/* 8082C0D8  40 82 03 20 */	bne lbl_8082C3F8
/* 8082C0DC  88 7E 07 AD */	lbz r3, 0x7ad(r30)
/* 8082C0E0  38 03 FF FE */	addi r0, r3, -2
/* 8082C0E4  98 1E 07 AD */	stb r0, 0x7ad(r30)
/* 8082C0E8  88 1E 07 AD */	lbz r0, 0x7ad(r30)
/* 8082C0EC  28 00 00 02 */	cmplwi r0, 2
/* 8082C0F0  40 80 00 0C */	bge lbl_8082C0FC
/* 8082C0F4  38 00 00 02 */	li r0, 2
/* 8082C0F8  98 1E 07 AD */	stb r0, 0x7ad(r30)
lbl_8082C0FC:
/* 8082C0FC  88 1E 07 AD */	lbz r0, 0x7ad(r30)
/* 8082C100  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082C104  48 00 02 F4 */	b lbl_8082C3F8
lbl_8082C108:
/* 8082C108  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8082C10C  D0 1E 07 64 */	stfs f0, 0x764(r30)
/* 8082C110  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8082C114  D0 1E 07 6C */	stfs f0, 0x76c(r30)
/* 8082C118  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8082C11C  D0 1E 07 60 */	stfs f0, 0x760(r30)
/* 8082C120  7F C3 F3 78 */	mr r3, r30
/* 8082C124  38 80 00 06 */	li r4, 6
/* 8082C128  38 A0 00 00 */	li r5, 0
/* 8082C12C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082C130  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082C134  4B FF D2 75 */	bl setBck__8daE_ZH_cFiUcff
/* 8082C138  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070458@ha */
/* 8082C13C  38 03 04 58 */	addi r0, r3, 0x0458 /* 0x00070458@l */
/* 8082C140  90 01 00 30 */	stw r0, 0x30(r1)
/* 8082C144  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082C148  38 81 00 30 */	addi r4, r1, 0x30
/* 8082C14C  38 A0 00 00 */	li r5, 0
/* 8082C150  38 C0 FF FF */	li r6, -1
/* 8082C154  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082C158  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082C15C  7D 89 03 A6 */	mtctr r12
/* 8082C160  4E 80 04 21 */	bctrl 
/* 8082C164  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082C168  38 03 00 01 */	addi r0, r3, 1
/* 8082C16C  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082C170  48 00 02 88 */	b lbl_8082C3F8
lbl_8082C174:
/* 8082C174  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8082C178  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8082C17C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8082C180  C0 1E 08 8C */	lfs f0, 0x88c(r30)
/* 8082C184  EC 21 00 2A */	fadds f1, f1, f0
/* 8082C188  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8082C18C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082C190  40 81 02 68 */	ble lbl_8082C3F8
/* 8082C194  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082C198  38 03 00 01 */	addi r0, r3, 1
/* 8082C19C  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082C1A0  48 00 02 58 */	b lbl_8082C3F8
lbl_8082C1A4:
/* 8082C1A4  80 1E 07 90 */	lwz r0, 0x790(r30)
/* 8082C1A8  2C 00 00 07 */	cmpwi r0, 7
/* 8082C1AC  40 82 00 1C */	bne lbl_8082C1C8
/* 8082C1B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8082C1B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8082C1B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8082C1BC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8082C1C0  38 80 00 63 */	li r4, 0x63
/* 8082C1C4  4B A8 3D C9 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_8082C1C8:
/* 8082C1C8  80 1E 08 20 */	lwz r0, 0x820(r30)
/* 8082C1CC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8082C1D0  41 82 02 28 */	beq lbl_8082C3F8
/* 8082C1D4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082C1D8  D0 3E 05 30 */	stfs f1, 0x530(r30)
/* 8082C1DC  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 8082C1E0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8082C1E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8082C1E8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8082C1EC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8082C1F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082C1F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082C1F8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8082C1FC  38 80 00 05 */	li r4, 5
/* 8082C200  38 A0 00 1F */	li r5, 0x1f
/* 8082C204  38 C1 00 44 */	addi r6, r1, 0x44
/* 8082C208  4B 84 38 1D */	bl StartShock__12dVibration_cFii4cXyz
/* 8082C20C  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x8082F734@ha */
/* 8082C210  38 63 F7 34 */	addi r3, r3, l_HIO@l /* 0x8082F734@l */
/* 8082C214  C0 03 00 08 */	lfs f0, 8(r3)
/* 8082C218  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8082C21C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8082C220  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8082C224  3B 00 00 00 */	li r24, 0
/* 8082C228  3B A0 00 00 */	li r29, 0
/* 8082C22C  3B 80 00 00 */	li r28, 0
/* 8082C230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082C234  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082C238  3C 60 80 83 */	lis r3, effId@ha /* 0x8082F5A0@ha */
/* 8082C23C  3B 63 F5 A0 */	addi r27, r3, effId@l /* 0x8082F5A0@l */
lbl_8082C240:
/* 8082C240  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8082C244  38 00 00 FF */	li r0, 0xff
/* 8082C248  90 01 00 08 */	stw r0, 8(r1)
/* 8082C24C  38 80 00 00 */	li r4, 0
/* 8082C250  90 81 00 0C */	stw r4, 0xc(r1)
/* 8082C254  38 00 FF FF */	li r0, -1
/* 8082C258  90 01 00 10 */	stw r0, 0x10(r1)
/* 8082C25C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8082C260  90 81 00 18 */	stw r4, 0x18(r1)
/* 8082C264  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8082C268  3B 3C 0D DC */	addi r25, r28, 0xddc
/* 8082C26C  7C 9E C8 2E */	lwzx r4, r30, r25
/* 8082C270  38 A0 00 00 */	li r5, 0
/* 8082C274  7C DB EA 2E */	lhzx r6, r27, r29
/* 8082C278  38 FE 06 68 */	addi r7, r30, 0x668
/* 8082C27C  39 00 00 00 */	li r8, 0
/* 8082C280  39 20 00 00 */	li r9, 0
/* 8082C284  39 40 00 00 */	li r10, 0
/* 8082C288  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8082C28C  4B 82 12 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8082C290  7C 7E C9 2E */	stwx r3, r30, r25
/* 8082C294  3B 18 00 01 */	addi r24, r24, 1
/* 8082C298  2C 18 00 03 */	cmpwi r24, 3
/* 8082C29C  3B BD 00 02 */	addi r29, r29, 2
/* 8082C2A0  3B 9C 00 04 */	addi r28, r28, 4
/* 8082C2A4  41 80 FF 9C */	blt lbl_8082C240
/* 8082C2A8  38 60 00 00 */	li r3, 0
/* 8082C2AC  90 61 00 08 */	stw r3, 8(r1)
/* 8082C2B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8082C2B4  38 00 FF FF */	li r0, -1
/* 8082C2B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8082C2BC  90 61 00 14 */	stw r3, 0x14(r1)
/* 8082C2C0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8082C2C4  80 9E 0D E8 */	lwz r4, 0xde8(r30)
/* 8082C2C8  3C A0 80 83 */	lis r5, effId@ha /* 0x8082F5A0@ha */
/* 8082C2CC  38 A5 F5 A0 */	addi r5, r5, effId@l /* 0x8082F5A0@l */
/* 8082C2D0  A0 A5 00 06 */	lhz r5, 6(r5)
/* 8082C2D4  38 DE 08 E4 */	addi r6, r30, 0x8e4
/* 8082C2D8  38 FE 06 68 */	addi r7, r30, 0x668
/* 8082C2DC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8082C2E0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8082C2E4  39 41 00 5C */	addi r10, r1, 0x5c
/* 8082C2E8  4B 82 13 BD */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 8082C2EC  90 7E 0D E8 */	stw r3, 0xde8(r30)
/* 8082C2F0  80 1E 07 90 */	lwz r0, 0x790(r30)
/* 8082C2F4  2C 00 00 07 */	cmpwi r0, 7
/* 8082C2F8  40 82 00 24 */	bne lbl_8082C31C
/* 8082C2FC  38 60 00 05 */	li r3, 5
/* 8082C300  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8082C304  7C 04 07 74 */	extsb r4, r0
/* 8082C308  4B 80 17 95 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 8082C30C  80 7E 07 84 */	lwz r3, 0x784(r30)
/* 8082C310  38 03 00 01 */	addi r0, r3, 1
/* 8082C314  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082C318  48 00 00 E0 */	b lbl_8082C3F8
lbl_8082C31C:
/* 8082C31C  38 00 00 1E */	li r0, 0x1e
/* 8082C320  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082C324  38 00 00 05 */	li r0, 5
/* 8082C328  90 1E 07 84 */	stw r0, 0x784(r30)
/* 8082C32C  7F C3 F3 78 */	mr r3, r30
/* 8082C330  38 80 00 07 */	li r4, 7
/* 8082C334  38 A0 00 00 */	li r5, 0
/* 8082C338  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082C33C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082C340  4B FF D0 69 */	bl setBck__8daE_ZH_cFiUcff
/* 8082C344  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070459@ha */
/* 8082C348  38 03 04 59 */	addi r0, r3, 0x0459 /* 0x00070459@l */
/* 8082C34C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8082C350  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082C354  38 81 00 2C */	addi r4, r1, 0x2c
/* 8082C358  38 A0 00 00 */	li r5, 0
/* 8082C35C  38 C0 FF FF */	li r6, -1
/* 8082C360  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082C364  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082C368  7D 89 03 A6 */	mtctr r12
/* 8082C36C  4E 80 04 21 */	bctrl 
/* 8082C370  48 00 00 88 */	b lbl_8082C3F8
lbl_8082C374:
/* 8082C374  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8082C378  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8082C37C  80 63 00 00 */	lwz r3, 0(r3)
/* 8082C380  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8082C384  38 80 00 63 */	li r4, 0x63
/* 8082C388  4B A8 3C 05 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 8082C38C  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082C390  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 8082C394  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8082C398  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 8082C39C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082C3A0  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 8082C3A4  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8082C3A8  38 00 00 1E */	li r0, 0x1e
/* 8082C3AC  90 1E 07 94 */	stw r0, 0x794(r30)
/* 8082C3B0  7F C3 F3 78 */	mr r3, r30
/* 8082C3B4  38 80 00 07 */	li r4, 7
/* 8082C3B8  38 A0 00 00 */	li r5, 0
/* 8082C3BC  4B FF D0 99 */	bl setActionMode__8daE_ZH_cFii
/* 8082C3C0  48 00 00 38 */	b lbl_8082C3F8
lbl_8082C3C4:
/* 8082C3C4  80 1E 07 94 */	lwz r0, 0x794(r30)
/* 8082C3C8  2C 00 00 00 */	cmpwi r0, 0
/* 8082C3CC  40 82 00 2C */	bne lbl_8082C3F8
/* 8082C3D0  7F C3 F3 78 */	mr r3, r30
/* 8082C3D4  38 80 00 0D */	li r4, 0xd
/* 8082C3D8  38 A0 00 02 */	li r5, 2
/* 8082C3DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082C3E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082C3E4  4B FF CF C5 */	bl setBck__8daE_ZH_cFiUcff
/* 8082C3E8  7F C3 F3 78 */	mr r3, r30
/* 8082C3EC  38 80 00 04 */	li r4, 4
/* 8082C3F0  38 A0 00 00 */	li r5, 0
/* 8082C3F4  4B FF D0 61 */	bl setActionMode__8daE_ZH_cFii
lbl_8082C3F8:
/* 8082C3F8  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082C3FC  2C 00 00 02 */	cmpwi r0, 2
/* 8082C400  41 82 00 0C */	beq lbl_8082C40C
/* 8082C404  2C 00 00 03 */	cmpwi r0, 3
/* 8082C408  40 82 02 48 */	bne lbl_8082C650
lbl_8082C40C:
/* 8082C40C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8082C410  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8082C414  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8082C418  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8082C41C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8082C420  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8082C424  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8082C428  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8082C42C  38 61 00 38 */	addi r3, r1, 0x38
/* 8082C430  80 9E 06 64 */	lwz r4, 0x664(r30)
/* 8082C434  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8082C438  38 A1 00 68 */	addi r5, r1, 0x68
/* 8082C43C  4B A3 A6 F9 */	bl __mi__4cXyzCFRC3Vec
/* 8082C440  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8082C444  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8082C448  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8082C44C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8082C450  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8082C454  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8082C458  88 1E 07 AF */	lbz r0, 0x7af(r30)
/* 8082C45C  28 00 00 00 */	cmplwi r0, 0
/* 8082C460  41 82 00 08 */	beq lbl_8082C468
/* 8082C464  C3 FF 01 AC */	lfs f31, 0x1ac(r31)
lbl_8082C468:
/* 8082C468  38 61 00 74 */	addi r3, r1, 0x74
/* 8082C46C  4B B1 AC CD */	bl PSVECSquareMag
/* 8082C470  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082C474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082C478  40 81 00 58 */	ble lbl_8082C4D0
/* 8082C47C  FC 00 08 34 */	frsqrte f0, f1
/* 8082C480  C8 9F 01 88 */	lfd f4, 0x188(r31)
/* 8082C484  FC 44 00 32 */	fmul f2, f4, f0
/* 8082C488  C8 7F 01 90 */	lfd f3, 0x190(r31)
/* 8082C48C  FC 00 00 32 */	fmul f0, f0, f0
/* 8082C490  FC 01 00 32 */	fmul f0, f1, f0
/* 8082C494  FC 03 00 28 */	fsub f0, f3, f0
/* 8082C498  FC 02 00 32 */	fmul f0, f2, f0
/* 8082C49C  FC 44 00 32 */	fmul f2, f4, f0
/* 8082C4A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8082C4A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8082C4A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8082C4AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8082C4B0  FC 44 00 32 */	fmul f2, f4, f0
/* 8082C4B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8082C4B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8082C4BC  FC 03 00 28 */	fsub f0, f3, f0
/* 8082C4C0  FC 02 00 32 */	fmul f0, f2, f0
/* 8082C4C4  FC 21 00 32 */	fmul f1, f1, f0
/* 8082C4C8  FC 20 08 18 */	frsp f1, f1
/* 8082C4CC  48 00 00 88 */	b lbl_8082C554
lbl_8082C4D0:
/* 8082C4D0  C8 1F 01 98 */	lfd f0, 0x198(r31)
/* 8082C4D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082C4D8  40 80 00 10 */	bge lbl_8082C4E8
/* 8082C4DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8082C4E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8082C4E4  48 00 00 70 */	b lbl_8082C554
lbl_8082C4E8:
/* 8082C4E8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8082C4EC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8082C4F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8082C4F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8082C4F8  7C 03 00 00 */	cmpw r3, r0
/* 8082C4FC  41 82 00 14 */	beq lbl_8082C510
/* 8082C500  40 80 00 40 */	bge lbl_8082C540
/* 8082C504  2C 03 00 00 */	cmpwi r3, 0
/* 8082C508  41 82 00 20 */	beq lbl_8082C528
/* 8082C50C  48 00 00 34 */	b lbl_8082C540
lbl_8082C510:
/* 8082C510  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082C514  41 82 00 0C */	beq lbl_8082C520
/* 8082C518  38 00 00 01 */	li r0, 1
/* 8082C51C  48 00 00 28 */	b lbl_8082C544
lbl_8082C520:
/* 8082C520  38 00 00 02 */	li r0, 2
/* 8082C524  48 00 00 20 */	b lbl_8082C544
lbl_8082C528:
/* 8082C528  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8082C52C  41 82 00 0C */	beq lbl_8082C538
/* 8082C530  38 00 00 05 */	li r0, 5
/* 8082C534  48 00 00 10 */	b lbl_8082C544
lbl_8082C538:
/* 8082C538  38 00 00 03 */	li r0, 3
/* 8082C53C  48 00 00 08 */	b lbl_8082C544
lbl_8082C540:
/* 8082C540  38 00 00 04 */	li r0, 4
lbl_8082C544:
/* 8082C544  2C 00 00 01 */	cmpwi r0, 1
/* 8082C548  40 82 00 0C */	bne lbl_8082C554
/* 8082C54C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8082C550  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8082C554:
/* 8082C554  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8082C558  40 80 00 F8 */	bge lbl_8082C650
/* 8082C55C  80 9E 07 90 */	lwz r4, 0x790(r30)
/* 8082C560  2C 04 00 07 */	cmpwi r4, 7
/* 8082C564  41 82 00 1C */	beq lbl_8082C580
/* 8082C568  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082C56C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8082C570  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8082C574  41 82 00 0C */	beq lbl_8082C580
/* 8082C578  4B 7F 06 29 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 8082C57C  48 00 00 D4 */	b lbl_8082C650
lbl_8082C580:
/* 8082C580  2C 04 00 07 */	cmpwi r4, 7
/* 8082C584  41 82 00 B0 */	beq lbl_8082C634
/* 8082C588  7F C3 F3 78 */	mr r3, r30
/* 8082C58C  38 80 00 07 */	li r4, 7
/* 8082C590  38 A0 00 00 */	li r5, 0
/* 8082C594  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082C598  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082C59C  4B FF CE 0D */	bl setBck__8daE_ZH_cFiUcff
/* 8082C5A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070459@ha */
/* 8082C5A4  38 03 04 59 */	addi r0, r3, 0x0459 /* 0x00070459@l */
/* 8082C5A8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8082C5AC  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082C5B0  38 81 00 28 */	addi r4, r1, 0x28
/* 8082C5B4  38 A0 00 00 */	li r5, 0
/* 8082C5B8  38 C0 FF FF */	li r6, -1
/* 8082C5BC  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082C5C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8082C5C4  7D 89 03 A6 */	mtctr r12
/* 8082C5C8  4E 80 04 21 */	bctrl 
/* 8082C5CC  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082C5D0  38 80 00 00 */	li r4, 0
/* 8082C5D4  4B 7F 05 75 */	bl fopAcM_setCarryNow__FP10fopAc_ac_ci
/* 8082C5D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8082C5DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8082C5E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8082C5E4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8082C5E8  38 80 00 63 */	li r4, 0x63
/* 8082C5EC  4B A8 39 A1 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 8082C5F0  88 9E 07 A9 */	lbz r4, 0x7a9(r30)
/* 8082C5F4  28 04 00 FF */	cmplwi r4, 0xff
/* 8082C5F8  41 82 00 58 */	beq lbl_8082C650
/* 8082C5FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082C600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082C604  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082C608  7C 05 07 74 */	extsb r5, r0
/* 8082C60C  4B 80 8D 55 */	bl isSwitch__10dSv_info_cCFii
/* 8082C610  2C 03 00 00 */	cmpwi r3, 0
/* 8082C614  41 82 00 3C */	beq lbl_8082C650
/* 8082C618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082C61C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082C620  88 9E 07 A9 */	lbz r4, 0x7a9(r30)
/* 8082C624  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082C628  7C 05 07 74 */	extsb r5, r0
/* 8082C62C  4B 80 8C 85 */	bl offSwitch__10dSv_info_cFii
/* 8082C630  48 00 00 20 */	b lbl_8082C650
lbl_8082C634:
/* 8082C634  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082C638  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 8082C63C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8082C640  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 8082C644  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082C648  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 8082C64C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_8082C650:
/* 8082C650  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8082C654  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8082C658  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8082C65C  4B B3 5B B9 */	bl _restgpr_24
/* 8082C660  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8082C664  7C 08 03 A6 */	mtlr r0
/* 8082C668  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8082C66C  4E 80 00 20 */	blr 

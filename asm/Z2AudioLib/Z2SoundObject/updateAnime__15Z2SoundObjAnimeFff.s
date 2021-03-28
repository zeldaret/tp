lbl_802BEED4:
/* 802BEED4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BEED8  7C 08 02 A6 */	mflr r0
/* 802BEEDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BEEE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802BEEE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802BEEE8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802BEEEC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802BEEF0  39 61 00 20 */	addi r11, r1, 0x20
/* 802BEEF4  48 0A 32 E9 */	bl _savegpr_29
/* 802BEEF8  7C 7F 1B 78 */	mr r31, r3
/* 802BEEFC  FF C0 08 90 */	fmr f30, f1
/* 802BEF00  FF E0 10 90 */	fmr f31, f2
/* 802BEF04  3B C0 00 00 */	li r30, 0
/* 802BEF08  48 00 00 98 */	b lbl_802BEFA0
lbl_802BEF0C:
/* 802BEF0C  7F E3 FB 78 */	mr r3, r31
/* 802BEF10  7F C4 F3 78 */	mr r4, r30
/* 802BEF14  48 01 D2 F9 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEF18  28 03 00 00 */	cmplwi r3, 0
/* 802BEF1C  41 82 00 08 */	beq lbl_802BEF24
/* 802BEF20  38 63 FF FC */	addi r3, r3, -4
lbl_802BEF24:
/* 802BEF24  80 03 00 00 */	lwz r0, 0(r3)
/* 802BEF28  28 00 00 00 */	cmplwi r0, 0
/* 802BEF2C  41 82 00 70 */	beq lbl_802BEF9C
/* 802BEF30  7F E3 FB 78 */	mr r3, r31
/* 802BEF34  7F C4 F3 78 */	mr r4, r30
/* 802BEF38  48 01 D2 D5 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEF3C  28 03 00 00 */	cmplwi r3, 0
/* 802BEF40  41 82 00 08 */	beq lbl_802BEF48
/* 802BEF44  38 63 FF FC */	addi r3, r3, -4
lbl_802BEF48:
/* 802BEF48  80 63 00 00 */	lwz r3, 0(r3)
/* 802BEF4C  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 802BEF50  54 00 E7 BF */	rlwinm. r0, r0, 0x1c, 0x1e, 0x1f
/* 802BEF54  41 82 00 48 */	beq lbl_802BEF9C
/* 802BEF58  83 BF 00 18 */	lwz r29, 0x18(r31)
/* 802BEF5C  7F E3 FB 78 */	mr r3, r31
/* 802BEF60  7F C4 F3 78 */	mr r4, r30
/* 802BEF64  48 01 D2 A9 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEF68  28 03 00 00 */	cmplwi r3, 0
/* 802BEF6C  41 82 00 08 */	beq lbl_802BEF74
/* 802BEF70  38 63 FF FC */	addi r3, r3, -4
lbl_802BEF74:
/* 802BEF74  80 63 00 00 */	lwz r3, 0(r3)
/* 802BEF78  80 63 00 08 */	lwz r3, 8(r3)
/* 802BEF7C  28 03 00 00 */	cmplwi r3, 0
/* 802BEF80  41 82 00 1C */	beq lbl_802BEF9C
/* 802BEF84  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802BEF88  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BEF8C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802BEF90  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BEF94  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802BEF98  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_802BEF9C:
/* 802BEF9C  3B DE 00 01 */	addi r30, r30, 1
lbl_802BEFA0:
/* 802BEFA0  80 1F 00 08 */	lwz r0, 8(r31)
/* 802BEFA4  7C 1E 00 00 */	cmpw r30, r0
/* 802BEFA8  41 80 FF 64 */	blt lbl_802BEF0C
/* 802BEFAC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802BEFB0  28 04 00 00 */	cmplwi r4, 0
/* 802BEFB4  41 82 03 28 */	beq lbl_802BF2DC
/* 802BEFB8  80 64 00 04 */	lwz r3, 4(r4)
/* 802BEFBC  28 03 00 00 */	cmplwi r3, 0
/* 802BEFC0  41 82 00 18 */	beq lbl_802BEFD8
/* 802BEFC4  81 83 00 00 */	lwz r12, 0(r3)
/* 802BEFC8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BEFCC  7D 89 03 A6 */	mtctr r12
/* 802BEFD0  4E 80 04 21 */	bctrl 
/* 802BEFD4  48 00 00 08 */	b lbl_802BEFDC
lbl_802BEFD8:
/* 802BEFD8  A0 64 00 00 */	lhz r3, 0(r4)
lbl_802BEFDC:
/* 802BEFDC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 802BEFE0  40 82 00 08 */	bne lbl_802BEFE8
/* 802BEFE4  48 00 02 F8 */	b lbl_802BF2DC
lbl_802BEFE8:
/* 802BEFE8  88 1F 00 44 */	lbz r0, 0x44(r31)
/* 802BEFEC  28 00 00 00 */	cmplwi r0, 0
/* 802BEFF0  40 82 01 8C */	bne lbl_802BF17C
/* 802BEFF4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 802BEFF8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802BEFFC  40 80 00 5C */	bge lbl_802BF058
/* 802BF000  48 00 00 20 */	b lbl_802BF020
lbl_802BF004:
/* 802BF004  7F E3 FB 78 */	mr r3, r31
/* 802BF008  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 802BF00C  FC 20 F8 90 */	fmr f1, f31
/* 802BF010  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 802BF014  A0 DF 00 1C */	lhz r6, 0x1c(r31)
/* 802BF018  88 FF 00 1E */	lbz r7, 0x1e(r31)
/* 802BF01C  48 00 06 45 */	bl func_802BF660
lbl_802BF020:
/* 802BF020  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 802BF024  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 802BF028  7C 03 00 00 */	cmpw r3, r0
/* 802BF02C  41 80 FF D8 */	blt lbl_802BF004
/* 802BF030  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 802BF034  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802BF038  D3 DF 00 28 */	stfs f30, 0x28(r31)
/* 802BF03C  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 802BF040  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802BF044  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802BF048  7C 04 00 00 */	cmpw r4, r0
/* 802BF04C  40 80 00 0C */	bge lbl_802BF058
/* 802BF050  38 04 00 01 */	addi r0, r4, 1
/* 802BF054  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_802BF058:
/* 802BF058  7F E3 FB 78 */	mr r3, r31
/* 802BF05C  FC 20 F0 90 */	fmr f1, f30
/* 802BF060  FC 40 F8 90 */	fmr f2, f31
/* 802BF064  48 00 02 A1 */	bl updateSoundLifeTime___15Z2SoundObjAnimeFff
/* 802BF068  48 00 00 20 */	b lbl_802BF088
lbl_802BF06C:
/* 802BF06C  7F E3 FB 78 */	mr r3, r31
/* 802BF070  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 802BF074  FC 20 F8 90 */	fmr f1, f31
/* 802BF078  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 802BF07C  A0 DF 00 1C */	lhz r6, 0x1c(r31)
/* 802BF080  88 FF 00 1E */	lbz r7, 0x1e(r31)
/* 802BF084  48 00 05 DD */	bl func_802BF660
lbl_802BF088:
/* 802BF088  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802BF08C  80 64 00 04 */	lwz r3, 4(r4)
/* 802BF090  28 03 00 00 */	cmplwi r3, 0
/* 802BF094  41 82 00 18 */	beq lbl_802BF0AC
/* 802BF098  81 83 00 00 */	lwz r12, 0(r3)
/* 802BF09C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BF0A0  7D 89 03 A6 */	mtctr r12
/* 802BF0A4  4E 80 04 21 */	bctrl 
/* 802BF0A8  48 00 00 08 */	b lbl_802BF0B0
lbl_802BF0AC:
/* 802BF0AC  A0 64 00 00 */	lhz r3, 0(r4)
lbl_802BF0B0:
/* 802BF0B0  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 802BF0B4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802BF0B8  7C 05 00 00 */	cmpw r5, r0
/* 802BF0BC  40 80 02 1C */	bge lbl_802BF2D8
/* 802BF0C0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802BF0C4  80 64 00 04 */	lwz r3, 4(r4)
/* 802BF0C8  28 03 00 00 */	cmplwi r3, 0
/* 802BF0CC  41 82 00 18 */	beq lbl_802BF0E4
/* 802BF0D0  81 83 00 00 */	lwz r12, 0(r3)
/* 802BF0D4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802BF0D8  7D 89 03 A6 */	mtctr r12
/* 802BF0DC  4E 80 04 21 */	bctrl 
/* 802BF0E0  48 00 00 10 */	b lbl_802BF0F0
lbl_802BF0E4:
/* 802BF0E4  54 A3 28 34 */	slwi r3, r5, 5
/* 802BF0E8  38 63 00 08 */	addi r3, r3, 8
/* 802BF0EC  7C 64 1A 14 */	add r3, r4, r3
lbl_802BF0F0:
/* 802BF0F0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802BF0F4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 802BF0F8  41 82 00 64 */	beq lbl_802BF15C
/* 802BF0FC  C0 23 00 04 */	lfs f1, 4(r3)
/* 802BF100  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BF104  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802BF108  40 82 00 0C */	bne lbl_802BF114
/* 802BF10C  38 00 00 01 */	li r0, 1
/* 802BF110  48 00 00 60 */	b lbl_802BF170
lbl_802BF114:
/* 802BF114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BF118  40 81 00 20 */	ble lbl_802BF138
/* 802BF11C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802BF120  4C 40 13 82 */	cror 2, 0, 2
/* 802BF124  40 82 00 30 */	bne lbl_802BF154
/* 802BF128  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 802BF12C  40 80 00 28 */	bge lbl_802BF154
/* 802BF130  38 00 00 01 */	li r0, 1
/* 802BF134  48 00 00 3C */	b lbl_802BF170
lbl_802BF138:
/* 802BF138  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 802BF13C  4C 40 13 82 */	cror 2, 0, 2
/* 802BF140  40 82 00 14 */	bne lbl_802BF154
/* 802BF144  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802BF148  40 80 00 0C */	bge lbl_802BF154
/* 802BF14C  38 00 00 01 */	li r0, 1
/* 802BF150  48 00 00 20 */	b lbl_802BF170
lbl_802BF154:
/* 802BF154  38 00 00 00 */	li r0, 0
/* 802BF158  48 00 00 18 */	b lbl_802BF170
lbl_802BF15C:
/* 802BF15C  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BF160  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802BF164  4C 41 13 82 */	cror 2, 1, 2
/* 802BF168  7C 00 00 26 */	mfcr r0
/* 802BF16C  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
lbl_802BF170:
/* 802BF170  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802BF174  40 82 FE F8 */	bne lbl_802BF06C
/* 802BF178  48 00 01 60 */	b lbl_802BF2D8
lbl_802BF17C:
/* 802BF17C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 802BF180  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802BF184  40 81 00 60 */	ble lbl_802BF1E4
/* 802BF188  48 00 00 20 */	b lbl_802BF1A8
lbl_802BF18C:
/* 802BF18C  7F E3 FB 78 */	mr r3, r31
/* 802BF190  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 802BF194  FC 20 F8 90 */	fmr f1, f31
/* 802BF198  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 802BF19C  A0 DF 00 1C */	lhz r6, 0x1c(r31)
/* 802BF1A0  88 FF 00 1E */	lbz r7, 0x1e(r31)
/* 802BF1A4  48 00 04 BD */	bl func_802BF660
lbl_802BF1A8:
/* 802BF1A8  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 802BF1AC  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 802BF1B0  7C 03 00 00 */	cmpw r3, r0
/* 802BF1B4  40 80 FF D8 */	bge lbl_802BF18C
/* 802BF1B8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 802BF1BC  38 03 FF FF */	addi r0, r3, -1
/* 802BF1C0  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802BF1C4  D3 DF 00 28 */	stfs f30, 0x28(r31)
/* 802BF1C8  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 802BF1CC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802BF1D0  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802BF1D4  7C 04 00 00 */	cmpw r4, r0
/* 802BF1D8  40 80 00 0C */	bge lbl_802BF1E4
/* 802BF1DC  38 04 00 01 */	addi r0, r4, 1
/* 802BF1E0  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_802BF1E4:
/* 802BF1E4  7F E3 FB 78 */	mr r3, r31
/* 802BF1E8  FC 20 F0 90 */	fmr f1, f30
/* 802BF1EC  FC 40 F8 90 */	fmr f2, f31
/* 802BF1F0  48 00 01 15 */	bl updateSoundLifeTime___15Z2SoundObjAnimeFff
/* 802BF1F4  48 00 00 20 */	b lbl_802BF214
lbl_802BF1F8:
/* 802BF1F8  7F E3 FB 78 */	mr r3, r31
/* 802BF1FC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 802BF200  FC 20 F8 90 */	fmr f1, f31
/* 802BF204  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 802BF208  A0 DF 00 1C */	lhz r6, 0x1c(r31)
/* 802BF20C  88 FF 00 1E */	lbz r7, 0x1e(r31)
/* 802BF210  48 00 04 51 */	bl func_802BF660
lbl_802BF214:
/* 802BF214  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 802BF218  2C 05 00 00 */	cmpwi r5, 0
/* 802BF21C  41 80 00 BC */	blt lbl_802BF2D8
/* 802BF220  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802BF224  80 64 00 04 */	lwz r3, 4(r4)
/* 802BF228  28 03 00 00 */	cmplwi r3, 0
/* 802BF22C  41 82 00 18 */	beq lbl_802BF244
/* 802BF230  81 83 00 00 */	lwz r12, 0(r3)
/* 802BF234  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802BF238  7D 89 03 A6 */	mtctr r12
/* 802BF23C  4E 80 04 21 */	bctrl 
/* 802BF240  48 00 00 10 */	b lbl_802BF250
lbl_802BF244:
/* 802BF244  54 A3 28 34 */	slwi r3, r5, 5
/* 802BF248  38 63 00 08 */	addi r3, r3, 8
/* 802BF24C  7C 64 1A 14 */	add r3, r4, r3
lbl_802BF250:
/* 802BF250  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802BF254  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 802BF258  41 82 00 64 */	beq lbl_802BF2BC
/* 802BF25C  C0 23 00 04 */	lfs f1, 4(r3)
/* 802BF260  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BF264  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802BF268  40 82 00 0C */	bne lbl_802BF274
/* 802BF26C  38 00 00 01 */	li r0, 1
/* 802BF270  48 00 00 60 */	b lbl_802BF2D0
lbl_802BF274:
/* 802BF274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BF278  40 81 00 20 */	ble lbl_802BF298
/* 802BF27C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802BF280  4C 40 13 82 */	cror 2, 0, 2
/* 802BF284  40 82 00 30 */	bne lbl_802BF2B4
/* 802BF288  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 802BF28C  40 80 00 28 */	bge lbl_802BF2B4
/* 802BF290  38 00 00 01 */	li r0, 1
/* 802BF294  48 00 00 3C */	b lbl_802BF2D0
lbl_802BF298:
/* 802BF298  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 802BF29C  4C 40 13 82 */	cror 2, 0, 2
/* 802BF2A0  40 82 00 14 */	bne lbl_802BF2B4
/* 802BF2A4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802BF2A8  40 80 00 0C */	bge lbl_802BF2B4
/* 802BF2AC  38 00 00 01 */	li r0, 1
/* 802BF2B0  48 00 00 20 */	b lbl_802BF2D0
lbl_802BF2B4:
/* 802BF2B4  38 00 00 00 */	li r0, 0
/* 802BF2B8  48 00 00 18 */	b lbl_802BF2D0
lbl_802BF2BC:
/* 802BF2BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BF2C0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802BF2C4  4C 40 13 82 */	cror 2, 0, 2
/* 802BF2C8  7C 00 00 26 */	mfcr r0
/* 802BF2CC  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
lbl_802BF2D0:
/* 802BF2D0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802BF2D4  40 82 FF 24 */	bne lbl_802BF1F8
lbl_802BF2D8:
/* 802BF2D8  D3 DF 00 28 */	stfs f30, 0x28(r31)
lbl_802BF2DC:
/* 802BF2DC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802BF2E0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802BF2E4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802BF2E8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802BF2EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802BF2F0  48 0A 2F 39 */	bl _restgpr_29
/* 802BF2F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BF2F8  7C 08 03 A6 */	mtlr r0
/* 802BF2FC  38 21 00 40 */	addi r1, r1, 0x40
/* 802BF300  4E 80 00 20 */	blr 

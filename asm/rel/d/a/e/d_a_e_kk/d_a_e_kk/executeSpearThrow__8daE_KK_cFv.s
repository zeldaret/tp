lbl_806FBE98:
/* 806FBE98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806FBE9C  7C 08 02 A6 */	mflr r0
/* 806FBEA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806FBEA4  39 61 00 40 */	addi r11, r1, 0x40
/* 806FBEA8  4B C6 63 35 */	bl _savegpr_29
/* 806FBEAC  7C 7E 1B 78 */	mr r30, r3
/* 806FBEB0  3C 80 80 70 */	lis r4, lit_3792@ha /* 0x806FF5E8@ha */
/* 806FBEB4  3B E4 F5 E8 */	addi r31, r4, lit_3792@l /* 0x806FF5E8@l */
/* 806FBEB8  80 03 06 64 */	lwz r0, 0x664(r3)
/* 806FBEBC  2C 00 00 02 */	cmpwi r0, 2
/* 806FBEC0  41 82 00 E0 */	beq lbl_806FBFA0
/* 806FBEC4  40 80 00 14 */	bge lbl_806FBED8
/* 806FBEC8  2C 00 00 00 */	cmpwi r0, 0
/* 806FBECC  41 82 00 1C */	beq lbl_806FBEE8
/* 806FBED0  40 80 00 8C */	bge lbl_806FBF5C
/* 806FBED4  48 00 04 20 */	b lbl_806FC2F4
lbl_806FBED8:
/* 806FBED8  2C 00 00 04 */	cmpwi r0, 4
/* 806FBEDC  41 82 03 2C */	beq lbl_806FC208
/* 806FBEE0  40 80 04 14 */	bge lbl_806FC2F4
/* 806FBEE4  48 00 02 E4 */	b lbl_806FC1C8
lbl_806FBEE8:
/* 806FBEE8  80 1E 07 64 */	lwz r0, 0x764(r30)
/* 806FBEEC  2C 00 00 14 */	cmpwi r0, 0x14
/* 806FBEF0  41 82 00 18 */	beq lbl_806FBF08
/* 806FBEF4  38 80 00 14 */	li r4, 0x14
/* 806FBEF8  38 A0 00 02 */	li r5, 2
/* 806FBEFC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FBF00  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FBF04  4B FF EB 65 */	bl setBck__8daE_KK_cFiUcff
lbl_806FBF08:
/* 806FBF08  7F C3 F3 78 */	mr r3, r30
/* 806FBF0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FBF10  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FBF14  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FBF18  4B 91 E7 F9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FBF1C  7C 64 1B 78 */	mr r4, r3
/* 806FBF20  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806FBF24  38 A0 00 04 */	li r5, 4
/* 806FBF28  38 C0 05 00 */	li r6, 0x500
/* 806FBF2C  4B B7 46 DD */	bl cLib_addCalcAngleS2__FPssss
/* 806FBF30  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806FBF34  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806FBF38  7F C3 F3 78 */	mr r3, r30
/* 806FBF3C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FBF40  4B 91 E7 D1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FBF44  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806FBF48  7C 03 00 50 */	subf r0, r3, r0
/* 806FBF4C  7C 03 07 34 */	extsh r3, r0
/* 806FBF50  4B C6 91 81 */	bl abs
/* 806FBF54  2C 03 01 00 */	cmpwi r3, 0x100
/* 806FBF58  41 81 03 9C */	bgt lbl_806FC2F4
lbl_806FBF5C:
/* 806FBF5C  7F C3 F3 78 */	mr r3, r30
/* 806FBF60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FBF64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FBF68  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FBF6C  4B 91 E7 A5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FBF70  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 806FBF74  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 806FBF78  7F C3 F3 78 */	mr r3, r30
/* 806FBF7C  38 80 00 18 */	li r4, 0x18
/* 806FBF80  38 A0 00 00 */	li r5, 0
/* 806FBF84  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FBF88  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FBF8C  4B FF EA DD */	bl setBck__8daE_KK_cFiUcff
/* 806FBF90  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FBF94  38 03 00 01 */	addi r0, r3, 1
/* 806FBF98  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FBF9C  48 00 03 58 */	b lbl_806FC2F4
lbl_806FBFA0:
/* 806FBFA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FBFA4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FBFA8  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 806FBFAC  28 00 00 00 */	cmplwi r0, 0
/* 806FBFB0  40 82 00 B8 */	bne lbl_806FC068
/* 806FBFB4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FBFB8  4B 91 E8 29 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FBFBC  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FBFC0  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FBFC4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806FBFC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FBFCC  4C 40 13 82 */	cror 2, 0, 2
/* 806FBFD0  40 82 00 98 */	bne lbl_806FC068
/* 806FBFD4  7F C3 F3 78 */	mr r3, r30
/* 806FBFD8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FBFDC  4B 92 0E 21 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FBFE0  2C 03 00 00 */	cmpwi r3, 0
/* 806FBFE4  40 82 00 84 */	bne lbl_806FC068
/* 806FBFE8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FBFEC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FBFF0  FC 00 00 1E */	fctiwz f0, f0
/* 806FBFF4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FBFF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FBFFC  2C 00 00 17 */	cmpwi r0, 0x17
/* 806FC000  40 80 00 68 */	bge lbl_806FC068
/* 806FC004  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 806FC008  28 00 00 00 */	cmplwi r0, 0
/* 806FC00C  40 82 00 5C */	bne lbl_806FC068
/* 806FC010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FC014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FC018  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806FC01C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806FC020  40 82 00 48 */	bne lbl_806FC068
/* 806FC024  83 BD 5D AC */	lwz r29, 0x5dac(r29)
/* 806FC028  7F C3 F3 78 */	mr r3, r30
/* 806FC02C  7F A4 EB 78 */	mr r4, r29
/* 806FC030  4B 92 0D CD */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FC034  2C 03 00 00 */	cmpwi r3, 0
/* 806FC038  40 82 00 30 */	bne lbl_806FC068
/* 806FC03C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806FC040  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806FC044  EC 21 00 2A */	fadds f1, f1, f0
/* 806FC048  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806FC04C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FC050  40 81 00 18 */	ble lbl_806FC068
/* 806FC054  7F C3 F3 78 */	mr r3, r30
/* 806FC058  38 80 00 08 */	li r4, 8
/* 806FC05C  38 A0 00 00 */	li r5, 0
/* 806FC060  4B FF EC 21 */	bl setActionMode__8daE_KK_cFii
/* 806FC064  48 00 02 90 */	b lbl_806FC2F4
lbl_806FC068:
/* 806FC068  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FC06C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FC070  FC 00 00 1E */	fctiwz f0, f0
/* 806FC074  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FC078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC07C  2C 00 00 17 */	cmpwi r0, 0x17
/* 806FC080  40 82 00 94 */	bne lbl_806FC114
/* 806FC084  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FC088  7C 07 07 74 */	extsb r7, r0
/* 806FC08C  38 00 00 00 */	li r0, 0
/* 806FC090  90 01 00 08 */	stw r0, 8(r1)
/* 806FC094  38 60 01 E0 */	li r3, 0x1e0
/* 806FC098  28 1E 00 00 */	cmplwi r30, 0
/* 806FC09C  41 82 00 0C */	beq lbl_806FC0A8
/* 806FC0A0  80 9E 00 04 */	lwz r4, 4(r30)
/* 806FC0A4  48 00 00 08 */	b lbl_806FC0AC
lbl_806FC0A8:
/* 806FC0A8  38 80 FF FF */	li r4, -1
lbl_806FC0AC:
/* 806FC0AC  3C A0 00 FF */	lis r5, 0x00FF /* 0x00FF0001@ha */
/* 806FC0B0  38 A5 00 01 */	addi r5, r5, 0x0001 /* 0x00FF0001@l */
/* 806FC0B4  38 DE 06 98 */	addi r6, r30, 0x698
/* 806FC0B8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806FC0BC  39 20 00 00 */	li r9, 0
/* 806FC0C0  39 40 FF FF */	li r10, -1
/* 806FC0C4  4B 91 DE 2D */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 806FC0C8  38 00 00 01 */	li r0, 1
/* 806FC0CC  98 1E 06 7D */	stb r0, 0x67d(r30)
/* 806FC0D0  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FC0D4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806FC0D8  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FC0DC  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FC0E0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FC0E4  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FC0E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070384@ha */
/* 806FC0EC  38 03 03 84 */	addi r0, r3, 0x0384 /* 0x00070384@l */
/* 806FC0F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806FC0F4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FC0F8  38 81 00 1C */	addi r4, r1, 0x1c
/* 806FC0FC  38 A0 00 00 */	li r5, 0
/* 806FC100  38 C0 FF FF */	li r6, -1
/* 806FC104  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FC108  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FC10C  7D 89 03 A6 */	mtctr r12
/* 806FC110  4E 80 04 21 */	bctrl 
lbl_806FC114:
/* 806FC114  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FC118  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FC11C  FC 00 00 1E */	fctiwz f0, f0
/* 806FC120  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FC124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC128  2C 00 00 09 */	cmpwi r0, 9
/* 806FC12C  41 82 00 34 */	beq lbl_806FC160
/* 806FC130  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FC134  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC138  2C 00 00 17 */	cmpwi r0, 0x17
/* 806FC13C  41 82 00 24 */	beq lbl_806FC160
/* 806FC140  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FC144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC148  2C 00 00 22 */	cmpwi r0, 0x22
/* 806FC14C  41 82 00 14 */	beq lbl_806FC160
/* 806FC150  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FC154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC158  2C 00 00 3D */	cmpwi r0, 0x3d
/* 806FC15C  40 82 00 30 */	bne lbl_806FC18C
lbl_806FC160:
/* 806FC160  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037D@ha */
/* 806FC164  38 03 03 7D */	addi r0, r3, 0x037D /* 0x0007037D@l */
/* 806FC168  90 01 00 18 */	stw r0, 0x18(r1)
/* 806FC16C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FC170  38 81 00 18 */	addi r4, r1, 0x18
/* 806FC174  38 A0 00 00 */	li r5, 0
/* 806FC178  38 C0 FF FF */	li r6, -1
/* 806FC17C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FC180  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FC184  7D 89 03 A6 */	mtctr r12
/* 806FC188  4E 80 04 21 */	bctrl 
lbl_806FC18C:
/* 806FC18C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FC190  38 80 00 01 */	li r4, 1
/* 806FC194  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FC198  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FC19C  40 82 00 18 */	bne lbl_806FC1B4
/* 806FC1A0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC1A4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FC1A8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FC1AC  41 82 00 08 */	beq lbl_806FC1B4
/* 806FC1B0  38 80 00 00 */	li r4, 0
lbl_806FC1B4:
/* 806FC1B4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FC1B8  41 82 01 3C */	beq lbl_806FC2F4
/* 806FC1BC  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FC1C0  38 03 00 01 */	addi r0, r3, 1
/* 806FC1C4  90 1E 06 64 */	stw r0, 0x664(r30)
lbl_806FC1C8:
/* 806FC1C8  7F C3 F3 78 */	mr r3, r30
/* 806FC1CC  38 80 00 12 */	li r4, 0x12
/* 806FC1D0  38 A0 00 00 */	li r5, 0
/* 806FC1D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC1D8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FC1DC  4B FF E8 8D */	bl setBck__8daE_KK_cFiUcff
/* 806FC1E0  7F C3 F3 78 */	mr r3, r30
/* 806FC1E4  38 80 00 1E */	li r4, 0x1e
/* 806FC1E8  38 A0 00 00 */	li r5, 0
/* 806FC1EC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC1F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FC1F4  4B FF E9 21 */	bl setWeaponBck__8daE_KK_cFiUcff
/* 806FC1F8  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FC1FC  38 03 00 01 */	addi r0, r3, 1
/* 806FC200  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FC204  48 00 00 F0 */	b lbl_806FC2F4
lbl_806FC208:
/* 806FC208  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FC20C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FC210  FC 00 00 1E */	fctiwz f0, f0
/* 806FC214  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FC218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC21C  2C 00 00 22 */	cmpwi r0, 0x22
/* 806FC220  41 80 00 54 */	blt lbl_806FC274
/* 806FC224  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FC228  28 00 00 00 */	cmplwi r0, 0
/* 806FC22C  41 82 00 30 */	beq lbl_806FC25C
/* 806FC230  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070382@ha */
/* 806FC234  38 03 03 82 */	addi r0, r3, 0x0382 /* 0x00070382@l */
/* 806FC238  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FC23C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FC240  38 81 00 14 */	addi r4, r1, 0x14
/* 806FC244  38 A0 00 00 */	li r5, 0
/* 806FC248  38 C0 FF FF */	li r6, -1
/* 806FC24C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FC250  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FC254  7D 89 03 A6 */	mtctr r12
/* 806FC258  4E 80 04 21 */	bctrl 
lbl_806FC25C:
/* 806FC25C  38 60 00 00 */	li r3, 0
/* 806FC260  98 7E 06 7D */	stb r3, 0x67d(r30)
/* 806FC264  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FC268  60 00 00 04 */	ori r0, r0, 4
/* 806FC26C  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FC270  98 7E 07 6C */	stb r3, 0x76c(r30)
lbl_806FC274:
/* 806FC274  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FC278  38 80 00 01 */	li r4, 1
/* 806FC27C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FC280  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FC284  40 82 00 18 */	bne lbl_806FC29C
/* 806FC288  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC28C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FC290  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FC294  41 82 00 08 */	beq lbl_806FC29C
/* 806FC298  38 80 00 00 */	li r4, 0
lbl_806FC29C:
/* 806FC29C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FC2A0  41 82 00 54 */	beq lbl_806FC2F4
/* 806FC2A4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FC2A8  38 80 00 01 */	li r4, 1
/* 806FC2AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FC2B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FC2B4  40 82 00 18 */	bne lbl_806FC2CC
/* 806FC2B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC2BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FC2C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FC2C4  41 82 00 08 */	beq lbl_806FC2CC
/* 806FC2C8  38 80 00 00 */	li r4, 0
lbl_806FC2CC:
/* 806FC2CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FC2D0  41 82 00 24 */	beq lbl_806FC2F4
/* 806FC2D4  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FC2D8  60 00 00 04 */	ori r0, r0, 4
/* 806FC2DC  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FC2E0  38 00 00 00 */	li r0, 0
/* 806FC2E4  98 1E 06 7D */	stb r0, 0x67d(r30)
/* 806FC2E8  98 1E 07 6C */	stb r0, 0x76c(r30)
/* 806FC2EC  7F C3 F3 78 */	mr r3, r30
/* 806FC2F0  4B FF EF FD */	bl nextActionCheck__8daE_KK_cFv
lbl_806FC2F4:
/* 806FC2F4  80 1E 07 64 */	lwz r0, 0x764(r30)
/* 806FC2F8  2C 00 00 14 */	cmpwi r0, 0x14
/* 806FC2FC  40 82 00 5C */	bne lbl_806FC358
/* 806FC300  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FC304  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FC308  FC 00 00 1E */	fctiwz f0, f0
/* 806FC30C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FC310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC314  2C 00 00 09 */	cmpwi r0, 9
/* 806FC318  41 82 00 14 */	beq lbl_806FC32C
/* 806FC31C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806FC320  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC324  2C 00 00 12 */	cmpwi r0, 0x12
/* 806FC328  40 82 00 30 */	bne lbl_806FC358
lbl_806FC32C:
/* 806FC32C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037D@ha */
/* 806FC330  38 03 03 7D */	addi r0, r3, 0x037D /* 0x0007037D@l */
/* 806FC334  90 01 00 10 */	stw r0, 0x10(r1)
/* 806FC338  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FC33C  38 81 00 10 */	addi r4, r1, 0x10
/* 806FC340  38 A0 00 00 */	li r5, 0
/* 806FC344  38 C0 FF FF */	li r6, -1
/* 806FC348  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FC34C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FC350  7D 89 03 A6 */	mtctr r12
/* 806FC354  4E 80 04 21 */	bctrl 
lbl_806FC358:
/* 806FC358  39 61 00 40 */	addi r11, r1, 0x40
/* 806FC35C  4B C6 5E CD */	bl _restgpr_29
/* 806FC360  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806FC364  7C 08 03 A6 */	mtlr r0
/* 806FC368  38 21 00 40 */	addi r1, r1, 0x40
/* 806FC36C  4E 80 00 20 */	blr 

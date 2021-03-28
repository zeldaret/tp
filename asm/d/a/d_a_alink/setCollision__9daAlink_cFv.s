lbl_800ABDB8:
/* 800ABDB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800ABDBC  7C 08 02 A6 */	mflr r0
/* 800ABDC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800ABDC4  39 61 00 30 */	addi r11, r1, 0x30
/* 800ABDC8  48 2B 64 09 */	bl _savegpr_26
/* 800ABDCC  7C 7E 1B 78 */	mr r30, r3
/* 800ABDD0  38 7E 08 30 */	addi r3, r30, 0x830
/* 800ABDD4  4B FD 7A 5D */	bl Move__10dCcD_GSttsFv
/* 800ABDD8  38 7E 17 58 */	addi r3, r30, 0x1758
/* 800ABDDC  4B FD 7A 55 */	bl Move__10dCcD_GSttsFv
/* 800ABDE0  3B 5E 08 50 */	addi r26, r30, 0x850
/* 800ABDE4  7F C3 F3 78 */	mr r3, r30
/* 800ABDE8  48 02 B9 E1 */	bl checkMagicArmorNoDamage__9daAlink_cFv
/* 800ABDEC  2C 03 00 00 */	cmpwi r3, 0
/* 800ABDF0  38 60 00 06 */	li r3, 6
/* 800ABDF4  41 82 00 08 */	beq lbl_800ABDFC
/* 800ABDF8  38 60 00 08 */	li r3, 8
lbl_800ABDFC:
/* 800ABDFC  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800ABE00  28 00 01 9C */	cmplwi r0, 0x19c
/* 800ABE04  40 82 00 14 */	bne lbl_800ABE18
/* 800ABE08  80 1E 2E 50 */	lwz r0, 0x2e50(r30)
/* 800ABE0C  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 800ABE10  90 1E 2E 50 */	stw r0, 0x2e50(r30)
/* 800ABE14  48 00 00 10 */	b lbl_800ABE24
lbl_800ABE18:
/* 800ABE18  80 1E 2E 50 */	lwz r0, 0x2e50(r30)
/* 800ABE1C  64 00 00 02 */	oris r0, r0, 2
/* 800ABE20  90 1E 2E 50 */	stw r0, 0x2e50(r30)
lbl_800ABE24:
/* 800ABE24  38 00 00 03 */	li r0, 3
/* 800ABE28  7C 09 03 A6 */	mtctr r0
lbl_800ABE2C:
/* 800ABE2C  98 7A 00 BA */	stb r3, 0xba(r26)
/* 800ABE30  3B 5A 01 3C */	addi r26, r26, 0x13c
/* 800ABE34  42 00 FF F8 */	bdnz lbl_800ABE2C
/* 800ABE38  3B FE 08 50 */	addi r31, r30, 0x850
/* 800ABE3C  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800ABE40  28 00 01 9C */	cmplwi r0, 0x19c
/* 800ABE44  41 82 00 20 */	beq lbl_800ABE64
/* 800ABE48  7F C3 F3 78 */	mr r3, r30
/* 800ABE4C  48 03 10 B9 */	bl checkPlayerGuardAndAttack__9daAlink_cCFv
/* 800ABE50  2C 03 00 00 */	cmpwi r3, 0
/* 800ABE54  41 82 00 BC */	beq lbl_800ABF10
/* 800ABE58  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800ABE5C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800ABE60  40 82 00 B0 */	bne lbl_800ABF10
lbl_800ABE64:
/* 800ABE64  A8 1E 31 14 */	lha r0, 0x3114(r30)
/* 800ABE68  2C 00 30 00 */	cmpwi r0, 0x3000
/* 800ABE6C  41 80 00 14 */	blt lbl_800ABE80
/* 800ABE70  2C 00 50 00 */	cmpwi r0, 0x5000
/* 800ABE74  41 81 00 0C */	bgt lbl_800ABE80
/* 800ABE78  3B 60 00 01 */	li r27, 1
/* 800ABE7C  48 00 00 08 */	b lbl_800ABE84
lbl_800ABE80:
/* 800ABE80  3B 60 00 00 */	li r27, 0
lbl_800ABE84:
/* 800ABE84  3B 40 00 00 */	li r26, 0
lbl_800ABE88:
/* 800ABE88  2C 1B 00 00 */	cmpwi r27, 0
/* 800ABE8C  41 82 00 20 */	beq lbl_800ABEAC
/* 800ABE90  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABE94  60 00 00 40 */	ori r0, r0, 0x40
/* 800ABE98  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 800ABE9C  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABEA0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800ABEA4  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 800ABEA8  48 00 00 1C */	b lbl_800ABEC4
lbl_800ABEAC:
/* 800ABEAC  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABEB0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800ABEB4  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 800ABEB8  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABEBC  60 00 00 01 */	ori r0, r0, 1
/* 800ABEC0  90 1F 00 9C */	stw r0, 0x9c(r31)
lbl_800ABEC4:
/* 800ABEC4  7F C3 F3 78 */	mr r3, r30
/* 800ABEC8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800ABECC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800ABED0  7D 89 03 A6 */	mtctr r12
/* 800ABED4  4E 80 04 21 */	bctrl 
/* 800ABED8  28 03 00 00 */	cmplwi r3, 0
/* 800ABEDC  41 82 00 14 */	beq lbl_800ABEF0
/* 800ABEE0  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABEE4  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800ABEE8  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 800ABEEC  48 00 00 10 */	b lbl_800ABEFC
lbl_800ABEF0:
/* 800ABEF0  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABEF4  60 00 00 08 */	ori r0, r0, 8
/* 800ABEF8  90 1F 00 9C */	stw r0, 0x9c(r31)
lbl_800ABEFC:
/* 800ABEFC  3B 5A 00 01 */	addi r26, r26, 1
/* 800ABF00  2C 1A 00 03 */	cmpwi r26, 3
/* 800ABF04  3B FF 01 3C */	addi r31, r31, 0x13c
/* 800ABF08  41 80 FF 80 */	blt lbl_800ABE88
/* 800ABF0C  48 00 00 54 */	b lbl_800ABF60
lbl_800ABF10:
/* 800ABF10  38 00 00 03 */	li r0, 3
/* 800ABF14  7C 09 03 A6 */	mtctr r0
lbl_800ABF18:
/* 800ABF18  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABF1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800ABF20  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 800ABF24  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABF28  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800ABF2C  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 800ABF30  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800ABF34  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800ABF38  41 82 00 14 */	beq lbl_800ABF4C
/* 800ABF3C  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABF40  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800ABF44  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 800ABF48  48 00 00 10 */	b lbl_800ABF58
lbl_800ABF4C:
/* 800ABF4C  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 800ABF50  60 00 00 08 */	ori r0, r0, 8
/* 800ABF54  90 1F 00 9C */	stw r0, 0x9c(r31)
lbl_800ABF58:
/* 800ABF58  3B FF 01 3C */	addi r31, r31, 0x13c
/* 800ABF5C  42 00 FF BC */	bdnz lbl_800ABF18
lbl_800ABF60:
/* 800ABF60  7F C3 F3 78 */	mr r3, r30
/* 800ABF64  4B FF E6 85 */	bl checkNoCollisionCorret__9daAlink_cFv
/* 800ABF68  2C 03 00 00 */	cmpwi r3, 0
/* 800ABF6C  41 82 00 20 */	beq lbl_800ABF8C
/* 800ABF70  7F C3 F3 78 */	mr r3, r30
/* 800ABF74  48 05 CA 0D */	bl checkOctaIealSpecialCollect__9daAlink_cFv
/* 800ABF78  2C 03 00 00 */	cmpwi r3, 0
/* 800ABF7C  40 82 00 10 */	bne lbl_800ABF8C
/* 800ABF80  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800ABF84  64 00 20 00 */	oris r0, r0, 0x2000
/* 800ABF88  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_800ABF8C:
/* 800ABF8C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800ABF90  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800ABF94  41 82 00 10 */	beq lbl_800ABFA4
/* 800ABF98  7F C3 F3 78 */	mr r3, r30
/* 800ABF9C  4B FF F8 DD */	bl setWolfCollisionPos__9daAlink_cFv
/* 800ABFA0  48 00 00 0C */	b lbl_800ABFAC
lbl_800ABFA4:
/* 800ABFA4  7F C3 F3 78 */	mr r3, r30
/* 800ABFA8  4B FF FB DD */	bl setCollisionPos__9daAlink_cFv
lbl_800ABFAC:
/* 800ABFAC  A8 1E 05 6C */	lha r0, 0x56c(r30)
/* 800ABFB0  2C 00 00 00 */	cmpwi r0, 0
/* 800ABFB4  40 82 00 10 */	bne lbl_800ABFC4
/* 800ABFB8  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800ABFBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800ABFC0  41 82 00 58 */	beq lbl_800AC018
lbl_800ABFC4:
/* 800ABFC4  3B 40 00 00 */	li r26, 0
/* 800ABFC8  7F 5F D3 78 */	mr r31, r26
lbl_800ABFCC:
/* 800ABFCC  7C 7E FA 14 */	add r3, r30, r31
/* 800ABFD0  80 03 08 68 */	lwz r0, 0x868(r3)
/* 800ABFD4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800ABFD8  90 03 08 68 */	stw r0, 0x868(r3)
/* 800ABFDC  38 63 08 50 */	addi r3, r3, 0x850
/* 800ABFE0  4B FD 84 D9 */	bl ResetTgHit__12dCcD_GObjInfFv
/* 800ABFE4  3B 5A 00 01 */	addi r26, r26, 1
/* 800ABFE8  2C 1A 00 03 */	cmpwi r26, 3
/* 800ABFEC  3B FF 01 3C */	addi r31, r31, 0x13c
/* 800ABFF0  41 80 FF DC */	blt lbl_800ABFCC
/* 800ABFF4  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800ABFF8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800ABFFC  41 82 00 58 */	beq lbl_800AC054
/* 800AC000  80 1E 0F D0 */	lwz r0, 0xfd0(r30)
/* 800AC004  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800AC008  90 1E 0F D0 */	stw r0, 0xfd0(r30)
/* 800AC00C  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AC010  4B FD 84 A9 */	bl ResetTgHit__12dCcD_GObjInfFv
/* 800AC014  48 00 00 40 */	b lbl_800AC054
lbl_800AC018:
/* 800AC018  38 60 00 00 */	li r3, 0
/* 800AC01C  38 00 00 03 */	li r0, 3
/* 800AC020  7C 09 03 A6 */	mtctr r0
lbl_800AC024:
/* 800AC024  38 83 08 68 */	addi r4, r3, 0x868
/* 800AC028  7C 1E 20 2E */	lwzx r0, r30, r4
/* 800AC02C  60 00 00 01 */	ori r0, r0, 1
/* 800AC030  7C 1E 21 2E */	stwx r0, r30, r4
/* 800AC034  38 63 01 3C */	addi r3, r3, 0x13c
/* 800AC038  42 00 FF EC */	bdnz lbl_800AC024
/* 800AC03C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800AC040  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800AC044  41 82 00 10 */	beq lbl_800AC054
/* 800AC048  80 1E 0F D0 */	lwz r0, 0xfd0(r30)
/* 800AC04C  60 00 00 01 */	ori r0, r0, 1
/* 800AC050  90 1E 0F D0 */	stw r0, 0xfd0(r30)
lbl_800AC054:
/* 800AC054  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 800AC058  38 63 00 24 */	addi r3, r3, 0x24
/* 800AC05C  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 800AC060  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 800AC064  38 BE 35 1C */	addi r5, r30, 0x351c
/* 800AC068  48 29 AD E5 */	bl PSMTXMultVecSR
/* 800AC06C  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800AC070  28 00 01 9C */	cmplwi r0, 0x19c
/* 800AC074  41 82 01 24 */	beq lbl_800AC198
/* 800AC078  C0 3E 35 24 */	lfs f1, 0x3524(r30)
/* 800AC07C  C0 1E 35 1C */	lfs f0, 0x351c(r30)
/* 800AC080  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800AC084  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AC088  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800AC08C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800AC090  38 61 00 0C */	addi r3, r1, 0xc
/* 800AC094  48 29 B0 A5 */	bl PSVECSquareMag
/* 800AC098  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AC09C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AC0A0  40 81 00 58 */	ble lbl_800AC0F8
/* 800AC0A4  FC 00 08 34 */	frsqrte f0, f1
/* 800AC0A8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800AC0AC  FC 44 00 32 */	fmul f2, f4, f0
/* 800AC0B0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800AC0B4  FC 00 00 32 */	fmul f0, f0, f0
/* 800AC0B8  FC 01 00 32 */	fmul f0, f1, f0
/* 800AC0BC  FC 03 00 28 */	fsub f0, f3, f0
/* 800AC0C0  FC 02 00 32 */	fmul f0, f2, f0
/* 800AC0C4  FC 44 00 32 */	fmul f2, f4, f0
/* 800AC0C8  FC 00 00 32 */	fmul f0, f0, f0
/* 800AC0CC  FC 01 00 32 */	fmul f0, f1, f0
/* 800AC0D0  FC 03 00 28 */	fsub f0, f3, f0
/* 800AC0D4  FC 02 00 32 */	fmul f0, f2, f0
/* 800AC0D8  FC 44 00 32 */	fmul f2, f4, f0
/* 800AC0DC  FC 00 00 32 */	fmul f0, f0, f0
/* 800AC0E0  FC 01 00 32 */	fmul f0, f1, f0
/* 800AC0E4  FC 03 00 28 */	fsub f0, f3, f0
/* 800AC0E8  FC 02 00 32 */	fmul f0, f2, f0
/* 800AC0EC  FC 21 00 32 */	fmul f1, f1, f0
/* 800AC0F0  FC 20 08 18 */	frsp f1, f1
/* 800AC0F4  48 00 00 88 */	b lbl_800AC17C
lbl_800AC0F8:
/* 800AC0F8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800AC0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AC100  40 80 00 10 */	bge lbl_800AC110
/* 800AC104  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800AC108  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800AC10C  48 00 00 70 */	b lbl_800AC17C
lbl_800AC110:
/* 800AC110  D0 21 00 08 */	stfs f1, 8(r1)
/* 800AC114  80 81 00 08 */	lwz r4, 8(r1)
/* 800AC118  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800AC11C  3C 00 7F 80 */	lis r0, 0x7f80
/* 800AC120  7C 03 00 00 */	cmpw r3, r0
/* 800AC124  41 82 00 14 */	beq lbl_800AC138
/* 800AC128  40 80 00 40 */	bge lbl_800AC168
/* 800AC12C  2C 03 00 00 */	cmpwi r3, 0
/* 800AC130  41 82 00 20 */	beq lbl_800AC150
/* 800AC134  48 00 00 34 */	b lbl_800AC168
lbl_800AC138:
/* 800AC138  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800AC13C  41 82 00 0C */	beq lbl_800AC148
/* 800AC140  38 00 00 01 */	li r0, 1
/* 800AC144  48 00 00 28 */	b lbl_800AC16C
lbl_800AC148:
/* 800AC148  38 00 00 02 */	li r0, 2
/* 800AC14C  48 00 00 20 */	b lbl_800AC16C
lbl_800AC150:
/* 800AC150  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800AC154  41 82 00 0C */	beq lbl_800AC160
/* 800AC158  38 00 00 05 */	li r0, 5
/* 800AC15C  48 00 00 10 */	b lbl_800AC16C
lbl_800AC160:
/* 800AC160  38 00 00 03 */	li r0, 3
/* 800AC164  48 00 00 08 */	b lbl_800AC16C
lbl_800AC168:
/* 800AC168  38 00 00 04 */	li r0, 4
lbl_800AC16C:
/* 800AC16C  2C 00 00 01 */	cmpwi r0, 1
/* 800AC170  40 82 00 0C */	bne lbl_800AC17C
/* 800AC174  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800AC178  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800AC17C:
/* 800AC17C  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800AC180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AC184  40 81 00 14 */	ble lbl_800AC198
/* 800AC188  38 7E 35 1C */	addi r3, r30, 0x351c
/* 800AC18C  48 1B AF 9D */	bl atan2sX_Z__4cXyzCFv
/* 800AC190  B0 7E 30 6C */	sth r3, 0x306c(r30)
/* 800AC194  48 00 00 14 */	b lbl_800AC1A8
lbl_800AC198:
/* 800AC198  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800AC19C  A8 1E 05 9E */	lha r0, 0x59e(r30)
/* 800AC1A0  7C 03 02 14 */	add r0, r3, r0
/* 800AC1A4  B0 1E 30 6C */	sth r0, 0x306c(r30)
lbl_800AC1A8:
/* 800AC1A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800AC1AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800AC1B0  3B A3 23 3C */	addi r29, r3, 0x233c
/* 800AC1B4  7F A3 EB 78 */	mr r3, r29
/* 800AC1B8  38 9E 08 50 */	addi r4, r30, 0x850
/* 800AC1BC  48 1B 89 ED */	bl Set__4cCcSFP8cCcD_Obj
/* 800AC1C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800AC1C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800AC1C8  3B 83 4B 88 */	addi r28, r3, 0x4b88
/* 800AC1CC  7F 83 E3 78 */	mr r3, r28
/* 800AC1D0  38 9E 08 50 */	addi r4, r30, 0x850
/* 800AC1D4  38 A0 00 01 */	li r5, 1
/* 800AC1D8  4B FD 9B C1 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AC1DC  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800AC1E0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800AC1E4  41 82 00 98 */	beq lbl_800AC27C
/* 800AC1E8  7F C3 F3 78 */	mr r3, r30
/* 800AC1EC  4B FF E6 01 */	bl setWolfAtCollision__9daAlink_cFv
/* 800AC1F0  3B 40 00 01 */	li r26, 1
/* 800AC1F4  3B E0 01 3C */	li r31, 0x13c
lbl_800AC1F8:
/* 800AC1F8  7F A3 EB 78 */	mr r3, r29
/* 800AC1FC  3B 7F 08 50 */	addi r27, r31, 0x850
/* 800AC200  7F 7E DA 14 */	add r27, r30, r27
/* 800AC204  7F 64 DB 78 */	mr r4, r27
/* 800AC208  48 1B 89 A1 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AC20C  7F 83 E3 78 */	mr r3, r28
/* 800AC210  7F 64 DB 78 */	mr r4, r27
/* 800AC214  38 A0 00 01 */	li r5, 1
/* 800AC218  4B FD 9B 81 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AC21C  3B 5A 00 01 */	addi r26, r26, 1
/* 800AC220  2C 1A 00 03 */	cmpwi r26, 3
/* 800AC224  3B FF 01 3C */	addi r31, r31, 0x13c
/* 800AC228  41 80 FF D0 */	blt lbl_800AC1F8
/* 800AC22C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800AC230  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800AC234  41 82 00 1C */	beq lbl_800AC250
/* 800AC238  80 1E 0F E4 */	lwz r0, 0xfe4(r30)
/* 800AC23C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800AC240  90 1E 0F E4 */	stw r0, 0xfe4(r30)
/* 800AC244  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800AC248  4B FD 84 69 */	bl ResetCoHit__12dCcD_GObjInfFv
/* 800AC24C  48 00 00 10 */	b lbl_800AC25C
lbl_800AC250:
/* 800AC250  80 1E 0F E4 */	lwz r0, 0xfe4(r30)
/* 800AC254  60 00 00 01 */	ori r0, r0, 1
/* 800AC258  90 1E 0F E4 */	stw r0, 0xfe4(r30)
lbl_800AC25C:
/* 800AC25C  7F A3 EB 78 */	mr r3, r29
/* 800AC260  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AC264  48 1B 89 45 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AC268  7F 83 E3 78 */	mr r3, r28
/* 800AC26C  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 800AC270  38 A0 00 01 */	li r5, 1
/* 800AC274  4B FD 9B 25 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AC278  48 00 00 48 */	b lbl_800AC2C0
lbl_800AC27C:
/* 800AC27C  3B 40 00 01 */	li r26, 1
/* 800AC280  3B E0 01 3C */	li r31, 0x13c
lbl_800AC284:
/* 800AC284  7F A3 EB 78 */	mr r3, r29
/* 800AC288  3B 7F 08 50 */	addi r27, r31, 0x850
/* 800AC28C  7F 7E DA 14 */	add r27, r30, r27
/* 800AC290  7F 64 DB 78 */	mr r4, r27
/* 800AC294  48 1B 89 15 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AC298  7F 83 E3 78 */	mr r3, r28
/* 800AC29C  7F 64 DB 78 */	mr r4, r27
/* 800AC2A0  38 A0 00 01 */	li r5, 1
/* 800AC2A4  4B FD 9A F5 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 800AC2A8  3B 5A 00 01 */	addi r26, r26, 1
/* 800AC2AC  2C 1A 00 03 */	cmpwi r26, 3
/* 800AC2B0  3B FF 01 3C */	addi r31, r31, 0x13c
/* 800AC2B4  41 80 FF D0 */	blt lbl_800AC284
/* 800AC2B8  7F C3 F3 78 */	mr r3, r30
/* 800AC2BC  4B FF E8 01 */	bl setAtCollision__9daAlink_cFv
lbl_800AC2C0:
/* 800AC2C0  3B 7E 08 50 */	addi r27, r30, 0x850
/* 800AC2C4  3B 5E 0C 04 */	addi r26, r30, 0xc04
/* 800AC2C8  3B 80 00 00 */	li r28, 0
lbl_800AC2CC:
/* 800AC2CC  38 7A 01 24 */	addi r3, r26, 0x124
/* 800AC2D0  38 9B 01 24 */	addi r4, r27, 0x124
/* 800AC2D4  48 1C 2F 09 */	bl SetC__8cM3dGCylFRC4cXyz
/* 800AC2D8  38 7A 01 24 */	addi r3, r26, 0x124
/* 800AC2DC  C0 3B 01 30 */	lfs f1, 0x130(r27)
/* 800AC2E0  48 1C 2F 21 */	bl SetR__8cM3dGCylFf
/* 800AC2E4  38 7A 01 24 */	addi r3, r26, 0x124
/* 800AC2E8  C0 3B 01 34 */	lfs f1, 0x134(r27)
/* 800AC2EC  48 1C 2F 0D */	bl SetH__8cM3dGCylFf
/* 800AC2F0  7F A3 EB 78 */	mr r3, r29
/* 800AC2F4  7F 44 D3 78 */	mr r4, r26
/* 800AC2F8  48 1B 88 B1 */	bl Set__4cCcSFP8cCcD_Obj
/* 800AC2FC  3B 9C 00 01 */	addi r28, r28, 1
/* 800AC300  2C 1C 00 03 */	cmpwi r28, 3
/* 800AC304  3B 7B 01 3C */	addi r27, r27, 0x13c
/* 800AC308  3B 5A 01 3C */	addi r26, r26, 0x13c
/* 800AC30C  41 80 FF C0 */	blt lbl_800AC2CC
/* 800AC310  39 61 00 30 */	addi r11, r1, 0x30
/* 800AC314  48 2B 5F 09 */	bl _restgpr_26
/* 800AC318  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800AC31C  7C 08 03 A6 */	mtlr r0
/* 800AC320  38 21 00 30 */	addi r1, r1, 0x30
/* 800AC324  4E 80 00 20 */	blr 

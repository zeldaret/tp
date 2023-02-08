lbl_806ABF6C:
/* 806ABF6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806ABF70  7C 08 02 A6 */	mflr r0
/* 806ABF74  90 01 00 34 */	stw r0, 0x34(r1)
/* 806ABF78  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806ABF7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806ABF80  7C 7E 1B 78 */	mr r30, r3
/* 806ABF84  3C 80 80 6B */	lis r4, lit_3764@ha /* 0x806AD538@ha */
/* 806ABF88  3B E4 D5 38 */	addi r31, r4, lit_3764@l /* 0x806AD538@l */
/* 806ABF8C  80 03 06 80 */	lwz r0, 0x680(r3)
/* 806ABF90  2C 00 00 02 */	cmpwi r0, 2
/* 806ABF94  41 82 01 9C */	beq lbl_806AC130
/* 806ABF98  40 80 00 14 */	bge lbl_806ABFAC
/* 806ABF9C  2C 00 00 00 */	cmpwi r0, 0
/* 806ABFA0  41 82 00 18 */	beq lbl_806ABFB8
/* 806ABFA4  40 80 00 18 */	bge lbl_806ABFBC
/* 806ABFA8  48 00 03 D0 */	b lbl_806AC378
lbl_806ABFAC:
/* 806ABFAC  2C 00 00 04 */	cmpwi r0, 4
/* 806ABFB0  40 80 03 C8 */	bge lbl_806AC378
/* 806ABFB4  48 00 02 34 */	b lbl_806AC1E8
lbl_806ABFB8:
/* 806ABFB8  4B FF F0 9D */	bl setCoreDeadEffect__8daE_DK_cFv
lbl_806ABFBC:
/* 806ABFBC  7F C3 F3 78 */	mr r3, r30
/* 806ABFC0  4B FF F1 99 */	bl setBodyDeadEffect__8daE_DK_cFv
/* 806ABFC4  7F C3 F3 78 */	mr r3, r30
/* 806ABFC8  38 80 00 0E */	li r4, 0xe
/* 806ABFCC  38 A0 00 00 */	li r5, 0
/* 806ABFD0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806ABFD4  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 806ABFD8  4B FF E5 F1 */	bl setBck__8daE_DK_cFiUcff
/* 806ABFDC  7F C3 F3 78 */	mr r3, r30
/* 806ABFE0  38 80 00 0A */	li r4, 0xa
/* 806ABFE4  38 A0 00 00 */	li r5, 0
/* 806ABFE8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806ABFEC  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 806ABFF0  4B FF E6 9D */	bl setBckCore__8daE_DK_cFiUcff
/* 806ABFF4  38 00 00 01 */	li r0, 1
/* 806ABFF8  98 1E 06 A2 */	stb r0, 0x6a2(r30)
/* 806ABFFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806AC000  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 806AC004  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806AC008  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 806AC00C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806AC010  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 806AC014  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806AC018  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 806AC01C  80 1E 09 90 */	lwz r0, 0x990(r30)
/* 806AC020  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806AC024  90 1E 09 90 */	stw r0, 0x990(r30)
/* 806AC028  80 1E 09 7C */	lwz r0, 0x97c(r30)
/* 806AC02C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806AC030  90 1E 09 7C */	stw r0, 0x97c(r30)
/* 806AC034  80 1E 0B EC */	lwz r0, 0xbec(r30)
/* 806AC038  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806AC03C  90 1E 0B EC */	stw r0, 0xbec(r30)
/* 806AC040  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806AC044  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 806AC048  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806AC04C  38 00 00 00 */	li r0, 0
/* 806AC050  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 806AC054  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806AC058  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A5@ha */
/* 806AC05C  38 03 02 A5 */	addi r0, r3, 0x02A5 /* 0x000702A5@l */
/* 806AC060  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AC064  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806AC068  38 81 00 0C */	addi r4, r1, 0xc
/* 806AC06C  38 A0 00 00 */	li r5, 0
/* 806AC070  38 C0 FF FF */	li r6, -1
/* 806AC074  81 9E 05 CC */	lwz r12, 0x5cc(r30)
/* 806AC078  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806AC07C  7D 89 03 A6 */	mtctr r12
/* 806AC080  4E 80 04 21 */	bctrl 
/* 806AC084  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 806AC088  2C 00 00 00 */	cmpwi r0, 0
/* 806AC08C  40 82 00 28 */	bne lbl_806AC0B4
/* 806AC090  A8 7E 0D 1A */	lha r3, 0xd1a(r30)
/* 806AC094  3C 63 00 01 */	addis r3, r3, 1
/* 806AC098  38 03 80 00 */	addi r0, r3, -32768
/* 806AC09C  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806AC0A0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806AC0A4  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 806AC0A8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806AC0AC  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 806AC0B0  48 00 00 48 */	b lbl_806AC0F8
lbl_806AC0B4:
/* 806AC0B4  A8 7E 0D 1A */	lha r3, 0xd1a(r30)
/* 806AC0B8  3C 63 00 01 */	addis r3, r3, 1
/* 806AC0BC  38 03 80 00 */	addi r0, r3, -32768
/* 806AC0C0  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806AC0C4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806AC0C8  D0 3E 06 B0 */	stfs f1, 0x6b0(r30)
/* 806AC0CC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806AC0D0  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 806AC0D4  A8 7E 0D 1A */	lha r3, 0xd1a(r30)
/* 806AC0D8  3C 63 00 01 */	addis r3, r3, 1
/* 806AC0DC  38 03 80 00 */	addi r0, r3, -32768
/* 806AC0E0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806AC0E4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806AC0E8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806AC0EC  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 806AC0F0  38 00 10 00 */	li r0, 0x1000
/* 806AC0F4  B0 1E 06 8E */	sth r0, 0x68e(r30)
lbl_806AC0F8:
/* 806AC0F8  38 00 00 02 */	li r0, 2
/* 806AC0FC  90 1E 06 80 */	stw r0, 0x680(r30)
/* 806AC100  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A6@ha */
/* 806AC104  38 03 02 A6 */	addi r0, r3, 0x02A6 /* 0x000702A6@l */
/* 806AC108  90 01 00 08 */	stw r0, 8(r1)
/* 806AC10C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806AC110  38 81 00 08 */	addi r4, r1, 8
/* 806AC114  38 A0 00 00 */	li r5, 0
/* 806AC118  38 C0 FF FF */	li r6, -1
/* 806AC11C  81 9E 05 CC */	lwz r12, 0x5cc(r30)
/* 806AC120  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806AC124  7D 89 03 A6 */	mtctr r12
/* 806AC128  4E 80 04 21 */	bctrl 
/* 806AC12C  48 00 02 4C */	b lbl_806AC378
lbl_806AC130:
/* 806AC130  4B FF F0 29 */	bl setBodyDeadEffect__8daE_DK_cFv
/* 806AC134  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806AC138  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 806AC13C  7C 03 02 14 */	add r0, r3, r0
/* 806AC140  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806AC144  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 806AC148  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 806AC14C  7C 03 02 14 */	add r0, r3, r0
/* 806AC150  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806AC154  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 806AC158  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806AC15C  41 82 00 18 */	beq lbl_806AC174
/* 806AC160  38 7E 06 8E */	addi r3, r30, 0x68e
/* 806AC164  38 80 00 00 */	li r4, 0
/* 806AC168  38 A0 00 40 */	li r5, 0x40
/* 806AC16C  4B BC 4A 25 */	bl cLib_chaseAngleS__FPsss
/* 806AC170  48 00 00 14 */	b lbl_806AC184
lbl_806AC174:
/* 806AC174  38 7E 06 8E */	addi r3, r30, 0x68e
/* 806AC178  38 80 01 00 */	li r4, 0x100
/* 806AC17C  38 A0 00 40 */	li r5, 0x40
/* 806AC180  4B BC 4A 11 */	bl cLib_chaseAngleS__FPsss
lbl_806AC184:
/* 806AC184  7F C3 F3 78 */	mr r3, r30
/* 806AC188  4B FF FC B5 */	bl BodyDeathMove__8daE_DK_cFv
/* 806AC18C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806AC190  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 806AC194  40 82 01 E4 */	bne lbl_806AC378
/* 806AC198  38 00 00 03 */	li r0, 3
/* 806AC19C  90 1E 06 80 */	stw r0, 0x680(r30)
/* 806AC1A0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 806AC1A4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806AC1A8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806AC1AC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806AC1B0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806AC1B4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806AC1B8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806AC1BC  EC 01 00 2A */	fadds f0, f1, f0
/* 806AC1C0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806AC1C4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806AC1C8  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 806AC1CC  38 00 08 00 */	li r0, 0x800
/* 806AC1D0  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 806AC1D4  38 00 00 1E */	li r0, 0x1e
/* 806AC1D8  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 806AC1DC  38 00 00 64 */	li r0, 0x64
/* 806AC1E0  90 1E 06 98 */	stw r0, 0x698(r30)
/* 806AC1E4  48 00 01 94 */	b lbl_806AC378
lbl_806AC1E8:
/* 806AC1E8  4B FF EF 71 */	bl setBodyDeadEffect__8daE_DK_cFv
/* 806AC1EC  80 1E 06 9C */	lwz r0, 0x69c(r30)
/* 806AC1F0  2C 00 00 00 */	cmpwi r0, 0
/* 806AC1F4  41 82 00 E0 */	beq lbl_806AC2D4
/* 806AC1F8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806AC1FC  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 806AC200  7C 03 02 14 */	add r0, r3, r0
/* 806AC204  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806AC208  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 806AC20C  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 806AC210  7C 03 02 14 */	add r0, r3, r0
/* 806AC214  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806AC218  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 806AC21C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806AC220  41 82 00 18 */	beq lbl_806AC238
/* 806AC224  38 7E 06 8E */	addi r3, r30, 0x68e
/* 806AC228  38 80 00 00 */	li r4, 0
/* 806AC22C  38 A0 00 40 */	li r5, 0x40
/* 806AC230  4B BC 49 61 */	bl cLib_chaseAngleS__FPsss
/* 806AC234  48 00 00 14 */	b lbl_806AC248
lbl_806AC238:
/* 806AC238  38 7E 06 8E */	addi r3, r30, 0x68e
/* 806AC23C  38 80 01 00 */	li r4, 0x100
/* 806AC240  38 A0 00 40 */	li r5, 0x40
/* 806AC244  4B BC 49 4D */	bl cLib_chaseAngleS__FPsss
lbl_806AC248:
/* 806AC248  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806AC24C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806AC250  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806AC254  4B BC 44 ED */	bl cLib_chaseF__FPfff
/* 806AC258  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806AC25C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806AC260  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806AC264  4B BC 44 DD */	bl cLib_chaseF__FPfff
/* 806AC268  80 1E 06 9C */	lwz r0, 0x69c(r30)
/* 806AC26C  2C 00 00 01 */	cmpwi r0, 1
/* 806AC270  40 82 00 64 */	bne lbl_806AC2D4
/* 806AC274  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806AC278  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 806AC27C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806AC280  EC 21 00 2A */	fadds f1, f1, f0
/* 806AC284  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806AC288  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AC28C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806AC290  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806AC294  38 61 00 10 */	addi r3, r1, 0x10
/* 806AC298  38 80 00 00 */	li r4, 0
/* 806AC29C  38 A0 FF FF */	li r5, -1
/* 806AC2A0  38 C0 FF FF */	li r6, -1
/* 806AC2A4  38 E0 00 00 */	li r7, 0
/* 806AC2A8  39 00 00 00 */	li r8, 0
/* 806AC2AC  39 20 00 00 */	li r9, 0
/* 806AC2B0  4B 96 FF 91 */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 806AC2B4  7F C3 F3 78 */	mr r3, r30
/* 806AC2B8  38 81 00 10 */	addi r4, r1, 0x10
/* 806AC2BC  38 A0 00 05 */	li r5, 5
/* 806AC2C0  38 C0 00 00 */	li r6, 0
/* 806AC2C4  38 E0 00 16 */	li r7, 0x16
/* 806AC2C8  4B 97 08 11 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806AC2CC  38 00 00 01 */	li r0, 1
/* 806AC2D0  98 1E 06 A1 */	stb r0, 0x6a1(r30)
lbl_806AC2D4:
/* 806AC2D4  7F C3 F3 78 */	mr r3, r30
/* 806AC2D8  4B FF FB 65 */	bl BodyDeathMove__8daE_DK_cFv
/* 806AC2DC  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 806AC2E0  38 60 00 01 */	li r3, 1
/* 806AC2E4  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806AC2E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806AC2EC  40 82 00 18 */	bne lbl_806AC304
/* 806AC2F0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806AC2F4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806AC2F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806AC2FC  41 82 00 08 */	beq lbl_806AC304
/* 806AC300  38 60 00 00 */	li r3, 0
lbl_806AC304:
/* 806AC304  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806AC308  40 82 00 3C */	bne lbl_806AC344
/* 806AC30C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 806AC310  38 7E 06 91 */	addi r3, r30, 0x691
/* 806AC314  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 806AC318  EC 00 08 28 */	fsubs f0, f0, f1
/* 806AC31C  FC 00 00 1E */	fctiwz f0, f0
/* 806AC320  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806AC324  80 81 00 24 */	lwz r4, 0x24(r1)
/* 806AC328  38 A0 00 02 */	li r5, 2
/* 806AC32C  4B BC 43 31 */	bl cLib_chaseUC__FPUcUcUc
/* 806AC330  38 7E 06 92 */	addi r3, r30, 0x692
/* 806AC334  88 9E 06 91 */	lbz r4, 0x691(r30)
/* 806AC338  38 A0 00 03 */	li r5, 3
/* 806AC33C  4B BC 43 21 */	bl cLib_chaseUC__FPUcUcUc
/* 806AC340  48 00 00 38 */	b lbl_806AC378
lbl_806AC344:
/* 806AC344  38 7E 06 91 */	addi r3, r30, 0x691
/* 806AC348  38 80 00 00 */	li r4, 0
/* 806AC34C  38 A0 00 02 */	li r5, 2
/* 806AC350  4B BC 43 0D */	bl cLib_chaseUC__FPUcUcUc
/* 806AC354  38 7E 06 92 */	addi r3, r30, 0x692
/* 806AC358  88 9E 06 91 */	lbz r4, 0x691(r30)
/* 806AC35C  38 A0 00 03 */	li r5, 3
/* 806AC360  4B BC 42 FD */	bl cLib_chaseUC__FPUcUcUc
/* 806AC364  88 1E 06 91 */	lbz r0, 0x691(r30)
/* 806AC368  28 00 00 00 */	cmplwi r0, 0
/* 806AC36C  40 82 00 0C */	bne lbl_806AC378
/* 806AC370  7F C3 F3 78 */	mr r3, r30
/* 806AC374  4B 96 D9 09 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_806AC378:
/* 806AC378  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806AC37C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806AC380  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AC384  7C 08 03 A6 */	mtlr r0
/* 806AC388  38 21 00 30 */	addi r1, r1, 0x30
/* 806AC38C  4E 80 00 20 */	blr 

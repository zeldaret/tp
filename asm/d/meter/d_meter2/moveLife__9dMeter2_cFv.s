lbl_8021FD60:
/* 8021FD60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021FD64  7C 08 02 A6 */	mflr r0
/* 8021FD68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021FD6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021FD70  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021FD74  7C 7E 1B 78 */	mr r30, r3
/* 8021FD78  38 C0 00 00 */	li r6, 0
/* 8021FD7C  38 00 00 00 */	li r0, 0
/* 8021FD80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FD84  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FD88  A8 A4 5D CA */	lha r5, 0x5dca(r4)
/* 8021FD8C  7C A3 07 35 */	extsh. r3, r5
/* 8021FD90  41 82 00 90 */	beq lbl_8021FE20
/* 8021FD94  A0 04 00 00 */	lhz r0, 0(r4)
/* 8021FD98  7C 00 2A 14 */	add r0, r0, r5
/* 8021FD9C  7C 05 07 34 */	extsh r5, r0
/* 8021FDA0  2C 05 00 64 */	cmpwi r5, 0x64
/* 8021FDA4  40 81 00 0C */	ble lbl_8021FDB0
/* 8021FDA8  38 A0 00 64 */	li r5, 0x64
/* 8021FDAC  48 00 00 10 */	b lbl_8021FDBC
lbl_8021FDB0:
/* 8021FDB0  2C 05 00 0F */	cmpwi r5, 0xf
/* 8021FDB4  40 80 00 08 */	bge lbl_8021FDBC
/* 8021FDB8  38 A0 00 0F */	li r5, 0xf
lbl_8021FDBC:
/* 8021FDBC  7C A3 07 34 */	extsh r3, r5
/* 8021FDC0  38 00 00 05 */	li r0, 5
/* 8021FDC4  7C 03 03 D6 */	divw r0, r3, r0
/* 8021FDC8  54 00 10 3A */	slwi r0, r0, 2
/* 8021FDCC  7C 06 07 34 */	extsh r6, r0
/* 8021FDD0  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8021FDD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FDD8  B4 03 61 C0 */	sthu r0, g_dComIfG_gameInfo@l(r3)  /* 0x804061C0@l */
/* 8021FDDC  A0 03 00 02 */	lhz r0, 2(r3)
/* 8021FDE0  C0 43 5D C0 */	lfs f2, 0x5dc0(r3)
/* 8021FDE4  7C 00 30 50 */	subf r0, r0, r6
/* 8021FDE8  7C 00 07 34 */	extsh r0, r0
/* 8021FDEC  C8 22 AF D8 */	lfd f1, lit_5267(r2)
/* 8021FDF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8021FDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021FDF8  3C 00 43 30 */	lis r0, 0x4330
/* 8021FDFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021FE00  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8021FE04  EC 00 08 28 */	fsubs f0, f0, f1
/* 8021FE08  EC 02 00 2A */	fadds f0, f2, f0
/* 8021FE0C  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8021FE10  38 00 00 00 */	li r0, 0
/* 8021FE14  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8021FE18  B0 04 5D CA */	sth r0, 0x5dca(r4)
/* 8021FE1C  38 00 00 01 */	li r0, 1
lbl_8021FE20:
/* 8021FE20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FE24  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FE28  C0 25 5D C0 */	lfs f1, 0x5dc0(r5)
/* 8021FE2C  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 8021FE30  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8021FE34  41 82 00 C0 */	beq lbl_8021FEF4
/* 8021FE38  88 65 5E B6 */	lbz r3, 0x5eb6(r5)
/* 8021FE3C  98 7E 01 EE */	stb r3, 0x1ee(r30)
/* 8021FE40  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8021FE44  40 82 00 18 */	bne lbl_8021FE5C
/* 8021FE48  A0 65 00 00 */	lhz r3, 0(r5)
/* 8021FE4C  38 00 00 05 */	li r0, 5
/* 8021FE50  7C 03 03 D6 */	divw r0, r3, r0
/* 8021FE54  54 00 10 3A */	slwi r0, r0, 2
/* 8021FE58  7C 06 07 34 */	extsh r6, r0
lbl_8021FE5C:
/* 8021FE5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FE60  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FE64  A0 04 00 02 */	lhz r0, 2(r4)
/* 8021FE68  C8 22 AF E0 */	lfd f1, lit_5268(r2)
/* 8021FE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021FE70  3C 00 43 30 */	lis r0, 0x4330
/* 8021FE74  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021FE78  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8021FE7C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8021FE80  C0 05 5D C0 */	lfs f0, 0x5dc0(r5)
/* 8021FE84  EC 01 00 2A */	fadds f0, f1, f0
/* 8021FE88  FC 00 00 1E */	fctiwz f0, f0
/* 8021FE8C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8021FE90  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 8021FE94  7C E3 07 34 */	extsh r3, r7
/* 8021FE98  7C C0 07 34 */	extsh r0, r6
/* 8021FE9C  7C 03 00 00 */	cmpw r3, r0
/* 8021FEA0  40 81 00 0C */	ble lbl_8021FEAC
/* 8021FEA4  7C C7 33 78 */	mr r7, r6
/* 8021FEA8  48 00 00 10 */	b lbl_8021FEB8
lbl_8021FEAC:
/* 8021FEAC  7C E0 07 35 */	extsh. r0, r7
/* 8021FEB0  40 80 00 08 */	bge lbl_8021FEB8
/* 8021FEB4  38 E0 00 00 */	li r7, 0
lbl_8021FEB8:
/* 8021FEB8  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 8021FEBC  B0 04 00 02 */	sth r0, 2(r4)
/* 8021FEC0  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 8021FEC4  D0 05 5D C0 */	stfs f0, 0x5dc0(r5)
/* 8021FEC8  38 60 00 00 */	li r3, 0
/* 8021FECC  98 65 5E B6 */	stb r3, 0x5eb6(r5)
/* 8021FED0  7C 04 03 78 */	mr r4, r0
/* 8021FED4  A8 1E 01 92 */	lha r0, 0x192(r30)
/* 8021FED8  7C 00 20 00 */	cmpw r0, r4
/* 8021FEDC  40 82 00 14 */	bne lbl_8021FEF0
/* 8021FEE0  88 1E 01 EE */	lbz r0, 0x1ee(r30)
/* 8021FEE4  28 00 00 00 */	cmplwi r0, 0
/* 8021FEE8  41 82 00 08 */	beq lbl_8021FEF0
/* 8021FEEC  98 7E 01 EE */	stb r3, 0x1ee(r30)
lbl_8021FEF0:
/* 8021FEF0  38 00 00 01 */	li r0, 1
lbl_8021FEF4:
/* 8021FEF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FEF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FEFC  A0 63 00 00 */	lhz r3, 0(r3)
/* 8021FF00  A8 9E 01 94 */	lha r4, 0x194(r30)
/* 8021FF04  7C 04 18 00 */	cmpw r4, r3
/* 8021FF08  41 82 00 38 */	beq lbl_8021FF40
/* 8021FF0C  40 80 00 24 */	bge lbl_8021FF30
/* 8021FF10  38 04 00 01 */	addi r0, r4, 1
/* 8021FF14  B0 1E 01 94 */	sth r0, 0x194(r30)
/* 8021FF18  38 00 00 01 */	li r0, 1
/* 8021FF1C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021FF20  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021FF24  98 03 00 E6 */	stb r0, 0xe6(r3)
/* 8021FF28  38 00 00 01 */	li r0, 1
/* 8021FF2C  48 00 00 14 */	b lbl_8021FF40
lbl_8021FF30:
/* 8021FF30  40 81 00 10 */	ble lbl_8021FF40
/* 8021FF34  38 04 FF FF */	addi r0, r4, -1
/* 8021FF38  B0 1E 01 94 */	sth r0, 0x194(r30)
/* 8021FF3C  38 00 00 01 */	li r0, 1
lbl_8021FF40:
/* 8021FF40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FF44  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FF48  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8021FF4C  A8 9E 01 92 */	lha r4, 0x192(r30)
/* 8021FF50  7C 04 18 00 */	cmpw r4, r3
/* 8021FF54  41 82 01 24 */	beq lbl_80220078
/* 8021FF58  40 80 00 F8 */	bge lbl_80220050
/* 8021FF5C  38 04 00 01 */	addi r0, r4, 1
/* 8021FF60  B0 1E 01 92 */	sth r0, 0x192(r30)
/* 8021FF64  80 1F 5F 1C */	lwz r0, 0x5f1c(r31)
/* 8021FF68  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8021FF6C  40 82 00 24 */	bne lbl_8021FF90
/* 8021FF70  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 8021FF74  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8021FF78  40 82 00 18 */	bne lbl_8021FF90
/* 8021FF7C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021FF80  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021FF84  88 03 00 E6 */	lbz r0, 0xe6(r3)
/* 8021FF88  28 00 00 00 */	cmplwi r0, 0
/* 8021FF8C  41 82 00 58 */	beq lbl_8021FFE4
lbl_8021FF90:
/* 8021FF90  A8 7E 01 92 */	lha r3, 0x192(r30)
/* 8021FF94  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 8021FF98  54 63 0F FE */	srwi r3, r3, 0x1f
/* 8021FF9C  7C 03 00 50 */	subf r0, r3, r0
/* 8021FFA0  54 00 10 3E */	rotlwi r0, r0, 2
/* 8021FFA4  7C 00 1A 15 */	add. r0, r0, r3
/* 8021FFA8  40 82 00 7C */	bne lbl_80220024
/* 8021FFAC  38 00 00 21 */	li r0, 0x21
/* 8021FFB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021FFB4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8021FFB8  38 81 00 0C */	addi r4, r1, 0xc
/* 8021FFBC  38 A0 00 00 */	li r5, 0
/* 8021FFC0  38 C0 00 00 */	li r6, 0
/* 8021FFC4  38 E0 00 00 */	li r7, 0
/* 8021FFC8  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 8021FFCC  FC 40 08 90 */	fmr f2, f1
/* 8021FFD0  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 8021FFD4  FC 80 18 90 */	fmr f4, f3
/* 8021FFD8  39 00 00 00 */	li r8, 0
/* 8021FFDC  48 08 B9 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8021FFE0  48 00 00 44 */	b lbl_80220024
lbl_8021FFE4:
/* 8021FFE4  88 1E 01 EE */	lbz r0, 0x1ee(r30)
/* 8021FFE8  28 00 00 01 */	cmplwi r0, 1
/* 8021FFEC  40 82 00 38 */	bne lbl_80220024
/* 8021FFF0  38 00 00 21 */	li r0, 0x21
/* 8021FFF4  90 01 00 08 */	stw r0, 8(r1)
/* 8021FFF8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8021FFFC  38 81 00 08 */	addi r4, r1, 8
/* 80220000  38 A0 00 00 */	li r5, 0
/* 80220004  38 C0 00 00 */	li r6, 0
/* 80220008  38 E0 00 00 */	li r7, 0
/* 8022000C  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80220010  FC 40 08 90 */	fmr f2, f1
/* 80220014  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 80220018  FC 80 18 90 */	fmr f4, f3
/* 8022001C  39 00 00 00 */	li r8, 0
/* 80220020  48 08 B9 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80220024:
/* 80220024  A0 7F 00 02 */	lhz r3, 2(r31)
/* 80220028  A8 1E 01 92 */	lha r0, 0x192(r30)
/* 8022002C  7C 00 18 00 */	cmpw r0, r3
/* 80220030  40 82 00 18 */	bne lbl_80220048
/* 80220034  88 1E 01 EE */	lbz r0, 0x1ee(r30)
/* 80220038  28 00 00 00 */	cmplwi r0, 0
/* 8022003C  41 82 00 0C */	beq lbl_80220048
/* 80220040  38 00 00 00 */	li r0, 0
/* 80220044  98 1E 01 EE */	stb r0, 0x1ee(r30)
lbl_80220048:
/* 80220048  38 00 00 01 */	li r0, 1
/* 8022004C  48 00 00 48 */	b lbl_80220094
lbl_80220050:
/* 80220050  40 81 00 44 */	ble lbl_80220094
/* 80220054  38 04 FF FF */	addi r0, r4, -1
/* 80220058  B0 1E 01 92 */	sth r0, 0x192(r30)
/* 8022005C  88 1E 01 EE */	lbz r0, 0x1ee(r30)
/* 80220060  28 00 00 00 */	cmplwi r0, 0
/* 80220064  41 82 00 0C */	beq lbl_80220070
/* 80220068  38 00 00 00 */	li r0, 0
/* 8022006C  98 1E 01 EE */	stb r0, 0x1ee(r30)
lbl_80220070:
/* 80220070  38 00 00 01 */	li r0, 1
/* 80220074  48 00 00 20 */	b lbl_80220094
lbl_80220078:
/* 80220078  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8022007C  38 83 01 88 */	addi r4, r3, g_meter2_info@l /* 0x80430188@l */
/* 80220080  88 64 00 E6 */	lbz r3, 0xe6(r4)
/* 80220084  28 03 00 00 */	cmplwi r3, 0
/* 80220088  41 82 00 0C */	beq lbl_80220094
/* 8022008C  38 60 00 00 */	li r3, 0
/* 80220090  98 64 00 E6 */	stb r3, 0xe6(r4)
lbl_80220094:
/* 80220094  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220098  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8022009C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802200A0  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 802200A4  C0 1E 02 04 */	lfs f0, 0x204(r30)
/* 802200A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802200AC  41 82 00 0C */	beq lbl_802200B8
/* 802200B0  D0 3E 02 04 */	stfs f1, 0x204(r30)
/* 802200B4  38 00 00 01 */	li r0, 1
lbl_802200B8:
/* 802200B8  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 802200BC  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 802200C0  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 802200C4  41 82 00 0C */	beq lbl_802200D0
/* 802200C8  D0 7E 02 08 */	stfs f3, 0x208(r30)
/* 802200CC  38 00 00 01 */	li r0, 1
lbl_802200D0:
/* 802200D0  C0 1E 02 0C */	lfs f0, 0x20c(r30)
/* 802200D4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802200D8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802200DC  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 802200E0  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 802200E4  41 82 00 0C */	beq lbl_802200F0
/* 802200E8  D0 7E 02 0C */	stfs f3, 0x20c(r30)
/* 802200EC  38 00 00 01 */	li r0, 1
lbl_802200F0:
/* 802200F0  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 802200F4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802200F8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802200FC  C0 63 00 30 */	lfs f3, 0x30(r3)
/* 80220100  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 80220104  41 82 00 0C */	beq lbl_80220110
/* 80220108  D0 7E 02 10 */	stfs f3, 0x210(r30)
/* 8022010C  38 00 00 01 */	li r0, 1
lbl_80220110:
/* 80220110  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80220114  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80220118  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8022011C  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 80220120  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 80220124  41 82 00 0C */	beq lbl_80220130
/* 80220128  D0 7E 02 14 */	stfs f3, 0x214(r30)
/* 8022012C  38 00 00 01 */	li r0, 1
lbl_80220130:
/* 80220130  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80220134  28 00 00 01 */	cmplwi r0, 1
/* 80220138  40 82 00 14 */	bne lbl_8022014C
/* 8022013C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80220140  A8 9E 01 94 */	lha r4, 0x194(r30)
/* 80220144  A8 BE 01 92 */	lha r5, 0x192(r30)
/* 80220148  4B FF 48 AD */	bl drawLife__13dMeter2Draw_cFssff
lbl_8022014C:
/* 8022014C  7F C3 F3 78 */	mr r3, r30
/* 80220150  48 00 47 95 */	bl alphaAnimeLife__9dMeter2_cFv
/* 80220154  A8 1E 01 92 */	lha r0, 0x192(r30)
/* 80220158  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8022015C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80220160  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80220164  B0 03 5E 16 */	sth r0, 0x5e16(r3)
/* 80220168  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022016C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80220170  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80220174  7C 08 03 A6 */	mtlr r0
/* 80220178  38 21 00 30 */	addi r1, r1, 0x30
/* 8022017C  4E 80 00 20 */	blr 

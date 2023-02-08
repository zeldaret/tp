lbl_8012FE80:
/* 8012FE80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012FE84  7C 08 02 A6 */	mflr r0
/* 8012FE88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012FE8C  39 61 00 30 */	addi r11, r1, 0x30
/* 8012FE90  48 23 23 4D */	bl _savegpr_29
/* 8012FE94  7C 7F 1B 78 */	mr r31, r3
/* 8012FE98  7C 9E 23 78 */	mr r30, r4
/* 8012FE9C  7C BD 2B 78 */	mr r29, r5
/* 8012FEA0  7F C3 F3 78 */	mr r3, r30
/* 8012FEA4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8012FEA8  48 14 0F 7D */	bl cLib_distanceAngleS__Fss
/* 8012FEAC  2C 03 38 00 */	cmpwi r3, 0x3800
/* 8012FEB0  40 80 00 20 */	bge lbl_8012FED0
/* 8012FEB4  2C 1D 00 00 */	cmpwi r29, 0
/* 8012FEB8  40 82 00 18 */	bne lbl_8012FED0
/* 8012FEBC  7F E3 FB 78 */	mr r3, r31
/* 8012FEC0  7F C4 F3 78 */	mr r4, r30
/* 8012FEC4  38 A0 00 01 */	li r5, 1
/* 8012FEC8  4B FF FD 71 */	bl procWolfSlideReadyInit__9daAlink_cFsi
/* 8012FECC  48 00 00 C0 */	b lbl_8012FF8C
lbl_8012FED0:
/* 8012FED0  7F E3 FB 78 */	mr r3, r31
/* 8012FED4  38 80 01 0F */	li r4, 0x10f
/* 8012FED8  4B F9 20 95 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012FEDC  38 00 00 FF */	li r0, 0xff
/* 8012FEE0  98 1F 08 28 */	stb r0, 0x828(r31)
/* 8012FEE4  38 00 00 08 */	li r0, 8
/* 8012FEE8  B0 1F 30 90 */	sth r0, 0x3090(r31)
/* 8012FEEC  B3 DF 04 DE */	sth r30, 0x4de(r31)
/* 8012FEF0  7F E3 FB 78 */	mr r3, r31
/* 8012FEF4  38 80 00 1E */	li r4, 0x1e
/* 8012FEF8  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlSlide_c0@ha /* 0x8038F3F0@ha */
/* 8012FEFC  38 A5 F3 F0 */	addi r5, r5, m__21daAlinkHIO_wlSlide_c0@l /* 0x8038F3F0@l */
/* 8012FF00  3B C5 00 14 */	addi r30, r5, 0x14
/* 8012FF04  7F C5 F3 78 */	mr r5, r30
/* 8012FF08  4B FF 99 41 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012FF0C  2C 1D 00 00 */	cmpwi r29, 0
/* 8012FF10  41 82 00 40 */	beq lbl_8012FF50
/* 8012FF14  A8 1E 00 00 */	lha r0, 0(r30)
/* 8012FF18  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8012FF1C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8012FF20  90 61 00 0C */	stw r3, 0xc(r1)
/* 8012FF24  3C 00 43 30 */	lis r0, 0x4330
/* 8012FF28  90 01 00 08 */	stw r0, 8(r1)
/* 8012FF2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8012FF30  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012FF34  D0 1F 1F E0 */	stfs f0, 0x1fe0(r31)
/* 8012FF38  80 9F 1F 2C */	lwz r4, 0x1f2c(r31)
/* 8012FF3C  90 61 00 14 */	stw r3, 0x14(r1)
/* 8012FF40  90 01 00 10 */	stw r0, 0x10(r1)
/* 8012FF44  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8012FF48  EC 00 08 28 */	fsubs f0, f0, f1
/* 8012FF4C  D0 04 00 08 */	stfs f0, 8(r4)
lbl_8012FF50:
/* 8012FF50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012FF54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012FF58  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8012FF5C  60 00 02 00 */	ori r0, r0, 0x200
/* 8012FF60  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8012FF64  38 00 00 78 */	li r0, 0x78
/* 8012FF68  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 8012FF6C  7F E3 FB 78 */	mr r3, r31
/* 8012FF70  38 80 00 01 */	li r4, 1
/* 8012FF74  4B FF 12 4D */	bl setFootEffectProcType__9daAlink_cFi
/* 8012FF78  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlSlide_c0@ha /* 0x8038F3F0@ha */
/* 8012FF7C  38 63 F3 F0 */	addi r3, r3, m__21daAlinkHIO_wlSlide_c0@l /* 0x8038F3F0@l */
/* 8012FF80  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 8012FF84  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8012FF88  38 60 00 01 */	li r3, 1
lbl_8012FF8C:
/* 8012FF8C  39 61 00 30 */	addi r11, r1, 0x30
/* 8012FF90  48 23 22 99 */	bl _restgpr_29
/* 8012FF94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012FF98  7C 08 03 A6 */	mtlr r0
/* 8012FF9C  38 21 00 30 */	addi r1, r1, 0x30
/* 8012FFA0  4E 80 00 20 */	blr 

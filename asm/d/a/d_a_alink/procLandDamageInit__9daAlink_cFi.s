lbl_800DAE10:
/* 800DAE10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800DAE14  7C 08 02 A6 */	mflr r0
/* 800DAE18  90 01 00 54 */	stw r0, 0x54(r1)
/* 800DAE1C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800DAE20  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800DAE24  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800DAE28  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800DAE2C  7C 7E 1B 78 */	mr r30, r3
/* 800DAE30  7C 9F 23 79 */	or. r31, r4, r4
/* 800DAE34  40 82 00 94 */	bne lbl_800DAEC8
/* 800DAE38  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha
/* 800DAE3C  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l
/* 800DAE40  C3 E3 00 3C */	lfs f31, 0x3c(r3)
/* 800DAE44  3C 60 80 39 */	lis r3, m__22daAlinkHIO_autoJump_c0@ha
/* 800DAE48  38 63 E0 68 */	addi r3, r3, m__22daAlinkHIO_autoJump_c0@l
/* 800DAE4C  A8 03 00 56 */	lha r0, 0x56(r3)
/* 800DAE50  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800DAE54  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800DAE58  28 00 00 CC */	cmplwi r0, 0xcc
/* 800DAE5C  40 82 00 38 */	bne lbl_800DAE94
/* 800DAE60  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DAE64  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800DAE68  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DAE6C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800DAE70  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 800DAE74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DAE78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DAE7C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DAE80  38 80 00 06 */	li r4, 6
/* 800DAE84  38 A0 00 1F */	li r5, 0x1f
/* 800DAE88  38 C1 00 2C */	addi r6, r1, 0x2c
/* 800DAE8C  4B F9 4B 99 */	bl StartShock__12dVibration_cFii4cXyz
/* 800DAE90  48 00 00 FC */	b lbl_800DAF8C
lbl_800DAE94:
/* 800DAE94  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DAE98  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800DAE9C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DAEA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800DAEA4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800DAEA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DAEAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DAEB0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DAEB4  38 80 00 02 */	li r4, 2
/* 800DAEB8  38 A0 00 0F */	li r5, 0xf
/* 800DAEBC  38 C1 00 20 */	addi r6, r1, 0x20
/* 800DAEC0  4B F9 4B 65 */	bl StartShock__12dVibration_cFii4cXyz
/* 800DAEC4  48 00 00 C8 */	b lbl_800DAF8C
lbl_800DAEC8:
/* 800DAEC8  2C 1F 00 01 */	cmpwi r31, 1
/* 800DAECC  40 82 00 64 */	bne lbl_800DAF30
/* 800DAED0  48 03 AD 51 */	bl checkEventRun__9daAlink_cCFv
/* 800DAED4  2C 03 00 00 */	cmpwi r3, 0
/* 800DAED8  40 82 00 10 */	bne lbl_800DAEE8
/* 800DAEDC  7F C3 F3 78 */	mr r3, r30
/* 800DAEE0  38 80 00 04 */	li r4, 4
/* 800DAEE4  4B FF C5 C1 */	bl setLandDamagePoint__9daAlink_cFi
lbl_800DAEE8:
/* 800DAEE8  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha
/* 800DAEEC  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l
/* 800DAEF0  C3 E3 00 3C */	lfs f31, 0x3c(r3)
/* 800DAEF4  A8 03 00 28 */	lha r0, 0x28(r3)
/* 800DAEF8  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800DAEFC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DAF00  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800DAF04  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DAF08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800DAF0C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800DAF10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DAF14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DAF18  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DAF1C  38 80 00 04 */	li r4, 4
/* 800DAF20  38 A0 00 1F */	li r5, 0x1f
/* 800DAF24  38 C1 00 14 */	addi r6, r1, 0x14
/* 800DAF28  4B F9 4A FD */	bl StartShock__12dVibration_cFii4cXyz
/* 800DAF2C  48 00 00 60 */	b lbl_800DAF8C
lbl_800DAF30:
/* 800DAF30  48 03 AC F1 */	bl checkEventRun__9daAlink_cCFv
/* 800DAF34  2C 03 00 00 */	cmpwi r3, 0
/* 800DAF38  40 82 00 10 */	bne lbl_800DAF48
/* 800DAF3C  7F C3 F3 78 */	mr r3, r30
/* 800DAF40  38 80 00 08 */	li r4, 8
/* 800DAF44  4B FF C5 61 */	bl setLandDamagePoint__9daAlink_cFi
lbl_800DAF48:
/* 800DAF48  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha
/* 800DAF4C  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l
/* 800DAF50  C3 E3 00 08 */	lfs f31, 8(r3)
/* 800DAF54  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 800DAF58  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800DAF5C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DAF60  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DAF64  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DAF68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DAF6C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800DAF70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DAF74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DAF78  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DAF7C  38 80 00 05 */	li r4, 5
/* 800DAF80  38 A0 00 1F */	li r5, 0x1f
/* 800DAF84  38 C1 00 08 */	addi r6, r1, 8
/* 800DAF88  4B F9 4A 9D */	bl StartShock__12dVibration_cFii4cXyz
lbl_800DAF8C:
/* 800DAF8C  7F C3 F3 78 */	mr r3, r30
/* 800DAF90  38 80 00 34 */	li r4, 0x34
/* 800DAF94  4B FE 6F D9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DAF98  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DAF9C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800DAFA0  2C 1F 00 00 */	cmpwi r31, 0
/* 800DAFA4  40 82 00 14 */	bne lbl_800DAFB8
/* 800DAFA8  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DAFAC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800DAFB0  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800DAFB4  48 00 00 3C */	b lbl_800DAFF0
lbl_800DAFB8:
/* 800DAFB8  7F C3 F3 78 */	mr r3, r30
/* 800DAFBC  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020030@ha */
/* 800DAFC0  38 84 00 30 */	addi r4, r4, 0x0030 /* 0x00020030@l */
/* 800DAFC4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DAFC8  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DAFCC  7D 89 03 A6 */	mtctr r12
/* 800DAFD0  4E 80 04 21 */	bctrl 
/* 800DAFD4  7F C3 F3 78 */	mr r3, r30
/* 800DAFD8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000D@ha */
/* 800DAFDC  38 84 00 0D */	addi r4, r4, 0x000D /* 0x0001000D@l */
/* 800DAFE0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DAFE4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DAFE8  7D 89 03 A6 */	mtctr r12
/* 800DAFEC  4E 80 04 21 */	bctrl 
lbl_800DAFF0:
/* 800DAFF0  7F C3 F3 78 */	mr r3, r30
/* 800DAFF4  38 80 00 8C */	li r4, 0x8c
/* 800DAFF8  3C A0 80 39 */	lis r5, m__21daAlinkHIO_damFall_c0@ha
/* 800DAFFC  38 C5 E4 54 */	addi r6, r5, m__21daAlinkHIO_damFall_c0@l
/* 800DB000  C0 26 00 04 */	lfs f1, 4(r6)
/* 800DB004  FC 40 F8 90 */	fmr f2, f31
/* 800DB008  A8 A6 00 00 */	lha r5, 0(r6)
/* 800DB00C  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800DB010  4B FD 1F FD */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800DB014  38 00 00 00 */	li r0, 0
/* 800DB018  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800DB01C  38 00 00 04 */	li r0, 4
/* 800DB020  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800DB024  7F C3 F3 78 */	mr r3, r30
/* 800DB028  38 80 00 04 */	li r4, 4
/* 800DB02C  48 04 61 95 */	bl setFootEffectProcType__9daAlink_cFi
/* 800DB030  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 800DB034  60 00 00 30 */	ori r0, r0, 0x30
/* 800DB038  90 1E 05 84 */	stw r0, 0x584(r30)
/* 800DB03C  38 60 00 01 */	li r3, 1
/* 800DB040  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800DB044  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800DB048  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800DB04C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800DB050  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800DB054  7C 08 03 A6 */	mtlr r0
/* 800DB058  38 21 00 50 */	addi r1, r1, 0x50
/* 800DB05C  4E 80 00 20 */	blr 

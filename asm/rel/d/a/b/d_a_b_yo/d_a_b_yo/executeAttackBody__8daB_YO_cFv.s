lbl_80634E04:
/* 80634E04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80634E08  7C 08 02 A6 */	mflr r0
/* 80634E0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80634E10  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80634E14  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80634E18  7C 7E 1B 78 */	mr r30, r3
/* 80634E1C  3C 80 80 64 */	lis r4, lit_3788@ha
/* 80634E20  3B E4 97 F4 */	addi r31, r4, lit_3788@l
/* 80634E24  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80634E28  D0 03 0F 38 */	stfs f0, 0xf38(r3)
/* 80634E2C  80 03 0F 74 */	lwz r0, 0xf74(r3)
/* 80634E30  28 00 00 0A */	cmplwi r0, 0xa
/* 80634E34  41 81 04 7C */	bgt lbl_806352B0
/* 80634E38  3C 80 80 64 */	lis r4, lit_6340@ha
/* 80634E3C  38 84 9D 84 */	addi r4, r4, lit_6340@l
/* 80634E40  54 00 10 3A */	slwi r0, r0, 2
/* 80634E44  7C 04 00 2E */	lwzx r0, r4, r0
/* 80634E48  7C 09 03 A6 */	mtctr r0
/* 80634E4C  4E 80 04 20 */	bctr 
lbl_80634E50:
/* 80634E50  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80634E54  D0 1E 0F 4C */	stfs f0, 0xf4c(r30)
/* 80634E58  80 1E 18 2C */	lwz r0, 0x182c(r30)
/* 80634E5C  60 00 00 01 */	ori r0, r0, 1
/* 80634E60  90 1E 18 2C */	stw r0, 0x182c(r30)
/* 80634E64  80 1E 19 64 */	lwz r0, 0x1964(r30)
/* 80634E68  60 00 00 01 */	ori r0, r0, 1
/* 80634E6C  90 1E 19 64 */	stw r0, 0x1964(r30)
/* 80634E70  80 1E 1A 9C */	lwz r0, 0x1a9c(r30)
/* 80634E74  60 00 00 01 */	ori r0, r0, 1
/* 80634E78  90 1E 1A 9C */	stw r0, 0x1a9c(r30)
/* 80634E7C  38 00 00 00 */	li r0, 0
/* 80634E80  98 1E 13 21 */	stb r0, 0x1321(r30)
/* 80634E84  38 00 00 0D */	li r0, 0xd
/* 80634E88  98 1E 13 23 */	stb r0, 0x1323(r30)
/* 80634E8C  80 1E 12 AC */	lwz r0, 0x12ac(r30)
/* 80634E90  60 00 00 01 */	ori r0, r0, 1
/* 80634E94  90 1E 12 AC */	stw r0, 0x12ac(r30)
/* 80634E98  38 00 00 04 */	li r0, 4
/* 80634E9C  98 1E 12 C0 */	stb r0, 0x12c0(r30)
/* 80634EA0  80 1E 12 AC */	lwz r0, 0x12ac(r30)
/* 80634EA4  60 00 00 20 */	ori r0, r0, 0x20
/* 80634EA8  90 1E 12 AC */	stw r0, 0x12ac(r30)
/* 80634EAC  38 00 00 1E */	li r0, 0x1e
/* 80634EB0  90 1E 0F 8C */	stw r0, 0xf8c(r30)
/* 80634EB4  38 00 00 0A */	li r0, 0xa
/* 80634EB8  90 1E 0F 74 */	stw r0, 0xf74(r30)
lbl_80634EBC:
/* 80634EBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070306@ha */
/* 80634EC0  38 03 03 06 */	addi r0, r3, 0x0306 /* 0x00070306@l */
/* 80634EC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80634EC8  38 7E 06 34 */	addi r3, r30, 0x634
/* 80634ECC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80634ED0  38 A0 00 00 */	li r5, 0
/* 80634ED4  38 C0 FF FF */	li r6, -1
/* 80634ED8  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 80634EDC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80634EE0  7D 89 03 A6 */	mtctr r12
/* 80634EE4  4E 80 04 21 */	bctrl 
/* 80634EE8  38 7E 0F 50 */	addi r3, r30, 0xf50
/* 80634EEC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80634EF0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80634EF4  4B C3 B8 4C */	b cLib_chaseF__FPfff
/* 80634EF8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80634EFC  38 9E 0F 34 */	addi r4, r30, 0xf34
/* 80634F00  C0 3E 0F 50 */	lfs f1, 0xf50(r30)
/* 80634F04  4B C3 BA 8C */	b cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 80634F08  38 7E 0F 82 */	addi r3, r30, 0xf82
/* 80634F0C  38 80 0C 00 */	li r4, 0xc00
/* 80634F10  38 A0 01 00 */	li r5, 0x100
/* 80634F14  4B C3 BC 7C */	b cLib_chaseAngleS__FPsss
/* 80634F18  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80634F1C  A8 1E 0F 82 */	lha r0, 0xf82(r30)
/* 80634F20  7C 03 02 14 */	add r0, r3, r0
/* 80634F24  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80634F28  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80634F2C  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80634F30  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80634F34  4B C3 B8 0C */	b cLib_chaseF__FPfff
/* 80634F38  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 80634F3C  2C 00 00 00 */	cmpwi r0, 0
/* 80634F40  40 82 03 70 */	bne lbl_806352B0
/* 80634F44  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80634F48  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80634F4C  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80634F50  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80634F54  38 00 00 01 */	li r0, 1
/* 80634F58  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 80634F5C  48 00 03 54 */	b lbl_806352B0
lbl_80634F60:
/* 80634F60  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070306@ha */
/* 80634F64  38 03 03 06 */	addi r0, r3, 0x0306 /* 0x00070306@l */
/* 80634F68  90 01 00 18 */	stw r0, 0x18(r1)
/* 80634F6C  38 7E 06 34 */	addi r3, r30, 0x634
/* 80634F70  38 81 00 18 */	addi r4, r1, 0x18
/* 80634F74  38 A0 00 00 */	li r5, 0
/* 80634F78  38 C0 FF FF */	li r6, -1
/* 80634F7C  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 80634F80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80634F84  7D 89 03 A6 */	mtctr r12
/* 80634F88  4E 80 04 21 */	bctrl 
/* 80634F8C  38 7E 0F 82 */	addi r3, r30, 0xf82
/* 80634F90  38 80 0C 00 */	li r4, 0xc00
/* 80634F94  38 A0 01 00 */	li r5, 0x100
/* 80634F98  4B C3 BB F8 */	b cLib_chaseAngleS__FPsss
/* 80634F9C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80634FA0  A8 1E 0F 82 */	lha r0, 0xf82(r30)
/* 80634FA4  7C 03 02 14 */	add r0, r3, r0
/* 80634FA8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80634FAC  7F C3 F3 78 */	mr r3, r30
/* 80634FB0  4B FF FD 3D */	bl checkDamageWithIceBreak__8daB_YO_cFv
/* 80634FB4  80 1E 10 88 */	lwz r0, 0x1088(r30)
/* 80634FB8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80634FBC  41 82 02 F4 */	beq lbl_806352B0
/* 80634FC0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80634FC4  D0 3E 0F 58 */	stfs f1, 0xf58(r30)
/* 80634FC8  38 00 00 00 */	li r0, 0
/* 80634FCC  B0 1E 0F 82 */	sth r0, 0xf82(r30)
/* 80634FD0  38 00 00 01 */	li r0, 1
/* 80634FD4  98 1E 0F AC */	stb r0, 0xfac(r30)
/* 80634FD8  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80634FDC  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80634FE0  38 00 00 02 */	li r0, 2
/* 80634FE4  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 80634FE8  38 00 00 1E */	li r0, 0x1e
/* 80634FEC  90 1E 0F 8C */	stw r0, 0xf8c(r30)
/* 80634FF0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80634FF4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80634FF8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80634FFC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80635000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80635004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80635008  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8063500C  38 80 00 08 */	li r4, 8
/* 80635010  38 A0 00 1F */	li r5, 0x1f
/* 80635014  38 C1 00 20 */	addi r6, r1, 0x20
/* 80635018  4B A3 AA F8 */	b StartQuake__12dVibration_cFii4cXyz
/* 8063501C  38 00 00 1E */	li r0, 0x1e
/* 80635020  90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 80635024  7F C3 F3 78 */	mr r3, r30
/* 80635028  38 80 00 01 */	li r4, 1
/* 8063502C  4B FF B2 01 */	bl setIcicleOperate__8daB_YO_cFi
/* 80635030  7F C3 F3 78 */	mr r3, r30
/* 80635034  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80635038  4B FF B5 81 */	bl setLandingEffect__8daB_YO_cFf
/* 8063503C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030C@ha */
/* 80635040  38 03 03 0C */	addi r0, r3, 0x030C /* 0x0007030C@l */
/* 80635044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635048  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8063504C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80635050  80 63 00 00 */	lwz r3, 0(r3)
/* 80635054  38 81 00 14 */	addi r4, r1, 0x14
/* 80635058  38 A0 00 00 */	li r5, 0
/* 8063505C  38 C0 00 00 */	li r6, 0
/* 80635060  38 E0 00 00 */	li r7, 0
/* 80635064  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80635068  FC 40 08 90 */	fmr f2, f1
/* 8063506C  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80635070  FC 80 18 90 */	fmr f4, f3
/* 80635074  39 00 00 00 */	li r8, 0
/* 80635078  4B C7 69 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8063507C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070307@ha */
/* 80635080  38 03 03 07 */	addi r0, r3, 0x0307 /* 0x00070307@l */
/* 80635084  90 01 00 10 */	stw r0, 0x10(r1)
/* 80635088  38 7E 06 34 */	addi r3, r30, 0x634
/* 8063508C  38 81 00 10 */	addi r4, r1, 0x10
/* 80635090  38 A0 00 00 */	li r5, 0
/* 80635094  38 C0 FF FF */	li r6, -1
/* 80635098  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 8063509C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806350A0  7D 89 03 A6 */	mtctr r12
/* 806350A4  4E 80 04 21 */	bctrl 
/* 806350A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806350AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806350B0  38 63 09 78 */	addi r3, r3, 0x978
/* 806350B4  38 80 00 16 */	li r4, 0x16
/* 806350B8  4B 9F FB 08 */	b offSwitch__12dSv_danBit_cFi
/* 806350BC  48 00 01 F4 */	b lbl_806352B0
lbl_806350C0:
/* 806350C0  4B FF FC 2D */	bl checkDamageWithIceBreak__8daB_YO_cFv
/* 806350C4  38 00 00 03 */	li r0, 3
/* 806350C8  90 1E 0F 74 */	stw r0, 0xf74(r30)
lbl_806350CC:
/* 806350CC  38 00 00 0A */	li r0, 0xa
/* 806350D0  90 1E 0F A0 */	stw r0, 0xfa0(r30)
/* 806350D4  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 806350D8  2C 00 00 00 */	cmpwi r0, 0
/* 806350DC  40 82 01 D4 */	bne lbl_806352B0
/* 806350E0  80 1E 18 2C */	lwz r0, 0x182c(r30)
/* 806350E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806350E8  90 1E 18 2C */	stw r0, 0x182c(r30)
/* 806350EC  80 1E 19 64 */	lwz r0, 0x1964(r30)
/* 806350F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806350F4  90 1E 19 64 */	stw r0, 0x1964(r30)
/* 806350F8  80 1E 1A 9C */	lwz r0, 0x1a9c(r30)
/* 806350FC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80635100  90 1E 1A 9C */	stw r0, 0x1a9c(r30)
/* 80635104  38 00 00 00 */	li r0, 0
/* 80635108  98 1E 13 23 */	stb r0, 0x1323(r30)
/* 8063510C  38 00 00 02 */	li r0, 2
/* 80635110  98 1E 13 21 */	stb r0, 0x1321(r30)
/* 80635114  80 1E 12 AC */	lwz r0, 0x12ac(r30)
/* 80635118  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063511C  90 1E 12 AC */	stw r0, 0x12ac(r30)
/* 80635120  80 1E 12 AC */	lwz r0, 0x12ac(r30)
/* 80635124  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80635128  90 1E 12 AC */	stw r0, 0x12ac(r30)
/* 8063512C  38 00 00 04 */	li r0, 4
/* 80635130  90 1E 0F 74 */	stw r0, 0xf74(r30)
/* 80635134  3C 60 80 64 */	lis r3, l_HIO@ha
/* 80635138  38 63 9F 84 */	addi r3, r3, l_HIO@l
/* 8063513C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80635140  FC 00 00 1E */	fctiwz f0, f0
/* 80635144  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80635148  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063514C  90 1E 0F 8C */	stw r0, 0xf8c(r30)
/* 80635150  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80635154  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80635158  D0 1E 0F 64 */	stfs f0, 0xf64(r30)
/* 8063515C  48 00 01 54 */	b lbl_806352B0
lbl_80635160:
/* 80635160  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070308@ha */
/* 80635164  38 03 03 08 */	addi r0, r3, 0x0308 /* 0x00070308@l */
/* 80635168  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063516C  38 7E 06 34 */	addi r3, r30, 0x634
/* 80635170  38 81 00 0C */	addi r4, r1, 0xc
/* 80635174  38 A0 00 00 */	li r5, 0
/* 80635178  38 C0 FF FF */	li r6, -1
/* 8063517C  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 80635180  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80635184  7D 89 03 A6 */	mtctr r12
/* 80635188  4E 80 04 21 */	bctrl 
/* 8063518C  38 00 00 0A */	li r0, 0xa
/* 80635190  90 1E 0F A0 */	stw r0, 0xfa0(r30)
/* 80635194  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80635198  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8063519C  EC 01 00 2A */	fadds f0, f1, f0
/* 806351A0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806351A4  A8 7E 0F 68 */	lha r3, 0xf68(r30)
/* 806351A8  38 03 28 00 */	addi r0, r3, 0x2800
/* 806351AC  B0 1E 0F 68 */	sth r0, 0xf68(r30)
/* 806351B0  A8 7E 0F 6A */	lha r3, 0xf6a(r30)
/* 806351B4  38 03 20 00 */	addi r0, r3, 0x2000
/* 806351B8  B0 1E 0F 6A */	sth r0, 0xf6a(r30)
/* 806351BC  38 7E 0F 64 */	addi r3, r30, 0xf64
/* 806351C0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806351C4  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 806351C8  4B C3 B5 78 */	b cLib_chaseF__FPfff
/* 806351CC  A8 1E 0F 68 */	lha r0, 0xf68(r30)
/* 806351D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806351D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806351D8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806351DC  7C 23 04 2E */	lfsx f1, r3, r0
/* 806351E0  C0 1E 0F 64 */	lfs f0, 0xf64(r30)
/* 806351E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806351E8  FC 00 00 1E */	fctiwz f0, f0
/* 806351EC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806351F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806351F4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806351F8  A8 1E 0F 6A */	lha r0, 0xf6a(r30)
/* 806351FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80635200  7C 23 04 2E */	lfsx f1, r3, r0
/* 80635204  C0 1E 0F 64 */	lfs f0, 0xf64(r30)
/* 80635208  EC 00 00 72 */	fmuls f0, f0, f1
/* 8063520C  FC 00 00 1E */	fctiwz f0, f0
/* 80635210  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80635214  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80635218  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8063521C  80 1E 0F 8C */	lwz r0, 0xf8c(r30)
/* 80635220  2C 00 00 00 */	cmpwi r0, 0
/* 80635224  40 82 00 8C */	bne lbl_806352B0
/* 80635228  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070309@ha */
/* 8063522C  38 03 03 09 */	addi r0, r3, 0x0309 /* 0x00070309@l */
/* 80635230  90 01 00 08 */	stw r0, 8(r1)
/* 80635234  38 7E 06 34 */	addi r3, r30, 0x634
/* 80635238  38 81 00 08 */	addi r4, r1, 8
/* 8063523C  38 A0 00 00 */	li r5, 0
/* 80635240  38 C0 FF FF */	li r6, -1
/* 80635244  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 80635248  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8063524C  7D 89 03 A6 */	mtctr r12
/* 80635250  4E 80 04 21 */	bctrl 
/* 80635254  38 00 00 00 */	li r0, 0
/* 80635258  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8063525C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80635260  7F C3 F3 78 */	mr r3, r30
/* 80635264  38 80 00 02 */	li r4, 2
/* 80635268  4B FF AF C5 */	bl setIcicleOperate__8daB_YO_cFi
/* 8063526C  7F C3 F3 78 */	mr r3, r30
/* 80635270  38 80 00 03 */	li r4, 3
/* 80635274  38 A0 00 00 */	li r5, 0
/* 80635278  4B FF AB 95 */	bl setActionMode__8daB_YO_cFii
/* 8063527C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80635280  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80635284  38 00 00 0A */	li r0, 0xa
/* 80635288  90 1E 0F A0 */	stw r0, 0xfa0(r30)
/* 8063528C  A0 1E 0F 6E */	lhz r0, 0xf6e(r30)
/* 80635290  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80635294  40 82 00 1C */	bne lbl_806352B0
/* 80635298  88 1E 0F B2 */	lbz r0, 0xfb2(r30)
/* 8063529C  28 00 00 00 */	cmplwi r0, 0
/* 806352A0  40 82 00 10 */	bne lbl_806352B0
/* 806352A4  38 00 00 02 */	li r0, 2
/* 806352A8  98 1E 0F B3 */	stb r0, 0xfb3(r30)
/* 806352AC  98 1E 0F B2 */	stb r0, 0xfb2(r30)
lbl_806352B0:
/* 806352B0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806352B4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806352B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806352BC  7C 08 03 A6 */	mtlr r0
/* 806352C0  38 21 00 50 */	addi r1, r1, 0x50
/* 806352C4  4E 80 00 20 */	blr 

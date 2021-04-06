lbl_80C898DC:
/* 80C898DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C898E0  7C 08 02 A6 */	mflr r0
/* 80C898E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C898E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C898EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C898F0  7C 7F 1B 78 */	mr r31, r3
/* 80C898F4  88 63 08 09 */	lbz r3, 0x809(r3)
/* 80C898F8  28 03 00 00 */	cmplwi r3, 0
/* 80C898FC  41 82 00 10 */	beq lbl_80C8990C
/* 80C89900  38 03 FF FF */	addi r0, r3, -1
/* 80C89904  98 1F 08 09 */	stb r0, 0x809(r31)
/* 80C89908  48 00 00 B0 */	b lbl_80C899B8
lbl_80C8990C:
/* 80C8990C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C89910  4B 38 3B 19 */	bl play__14mDoExt_baseAnmFv
/* 80C89914  7C 7E 1B 78 */	mr r30, r3
/* 80C89918  C0 7F 05 BC */	lfs f3, 0x5bc(r31)
/* 80C8991C  3C 60 80 C9 */	lis r3, lit_4110@ha /* 0x80C89FF4@ha */
/* 80C89920  C0 43 9F F4 */	lfs f2, lit_4110@l(r3)  /* 0x80C89FF4@l */
/* 80C89924  A8 1F 05 B2 */	lha r0, 0x5b2(r31)
/* 80C89928  3C 60 80 C9 */	lis r3, lit_3770@ha /* 0x80C89FB8@ha */
/* 80C8992C  C8 23 9F B8 */	lfd f1, lit_3770@l(r3)  /* 0x80C89FB8@l */
/* 80C89930  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C89934  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C89938  3C 00 43 30 */	lis r0, 0x4330
/* 80C8993C  90 01 00 08 */	stw r0, 8(r1)
/* 80C89940  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C89944  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C89948  3C 60 80 C9 */	lis r3, lit_3661@ha /* 0x80C89FA4@ha */
/* 80C8994C  C0 03 9F A4 */	lfs f0, lit_3661@l(r3)  /* 0x80C89FA4@l */
/* 80C89950  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C89954  EC 02 00 2A */	fadds f0, f2, f0
/* 80C89958  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80C8995C  4C 40 13 82 */	cror 2, 0, 2
/* 80C89960  40 82 00 30 */	bne lbl_80C89990
/* 80C89964  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C89968  28 03 00 00 */	cmplwi r3, 0
/* 80C8996C  41 82 00 24 */	beq lbl_80C89990
/* 80C89970  4B 5D E8 65 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C89974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C89978  41 82 00 18 */	beq lbl_80C89990
/* 80C8997C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C89980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C89984  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C89988  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C8998C  4B 3E A8 C5 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C89990:
/* 80C89990  2C 1E 00 01 */	cmpwi r30, 1
/* 80C89994  40 82 00 24 */	bne lbl_80C899B8
/* 80C89998  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C8999C  28 00 00 00 */	cmplwi r0, 0
/* 80C899A0  41 82 00 10 */	beq lbl_80C899B0
/* 80C899A4  7F E3 FB 78 */	mr r3, r31
/* 80C899A8  48 00 00 29 */	bl init_modeInitSet__10daL8Lift_cFv
/* 80C899AC  48 00 00 0C */	b lbl_80C899B8
lbl_80C899B0:
/* 80C899B0  7F E3 FB 78 */	mr r3, r31
/* 80C899B4  48 00 00 71 */	bl init_modeInitSet2__10daL8Lift_cFv
lbl_80C899B8:
/* 80C899B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C899BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C899C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C899C4  7C 08 03 A6 */	mtlr r0
/* 80C899C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C899CC  4E 80 00 20 */	blr 

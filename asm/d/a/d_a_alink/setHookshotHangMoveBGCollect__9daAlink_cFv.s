lbl_80109890:
/* 80109890  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80109894  7C 08 02 A6 */	mflr r0
/* 80109898  90 01 00 64 */	stw r0, 0x64(r1)
/* 8010989C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801098A0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 801098A4  39 61 00 50 */	addi r11, r1, 0x50
/* 801098A8  48 25 89 35 */	bl _savegpr_29
/* 801098AC  7C 7F 1B 78 */	mr r31, r3
/* 801098B0  A8 03 30 1A */	lha r0, 0x301a(r3)
/* 801098B4  2C 00 00 04 */	cmpwi r0, 4
/* 801098B8  40 82 00 0C */	bne lbl_801098C4
/* 801098BC  3B BF 1E 3C */	addi r29, r31, 0x1e3c
/* 801098C0  48 00 00 08 */	b lbl_801098C8
lbl_801098C4:
/* 801098C4  3B BF 1E 2C */	addi r29, r31, 0x1e2c
lbl_801098C8:
/* 801098C8  83 DF 28 58 */	lwz r30, 0x2858(r31)
/* 801098CC  28 1E 00 00 */	cmplwi r30, 0
/* 801098D0  41 82 00 90 */	beq lbl_80109960
/* 801098D4  C0 1F 38 04 */	lfs f0, 0x3804(r31)
/* 801098D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801098DC  C0 1F 38 08 */	lfs f0, 0x3808(r31)
/* 801098E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801098E4  C0 1F 38 0C */	lfs f0, 0x380c(r31)
/* 801098E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801098EC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 801098F0  4B F0 34 75 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 801098F4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 801098F8  4B F0 36 4D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 801098FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80109900  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80109904  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 80109908  38 BF 38 04 */	addi r5, r31, 0x3804
/* 8010990C  48 23 D4 61 */	bl PSMTXMultVec
/* 80109910  38 61 00 1C */	addi r3, r1, 0x1c
/* 80109914  38 9F 38 04 */	addi r4, r31, 0x3804
/* 80109918  38 A1 00 28 */	addi r5, r1, 0x28
/* 8010991C  48 15 D2 19 */	bl __mi__4cXyzCFRC3Vec
/* 80109920  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80109924  38 81 00 1C */	addi r4, r1, 0x1c
/* 80109928  7C 65 1B 78 */	mr r5, r3
/* 8010992C  48 23 D7 65 */	bl PSVECAdd
/* 80109930  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80109934  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80109938  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8010993C  7C 03 00 50 */	subf r0, r3, r0
/* 80109940  7C 00 07 34 */	extsh r0, r0
/* 80109944  7C 04 02 14 */	add r0, r4, r0
/* 80109948  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8010994C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80109950  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80109954  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80109958  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8010995C  48 00 01 2C */	b lbl_80109A88
lbl_80109960:
/* 80109960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80109964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80109968  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8010996C  7F C3 F3 78 */	mr r3, r30
/* 80109970  7F A4 EB 78 */	mr r4, r29
/* 80109974  4B F6 AC ED */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80109978  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010997C  41 82 01 04 */	beq lbl_80109A80
/* 80109980  7F E3 FB 78 */	mr r3, r31
/* 80109984  7F A4 EB 78 */	mr r4, r29
/* 80109988  4B FF EE 29 */	bl checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo
/* 8010998C  2C 03 00 00 */	cmpwi r3, 0
/* 80109990  40 82 00 0C */	bne lbl_8010999C
/* 80109994  38 60 00 00 */	li r3, 0
/* 80109998  48 00 00 F4 */	b lbl_80109A8C
lbl_8010999C:
/* 8010999C  7F C3 F3 78 */	mr r3, r30
/* 801099A0  7F A4 EB 78 */	mr r4, r29
/* 801099A4  4B F6 B1 19 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 801099A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801099AC  41 82 00 DC */	beq lbl_80109A88
/* 801099B0  7F C3 F3 78 */	mr r3, r30
/* 801099B4  7F A4 EB 78 */	mr r4, r29
/* 801099B8  38 A0 00 01 */	li r5, 1
/* 801099BC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 801099C0  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 801099C4  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 801099C8  4B F6 BE B9 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 801099CC  38 61 00 08 */	addi r3, r1, 8
/* 801099D0  38 80 00 00 */	li r4, 0
/* 801099D4  A8 BF 30 22 */	lha r5, 0x3022(r31)
/* 801099D8  38 C0 00 00 */	li r6, 0
/* 801099DC  48 15 DA 19 */	bl __ct__5csXyzFsss
/* 801099E0  7F C3 F3 78 */	mr r3, r30
/* 801099E4  7F A4 EB 78 */	mr r4, r29
/* 801099E8  38 A0 00 01 */	li r5, 1
/* 801099EC  38 DF 38 04 */	addi r6, r31, 0x3804
/* 801099F0  38 E0 00 00 */	li r7, 0
/* 801099F4  39 01 00 08 */	addi r8, r1, 8
/* 801099F8  4B F6 BE 89 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 801099FC  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80109A00  B0 1F 30 22 */	sth r0, 0x3022(r31)
/* 80109A04  7F A3 EB 78 */	mr r3, r29
/* 80109A08  38 80 00 01 */	li r4, 1
/* 80109A0C  4B F9 87 D5 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 80109A10  7C 60 07 34 */	extsh r0, r3
/* 80109A14  2C 00 00 C4 */	cmpwi r0, 0xc4
/* 80109A18  40 82 00 48 */	bne lbl_80109A60
/* 80109A1C  7F C3 F3 78 */	mr r3, r30
/* 80109A20  A0 9D 00 02 */	lhz r4, 2(r29)
/* 80109A24  4B F6 AB F5 */	bl GetActorPointer__4cBgSCFi
/* 80109A28  7C 64 1B 78 */	mr r4, r3
/* 80109A2C  38 00 00 01 */	li r0, 1
/* 80109A30  98 03 07 7C */	stb r0, 0x77c(r3)
/* 80109A34  C3 FF 38 08 */	lfs f31, 0x3808(r31)
/* 80109A38  38 61 00 10 */	addi r3, r1, 0x10
/* 80109A3C  4B FF 7E 39 */	bl getHangPos__13daObjSwHang_cFv
/* 80109A40  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80109A44  D0 1F 38 08 */	stfs f0, 0x3808(r31)
/* 80109A48  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80109A4C  C0 1F 38 08 */	lfs f0, 0x3808(r31)
/* 80109A50  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80109A54  EC 01 00 2A */	fadds f0, f1, f0
/* 80109A58  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80109A5C  48 00 00 2C */	b lbl_80109A88
lbl_80109A60:
/* 80109A60  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 80109A64  40 82 00 24 */	bne lbl_80109A88
/* 80109A68  7F C3 F3 78 */	mr r3, r30
/* 80109A6C  A0 9D 00 02 */	lhz r4, 2(r29)
/* 80109A70  4B F6 AB A9 */	bl GetActorPointer__4cBgSCFi
/* 80109A74  38 00 00 01 */	li r0, 1
/* 80109A78  98 03 06 0A */	stb r0, 0x60a(r3)
/* 80109A7C  48 00 00 0C */	b lbl_80109A88
lbl_80109A80:
/* 80109A80  38 60 00 00 */	li r3, 0
/* 80109A84  48 00 00 08 */	b lbl_80109A8C
lbl_80109A88:
/* 80109A88  38 60 00 01 */	li r3, 1
lbl_80109A8C:
/* 80109A8C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80109A90  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80109A94  39 61 00 50 */	addi r11, r1, 0x50
/* 80109A98  48 25 87 91 */	bl _restgpr_29
/* 80109A9C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80109AA0  7C 08 03 A6 */	mtlr r0
/* 80109AA4  38 21 00 60 */	addi r1, r1, 0x60
/* 80109AA8  4E 80 00 20 */	blr 

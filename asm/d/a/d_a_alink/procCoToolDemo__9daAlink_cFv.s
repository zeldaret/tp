lbl_801196D8:
/* 801196D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801196DC  7C 08 02 A6 */	mflr r0
/* 801196E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801196E4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801196E8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801196EC  39 61 00 40 */	addi r11, r1, 0x40
/* 801196F0  48 24 8A E9 */	bl _savegpr_28
/* 801196F4  7C 7C 1B 78 */	mr r28, r3
/* 801196F8  80 6D 88 A0 */	lwz r3, m_object__7dDemo_c(r13)
/* 801196FC  88 9C 04 98 */	lbz r4, 0x498(r28)
/* 80119700  4B F1 F9 89 */	bl getActor__14dDemo_object_cFUc
/* 80119704  7C 7F 1B 79 */	or. r31, r3, r3
/* 80119708  3B A0 00 00 */	li r29, 0
/* 8011970C  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 80119710  64 00 80 00 */	oris r0, r0, 0x8000
/* 80119714  90 1C 05 8C */	stw r0, 0x58c(r28)
/* 80119718  38 00 00 00 */	li r0, 0
/* 8011971C  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 80119720  B0 1C 30 10 */	sth r0, 0x3010(r28)
/* 80119724  98 1C 2F AB */	stb r0, 0x2fab(r28)
/* 80119728  41 82 06 14 */	beq lbl_80119D3C
/* 8011972C  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 80119730  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80119734  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80119738  41 82 00 1C */	beq lbl_80119754
/* 8011973C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80119740  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80119744  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80119748  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8011974C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80119750  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_80119754:
/* 80119754  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80119758  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8011975C  41 82 00 34 */	beq lbl_80119790
/* 80119760  A8 1F 00 20 */	lha r0, 0x20(r31)
/* 80119764  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80119768  A8 1F 00 22 */	lha r0, 0x22(r31)
/* 8011976C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80119770  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 80119774  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80119778  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 8011977C  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 80119780  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80119784  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80119788  A8 1C 04 E8 */	lha r0, 0x4e8(r28)
/* 8011978C  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
lbl_80119790:
/* 80119790  A0 7F 00 04 */	lhz r3, 4(r31)
/* 80119794  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80119798  41 82 00 08 */	beq lbl_801197A0
/* 8011979C  C3 FF 00 30 */	lfs f31, 0x30(r31)
lbl_801197A0:
/* 801197A0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801197A4  41 82 05 58 */	beq lbl_80119CFC
/* 801197A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801197AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801197B0  3F C3 00 02 */	addis r30, r3, 2
/* 801197B4  3B DE C2 F8 */	addi r30, r30, -15624
/* 801197B8  48 00 05 1C */	b lbl_80119CD4
lbl_801197BC:
/* 801197BC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801197C0  2C 00 00 00 */	cmpwi r0, 0
/* 801197C4  41 82 00 1C */	beq lbl_801197E0
/* 801197C8  A8 0D 80 A0 */	lha r0, m_branchId__7dDemo_c(r13)
/* 801197CC  2C 00 FF FF */	cmpwi r0, -1
/* 801197D0  40 82 00 10 */	bne lbl_801197E0
/* 801197D4  38 60 00 01 */	li r3, 1
/* 801197D8  38 80 00 00 */	li r4, 0
/* 801197DC  4B F2 07 11 */	bl setBranchId__7dDemo_cFUss
lbl_801197E0:
/* 801197E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801197E4  2C 00 00 00 */	cmpwi r0, 0
/* 801197E8  40 82 01 E0 */	bne lbl_801199C8
/* 801197EC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801197F0  2C 00 00 05 */	cmpwi r0, 5
/* 801197F4  40 82 00 18 */	bne lbl_8011980C
/* 801197F8  7F 83 E3 78 */	mr r3, r28
/* 801197FC  A0 81 00 08 */	lhz r4, 8(r1)
/* 80119800  4B FF F0 41 */	bl setDemoRightHandIndex__9daAlink_cFUs
/* 80119804  98 7C 2F 93 */	stb r3, 0x2f93(r28)
/* 80119808  48 00 04 CC */	b lbl_80119CD4
lbl_8011980C:
/* 8011980C  2C 00 00 06 */	cmpwi r0, 6
/* 80119810  40 82 00 18 */	bne lbl_80119828
/* 80119814  7F 83 E3 78 */	mr r3, r28
/* 80119818  A0 81 00 08 */	lhz r4, 8(r1)
/* 8011981C  4B FF F0 95 */	bl setDemoLeftHandIndex__9daAlink_cFUs
/* 80119820  98 7C 2F 92 */	stb r3, 0x2f92(r28)
/* 80119824  48 00 04 B0 */	b lbl_80119CD4
lbl_80119828:
/* 80119828  2C 00 00 09 */	cmpwi r0, 9
/* 8011982C  40 82 00 48 */	bne lbl_80119874
/* 80119830  A0 01 00 08 */	lhz r0, 8(r1)
/* 80119834  28 00 00 01 */	cmplwi r0, 1
/* 80119838  40 82 00 30 */	bne lbl_80119868
/* 8011983C  80 1C 06 84 */	lwz r0, 0x684(r28)
/* 80119840  28 00 00 00 */	cmplwi r0, 0
/* 80119844  41 82 00 24 */	beq lbl_80119868
/* 80119848  80 1C 06 88 */	lwz r0, 0x688(r28)
/* 8011984C  28 00 00 00 */	cmplwi r0, 0
/* 80119850  41 82 00 18 */	beq lbl_80119868
/* 80119854  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80119858  60 00 00 10 */	ori r0, r0, 0x10
/* 8011985C  90 1C 05 74 */	stw r0, 0x574(r28)
/* 80119860  3B A0 00 01 */	li r29, 1
/* 80119864  48 00 04 70 */	b lbl_80119CD4
lbl_80119868:
/* 80119868  7F 83 E3 78 */	mr r3, r28
/* 8011986C  4B FF E3 C9 */	bl endHighModel__9daAlink_cFv
/* 80119870  48 00 04 64 */	b lbl_80119CD4
lbl_80119874:
/* 80119874  2C 00 00 07 */	cmpwi r0, 7
/* 80119878  40 82 00 20 */	bne lbl_80119898
/* 8011987C  A0 01 00 08 */	lhz r0, 8(r1)
/* 80119880  28 00 00 01 */	cmplwi r0, 1
/* 80119884  40 82 04 50 */	bne lbl_80119CD4
/* 80119888  88 1C 2F AB */	lbz r0, 0x2fab(r28)
/* 8011988C  60 00 00 02 */	ori r0, r0, 2
/* 80119890  98 1C 2F AB */	stb r0, 0x2fab(r28)
/* 80119894  48 00 04 40 */	b lbl_80119CD4
lbl_80119898:
/* 80119898  2C 00 00 08 */	cmpwi r0, 8
/* 8011989C  40 82 00 20 */	bne lbl_801198BC
/* 801198A0  A0 01 00 08 */	lhz r0, 8(r1)
/* 801198A4  28 00 00 01 */	cmplwi r0, 1
/* 801198A8  40 82 04 2C */	bne lbl_80119CD4
/* 801198AC  88 1C 2F AB */	lbz r0, 0x2fab(r28)
/* 801198B0  60 00 00 01 */	ori r0, r0, 1
/* 801198B4  98 1C 2F AB */	stb r0, 0x2fab(r28)
/* 801198B8  48 00 04 1C */	b lbl_80119CD4
lbl_801198BC:
/* 801198BC  2C 00 00 00 */	cmpwi r0, 0
/* 801198C0  40 82 04 14 */	bne lbl_80119CD4
/* 801198C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801198C8  2C 00 00 01 */	cmpwi r0, 1
/* 801198CC  40 82 00 10 */	bne lbl_801198DC
/* 801198D0  A0 01 00 08 */	lhz r0, 8(r1)
/* 801198D4  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 801198D8  48 00 03 FC */	b lbl_80119CD4
lbl_801198DC:
/* 801198DC  2C 00 00 02 */	cmpwi r0, 2
/* 801198E0  40 82 00 14 */	bne lbl_801198F4
/* 801198E4  7F 83 E3 78 */	mr r3, r28
/* 801198E8  A0 81 00 08 */	lhz r4, 8(r1)
/* 801198EC  4B FF F0 61 */	bl setDemoRide__9daAlink_cFUs
/* 801198F0  48 00 03 E4 */	b lbl_80119CD4
lbl_801198F4:
/* 801198F4  2C 00 00 04 */	cmpwi r0, 4
/* 801198F8  40 82 03 DC */	bne lbl_80119CD4
/* 801198FC  A8 7C 30 0C */	lha r3, 0x300c(r28)
/* 80119900  7C 60 07 35 */	extsh. r0, r3
/* 80119904  41 82 00 28 */	beq lbl_8011992C
/* 80119908  A0 01 00 08 */	lhz r0, 8(r1)
/* 8011990C  28 00 00 00 */	cmplwi r0, 0
/* 80119910  41 82 00 0C */	beq lbl_8011991C
/* 80119914  2C 03 00 01 */	cmpwi r3, 1
/* 80119918  41 82 00 14 */	beq lbl_8011992C
lbl_8011991C:
/* 8011991C  28 00 00 00 */	cmplwi r0, 0
/* 80119920  40 82 03 B4 */	bne lbl_80119CD4
/* 80119924  2C 03 00 02 */	cmpwi r3, 2
/* 80119928  40 82 03 AC */	bne lbl_80119CD4
lbl_8011992C:
/* 8011992C  7C 60 07 35 */	extsh. r0, r3
/* 80119930  40 82 00 10 */	bne lbl_80119940
/* 80119934  7F 83 E3 78 */	mr r3, r28
/* 80119938  38 80 00 00 */	li r4, 0
/* 8011993C  4B FA 84 D1 */	bl changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE
lbl_80119940:
/* 80119940  A0 01 00 08 */	lhz r0, 8(r1)
/* 80119944  28 00 00 00 */	cmplwi r0, 0
/* 80119948  41 82 00 40 */	beq lbl_80119988
/* 8011994C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80119950  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 80119954  C0 02 93 4C */	lfs f0, lit_8131(r2)
/* 80119958  D0 1C 34 80 */	stfs f0, 0x3480(r28)
/* 8011995C  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80119960  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80119964  41 82 00 10 */	beq lbl_80119974
/* 80119968  C0 02 96 58 */	lfs f0, lit_37152(r2)
/* 8011996C  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 80119970  48 00 00 0C */	b lbl_8011997C
lbl_80119974:
/* 80119974  C0 02 95 88 */	lfs f0, lit_24680(r2)
/* 80119978  D0 1C 34 7C */	stfs f0, 0x347c(r28)
lbl_8011997C:
/* 8011997C  38 00 00 02 */	li r0, 2
/* 80119980  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 80119984  48 00 03 50 */	b lbl_80119CD4
lbl_80119988:
/* 80119988  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011998C  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 80119990  D0 1C 04 50 */	stfs f0, 0x450(r28)
/* 80119994  C0 02 93 4C */	lfs f0, lit_8131(r2)
/* 80119998  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 8011999C  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 801199A0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801199A4  41 82 00 10 */	beq lbl_801199B4
/* 801199A8  C0 02 96 58 */	lfs f0, lit_37152(r2)
/* 801199AC  D0 1C 34 80 */	stfs f0, 0x3480(r28)
/* 801199B0  48 00 00 0C */	b lbl_801199BC
lbl_801199B4:
/* 801199B4  C0 02 95 88 */	lfs f0, lit_24680(r2)
/* 801199B8  D0 1C 34 80 */	stfs f0, 0x3480(r28)
lbl_801199BC:
/* 801199BC  38 00 00 01 */	li r0, 1
/* 801199C0  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 801199C4  48 00 03 10 */	b lbl_80119CD4
lbl_801199C8:
/* 801199C8  2C 00 00 01 */	cmpwi r0, 1
/* 801199CC  41 82 03 08 */	beq lbl_80119CD4
/* 801199D0  2C 00 00 02 */	cmpwi r0, 2
/* 801199D4  40 82 03 00 */	bne lbl_80119CD4
/* 801199D8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801199DC  2C 05 00 01 */	cmpwi r5, 1
/* 801199E0  40 82 00 88 */	bne lbl_80119A68
/* 801199E4  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 801199E8  2C 06 00 02 */	cmpwi r6, 2
/* 801199EC  40 82 00 20 */	bne lbl_80119A0C
/* 801199F0  7F 83 E3 78 */	mr r3, r28
/* 801199F4  80 9C 1F 2C */	lwz r4, 0x1f2c(r28)
/* 801199F8  A0 E1 00 08 */	lhz r7, 8(r1)
/* 801199FC  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80119A00  4B FF F7 C5 */	bl setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi
/* 80119A04  FF E0 08 90 */	fmr f31, f1
/* 80119A08  48 00 02 CC */	b lbl_80119CD4
lbl_80119A0C:
/* 80119A0C  2C 06 00 04 */	cmpwi r6, 4
/* 80119A10  40 82 02 C4 */	bne lbl_80119CD4
/* 80119A14  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 80119A18  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 80119A1C  A0 81 00 08 */	lhz r4, 8(r1)
/* 80119A20  7F C5 F3 78 */	mr r5, r30
/* 80119A24  38 C0 00 80 */	li r6, 0x80
/* 80119A28  4B F2 29 D9 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 80119A2C  28 03 00 00 */	cmplwi r3, 0
/* 80119A30  41 82 00 1C */	beq lbl_80119A4C
/* 80119A34  80 1C 06 F4 */	lwz r0, 0x6f4(r28)
/* 80119A38  7C 00 18 40 */	cmplw r0, r3
/* 80119A3C  41 82 00 10 */	beq lbl_80119A4C
/* 80119A40  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80119A44  D0 03 00 08 */	stfs f0, 8(r3)
/* 80119A48  90 7C 06 F4 */	stw r3, 0x6f4(r28)
lbl_80119A4C:
/* 80119A4C  28 03 00 00 */	cmplwi r3, 0
/* 80119A50  41 82 02 84 */	beq lbl_80119CD4
/* 80119A54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119A58  2C 00 00 00 */	cmpwi r0, 0
/* 80119A5C  40 82 02 78 */	bne lbl_80119CD4
/* 80119A60  D3 E3 00 08 */	stfs f31, 8(r3)
/* 80119A64  48 00 02 70 */	b lbl_80119CD4
lbl_80119A68:
/* 80119A68  2C 05 00 04 */	cmpwi r5, 4
/* 80119A6C  40 82 00 44 */	bne lbl_80119AB0
/* 80119A70  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80119A74  2C 06 00 02 */	cmpwi r6, 2
/* 80119A78  40 82 02 5C */	bne lbl_80119CD4
/* 80119A7C  7F 83 E3 78 */	mr r3, r28
/* 80119A80  38 80 00 00 */	li r4, 0
/* 80119A84  A0 E1 00 08 */	lhz r7, 8(r1)
/* 80119A88  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80119A8C  4B FF F7 39 */	bl setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi
/* 80119A90  80 7C 06 B0 */	lwz r3, 0x6b0(r28)
/* 80119A94  28 03 00 00 */	cmplwi r3, 0
/* 80119A98  41 82 02 3C */	beq lbl_80119CD4
/* 80119A9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119AA0  2C 00 00 00 */	cmpwi r0, 0
/* 80119AA4  40 82 02 30 */	bne lbl_80119CD4
/* 80119AA8  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80119AAC  48 00 02 28 */	b lbl_80119CD4
lbl_80119AB0:
/* 80119AB0  2C 05 00 06 */	cmpwi r5, 6
/* 80119AB4  40 82 00 8C */	bne lbl_80119B40
/* 80119AB8  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80119ABC  2C 06 00 02 */	cmpwi r6, 2
/* 80119AC0  40 82 00 38 */	bne lbl_80119AF8
/* 80119AC4  7F 83 E3 78 */	mr r3, r28
/* 80119AC8  38 80 00 00 */	li r4, 0
/* 80119ACC  A0 E1 00 08 */	lhz r7, 8(r1)
/* 80119AD0  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80119AD4  4B FF F6 F1 */	bl setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi
/* 80119AD8  80 7C 06 A4 */	lwz r3, 0x6a4(r28)
/* 80119ADC  28 03 00 00 */	cmplwi r3, 0
/* 80119AE0  41 82 01 F4 */	beq lbl_80119CD4
/* 80119AE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80119AEC  40 82 01 E8 */	bne lbl_80119CD4
/* 80119AF0  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80119AF4  48 00 01 E0 */	b lbl_80119CD4
lbl_80119AF8:
/* 80119AF8  2C 06 00 04 */	cmpwi r6, 4
/* 80119AFC  40 82 01 D8 */	bne lbl_80119CD4
/* 80119B00  88 1C 2F 92 */	lbz r0, 0x2f92(r28)
/* 80119B04  28 00 00 FB */	cmplwi r0, 0xfb
/* 80119B08  40 82 01 CC */	bne lbl_80119CD4
/* 80119B0C  7F 83 E3 78 */	mr r3, r28
/* 80119B10  38 9C 06 F8 */	addi r4, r28, 0x6f8
/* 80119B14  80 BC 06 A0 */	lwz r5, 0x6a0(r28)
/* 80119B18  A0 C1 00 08 */	lhz r6, 8(r1)
/* 80119B1C  4B FF F6 19 */	bl setDemoBrk__9daAlink_cFPP15J3DAnmTevRegKeyP8J3DModelUs
/* 80119B20  80 7C 06 F8 */	lwz r3, 0x6f8(r28)
/* 80119B24  28 03 00 00 */	cmplwi r3, 0
/* 80119B28  41 82 01 AC */	beq lbl_80119CD4
/* 80119B2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119B30  2C 00 00 00 */	cmpwi r0, 0
/* 80119B34  40 82 01 A0 */	bne lbl_80119CD4
/* 80119B38  D3 E3 00 08 */	stfs f31, 8(r3)
/* 80119B3C  48 00 01 98 */	b lbl_80119CD4
lbl_80119B40:
/* 80119B40  2C 05 00 05 */	cmpwi r5, 5
/* 80119B44  40 82 00 44 */	bne lbl_80119B88
/* 80119B48  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80119B4C  2C 06 00 02 */	cmpwi r6, 2
/* 80119B50  40 82 01 84 */	bne lbl_80119CD4
/* 80119B54  7F 83 E3 78 */	mr r3, r28
/* 80119B58  38 80 00 00 */	li r4, 0
/* 80119B5C  A0 E1 00 08 */	lhz r7, 8(r1)
/* 80119B60  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80119B64  4B FF F6 61 */	bl setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi
/* 80119B68  80 7C 06 AC */	lwz r3, 0x6ac(r28)
/* 80119B6C  28 03 00 00 */	cmplwi r3, 0
/* 80119B70  41 82 01 64 */	beq lbl_80119CD4
/* 80119B74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119B78  2C 00 00 00 */	cmpwi r0, 0
/* 80119B7C  40 82 01 58 */	bne lbl_80119CD4
/* 80119B80  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80119B84  48 00 01 50 */	b lbl_80119CD4
lbl_80119B88:
/* 80119B88  2C 05 00 09 */	cmpwi r5, 9
/* 80119B8C  40 82 01 48 */	bne lbl_80119CD4
/* 80119B90  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80119B94  2C 06 00 02 */	cmpwi r6, 2
/* 80119B98  40 82 00 38 */	bne lbl_80119BD0
/* 80119B9C  7F 83 E3 78 */	mr r3, r28
/* 80119BA0  80 9C 21 78 */	lwz r4, 0x2178(r28)
/* 80119BA4  A0 E1 00 08 */	lhz r7, 8(r1)
/* 80119BA8  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80119BAC  4B FF F6 19 */	bl setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi
/* 80119BB0  80 7C 06 90 */	lwz r3, 0x690(r28)
/* 80119BB4  28 03 00 00 */	cmplwi r3, 0
/* 80119BB8  41 82 01 1C */	beq lbl_80119CD4
/* 80119BBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119BC0  2C 00 00 00 */	cmpwi r0, 0
/* 80119BC4  40 82 01 10 */	bne lbl_80119CD4
/* 80119BC8  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80119BCC  48 00 01 08 */	b lbl_80119CD4
lbl_80119BD0:
/* 80119BD0  2C 06 00 03 */	cmpwi r6, 3
/* 80119BD4  40 82 00 38 */	bne lbl_80119C0C
/* 80119BD8  7F 83 E3 78 */	mr r3, r28
/* 80119BDC  80 9C 21 58 */	lwz r4, 0x2158(r28)
/* 80119BE0  A0 E1 00 08 */	lhz r7, 8(r1)
/* 80119BE4  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80119BE8  4B FF F5 DD */	bl setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi
/* 80119BEC  80 7C 21 58 */	lwz r3, 0x2158(r28)
/* 80119BF0  28 03 00 00 */	cmplwi r3, 0
/* 80119BF4  41 82 00 E0 */	beq lbl_80119CD4
/* 80119BF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119BFC  2C 00 00 00 */	cmpwi r0, 0
/* 80119C00  40 82 00 D4 */	bne lbl_80119CD4
/* 80119C04  D3 E3 00 08 */	stfs f31, 8(r3)
/* 80119C08  48 00 00 CC */	b lbl_80119CD4
lbl_80119C0C:
/* 80119C0C  2C 06 00 05 */	cmpwi r6, 5
/* 80119C10  40 82 00 38 */	bne lbl_80119C48
/* 80119C14  7F 83 E3 78 */	mr r3, r28
/* 80119C18  80 9C 21 54 */	lwz r4, 0x2154(r28)
/* 80119C1C  A0 E1 00 08 */	lhz r7, 8(r1)
/* 80119C20  81 01 00 10 */	lwz r8, 0x10(r1)
/* 80119C24  4B FF F5 A1 */	bl setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi
/* 80119C28  80 7C 21 54 */	lwz r3, 0x2154(r28)
/* 80119C2C  28 03 00 00 */	cmplwi r3, 0
/* 80119C30  41 82 00 A4 */	beq lbl_80119CD4
/* 80119C34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119C38  2C 00 00 00 */	cmpwi r0, 0
/* 80119C3C  40 82 00 98 */	bne lbl_80119CD4
/* 80119C40  D3 E3 00 08 */	stfs f31, 8(r3)
/* 80119C44  48 00 00 90 */	b lbl_80119CD4
lbl_80119C48:
/* 80119C48  2C 06 00 07 */	cmpwi r6, 7
/* 80119C4C  40 82 00 88 */	bne lbl_80119CD4
/* 80119C50  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 80119C54  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 80119C58  A0 81 00 08 */	lhz r4, 8(r1)
/* 80119C5C  7F C5 F3 78 */	mr r5, r30
/* 80119C60  38 C0 00 80 */	li r6, 0x80
/* 80119C64  4B F2 27 9D */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 80119C68  80 1C 06 98 */	lwz r0, 0x698(r28)
/* 80119C6C  7C 00 18 40 */	cmplw r0, r3
/* 80119C70  41 82 00 3C */	beq lbl_80119CAC
/* 80119C74  90 7C 06 98 */	stw r3, 0x698(r28)
/* 80119C78  80 7C 06 9C */	lwz r3, 0x69c(r28)
/* 80119C7C  80 9C 06 94 */	lwz r4, 0x694(r28)
/* 80119C80  80 BC 06 98 */	lwz r5, 0x698(r28)
/* 80119C84  38 C0 00 00 */	li r6, 0
/* 80119C88  38 E0 00 02 */	li r7, 2
/* 80119C8C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80119C90  39 00 00 00 */	li r8, 0
/* 80119C94  39 20 FF FF */	li r9, -1
/* 80119C98  4B EF 3D 71 */	bl init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss
/* 80119C9C  80 7C 06 9C */	lwz r3, 0x69c(r28)
/* 80119CA0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80119CA4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80119CA8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80119CAC:
/* 80119CAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119CB0  2C 00 00 00 */	cmpwi r0, 0
/* 80119CB4  40 82 00 20 */	bne lbl_80119CD4
/* 80119CB8  80 7C 06 9C */	lwz r3, 0x69c(r28)
/* 80119CBC  28 03 00 00 */	cmplwi r3, 0
/* 80119CC0  41 82 00 14 */	beq lbl_80119CD4
/* 80119CC4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80119CC8  28 03 00 00 */	cmplwi r3, 0
/* 80119CCC  41 82 00 08 */	beq lbl_80119CD4
/* 80119CD0  D3 E3 00 08 */	stfs f31, 8(r3)
lbl_80119CD4:
/* 80119CD4  7F E3 FB 78 */	mr r3, r31
/* 80119CD8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80119CDC  38 A1 00 18 */	addi r5, r1, 0x18
/* 80119CE0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80119CE4  38 E1 00 08 */	addi r7, r1, 8
/* 80119CE8  39 01 00 10 */	addi r8, r1, 0x10
/* 80119CEC  39 21 00 0C */	addi r9, r1, 0xc
/* 80119CF0  4B FF F7 75 */	bl daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi
/* 80119CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80119CF8  40 82 FA C4 */	bne lbl_801197BC
lbl_80119CFC:
/* 80119CFC  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80119D00  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80119D04  41 82 00 38 */	beq lbl_80119D3C
/* 80119D08  80 7C 1F 2C */	lwz r3, 0x1f2c(r28)
/* 80119D0C  D3 E3 00 08 */	stfs f31, 8(r3)
/* 80119D10  80 7C 1F 2C */	lwz r3, 0x1f2c(r28)
/* 80119D14  A8 03 00 06 */	lha r0, 6(r3)
/* 80119D18  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80119D1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80119D20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80119D24  3C 00 43 30 */	lis r0, 0x4330
/* 80119D28  90 01 00 20 */	stw r0, 0x20(r1)
/* 80119D2C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80119D30  EC 00 08 28 */	fsubs f0, f0, f1
/* 80119D34  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80119D38  D3 FC 1F E0 */	stfs f31, 0x1fe0(r28)
lbl_80119D3C:
/* 80119D3C  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 80119D40  2C 00 00 00 */	cmpwi r0, 0
/* 80119D44  41 82 00 0C */	beq lbl_80119D50
/* 80119D48  7F 83 E3 78 */	mr r3, r28
/* 80119D4C  48 00 5E 75 */	bl warpModelTexScroll__9daAlink_cFv
lbl_80119D50:
/* 80119D50  2C 1D 00 00 */	cmpwi r29, 0
/* 80119D54  40 82 00 0C */	bne lbl_80119D60
/* 80119D58  7F 83 E3 78 */	mr r3, r28
/* 80119D5C  4B FF DE D9 */	bl endHighModel__9daAlink_cFv
lbl_80119D60:
/* 80119D60  28 1F 00 00 */	cmplwi r31, 0
/* 80119D64  40 82 00 10 */	bne lbl_80119D74
/* 80119D68  7F 83 E3 78 */	mr r3, r28
/* 80119D6C  38 80 00 00 */	li r4, 0
/* 80119D70  4B FA 03 61 */	bl checkNextAction__9daAlink_cFi
lbl_80119D74:
/* 80119D74  38 60 00 01 */	li r3, 1
/* 80119D78  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80119D7C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80119D80  39 61 00 40 */	addi r11, r1, 0x40
/* 80119D84  48 24 84 A1 */	bl _restgpr_28
/* 80119D88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80119D8C  7C 08 03 A6 */	mtlr r0
/* 80119D90  38 21 00 50 */	addi r1, r1, 0x50
/* 80119D94  4E 80 00 20 */	blr 

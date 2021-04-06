lbl_800D47DC:
/* 800D47DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D47E0  7C 08 02 A6 */	mflr r0
/* 800D47E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D47E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800D47EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800D47F0  39 61 00 20 */	addi r11, r1, 0x20
/* 800D47F4  48 28 D9 E1 */	bl _savegpr_27
/* 800D47F8  7C 7C 1B 78 */	mr r28, r3
/* 800D47FC  7C 9B 23 78 */	mr r27, r4
/* 800D4800  7C BD 2B 78 */	mr r29, r5
/* 800D4804  3C 80 80 39 */	lis r4, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D4808  3B E4 DB 84 */	addi r31, r4, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D480C  38 80 00 28 */	li r4, 0x28
/* 800D4810  4B FE D7 5D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D4814  2C 1D 00 02 */	cmpwi r29, 2
/* 800D4818  40 82 00 10 */	bne lbl_800D4828
/* 800D481C  7F 83 E3 78 */	mr r3, r28
/* 800D4820  4B FF CC 05 */	bl getCutTurnDirection__9daAlink_cCFv
/* 800D4824  7C 7D 1B 78 */	mr r29, r3
lbl_800D4828:
/* 800D4828  2C 1D 00 01 */	cmpwi r29, 1
/* 800D482C  40 82 00 44 */	bne lbl_800D4870
/* 800D4830  3B C0 00 74 */	li r30, 0x74
/* 800D4834  7F FD FB 78 */	mr r29, r31
/* 800D4838  2C 1B 00 00 */	cmpwi r27, 0
/* 800D483C  41 82 00 0C */	beq lbl_800D4848
/* 800D4840  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 800D4844  48 00 00 08 */	b lbl_800D484C
lbl_800D4848:
/* 800D4848  C3 FF 00 08 */	lfs f31, 8(r31)
lbl_800D484C:
/* 800D484C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 800D4850  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 800D4854  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 800D4858  D0 1C 34 88 */	stfs f0, 0x3488(r28)
/* 800D485C  38 00 00 01 */	li r0, 1
/* 800D4860  B0 1C 30 10 */	sth r0, 0x3010(r28)
/* 800D4864  38 00 00 06 */	li r0, 6
/* 800D4868  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 800D486C  48 00 00 40 */	b lbl_800D48AC
lbl_800D4870:
/* 800D4870  3B C0 00 73 */	li r30, 0x73
/* 800D4874  3B BF 00 28 */	addi r29, r31, 0x28
/* 800D4878  2C 1B 00 00 */	cmpwi r27, 0
/* 800D487C  41 82 00 0C */	beq lbl_800D4888
/* 800D4880  C3 FF 00 74 */	lfs f31, 0x74(r31)
/* 800D4884  48 00 00 08 */	b lbl_800D488C
lbl_800D4888:
/* 800D4888  C3 FD 00 08 */	lfs f31, 8(r29)
lbl_800D488C:
/* 800D488C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 800D4890  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 800D4894  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 800D4898  D0 1C 34 88 */	stfs f0, 0x3488(r28)
/* 800D489C  38 00 00 00 */	li r0, 0
/* 800D48A0  B0 1C 30 10 */	sth r0, 0x3010(r28)
/* 800D48A4  38 00 00 08 */	li r0, 8
/* 800D48A8  B0 1C 30 0A */	sth r0, 0x300a(r28)
lbl_800D48AC:
/* 800D48AC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 800D48B0  D0 1C 34 80 */	stfs f0, 0x3480(r28)
/* 800D48B4  7F 83 E3 78 */	mr r3, r28
/* 800D48B8  38 80 00 01 */	li r4, 1
/* 800D48BC  4B FF CB 75 */	bl resetCombo__9daAlink_cFi
/* 800D48C0  7F 83 E3 78 */	mr r3, r28
/* 800D48C4  4B FE B4 ED */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800D48C8  2C 03 00 00 */	cmpwi r3, 0
/* 800D48CC  40 82 00 18 */	bne lbl_800D48E4
/* 800D48D0  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800D48D4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800D48D8  41 82 00 0C */	beq lbl_800D48E4
/* 800D48DC  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 800D48E0  48 00 00 08 */	b lbl_800D48E8
lbl_800D48E4:
/* 800D48E4  C0 7D 00 0C */	lfs f3, 0xc(r29)
lbl_800D48E8:
/* 800D48E8  7F 83 E3 78 */	mr r3, r28
/* 800D48EC  7F C4 F3 78 */	mr r4, r30
/* 800D48F0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 800D48F4  FC 40 F8 90 */	fmr f2, f31
/* 800D48F8  A8 BD 00 00 */	lha r5, 0(r29)
/* 800D48FC  4B FD 87 11 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800D4900  7F 83 E3 78 */	mr r3, r28
/* 800D4904  4B FF E1 B9 */	bl checkCutLargeTurnState__9daAlink_cCFv
/* 800D4908  2C 03 00 00 */	cmpwi r3, 0
/* 800D490C  41 82 00 5C */	beq lbl_800D4968
/* 800D4910  3B A0 00 04 */	li r29, 4
/* 800D4914  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B4@ha */
/* 800D4918  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000200B4@l */
/* 800D491C  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 800D4920  7F 83 E3 78 */	mr r3, r28
/* 800D4924  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001009D@ha */
/* 800D4928  38 84 00 9D */	addi r4, r4, 0x009D /* 0x0001009D@l */
/* 800D492C  4B FF D9 59 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D4930  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 800D4934  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800D4938  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 800D493C  D0 1C 34 8C */	stfs f0, 0x348c(r28)
/* 800D4940  2C 1E 00 74 */	cmpwi r30, 0x74
/* 800D4944  40 82 00 14 */	bne lbl_800D4958
/* 800D4948  7F 83 E3 78 */	mr r3, r28
/* 800D494C  38 80 00 18 */	li r4, 0x18
/* 800D4950  4B FF CB DD */	bl setCutType__9daAlink_cFUc
/* 800D4954  48 00 00 88 */	b lbl_800D49DC
lbl_800D4958:
/* 800D4958  7F 83 E3 78 */	mr r3, r28
/* 800D495C  38 80 00 17 */	li r4, 0x17
/* 800D4960  4B FF CB CD */	bl setCutType__9daAlink_cFUc
/* 800D4964  48 00 00 78 */	b lbl_800D49DC
lbl_800D4968:
/* 800D4968  3B A0 00 03 */	li r29, 3
/* 800D496C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020005@ha */
/* 800D4970  38 03 00 05 */	addi r0, r3, 0x0005 /* 0x00020005@l */
/* 800D4974  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 800D4978  7F 83 E3 78 */	mr r3, r28
/* 800D497C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010051@ha */
/* 800D4980  38 84 00 51 */	addi r4, r4, 0x0051 /* 0x00010051@l */
/* 800D4984  4B FF D9 01 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D4988  2C 1E 00 74 */	cmpwi r30, 0x74
/* 800D498C  40 82 00 14 */	bne lbl_800D49A0
/* 800D4990  7F 83 E3 78 */	mr r3, r28
/* 800D4994  38 80 00 08 */	li r4, 8
/* 800D4998  4B FF CB 95 */	bl setCutType__9daAlink_cFUc
/* 800D499C  48 00 00 10 */	b lbl_800D49AC
lbl_800D49A0:
/* 800D49A0  7F 83 E3 78 */	mr r3, r28
/* 800D49A4  38 80 00 16 */	li r4, 0x16
/* 800D49A8  4B FF CB 85 */	bl setCutType__9daAlink_cFUc
lbl_800D49AC:
/* 800D49AC  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 800D49B0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800D49B4  41 82 00 18 */	beq lbl_800D49CC
/* 800D49B8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 800D49BC  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800D49C0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 800D49C4  D0 1C 34 8C */	stfs f0, 0x348c(r28)
/* 800D49C8  48 00 00 14 */	b lbl_800D49DC
lbl_800D49CC:
/* 800D49CC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 800D49D0  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800D49D4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 800D49D8  D0 1C 34 8C */	stfs f0, 0x348c(r28)
lbl_800D49DC:
/* 800D49DC  C0 02 93 04 */	lfs f0, lit_6896(r2)
/* 800D49E0  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 800D49E4  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha /* 0x80425544@ha */
/* 800D49E8  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)  /* 0x80425544@l */
/* 800D49EC  D0 1C 35 88 */	stfs f0, 0x3588(r28)
/* 800D49F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D49F4  D0 1C 35 8C */	stfs f0, 0x358c(r28)
/* 800D49F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D49FC  D0 1C 35 90 */	stfs f0, 0x3590(r28)
/* 800D4A00  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 800D4A04  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800D4A08  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800D4A0C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 800D4A10  38 80 00 00 */	li r4, 0
/* 800D4A14  90 9C 31 80 */	stw r4, 0x3180(r28)
/* 800D4A18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D4A1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D4A20  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800D4A24  60 00 80 00 */	ori r0, r0, 0x8000
/* 800D4A28  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800D4A2C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D4A30  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 800D4A34  B0 9C 30 12 */	sth r4, 0x3012(r28)
/* 800D4A38  7F 83 E3 78 */	mr r3, r28
/* 800D4A3C  48 04 F7 09 */	bl setCutWaterDropEffect__9daAlink_cFv
/* 800D4A40  7F 83 E3 78 */	mr r3, r28
/* 800D4A44  C0 3C 34 7C */	lfs f1, 0x347c(r28)
/* 800D4A48  7F A4 EB 78 */	mr r4, r29
/* 800D4A4C  4B FF C5 45 */	bl initCutTurnAt__9daAlink_cFfi
/* 800D4A50  38 60 00 01 */	li r3, 1
/* 800D4A54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800D4A58  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800D4A5C  39 61 00 20 */	addi r11, r1, 0x20
/* 800D4A60  48 28 D7 C1 */	bl _restgpr_27
/* 800D4A64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D4A68  7C 08 03 A6 */	mtlr r0
/* 800D4A6C  38 21 00 30 */	addi r1, r1, 0x30
/* 800D4A70  4E 80 00 20 */	blr 

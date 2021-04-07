lbl_80106BCC:
/* 80106BCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80106BD0  7C 08 02 A6 */	mflr r0
/* 80106BD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80106BD8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80106BDC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80106BE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80106BE4  7C 7F 1B 78 */	mr r31, r3
/* 80106BE8  38 80 00 01 */	li r4, 1
/* 80106BEC  4B FF EF 6D */	bl boardCommon__9daAlink_cFi
/* 80106BF0  2C 03 00 00 */	cmpwi r3, 0
/* 80106BF4  41 82 00 0C */	beq lbl_80106C00
/* 80106BF8  38 60 00 01 */	li r3, 1
/* 80106BFC  48 00 02 70 */	b lbl_80106E6C
lbl_80106C00:
/* 80106C00  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 80106C04  48 05 78 C9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80106C08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80106C0C  41 82 00 24 */	beq lbl_80106C30
/* 80106C10  7F E3 FB 78 */	mr r3, r31
/* 80106C14  38 80 00 FA */	li r4, 0xfa
/* 80106C18  4B FA 59 41 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80106C1C  2C 03 00 00 */	cmpwi r3, 0
/* 80106C20  40 82 00 10 */	bne lbl_80106C30
/* 80106C24  7F E3 FB 78 */	mr r3, r31
/* 80106C28  38 80 00 00 */	li r4, 0
/* 80106C2C  4B FF F9 09 */	bl setCommonBoardAnime__9daAlink_cFi
lbl_80106C30:
/* 80106C30  7F E3 FB 78 */	mr r3, r31
/* 80106C34  4B FF F9 59 */	bl checkNextActionBoard__9daAlink_cFv
/* 80106C38  2C 03 00 00 */	cmpwi r3, 0
/* 80106C3C  40 82 02 2C */	bne lbl_80106E68
/* 80106C40  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 80106C44  28 00 01 03 */	cmplwi r0, 0x103
/* 80106C48  40 82 00 C4 */	bne lbl_80106D0C
/* 80106C4C  7F E3 FB 78 */	mr r3, r31
/* 80106C50  38 80 00 08 */	li r4, 8
/* 80106C54  4B FA B9 95 */	bl itemButtonCheck__9daAlink_cFUc
/* 80106C58  2C 03 00 00 */	cmpwi r3, 0
/* 80106C5C  41 82 00 B0 */	beq lbl_80106D0C
/* 80106C60  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 80106C64  2C 00 00 00 */	cmpwi r0, 0
/* 80106C68  40 82 00 10 */	bne lbl_80106C78
/* 80106C6C  7F E3 FB 78 */	mr r3, r31
/* 80106C70  38 80 00 FA */	li r4, 0xfa
/* 80106C74  4B FA 63 0D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_80106C78:
/* 80106C78  A8 7F 30 0A */	lha r3, 0x300a(r31)
/* 80106C7C  38 03 00 01 */	addi r0, r3, 1
/* 80106C80  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 80106C84  A8 9F 30 0A */	lha r4, 0x300a(r31)
/* 80106C88  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 80106C8C  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 80106C90  A8 03 00 56 */	lha r0, 0x56(r3)
/* 80106C94  7C 04 00 00 */	cmpw r4, r0
/* 80106C98  40 82 00 14 */	bne lbl_80106CAC
/* 80106C9C  7F E3 FB 78 */	mr r3, r31
/* 80106CA0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010092@ha */
/* 80106CA4  38 84 00 92 */	addi r4, r4, 0x0092 /* 0x00010092@l */
/* 80106CA8  4B FC B5 DD */	bl setSwordVoiceSe__9daAlink_cFUl
lbl_80106CAC:
/* 80106CAC  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 80106CB0  48 05 78 1D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80106CB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80106CB8  40 82 00 10 */	bne lbl_80106CC8
/* 80106CBC  38 00 00 01 */	li r0, 1
/* 80106CC0  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 80106CC4  48 00 01 A4 */	b lbl_80106E68
lbl_80106CC8:
/* 80106CC8  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 80106CCC  4B FA 25 7D */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 80106CD0  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 80106CD4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80106CD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80106CDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80106CE0  3C 00 43 30 */	lis r0, 0x4330
/* 80106CE4  90 01 00 08 */	stw r0, 8(r1)
/* 80106CE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80106CEC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80106CF0  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 80106CF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106CF8  4C 41 13 82 */	cror 2, 1, 2
/* 80106CFC  40 82 01 6C */	bne lbl_80106E68
/* 80106D00  38 00 00 18 */	li r0, 0x18
/* 80106D04  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 80106D08  48 00 01 60 */	b lbl_80106E68
lbl_80106D0C:
/* 80106D0C  A8 7F 30 0A */	lha r3, 0x300a(r31)
/* 80106D10  7C 60 07 35 */	extsh. r0, r3
/* 80106D14  41 82 00 48 */	beq lbl_80106D5C
/* 80106D18  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80106D1C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80106D20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80106D24  3C 00 43 30 */	lis r0, 0x4330
/* 80106D28  90 01 00 08 */	stw r0, 8(r1)
/* 80106D2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80106D30  EC 20 08 28 */	fsubs f1, f0, f1
/* 80106D34  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 80106D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106D3C  4C 41 13 82 */	cror 2, 1, 2
/* 80106D40  40 82 00 10 */	bne lbl_80106D50
/* 80106D44  7F E3 FB 78 */	mr r3, r31
/* 80106D48  48 00 08 8D */	bl procBoardCutTurnInit__9daAlink_cFv
/* 80106D4C  48 00 01 20 */	b lbl_80106E6C
lbl_80106D50:
/* 80106D50  7F E3 FB 78 */	mr r3, r31
/* 80106D54  48 00 07 59 */	bl procBoardCutInit__9daAlink_cFv
/* 80106D58  48 00 01 14 */	b lbl_80106E6C
lbl_80106D5C:
/* 80106D5C  A8 7F 30 12 */	lha r3, 0x3012(r31)
/* 80106D60  7C 60 07 35 */	extsh. r0, r3
/* 80106D64  40 82 00 90 */	bne lbl_80106DF4
/* 80106D68  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80106D6C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80106D70  40 82 00 F8 */	bne lbl_80106E68
/* 80106D74  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80106D78  28 00 00 A8 */	cmplwi r0, 0xa8
/* 80106D7C  41 82 00 EC */	beq lbl_80106E68
/* 80106D80  7F E3 FB 78 */	mr r3, r31
/* 80106D84  38 80 00 0A */	li r4, 0xa
/* 80106D88  4B FA C4 C9 */	bl setDoStatus__9daAlink_cFUc
/* 80106D8C  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 80106D90  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80106D94  41 82 00 D4 */	beq lbl_80106E68
/* 80106D98  88 1F 2F 8C */	lbz r0, 0x2f8c(r31)
/* 80106D9C  28 00 00 0B */	cmplwi r0, 0xb
/* 80106DA0  40 82 00 0C */	bne lbl_80106DAC
/* 80106DA4  C3 FF 1F 30 */	lfs f31, 0x1f30(r31)
/* 80106DA8  48 00 00 08 */	b lbl_80106DB0
lbl_80106DAC:
/* 80106DAC  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
lbl_80106DB0:
/* 80106DB0  7F E3 FB 78 */	mr r3, r31
/* 80106DB4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80106DB8  3C 80 80 39 */	lis r4, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 80106DBC  38 E4 E8 70 */	addi r7, r4, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 80106DC0  C0 47 00 68 */	lfs f2, 0x68(r7)
/* 80106DC4  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 80106DC8  38 80 00 F4 */	li r4, 0xf4
/* 80106DCC  38 A0 00 F5 */	li r5, 0xf5
/* 80106DD0  38 C0 00 0B */	li r6, 0xb
/* 80106DD4  C0 87 00 6C */	lfs f4, 0x6c(r7)
/* 80106DD8  4B FA 5C 3D */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 80106DDC  7F E3 FB 78 */	mr r3, r31
/* 80106DE0  FC 20 F8 90 */	fmr f1, f31
/* 80106DE4  4B FA 59 55 */	bl setDoubleAnimeBlendRatio__9daAlink_cFf
/* 80106DE8  38 00 00 01 */	li r0, 1
/* 80106DEC  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 80106DF0  48 00 00 78 */	b lbl_80106E68
lbl_80106DF4:
/* 80106DF4  7C 60 07 35 */	extsh. r0, r3
/* 80106DF8  41 82 00 70 */	beq lbl_80106E68
/* 80106DFC  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 80106E00  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 80106E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106E08  40 81 00 10 */	ble lbl_80106E18
/* 80106E0C  7F E3 FB 78 */	mr r3, r31
/* 80106E10  38 80 00 19 */	li r4, 0x19
/* 80106E14  4B FA C4 3D */	bl setDoStatus__9daAlink_cFUc
lbl_80106E18:
/* 80106E18  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 80106E1C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80106E20  40 82 00 48 */	bne lbl_80106E68
/* 80106E24  38 00 00 00 */	li r0, 0
/* 80106E28  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 80106E2C  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 80106E30  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 80106E34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106E38  40 81 00 14 */	ble lbl_80106E4C
/* 80106E3C  7F E3 FB 78 */	mr r3, r31
/* 80106E40  38 80 00 00 */	li r4, 0
/* 80106E44  48 00 03 D5 */	bl procBoardJumpInit__9daAlink_cFfi
/* 80106E48  48 00 00 20 */	b lbl_80106E68
lbl_80106E4C:
/* 80106E4C  C3 FF 1F 30 */	lfs f31, 0x1f30(r31)
/* 80106E50  7F E3 FB 78 */	mr r3, r31
/* 80106E54  38 80 00 00 */	li r4, 0
/* 80106E58  4B FF F6 DD */	bl setCommonBoardAnime__9daAlink_cFi
/* 80106E5C  7F E3 FB 78 */	mr r3, r31
/* 80106E60  FC 20 F8 90 */	fmr f1, f31
/* 80106E64  4B FA 58 D5 */	bl setDoubleAnimeBlendRatio__9daAlink_cFf
lbl_80106E68:
/* 80106E68  38 60 00 01 */	li r3, 1
lbl_80106E6C:
/* 80106E6C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80106E70  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80106E74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80106E78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80106E7C  7C 08 03 A6 */	mtlr r0
/* 80106E80  38 21 00 30 */	addi r1, r1, 0x30
/* 80106E84  4E 80 00 20 */	blr 

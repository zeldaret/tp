lbl_800FC870:
/* 800FC870  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800FC874  7C 08 02 A6 */	mflr r0
/* 800FC878  90 01 00 64 */	stw r0, 0x64(r1)
/* 800FC87C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800FC880  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800FC884  39 61 00 50 */	addi r11, r1, 0x50
/* 800FC888  48 26 59 51 */	bl _savegpr_28
/* 800FC88C  7C 7D 1B 78 */	mr r29, r3
/* 800FC890  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 800FC894  80 03 32 CC */	lwz r0, 0x32cc(r3)
/* 800FC898  28 00 00 00 */	cmplwi r0, 0
/* 800FC89C  41 82 00 08 */	beq lbl_800FC8A4
/* 800FC8A0  4B FB 80 31 */	bl setJumpMode__9daAlink_cFv
lbl_800FC8A4:
/* 800FC8A4  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800FC8A8  2C 00 00 00 */	cmpwi r0, 0
/* 800FC8AC  40 82 00 14 */	bne lbl_800FC8C0
/* 800FC8B0  7F A3 EB 78 */	mr r3, r29
/* 800FC8B4  4B FF FE 95 */	bl setBossBodyHangPos__9daAlink_cFv
/* 800FC8B8  2C 03 00 00 */	cmpwi r3, 0
/* 800FC8BC  40 82 00 80 */	bne lbl_800FC93C
lbl_800FC8C0:
/* 800FC8C0  80 1D 32 CC */	lwz r0, 0x32cc(r29)
/* 800FC8C4  28 00 00 00 */	cmplwi r0, 0
/* 800FC8C8  41 82 00 4C */	beq lbl_800FC914
/* 800FC8CC  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800FC8D0  2C 00 00 00 */	cmpwi r0, 0
/* 800FC8D4  40 80 00 14 */	bge lbl_800FC8E8
/* 800FC8D8  7F A3 EB 78 */	mr r3, r29
/* 800FC8DC  38 80 00 00 */	li r4, 0
/* 800FC8E0  4B FC 8E C5 */	bl procBackJumpInit__9daAlink_cFi
/* 800FC8E4  48 00 06 54 */	b lbl_800FCF38
lbl_800FC8E8:
/* 800FC8E8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800FC8EC  B0 1D 31 02 */	sth r0, 0x3102(r29)
/* 800FC8F0  7F A3 EB 78 */	mr r3, r29
/* 800FC8F4  38 80 FF FA */	li r4, -6
/* 800FC8F8  38 A0 00 01 */	li r5, 1
/* 800FC8FC  38 C0 00 00 */	li r6, 0
/* 800FC900  38 E0 00 00 */	li r7, 0
/* 800FC904  39 00 00 00 */	li r8, 0
/* 800FC908  39 20 00 00 */	li r9, 0
/* 800FC90C  4B FD CD D1 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800FC910  48 00 06 28 */	b lbl_800FCF38
lbl_800FC914:
/* 800FC914  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FC918  D0 1D 34 08 */	stfs f0, 0x3408(r29)
/* 800FC91C  D0 1D 34 0C */	stfs f0, 0x340c(r29)
/* 800FC920  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800FC924  B0 1D 2F FE */	sth r0, 0x2ffe(r29)
/* 800FC928  38 00 00 00 */	li r0, 0
/* 800FC92C  90 1D 31 8C */	stw r0, 0x318c(r29)
/* 800FC930  7F A3 EB 78 */	mr r3, r29
/* 800FC934  48 00 8F 6D */	bl procOctaIealSpitInit__9daAlink_cFv
/* 800FC938  48 00 06 00 */	b lbl_800FCF38
lbl_800FC93C:
/* 800FC93C  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 800FC940  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800FC944  41 82 00 1C */	beq lbl_800FC960
/* 800FC948  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 800FC94C  2C 00 00 00 */	cmpwi r0, 0
/* 800FC950  41 82 00 10 */	beq lbl_800FC960
/* 800FC954  7F A3 EB 78 */	mr r3, r29
/* 800FC958  38 80 00 30 */	li r4, 0x30
/* 800FC95C  4B FB 69 0D */	bl setDoStatusEmphasys__9daAlink_cFUc
lbl_800FC960:
/* 800FC960  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 800FC964  7F C3 F3 78 */	mr r3, r30
/* 800FC968  48 06 1B 65 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FC96C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FC970  41 82 00 5C */	beq lbl_800FC9CC
/* 800FC974  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800FC978  2C 00 01 6D */	cmpwi r0, 0x16d
/* 800FC97C  41 82 00 14 */	beq lbl_800FC990
/* 800FC980  2C 00 01 6E */	cmpwi r0, 0x16e
/* 800FC984  41 82 00 0C */	beq lbl_800FC990
/* 800FC988  38 00 00 01 */	li r0, 1
/* 800FC98C  B0 1D 30 0C */	sth r0, 0x300c(r29)
lbl_800FC990:
/* 800FC990  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800FC994  2C 00 01 69 */	cmpwi r0, 0x169
/* 800FC998  40 82 00 34 */	bne lbl_800FC9CC
/* 800FC99C  80 1D 32 CC */	lwz r0, 0x32cc(r29)
/* 800FC9A0  28 00 00 00 */	cmplwi r0, 0
/* 800FC9A4  41 82 00 14 */	beq lbl_800FC9B8
/* 800FC9A8  7F A3 EB 78 */	mr r3, r29
/* 800FC9AC  38 80 01 73 */	li r4, 0x173
/* 800FC9B0  4B FB 05 D1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800FC9B4  48 00 00 10 */	b lbl_800FC9C4
lbl_800FC9B8:
/* 800FC9B8  7F A3 EB 78 */	mr r3, r29
/* 800FC9BC  38 80 01 6A */	li r4, 0x16a
/* 800FC9C0  4B FB 05 C1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800FC9C4:
/* 800FC9C4  38 00 01 6A */	li r0, 0x16a
/* 800FC9C8  90 1D 31 98 */	stw r0, 0x3198(r29)
lbl_800FC9CC:
/* 800FC9CC  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 800FC9D0  2C 00 00 00 */	cmpwi r0, 0
/* 800FC9D4  41 82 00 70 */	beq lbl_800FCA44
/* 800FC9D8  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800FC9DC  2C 00 01 6B */	cmpwi r0, 0x16b
/* 800FC9E0  41 82 00 64 */	beq lbl_800FCA44
/* 800FC9E4  80 1D 32 CC */	lwz r0, 0x32cc(r29)
/* 800FC9E8  28 00 00 00 */	cmplwi r0, 0
/* 800FC9EC  41 82 00 14 */	beq lbl_800FCA00
/* 800FC9F0  7F A3 EB 78 */	mr r3, r29
/* 800FC9F4  38 80 01 74 */	li r4, 0x174
/* 800FC9F8  4B FB 05 89 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800FC9FC  48 00 00 10 */	b lbl_800FCA0C
lbl_800FCA00:
/* 800FCA00  7F A3 EB 78 */	mr r3, r29
/* 800FCA04  38 80 01 6B */	li r4, 0x16b
/* 800FCA08  4B FB 05 79 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800FCA0C:
/* 800FCA0C  38 00 01 6B */	li r0, 0x16b
/* 800FCA10  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 800FCA14  38 00 00 01 */	li r0, 1
/* 800FCA18  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 800FCA1C  38 00 00 00 */	li r0, 0
/* 800FCA20  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 800FCA24  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800FCA28  28 00 01 03 */	cmplwi r0, 0x103
/* 800FCA2C  40 82 00 10 */	bne lbl_800FCA3C
/* 800FCA30  38 00 00 02 */	li r0, 2
/* 800FCA34  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800FCA38  48 00 00 0C */	b lbl_800FCA44
lbl_800FCA3C:
/* 800FCA3C  38 00 00 FE */	li r0, 0xfe
/* 800FCA40  B0 1D 30 10 */	sth r0, 0x3010(r29)
lbl_800FCA44:
/* 800FCA44  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 800FCA48  2C 00 00 00 */	cmpwi r0, 0
/* 800FCA4C  41 82 01 C4 */	beq lbl_800FCC10
/* 800FCA50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FCA54  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 800FCA58  88 1C 5E 24 */	lbz r0, 0x5e24(r28)
/* 800FCA5C  28 00 00 30 */	cmplwi r0, 0x30
/* 800FCA60  40 82 00 10 */	bne lbl_800FCA70
/* 800FCA64  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800FCA68  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FCA6C  40 82 00 14 */	bne lbl_800FCA80
lbl_800FCA70:
/* 800FCA70  7F A3 EB 78 */	mr r3, r29
/* 800FCA74  4B FB 5C 45 */	bl swordSwingTrigger__9daAlink_cFv
/* 800FCA78  2C 03 00 00 */	cmpwi r3, 0
/* 800FCA7C  41 82 01 94 */	beq lbl_800FCC10
lbl_800FCA80:
/* 800FCA80  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800FCA84  28 00 01 03 */	cmplwi r0, 0x103
/* 800FCA88  41 82 00 0C */	beq lbl_800FCA94
/* 800FCA8C  7F A3 EB 78 */	mr r3, r29
/* 800FCA90  4B FD 47 D9 */	bl setSwordModel__9daAlink_cFv
lbl_800FCA94:
/* 800FCA94  88 1C 5E 24 */	lbz r0, 0x5e24(r28)
/* 800FCA98  28 00 00 30 */	cmplwi r0, 0x30
/* 800FCA9C  40 82 00 78 */	bne lbl_800FCB14
/* 800FCAA0  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800FCAA4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FCAA8  41 82 00 6C */	beq lbl_800FCB14
/* 800FCAAC  80 1D 32 CC */	lwz r0, 0x32cc(r29)
/* 800FCAB0  28 00 00 00 */	cmplwi r0, 0
/* 800FCAB4  41 82 00 18 */	beq lbl_800FCACC
/* 800FCAB8  7F A3 EB 78 */	mr r3, r29
/* 800FCABC  38 80 01 77 */	li r4, 0x177
/* 800FCAC0  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800FCAC4  4B FB 04 ED */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800FCAC8  48 00 00 14 */	b lbl_800FCADC
lbl_800FCACC:
/* 800FCACC  7F A3 EB 78 */	mr r3, r29
/* 800FCAD0  38 80 01 6E */	li r4, 0x16e
/* 800FCAD4  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800FCAD8  4B FB 04 D9 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
lbl_800FCADC:
/* 800FCADC  38 00 01 6E */	li r0, 0x16e
/* 800FCAE0  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 800FCAE4  38 00 00 00 */	li r0, 0
/* 800FCAE8  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800FCAEC  C0 02 93 5C */	lfs f0, lit_8322(r2)
/* 800FCAF0  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 800FCAF4  C0 02 95 64 */	lfs f0, lit_24589(r2)
/* 800FCAF8  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 800FCAFC  7F A3 EB 78 */	mr r3, r29
/* 800FCB00  38 80 00 20 */	li r4, 0x20
/* 800FCB04  4B FD 4A 29 */	bl setCutType__9daAlink_cFUc
/* 800FCB08  38 00 00 03 */	li r0, 3
/* 800FCB0C  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 800FCB10  48 00 00 EC */	b lbl_800FCBFC
lbl_800FCB14:
/* 800FCB14  7F A3 EB 78 */	mr r3, r29
/* 800FCB18  38 80 00 02 */	li r4, 2
/* 800FCB1C  4B FD 4A 11 */	bl setCutType__9daAlink_cFUc
/* 800FCB20  A8 7D 30 12 */	lha r3, 0x3012(r29)
/* 800FCB24  38 03 00 01 */	addi r0, r3, 1
/* 800FCB28  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 800FCB2C  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800FCB30  2C 00 00 04 */	cmpwi r0, 4
/* 800FCB34  40 82 00 58 */	bne lbl_800FCB8C
/* 800FCB38  80 1D 32 CC */	lwz r0, 0x32cc(r29)
/* 800FCB3C  28 00 00 00 */	cmplwi r0, 0
/* 800FCB40  41 82 00 14 */	beq lbl_800FCB54
/* 800FCB44  7F A3 EB 78 */	mr r3, r29
/* 800FCB48  38 80 01 76 */	li r4, 0x176
/* 800FCB4C  4B FB 04 35 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800FCB50  48 00 00 10 */	b lbl_800FCB60
lbl_800FCB54:
/* 800FCB54  7F A3 EB 78 */	mr r3, r29
/* 800FCB58  38 80 01 6D */	li r4, 0x16d
/* 800FCB5C  4B FB 04 25 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800FCB60:
/* 800FCB60  38 00 01 6D */	li r0, 0x16d
/* 800FCB64  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 800FCB68  C0 02 93 5C */	lfs f0, lit_8322(r2)
/* 800FCB6C  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 800FCB70  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 800FCB74  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 800FCB78  38 00 00 02 */	li r0, 2
/* 800FCB7C  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800FCB80  38 00 00 03 */	li r0, 3
/* 800FCB84  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 800FCB88  48 00 00 74 */	b lbl_800FCBFC
lbl_800FCB8C:
/* 800FCB8C  80 1D 32 CC */	lwz r0, 0x32cc(r29)
/* 800FCB90  28 00 00 00 */	cmplwi r0, 0
/* 800FCB94  41 82 00 20 */	beq lbl_800FCBB4
/* 800FCB98  7F A3 EB 78 */	mr r3, r29
/* 800FCB9C  38 80 01 75 */	li r4, 0x175
/* 800FCBA0  3C A0 80 39 */	lis r5, m__17daAlinkHIO_cut_c0@ha
/* 800FCBA4  38 A5 DE 8C */	addi r5, r5, m__17daAlinkHIO_cut_c0@l
/* 800FCBA8  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800FCBAC  4B FB 05 49 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FCBB0  48 00 00 1C */	b lbl_800FCBCC
lbl_800FCBB4:
/* 800FCBB4  7F A3 EB 78 */	mr r3, r29
/* 800FCBB8  38 80 01 6C */	li r4, 0x16c
/* 800FCBBC  3C A0 80 39 */	lis r5, m__17daAlinkHIO_cut_c0@ha
/* 800FCBC0  38 A5 DE 8C */	addi r5, r5, m__17daAlinkHIO_cut_c0@l
/* 800FCBC4  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800FCBC8  4B FB 05 2D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
lbl_800FCBCC:
/* 800FCBCC  38 00 01 6C */	li r0, 0x16c
/* 800FCBD0  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 800FCBD4  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha
/* 800FCBD8  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l
/* 800FCBDC  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800FCBE0  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 800FCBE4  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800FCBE8  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 800FCBEC  38 00 00 00 */	li r0, 0
/* 800FCBF0  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800FCBF4  38 00 00 01 */	li r0, 1
/* 800FCBF8  B0 1D 30 0A */	sth r0, 0x300a(r29)
lbl_800FCBFC:
/* 800FCBFC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800FCC00  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 800FCC04  38 00 00 00 */	li r0, 0
/* 800FCC08  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 800FCC0C  48 00 03 1C */	b lbl_800FCF28
lbl_800FCC10:
/* 800FCC10  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800FCC14  2C 00 01 6C */	cmpwi r0, 0x16c
/* 800FCC18  41 82 00 14 */	beq lbl_800FCC2C
/* 800FCC1C  2C 00 01 6D */	cmpwi r0, 0x16d
/* 800FCC20  41 82 00 0C */	beq lbl_800FCC2C
/* 800FCC24  2C 00 01 6E */	cmpwi r0, 0x16e
/* 800FCC28  40 82 03 00 */	bne lbl_800FCF28
lbl_800FCC2C:
/* 800FCC2C  7F C3 F3 78 */	mr r3, r30
/* 800FCC30  48 06 18 9D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FCC34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FCC38  41 82 00 1C */	beq lbl_800FCC54
/* 800FCC3C  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800FCC40  2C 00 01 6C */	cmpwi r0, 0x16c
/* 800FCC44  41 82 02 E4 */	beq lbl_800FCF28
/* 800FCC48  38 00 00 01 */	li r0, 1
/* 800FCC4C  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 800FCC50  48 00 02 D8 */	b lbl_800FCF28
lbl_800FCC54:
/* 800FCC54  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800FCC58  C0 1D 34 78 */	lfs f0, 0x3478(r29)
/* 800FCC5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCC60  40 81 00 10 */	ble lbl_800FCC70
/* 800FCC64  38 00 00 01 */	li r0, 1
/* 800FCC68  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 800FCC6C  48 00 02 BC */	b lbl_800FCF28
lbl_800FCC70:
/* 800FCC70  7F C3 F3 78 */	mr r3, r30
/* 800FCC74  C0 3D 34 7C */	lfs f1, 0x347c(r29)
/* 800FCC78  48 22 B7 B5 */	bl checkPass__12J3DFrameCtrlFf
/* 800FCC7C  2C 03 00 00 */	cmpwi r3, 0
/* 800FCC80  41 82 01 A4 */	beq lbl_800FCE24
/* 800FCC84  38 61 00 20 */	addi r3, r1, 0x20
/* 800FCC88  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 800FCC8C  38 BD 34 98 */	addi r5, r29, 0x3498
/* 800FCC90  48 16 9E A5 */	bl __mi__4cXyzCFRC3Vec
/* 800FCC94  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 800FCC98  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 800FCC9C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FCCA0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800FCCA4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800FCCA8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 800FCCAC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800FCCB0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FCCB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FCCB8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800FCCBC  38 61 00 14 */	addi r3, r1, 0x14
/* 800FCCC0  48 24 A4 79 */	bl PSVECSquareMag
/* 800FCCC4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FCCC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCCCC  40 81 00 58 */	ble lbl_800FCD24
/* 800FCCD0  FC 00 08 34 */	frsqrte f0, f1
/* 800FCCD4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800FCCD8  FC 44 00 32 */	fmul f2, f4, f0
/* 800FCCDC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800FCCE0  FC 00 00 32 */	fmul f0, f0, f0
/* 800FCCE4  FC 01 00 32 */	fmul f0, f1, f0
/* 800FCCE8  FC 03 00 28 */	fsub f0, f3, f0
/* 800FCCEC  FC 02 00 32 */	fmul f0, f2, f0
/* 800FCCF0  FC 44 00 32 */	fmul f2, f4, f0
/* 800FCCF4  FC 00 00 32 */	fmul f0, f0, f0
/* 800FCCF8  FC 01 00 32 */	fmul f0, f1, f0
/* 800FCCFC  FC 03 00 28 */	fsub f0, f3, f0
/* 800FCD00  FC 02 00 32 */	fmul f0, f2, f0
/* 800FCD04  FC 44 00 32 */	fmul f2, f4, f0
/* 800FCD08  FC 00 00 32 */	fmul f0, f0, f0
/* 800FCD0C  FC 01 00 32 */	fmul f0, f1, f0
/* 800FCD10  FC 03 00 28 */	fsub f0, f3, f0
/* 800FCD14  FC 02 00 32 */	fmul f0, f2, f0
/* 800FCD18  FF E1 00 32 */	fmul f31, f1, f0
/* 800FCD1C  FF E0 F8 18 */	frsp f31, f31
/* 800FCD20  48 00 00 90 */	b lbl_800FCDB0
lbl_800FCD24:
/* 800FCD24  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800FCD28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCD2C  40 80 00 10 */	bge lbl_800FCD3C
/* 800FCD30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800FCD34  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 800FCD38  48 00 00 78 */	b lbl_800FCDB0
lbl_800FCD3C:
/* 800FCD3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800FCD40  80 81 00 08 */	lwz r4, 8(r1)
/* 800FCD44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800FCD48  3C 00 7F 80 */	lis r0, 0x7f80
/* 800FCD4C  7C 03 00 00 */	cmpw r3, r0
/* 800FCD50  41 82 00 14 */	beq lbl_800FCD64
/* 800FCD54  40 80 00 40 */	bge lbl_800FCD94
/* 800FCD58  2C 03 00 00 */	cmpwi r3, 0
/* 800FCD5C  41 82 00 20 */	beq lbl_800FCD7C
/* 800FCD60  48 00 00 34 */	b lbl_800FCD94
lbl_800FCD64:
/* 800FCD64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800FCD68  41 82 00 0C */	beq lbl_800FCD74
/* 800FCD6C  38 00 00 01 */	li r0, 1
/* 800FCD70  48 00 00 28 */	b lbl_800FCD98
lbl_800FCD74:
/* 800FCD74  38 00 00 02 */	li r0, 2
/* 800FCD78  48 00 00 20 */	b lbl_800FCD98
lbl_800FCD7C:
/* 800FCD7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800FCD80  41 82 00 0C */	beq lbl_800FCD8C
/* 800FCD84  38 00 00 05 */	li r0, 5
/* 800FCD88  48 00 00 10 */	b lbl_800FCD98
lbl_800FCD8C:
/* 800FCD8C  38 00 00 03 */	li r0, 3
/* 800FCD90  48 00 00 08 */	b lbl_800FCD98
lbl_800FCD94:
/* 800FCD94  38 00 00 04 */	li r0, 4
lbl_800FCD98:
/* 800FCD98  2C 00 00 01 */	cmpwi r0, 1
/* 800FCD9C  40 82 00 10 */	bne lbl_800FCDAC
/* 800FCDA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800FCDA4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 800FCDA8  48 00 00 08 */	b lbl_800FCDB0
lbl_800FCDAC:
/* 800FCDAC  FF E0 08 90 */	fmr f31, f1
lbl_800FCDB0:
/* 800FCDB0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800FCDB4  FC 20 00 50 */	fneg f1, f0
/* 800FCDB8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800FCDBC  FC 40 00 50 */	fneg f2, f0
/* 800FCDC0  48 16 A8 B5 */	bl cM_atan2s__Fff
/* 800FCDC4  7C 7E 1B 78 */	mr r30, r3
/* 800FCDC8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 800FCDCC  FC 40 F8 90 */	fmr f2, f31
/* 800FCDD0  48 16 A8 A5 */	bl cM_atan2s__Fff
/* 800FCDD4  7C 64 1B 78 */	mr r4, r3
/* 800FCDD8  38 61 00 0C */	addi r3, r1, 0xc
/* 800FCDDC  7F C5 F3 78 */	mr r5, r30
/* 800FCDE0  38 C0 00 00 */	li r6, 0
/* 800FCDE4  48 16 A6 11 */	bl __ct__5csXyzFsss
/* 800FCDE8  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 800FCDEC  60 00 00 02 */	ori r0, r0, 2
/* 800FCDF0  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 800FCDF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FCDF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FCDFC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800FCE00  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 800FCE04  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 800FCE08  38 A0 00 00 */	li r5, 0
/* 800FCE0C  38 DD 05 C8 */	addi r6, r29, 0x5c8
/* 800FCE10  38 E1 00 0C */	addi r7, r1, 0xc
/* 800FCE14  39 00 00 00 */	li r8, 0
/* 800FCE18  39 20 00 00 */	li r9, 0
/* 800FCE1C  4B F4 F3 FD */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 800FCE20  48 00 01 08 */	b lbl_800FCF28
lbl_800FCE24:
/* 800FCE24  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800FCE28  2C 00 01 6D */	cmpwi r0, 0x16d
/* 800FCE2C  40 82 00 5C */	bne lbl_800FCE88
/* 800FCE30  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800FCE34  C0 02 95 68 */	lfs f0, lit_24590(r2)
/* 800FCE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCE3C  4C 41 13 82 */	cror 2, 1, 2
/* 800FCE40  40 82 00 10 */	bne lbl_800FCE50
/* 800FCE44  38 00 00 09 */	li r0, 9
/* 800FCE48  98 1D 2F 93 */	stb r0, 0x2f93(r29)
/* 800FCE4C  48 00 00 DC */	b lbl_800FCF28
lbl_800FCE50:
/* 800FCE50  C0 02 95 6C */	lfs f0, lit_24591(r2)
/* 800FCE54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCE58  4C 41 13 82 */	cror 2, 1, 2
/* 800FCE5C  40 82 00 10 */	bne lbl_800FCE6C
/* 800FCE60  38 00 00 0A */	li r0, 0xa
/* 800FCE64  98 1D 2F 93 */	stb r0, 0x2f93(r29)
/* 800FCE68  48 00 00 C0 */	b lbl_800FCF28
lbl_800FCE6C:
/* 800FCE6C  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800FCE70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCE74  4C 41 13 82 */	cror 2, 1, 2
/* 800FCE78  40 82 00 B0 */	bne lbl_800FCF28
/* 800FCE7C  38 00 00 05 */	li r0, 5
/* 800FCE80  98 1D 2F 93 */	stb r0, 0x2f93(r29)
/* 800FCE84  48 00 00 A4 */	b lbl_800FCF28
lbl_800FCE88:
/* 800FCE88  2C 00 01 6E */	cmpwi r0, 0x16e
/* 800FCE8C  40 82 00 9C */	bne lbl_800FCF28
/* 800FCE90  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800FCE94  C0 02 95 70 */	lfs f0, lit_24592(r2)
/* 800FCE98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCE9C  4C 41 13 82 */	cror 2, 1, 2
/* 800FCEA0  40 82 00 10 */	bne lbl_800FCEB0
/* 800FCEA4  38 00 00 09 */	li r0, 9
/* 800FCEA8  98 1D 2F 93 */	stb r0, 0x2f93(r29)
/* 800FCEAC  48 00 00 38 */	b lbl_800FCEE4
lbl_800FCEB0:
/* 800FCEB0  C0 02 95 74 */	lfs f0, lit_24593(r2)
/* 800FCEB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCEB8  4C 41 13 82 */	cror 2, 1, 2
/* 800FCEBC  40 82 00 10 */	bne lbl_800FCECC
/* 800FCEC0  38 00 00 0A */	li r0, 0xa
/* 800FCEC4  98 1D 2F 93 */	stb r0, 0x2f93(r29)
/* 800FCEC8  48 00 00 1C */	b lbl_800FCEE4
lbl_800FCECC:
/* 800FCECC  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 800FCED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCED4  4C 41 13 82 */	cror 2, 1, 2
/* 800FCED8  40 82 00 0C */	bne lbl_800FCEE4
/* 800FCEDC  38 00 00 05 */	li r0, 5
/* 800FCEE0  98 1D 2F 93 */	stb r0, 0x2f93(r29)
lbl_800FCEE4:
/* 800FCEE4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800FCEE8  C0 02 95 78 */	lfs f0, lit_24594(r2)
/* 800FCEEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCEF0  4C 41 13 82 */	cror 2, 1, 2
/* 800FCEF4  40 82 00 10 */	bne lbl_800FCF04
/* 800FCEF8  38 00 00 00 */	li r0, 0
/* 800FCEFC  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800FCF00  48 00 00 28 */	b lbl_800FCF28
lbl_800FCF04:
/* 800FCF04  C0 02 95 7C */	lfs f0, lit_24595(r2)
/* 800FCF08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FCF0C  4C 41 13 82 */	cror 2, 1, 2
/* 800FCF10  40 82 00 10 */	bne lbl_800FCF20
/* 800FCF14  38 00 00 FE */	li r0, 0xfe
/* 800FCF18  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 800FCF1C  48 00 00 0C */	b lbl_800FCF28
lbl_800FCF20:
/* 800FCF20  38 00 00 00 */	li r0, 0
/* 800FCF24  B0 1D 30 10 */	sth r0, 0x3010(r29)
lbl_800FCF28:
/* 800FCF28  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 800FCF2C  64 00 80 00 */	oris r0, r0, 0x8000
/* 800FCF30  90 1D 05 8C */	stw r0, 0x58c(r29)
/* 800FCF34  38 60 00 01 */	li r3, 1
lbl_800FCF38:
/* 800FCF38  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800FCF3C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800FCF40  39 61 00 50 */	addi r11, r1, 0x50
/* 800FCF44  48 26 52 E1 */	bl _restgpr_28
/* 800FCF48  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800FCF4C  7C 08 03 A6 */	mtlr r0
/* 800FCF50  38 21 00 60 */	addi r1, r1, 0x60
/* 800FCF54  4E 80 00 20 */	blr 

lbl_80103698:
/* 80103698  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010369C  7C 08 02 A6 */	mflr r0
/* 801036A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801036A4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801036A8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801036AC  39 61 00 30 */	addi r11, r1, 0x30
/* 801036B0  48 25 EB 21 */	bl _savegpr_26
/* 801036B4  7C 7A 1B 78 */	mr r26, r3
/* 801036B8  3B FA 1F D0 */	addi r31, r26, 0x1fd0
/* 801036BC  3B DA 20 48 */	addi r30, r26, 0x2048
/* 801036C0  A8 03 30 00 */	lha r0, 0x3000(r3)
/* 801036C4  2C 00 00 00 */	cmpwi r0, 0
/* 801036C8  41 82 00 38 */	beq lbl_80103700
/* 801036CC  38 60 00 00 */	li r3, 0
/* 801036D0  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 801036D4  28 00 01 8D */	cmplwi r0, 0x18d
/* 801036D8  41 82 00 10 */	beq lbl_801036E8
/* 801036DC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801036E0  28 00 01 8C */	cmplwi r0, 0x18c
/* 801036E4  40 82 00 08 */	bne lbl_801036EC
lbl_801036E8:
/* 801036E8  38 60 00 01 */	li r3, 1
lbl_801036EC:
/* 801036EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801036F0  40 82 00 10 */	bne lbl_80103700
/* 801036F4  38 00 00 04 */	li r0, 4
/* 801036F8  98 1A 2F 98 */	stb r0, 0x2f98(r26)
/* 801036FC  48 00 00 FC */	b lbl_801037F8
lbl_80103700:
/* 80103700  38 60 00 00 */	li r3, 0
/* 80103704  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 80103708  28 00 01 8D */	cmplwi r0, 0x18d
/* 8010370C  41 82 00 10 */	beq lbl_8010371C
/* 80103710  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80103714  28 00 01 8C */	cmplwi r0, 0x18c
/* 80103718  40 82 00 08 */	bne lbl_80103720
lbl_8010371C:
/* 8010371C  38 60 00 01 */	li r3, 1
lbl_80103720:
/* 80103720  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80103724  40 82 00 44 */	bne lbl_80103768
/* 80103728  83 7A 27 E0 */	lwz r27, 0x27e0(r26)
/* 8010372C  3B 80 00 01 */	li r28, 1
/* 80103730  7F 63 DB 78 */	mr r3, r27
/* 80103734  4B F7 00 B1 */	bl LockonTruth__12dAttention_cFv
/* 80103738  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010373C  40 82 00 14 */	bne lbl_80103750
/* 80103740  80 1B 03 34 */	lwz r0, 0x334(r27)
/* 80103744  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80103748  40 82 00 08 */	bne lbl_80103750
/* 8010374C  3B 80 00 00 */	li r28, 0
lbl_80103750:
/* 80103750  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80103754  41 82 00 70 */	beq lbl_801037C4
/* 80103758  7F 43 D3 78 */	mr r3, r26
/* 8010375C  4B FF E2 5D */	bl getZoraSwim__9daAlink_cCFv
/* 80103760  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80103764  40 82 00 60 */	bne lbl_801037C4
lbl_80103768:
/* 80103768  38 00 00 00 */	li r0, 0
/* 8010376C  B0 1A 30 00 */	sth r0, 0x3000(r26)
/* 80103770  C0 3A 33 AC */	lfs f1, 0x33ac(r26)
/* 80103774  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80103778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010377C  40 81 00 20 */	ble lbl_8010379C
/* 80103780  A8 7A 04 E6 */	lha r3, 0x4e6(r26)
/* 80103784  A8 1A 2F E2 */	lha r0, 0x2fe2(r26)
/* 80103788  7C 03 00 50 */	subf r0, r3, r0
/* 8010378C  7C 03 07 34 */	extsh r3, r0
/* 80103790  4B FA FD 05 */	bl getDirectionFromAngle__9daAlink_cFs
/* 80103794  98 7A 2F 98 */	stb r3, 0x2f98(r26)
/* 80103798  48 00 00 60 */	b lbl_801037F8
lbl_8010379C:
/* 8010379C  88 1A 2F 98 */	lbz r0, 0x2f98(r26)
/* 801037A0  28 00 00 04 */	cmplwi r0, 4
/* 801037A4  40 80 00 14 */	bge lbl_801037B8
/* 801037A8  C0 3A 33 98 */	lfs f1, 0x3398(r26)
/* 801037AC  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 801037B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801037B4  40 80 00 44 */	bge lbl_801037F8
lbl_801037B8:
/* 801037B8  38 00 00 00 */	li r0, 0
/* 801037BC  98 1A 2F 98 */	stb r0, 0x2f98(r26)
/* 801037C0  48 00 00 38 */	b lbl_801037F8
lbl_801037C4:
/* 801037C4  C0 3A 33 AC */	lfs f1, 0x33ac(r26)
/* 801037C8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801037CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801037D0  41 81 00 20 */	bgt lbl_801037F0
/* 801037D4  88 1A 2F 98 */	lbz r0, 0x2f98(r26)
/* 801037D8  28 00 00 04 */	cmplwi r0, 4
/* 801037DC  40 80 00 14 */	bge lbl_801037F0
/* 801037E0  C0 3A 33 98 */	lfs f1, 0x3398(r26)
/* 801037E4  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 801037E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801037EC  40 80 00 0C */	bge lbl_801037F8
lbl_801037F0:
/* 801037F0  38 00 00 00 */	li r0, 0
/* 801037F4  98 1A 2F 98 */	stb r0, 0x2f98(r26)
lbl_801037F8:
/* 801037F8  3B 80 00 01 */	li r28, 1
/* 801037FC  3B 60 00 00 */	li r27, 0
/* 80103800  88 1A 2F 98 */	lbz r0, 0x2f98(r26)
/* 80103804  28 00 00 04 */	cmplwi r0, 4
/* 80103808  40 82 01 70 */	bne lbl_80103978
/* 8010380C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103810  3B A3 ED 2C */	addi r29, r3, m__18daAlinkHIO_swim_c0@l
/* 80103814  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 80103818  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 8010381C  EC 61 00 2A */	fadds f3, f1, f0
/* 80103820  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 80103824  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 80103828  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 8010382C  D0 1A 34 7C */	stfs f0, 0x347c(r26)
/* 80103830  C0 5A 05 94 */	lfs f2, 0x594(r26)
/* 80103834  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80103838  40 80 00 0C */	bge lbl_80103844
/* 8010383C  D0 3A 05 94 */	stfs f1, 0x594(r26)
/* 80103840  48 00 00 C4 */	b lbl_80103904
lbl_80103844:
/* 80103844  88 1A 2F 8D */	lbz r0, 0x2f8d(r26)
/* 80103848  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8010384C  41 82 00 A0 */	beq lbl_801038EC
/* 80103850  C0 02 94 AC */	lfs f0, lit_16641(r2)
/* 80103854  EC 02 00 2A */	fadds f0, f2, f0
/* 80103858  D0 1A 05 94 */	stfs f0, 0x594(r26)
/* 8010385C  C0 1A 05 94 */	lfs f0, 0x594(r26)
/* 80103860  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80103864  40 81 00 08 */	ble lbl_8010386C
/* 80103868  D0 7A 05 94 */	stfs f3, 0x594(r26)
lbl_8010386C:
/* 8010386C  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 80103870  28 00 02 3F */	cmplwi r0, 0x23f
/* 80103874  41 82 00 5C */	beq lbl_801038D0
/* 80103878  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8010387C  28 00 00 BF */	cmplwi r0, 0xbf
/* 80103880  41 82 00 50 */	beq lbl_801038D0
/* 80103884  80 7A 20 60 */	lwz r3, 0x2060(r26)
/* 80103888  C0 63 00 04 */	lfs f3, 4(r3)
/* 8010388C  7F 43 D3 78 */	mr r3, r26
/* 80103890  38 80 02 3F */	li r4, 0x23f
/* 80103894  38 A0 00 02 */	li r5, 2
/* 80103898  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8010389C  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 801038A0  38 C0 00 28 */	li r6, 0x28
/* 801038A4  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 801038A8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801038AC  40 81 00 0C */	ble lbl_801038B8
/* 801038B0  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 801038B4  48 00 00 08 */	b lbl_801038BC
lbl_801038B8:
/* 801038B8  C0 62 92 C4 */	lfs f3, lit_6109(r2)
lbl_801038BC:
/* 801038BC  4B FA 9B 1D */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 801038C0  38 00 00 00 */	li r0, 0
/* 801038C4  B0 1A 30 12 */	sth r0, 0x3012(r26)
/* 801038C8  3B 60 00 01 */	li r27, 1
/* 801038CC  48 00 00 38 */	b lbl_80103904
lbl_801038D0:
/* 801038D0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 801038D4  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 801038D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801038DC  40 81 00 28 */	ble lbl_80103904
/* 801038E0  38 00 00 01 */	li r0, 1
/* 801038E4  B0 1A 30 12 */	sth r0, 0x3012(r26)
/* 801038E8  48 00 00 1C */	b lbl_80103904
lbl_801038EC:
/* 801038EC  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 801038F0  28 00 02 3F */	cmplwi r0, 0x23f
/* 801038F4  41 82 00 10 */	beq lbl_80103904
/* 801038F8  38 7A 05 94 */	addi r3, r26, 0x594
/* 801038FC  C0 42 93 FC */	lfs f2, lit_13701(r2)
/* 80103900  48 16 CE 41 */	bl cLib_chaseF__FPfff
lbl_80103904:
/* 80103904  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80103908  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 8010390C  EF E1 00 24 */	fdivs f31, f1, f0
/* 80103910  7F 43 D3 78 */	mr r3, r26
/* 80103914  4B FB C4 9D */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80103918  2C 03 00 00 */	cmpwi r3, 0
/* 8010391C  41 82 00 30 */	beq lbl_8010394C
/* 80103920  80 1A 31 98 */	lwz r0, 0x3198(r26)
/* 80103924  2C 00 00 C7 */	cmpwi r0, 0xc7
/* 80103928  41 82 00 1C */	beq lbl_80103944
/* 8010392C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80103930  40 82 00 1C */	bne lbl_8010394C
/* 80103934  7F E3 FB 78 */	mr r3, r31
/* 80103938  48 05 AB 95 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010393C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80103940  40 82 00 0C */	bne lbl_8010394C
lbl_80103944:
/* 80103944  3B A0 00 C8 */	li r29, 0xc8
/* 80103948  48 00 01 E4 */	b lbl_80103B2C
lbl_8010394C:
/* 8010394C  3B A0 00 C9 */	li r29, 0xc9
/* 80103950  80 1A 31 98 */	lwz r0, 0x3198(r26)
/* 80103954  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80103958  40 82 01 D4 */	bne lbl_80103B2C
/* 8010395C  3B 80 00 00 */	li r28, 0
/* 80103960  A8 1A 30 10 */	lha r0, 0x3010(r26)
/* 80103964  2C 00 00 01 */	cmpwi r0, 1
/* 80103968  40 82 01 C4 */	bne lbl_80103B2C
/* 8010396C  38 00 00 00 */	li r0, 0
/* 80103970  B0 1A 30 10 */	sth r0, 0x3010(r26)
/* 80103974  48 00 01 B8 */	b lbl_80103B2C
lbl_80103978:
/* 80103978  28 00 00 00 */	cmplwi r0, 0
/* 8010397C  40 82 00 EC */	bne lbl_80103A68
/* 80103980  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 80103984  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80103988  41 82 00 30 */	beq lbl_801039B8
/* 8010398C  7F 43 D3 78 */	mr r3, r26
/* 80103990  38 80 00 C6 */	li r4, 0xc6
/* 80103994  4B FA 8B C5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80103998  2C 03 00 00 */	cmpwi r3, 0
/* 8010399C  41 82 00 1C */	beq lbl_801039B8
/* 801039A0  7F E3 FB 78 */	mr r3, r31
/* 801039A4  48 05 AB 29 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801039A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801039AC  40 82 00 0C */	bne lbl_801039B8
/* 801039B0  3B A0 00 C6 */	li r29, 0xc6
/* 801039B4  48 00 00 50 */	b lbl_80103A04
lbl_801039B8:
/* 801039B8  C0 3A 33 98 */	lfs f1, 0x3398(r26)
/* 801039BC  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 801039C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801039C4  41 80 00 2C */	blt lbl_801039F0
/* 801039C8  38 60 00 00 */	li r3, 0
/* 801039CC  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 801039D0  28 00 01 8D */	cmplwi r0, 0x18d
/* 801039D4  41 82 00 10 */	beq lbl_801039E4
/* 801039D8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801039DC  28 00 01 8C */	cmplwi r0, 0x18c
/* 801039E0  40 82 00 08 */	bne lbl_801039E8
lbl_801039E4:
/* 801039E4  38 60 00 01 */	li r3, 1
lbl_801039E8:
/* 801039E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801039EC  41 82 00 14 */	beq lbl_80103A00
lbl_801039F0:
/* 801039F0  3B A0 00 14 */	li r29, 0x14
/* 801039F4  38 00 00 00 */	li r0, 0
/* 801039F8  B0 1A 30 D0 */	sth r0, 0x30d0(r26)
/* 801039FC  48 00 00 08 */	b lbl_80103A04
lbl_80103A00:
/* 80103A00  3B A0 00 C1 */	li r29, 0xc1
lbl_80103A04:
/* 80103A04  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 80103A08  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80103A0C  41 82 00 28 */	beq lbl_80103A34
/* 80103A10  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103A14  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103A18  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 80103A1C  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 80103A20  C0 03 00 F8 */	lfs f0, 0xf8(r3)
/* 80103A24  D0 1A 34 7C */	stfs f0, 0x347c(r26)
/* 80103A28  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 80103A2C  D0 1A 05 94 */	stfs f0, 0x594(r26)
/* 80103A30  48 00 00 28 */	b lbl_80103A58
lbl_80103A34:
/* 80103A34  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103A38  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103A3C  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 80103A40  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 80103A44  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80103A48  D0 1A 34 7C */	stfs f0, 0x347c(r26)
/* 80103A4C  7F 43 D3 78 */	mr r3, r26
/* 80103A50  4B FF DF C9 */	bl getSwimFrontMaxSpeed__9daAlink_cCFv
/* 80103A54  D0 3A 05 94 */	stfs f1, 0x594(r26)
lbl_80103A58:
/* 80103A58  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80103A5C  C0 1A 05 94 */	lfs f0, 0x594(r26)
/* 80103A60  EF E1 00 24 */	fdivs f31, f1, f0
/* 80103A64  48 00 00 C8 */	b lbl_80103B2C
lbl_80103A68:
/* 80103A68  28 00 00 01 */	cmplwi r0, 1
/* 80103A6C  40 82 00 5C */	bne lbl_80103AC8
/* 80103A70  3B A0 00 C5 */	li r29, 0xc5
/* 80103A74  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103A78  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103A7C  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 80103A80  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 80103A84  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 80103A88  D0 1A 34 7C */	stfs f0, 0x347c(r26)
/* 80103A8C  7F 43 D3 78 */	mr r3, r26
/* 80103A90  4B FB C3 21 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80103A94  2C 03 00 00 */	cmpwi r3, 0
/* 80103A98  41 82 00 10 */	beq lbl_80103AA8
/* 80103A9C  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 80103AA0  D0 1A 05 94 */	stfs f0, 0x594(r26)
/* 80103AA4  48 00 00 14 */	b lbl_80103AB8
lbl_80103AA8:
/* 80103AA8  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103AAC  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103AB0  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80103AB4  D0 1A 05 94 */	stfs f0, 0x594(r26)
lbl_80103AB8:
/* 80103AB8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80103ABC  C0 1A 05 94 */	lfs f0, 0x594(r26)
/* 80103AC0  EF E1 00 24 */	fdivs f31, f1, f0
/* 80103AC4  48 00 00 68 */	b lbl_80103B2C
lbl_80103AC8:
/* 80103AC8  28 00 00 02 */	cmplwi r0, 2
/* 80103ACC  38 00 00 C4 */	li r0, 0xc4
/* 80103AD0  40 82 00 08 */	bne lbl_80103AD8
/* 80103AD4  38 00 00 C3 */	li r0, 0xc3
lbl_80103AD8:
/* 80103AD8  7C 1D 03 78 */	mr r29, r0
/* 80103ADC  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103AE0  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103AE4  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80103AE8  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 80103AEC  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 80103AF0  D0 1A 34 7C */	stfs f0, 0x347c(r26)
/* 80103AF4  7F 43 D3 78 */	mr r3, r26
/* 80103AF8  4B FB C2 B9 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80103AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80103B00  41 82 00 10 */	beq lbl_80103B10
/* 80103B04  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 80103B08  D0 1A 05 94 */	stfs f0, 0x594(r26)
/* 80103B0C  48 00 00 14 */	b lbl_80103B20
lbl_80103B10:
/* 80103B10  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103B14  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103B18  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80103B1C  D0 1A 05 94 */	stfs f0, 0x594(r26)
lbl_80103B20:
/* 80103B20  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80103B24  C0 1A 05 94 */	lfs f0, 0x594(r26)
/* 80103B28  EF E1 00 24 */	fdivs f31, f1, f0
lbl_80103B2C:
/* 80103B2C  C0 3A 34 7C */	lfs f1, 0x347c(r26)
/* 80103B30  C0 1A 34 78 */	lfs f0, 0x3478(r26)
/* 80103B34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80103B38  D0 1A 34 7C */	stfs f0, 0x347c(r26)
/* 80103B3C  88 1A 2F 98 */	lbz r0, 0x2f98(r26)
/* 80103B40  28 00 00 00 */	cmplwi r0, 0
/* 80103B44  41 82 00 0C */	beq lbl_80103B50
/* 80103B48  38 00 00 00 */	li r0, 0
/* 80103B4C  B0 1A 30 D0 */	sth r0, 0x30d0(r26)
lbl_80103B50:
/* 80103B50  7F 43 D3 78 */	mr r3, r26
/* 80103B54  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80103B58  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80103B5C  7D 89 03 A6 */	mtctr r12
/* 80103B60  4E 80 04 21 */	bctrl 
/* 80103B64  2C 03 00 00 */	cmpwi r3, 0
/* 80103B68  41 82 00 58 */	beq lbl_80103BC0
/* 80103B6C  3B A0 00 14 */	li r29, 0x14
/* 80103B70  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103B74  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103B78  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80103B7C  D0 1A 05 94 */	stfs f0, 0x594(r26)
/* 80103B80  A0 1A 2F DC */	lhz r0, 0x2fdc(r26)
/* 80103B84  28 00 00 FF */	cmplwi r0, 0xff
/* 80103B88  41 82 00 38 */	beq lbl_80103BC0
/* 80103B8C  38 60 00 00 */	li r3, 0
/* 80103B90  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 80103B94  28 00 01 8D */	cmplwi r0, 0x18d
/* 80103B98  41 82 00 10 */	beq lbl_80103BA8
/* 80103B9C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80103BA0  28 00 01 8C */	cmplwi r0, 0x18c
/* 80103BA4  40 82 00 08 */	bne lbl_80103BAC
lbl_80103BA8:
/* 80103BA8  38 60 00 01 */	li r3, 1
lbl_80103BAC:
/* 80103BAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80103BB0  40 82 00 10 */	bne lbl_80103BC0
/* 80103BB4  7F 43 D3 78 */	mr r3, r26
/* 80103BB8  38 80 00 04 */	li r4, 4
/* 80103BBC  4B FA F6 95 */	bl setDoStatus__9daAlink_cFUc
lbl_80103BC0:
/* 80103BC0  80 1A 31 98 */	lwz r0, 0x3198(r26)
/* 80103BC4  7C 1D 00 00 */	cmpw r29, r0
/* 80103BC8  41 82 00 8C */	beq lbl_80103C54
/* 80103BCC  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80103BD0  40 82 00 0C */	bne lbl_80103BDC
/* 80103BD4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80103BD8  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
lbl_80103BDC:
/* 80103BDC  93 BA 31 98 */	stw r29, 0x3198(r26)
/* 80103BE0  7F 43 D3 78 */	mr r3, r26
/* 80103BE4  38 80 00 C6 */	li r4, 0xc6
/* 80103BE8  4B FA 89 71 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80103BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80103BF0  41 82 00 14 */	beq lbl_80103C04
/* 80103BF4  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103BF8  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103BFC  A8 03 00 5E */	lha r0, 0x5e(r3)
/* 80103C00  B0 1A 30 D2 */	sth r0, 0x30d2(r26)
lbl_80103C04:
/* 80103C04  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80103C08  40 82 00 24 */	bne lbl_80103C2C
/* 80103C0C  7F 43 D3 78 */	mr r3, r26
/* 80103C10  38 80 00 14 */	li r4, 0x14
/* 80103C14  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 80103C18  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l
/* 80103C1C  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80103C20  C0 45 00 94 */	lfs f2, 0x94(r5)
/* 80103C24  4B FA 93 BD */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 80103C28  48 00 00 2C */	b lbl_80103C54
lbl_80103C2C:
/* 80103C2C  7F 43 D3 78 */	mr r3, r26
/* 80103C30  7F A4 EB 78 */	mr r4, r29
/* 80103C34  2C 1C 00 00 */	cmpwi r28, 0
/* 80103C38  41 82 00 14 */	beq lbl_80103C4C
/* 80103C3C  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 80103C40  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l
/* 80103C44  C0 25 00 BC */	lfs f1, 0xbc(r5)
/* 80103C48  48 00 00 08 */	b lbl_80103C50
lbl_80103C4C:
/* 80103C4C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_80103C50:
/* 80103C50  4B FA 93 61 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
lbl_80103C54:
/* 80103C54  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80103C58  41 82 00 6C */	beq lbl_80103CC4
/* 80103C5C  2C 1D 00 C6 */	cmpwi r29, 0xc6
/* 80103C60  41 82 00 64 */	beq lbl_80103CC4
/* 80103C64  C0 1A 33 98 */	lfs f0, 0x3398(r26)
/* 80103C68  FC 00 02 10 */	fabs f0, f0
/* 80103C6C  FC 00 00 18 */	frsp f0, f0
/* 80103C70  EC 7F 00 32 */	fmuls f3, f31, f0
/* 80103C74  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80103C78  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80103C7C  40 81 00 34 */	ble lbl_80103CB0
/* 80103C80  88 1A 2F 98 */	lbz r0, 0x2f98(r26)
/* 80103C84  28 00 00 04 */	cmplwi r0, 4
/* 80103C88  40 82 00 28 */	bne lbl_80103CB0
/* 80103C8C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80103C90  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80103C94  C0 43 00 B8 */	lfs f2, 0xb8(r3)
/* 80103C98  EC 23 00 28 */	fsubs f1, f3, f0
/* 80103C9C  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 80103CA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80103CA4  EC 02 00 2A */	fadds f0, f2, f0
/* 80103CA8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80103CAC  48 00 00 18 */	b lbl_80103CC4
lbl_80103CB0:
/* 80103CB0  C0 3A 34 78 */	lfs f1, 0x3478(r26)
/* 80103CB4  C0 1A 34 7C */	lfs f0, 0x347c(r26)
/* 80103CB8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80103CBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80103CC0  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80103CC4:
/* 80103CC4  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 80103CC8  28 00 02 3F */	cmplwi r0, 0x23f
/* 80103CCC  40 82 00 9C */	bne lbl_80103D68
/* 80103CD0  7F C3 F3 78 */	mr r3, r30
/* 80103CD4  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 80103CD8  48 22 47 55 */	bl checkPass__12J3DFrameCtrlFf
/* 80103CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80103CE0  41 82 00 20 */	beq lbl_80103D00
/* 80103CE4  7F 43 D3 78 */	mr r3, r26
/* 80103CE8  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020064@ha */
/* 80103CEC  38 84 00 64 */	addi r4, r4, 0x0064 /* 0x00020064@l */
/* 80103CF0  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80103CF4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80103CF8  7D 89 03 A6 */	mtctr r12
/* 80103CFC  4E 80 04 21 */	bctrl 
lbl_80103D00:
/* 80103D00  2C 1D 00 C9 */	cmpwi r29, 0xc9
/* 80103D04  40 82 00 54 */	bne lbl_80103D58
/* 80103D08  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80103D0C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 80103D10  2C 1B 00 00 */	cmpwi r27, 0
/* 80103D14  40 82 00 54 */	bne lbl_80103D68
/* 80103D18  7F C3 F3 78 */	mr r3, r30
/* 80103D1C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80103D20  48 22 47 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80103D24  2C 03 00 00 */	cmpwi r3, 0
/* 80103D28  41 82 00 40 */	beq lbl_80103D68
/* 80103D2C  A8 1A 30 12 */	lha r0, 0x3012(r26)
/* 80103D30  2C 00 00 00 */	cmpwi r0, 0
/* 80103D34  41 82 00 10 */	beq lbl_80103D44
/* 80103D38  38 00 00 00 */	li r0, 0
/* 80103D3C  B0 1A 30 12 */	sth r0, 0x3012(r26)
/* 80103D40  48 00 00 28 */	b lbl_80103D68
lbl_80103D44:
/* 80103D44  7F 43 D3 78 */	mr r3, r26
/* 80103D48  38 80 00 02 */	li r4, 2
/* 80103D4C  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 80103D50  4B FA 99 D5 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 80103D54  48 00 00 14 */	b lbl_80103D68
lbl_80103D58:
/* 80103D58  7F 43 D3 78 */	mr r3, r26
/* 80103D5C  38 80 00 02 */	li r4, 2
/* 80103D60  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80103D64  4B FA 99 C1 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_80103D68:
/* 80103D68  7F 43 D3 78 */	mr r3, r26
/* 80103D6C  4B FF DD 3D */	bl getSwimMaxFallSpeed__9daAlink_cCFv
/* 80103D70  D0 3A 05 34 */	stfs f1, 0x534(r26)
/* 80103D74  2C 1D 00 C9 */	cmpwi r29, 0xc9
/* 80103D78  41 82 00 0C */	beq lbl_80103D84
/* 80103D7C  2C 1D 00 C8 */	cmpwi r29, 0xc8
/* 80103D80  40 82 01 00 */	bne lbl_80103E80
lbl_80103D84:
/* 80103D84  7F 43 D3 78 */	mr r3, r26
/* 80103D88  4B FB C0 29 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80103D8C  2C 03 00 00 */	cmpwi r3, 0
/* 80103D90  40 82 00 30 */	bne lbl_80103DC0
/* 80103D94  A8 1A 30 80 */	lha r0, 0x3080(r26)
/* 80103D98  2C 00 C8 00 */	cmpwi r0, -14336
/* 80103D9C  41 82 00 18 */	beq lbl_80103DB4
/* 80103DA0  7F 43 D3 78 */	mr r3, r26
/* 80103DA4  38 80 40 00 */	li r4, 0x4000
/* 80103DA8  38 A0 00 00 */	li r5, 0
/* 80103DAC  38 C0 00 00 */	li r6, 0
/* 80103DB0  4B FA 9D C9 */	bl setOldRootQuaternion__9daAlink_cFsss
lbl_80103DB4:
/* 80103DB4  38 00 C8 00 */	li r0, -14336
/* 80103DB8  B0 1A 30 80 */	sth r0, 0x3080(r26)
/* 80103DBC  48 00 01 04 */	b lbl_80103EC0
lbl_80103DC0:
/* 80103DC0  A8 1A 30 10 */	lha r0, 0x3010(r26)
/* 80103DC4  2C 00 00 01 */	cmpwi r0, 1
/* 80103DC8  40 82 00 20 */	bne lbl_80103DE8
/* 80103DCC  38 7A 30 80 */	addi r3, r26, 0x3080
/* 80103DD0  A8 9A 30 0E */	lha r4, 0x300e(r26)
/* 80103DD4  38 A0 00 05 */	li r5, 5
/* 80103DD8  38 C0 10 00 */	li r6, 0x1000
/* 80103DDC  38 E0 01 00 */	li r7, 0x100
/* 80103DE0  48 16 C7 61 */	bl cLib_addCalcAngleS__FPsssss
/* 80103DE4  48 00 00 DC */	b lbl_80103EC0
lbl_80103DE8:
/* 80103DE8  2C 00 00 02 */	cmpwi r0, 2
/* 80103DEC  40 82 00 28 */	bne lbl_80103E14
/* 80103DF0  38 7A 30 80 */	addi r3, r26, 0x3080
/* 80103DF4  A8 9A 30 0E */	lha r4, 0x300e(r26)
/* 80103DF8  38 A0 00 05 */	li r5, 5
/* 80103DFC  38 C0 10 00 */	li r6, 0x1000
/* 80103E00  38 E0 01 00 */	li r7, 0x100
/* 80103E04  48 16 C7 3D */	bl cLib_addCalcAngleS__FPsssss
/* 80103E08  38 00 00 00 */	li r0, 0
/* 80103E0C  B0 1A 30 10 */	sth r0, 0x3010(r26)
/* 80103E10  48 00 00 B0 */	b lbl_80103EC0
lbl_80103E14:
/* 80103E14  C0 3A 33 AC */	lfs f1, 0x33ac(r26)
/* 80103E18  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80103E1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80103E20  40 81 00 44 */	ble lbl_80103E64
/* 80103E24  7F 43 D3 78 */	mr r3, r26
/* 80103E28  48 01 1D F9 */	bl checkEventRun__9daAlink_cCFv
/* 80103E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80103E30  40 82 00 34 */	bne lbl_80103E64
/* 80103E34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80103E38  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80103E3C  A8 1A 2F E0 */	lha r0, 0x2fe0(r26)
/* 80103E40  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80103E44  7C 63 02 14 */	add r3, r3, r0
/* 80103E48  C0 23 00 04 */	lfs f1, 4(r3)
/* 80103E4C  C0 02 95 D4 */	lfs f0, lit_27418(r2)
/* 80103E50  EC 00 00 72 */	fmuls f0, f0, f1
/* 80103E54  FC 00 00 1E */	fctiwz f0, f0
/* 80103E58  D8 01 00 08 */	stfd f0, 8(r1)
/* 80103E5C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80103E60  48 00 00 08 */	b lbl_80103E68
lbl_80103E64:
/* 80103E64  38 80 00 00 */	li r4, 0
lbl_80103E68:
/* 80103E68  38 7A 30 80 */	addi r3, r26, 0x3080
/* 80103E6C  38 A0 00 05 */	li r5, 5
/* 80103E70  38 C0 02 00 */	li r6, 0x200
/* 80103E74  38 E0 00 80 */	li r7, 0x80
/* 80103E78  48 16 C6 C9 */	bl cLib_addCalcAngleS__FPsssss
/* 80103E7C  48 00 00 44 */	b lbl_80103EC0
lbl_80103E80:
/* 80103E80  A8 9A 30 80 */	lha r4, 0x3080(r26)
/* 80103E84  7C 80 07 35 */	extsh. r0, r4
/* 80103E88  41 82 00 38 */	beq lbl_80103EC0
/* 80103E8C  7F 43 D3 78 */	mr r3, r26
/* 80103E90  38 A0 00 00 */	li r5, 0
/* 80103E94  38 C0 00 00 */	li r6, 0
/* 80103E98  4B FA 9C E1 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 80103E9C  38 00 00 00 */	li r0, 0
/* 80103EA0  B0 1A 30 80 */	sth r0, 0x3080(r26)
/* 80103EA4  B0 1A 30 10 */	sth r0, 0x3010(r26)
/* 80103EA8  7F 43 D3 78 */	mr r3, r26
/* 80103EAC  4B FB BF 05 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80103EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80103EB4  40 82 00 0C */	bne lbl_80103EC0
/* 80103EB8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80103EBC  D0 1A 33 98 */	stfs f0, 0x3398(r26)
lbl_80103EC0:
/* 80103EC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80103EC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80103EC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80103ECC  48 25 E3 51 */	bl _restgpr_26
/* 80103ED0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80103ED4  7C 08 03 A6 */	mtlr r0
/* 80103ED8  38 21 00 40 */	addi r1, r1, 0x40
/* 80103EDC  4E 80 00 20 */	blr 

lbl_80130700:
/* 80130700  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80130704  7C 08 02 A6 */	mflr r0
/* 80130708  90 01 00 54 */	stw r0, 0x54(r1)
/* 8013070C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80130710  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80130714  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80130718  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8013071C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80130720  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80130724  7C 7E 1B 78 */	mr r30, r3
/* 80130728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013072C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80130730  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80130734  7F C4 F3 78 */	mr r4, r30
/* 80130738  38 A0 00 00 */	li r5, 0
/* 8013073C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80130740  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80130744  4B F1 2A 29 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 80130748  2C 03 00 00 */	cmpwi r3, 0
/* 8013074C  40 82 00 0C */	bne lbl_80130758
/* 80130750  38 60 00 00 */	li r3, 0
/* 80130754  48 00 04 48 */	b lbl_80130B9C
lbl_80130758:
/* 80130758  38 00 00 05 */	li r0, 5
/* 8013075C  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 80130760  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 80130764  28 03 00 00 */	cmplwi r3, 0
/* 80130768  41 82 00 0C */	beq lbl_80130774
/* 8013076C  AB E3 00 08 */	lha r31, 8(r3)
/* 80130770  48 00 00 08 */	b lbl_80130778
lbl_80130774:
/* 80130774  3B E0 00 FD */	li r31, 0xfd
lbl_80130778:
/* 80130778  7F E0 07 34 */	extsh r0, r31
/* 8013077C  2C 00 01 8B */	cmpwi r0, 0x18b
/* 80130780  40 82 00 18 */	bne lbl_80130798
/* 80130784  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80130788  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8013078C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80130790  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80130794  48 00 01 40 */	b lbl_801308D4
lbl_80130798:
/* 80130798  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013079C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801307A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801307A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801307A8  7C 23 04 2E */	lfsx f1, r3, r0
/* 801307AC  C0 02 93 68 */	lfs f0, lit_8472(r2)
/* 801307B0  EF E0 00 72 */	fmuls f31, f0, f1
/* 801307B4  7C 63 02 14 */	add r3, r3, r0
/* 801307B8  C0 23 00 04 */	lfs f1, 4(r3)
/* 801307BC  EF C0 00 72 */	fmuls f30, f0, f1
/* 801307C0  C0 5E 05 58 */	lfs f2, 0x558(r30)
/* 801307C4  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 801307C8  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 801307CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801307D0  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 801307D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801307D8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801307DC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801307E0  EC 00 F8 2A */	fadds f0, f0, f31
/* 801307E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 801307E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801307EC  EC 02 F0 2A */	fadds f0, f2, f30
/* 801307F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801307F4  7F C3 F3 78 */	mr r3, r30
/* 801307F8  38 81 00 14 */	addi r4, r1, 0x14
/* 801307FC  38 A1 00 08 */	addi r5, r1, 8
/* 80130800  4B F7 19 99 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 80130804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130808  41 82 00 CC */	beq lbl_801308D4
/* 8013080C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80130810  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80130814  D0 01 00 08 */	stfs f0, 8(r1)
/* 80130818  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8013081C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80130820  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80130824  7F C3 F3 78 */	mr r3, r30
/* 80130828  38 81 00 14 */	addi r4, r1, 0x14
/* 8013082C  38 A1 00 08 */	addi r5, r1, 8
/* 80130830  4B F7 19 69 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 80130834  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130838  40 82 00 18 */	bne lbl_80130850
/* 8013083C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80130840  3C 63 00 01 */	addis r3, r3, 1
/* 80130844  38 03 80 00 */	addi r0, r3, -32768
/* 80130848  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8013084C  48 00 00 80 */	b lbl_801308CC
lbl_80130850:
/* 80130850  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80130854  EC 00 F0 2A */	fadds f0, f0, f30
/* 80130858  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013085C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80130860  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80130864  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80130868  7F C3 F3 78 */	mr r3, r30
/* 8013086C  38 81 00 14 */	addi r4, r1, 0x14
/* 80130870  38 A1 00 08 */	addi r5, r1, 8
/* 80130874  4B F7 19 25 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 80130878  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013087C  40 82 00 14 */	bne lbl_80130890
/* 80130880  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80130884  38 03 40 00 */	addi r0, r3, 0x4000
/* 80130888  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8013088C  48 00 00 40 */	b lbl_801308CC
lbl_80130890:
/* 80130890  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80130894  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80130898  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013089C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801308A0  EC 00 F8 2A */	fadds f0, f0, f31
/* 801308A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801308A8  7F C3 F3 78 */	mr r3, r30
/* 801308AC  38 81 00 14 */	addi r4, r1, 0x14
/* 801308B0  38 A1 00 08 */	addi r5, r1, 8
/* 801308B4  4B F7 18 E5 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 801308B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801308BC  40 82 00 10 */	bne lbl_801308CC
/* 801308C0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 801308C4  38 03 C0 00 */	addi r0, r3, -16384
/* 801308C8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_801308CC:
/* 801308CC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801308D0  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_801308D4:
/* 801308D4  7F C3 F3 78 */	mr r3, r30
/* 801308D8  38 80 00 ED */	li r4, 0xed
/* 801308DC  4B F9 16 91 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801308E0  38 60 FF FF */	li r3, -1
/* 801308E4  90 7E 31 98 */	stw r3, 0x3198(r30)
/* 801308E8  B0 7E 30 12 */	sth r3, 0x3012(r30)
/* 801308EC  38 00 00 00 */	li r0, 0
/* 801308F0  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 801308F4  B0 7E 30 08 */	sth r3, 0x3008(r30)
/* 801308F8  7F E0 07 34 */	extsh r0, r31
/* 801308FC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80130900  41 82 01 2C */	beq lbl_80130A2C
/* 80130904  2C 00 01 4D */	cmpwi r0, 0x14d
/* 80130908  40 82 00 64 */	bne lbl_8013096C
/* 8013090C  83 FE 27 F4 */	lwz r31, 0x27f4(r30)
/* 80130910  38 7E 2D 84 */	addi r3, r30, 0x2d84
/* 80130914  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80130918  54 04 06 7E */	clrlwi r4, r0, 0x19
/* 8013091C  38 A0 00 00 */	li r5, 0
/* 80130920  48 19 A7 E1 */	bl setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData
/* 80130924  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80130928  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8013092C  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 80130930  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80130934  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80130938  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013093C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80130940  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80130944  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 80130948  40 82 00 10 */	bne lbl_80130958
/* 8013094C  38 00 01 00 */	li r0, 0x100
/* 80130950  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 80130954  48 00 00 E8 */	b lbl_80130A3C
lbl_80130958:
/* 80130958  2C 00 00 01 */	cmpwi r0, 1
/* 8013095C  40 82 00 E0 */	bne lbl_80130A3C
/* 80130960  38 00 00 EE */	li r0, 0xee
/* 80130964  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 80130968  48 00 00 D4 */	b lbl_80130A3C
lbl_8013096C:
/* 8013096C  2C 00 02 D4 */	cmpwi r0, 0x2d4
/* 80130970  40 82 00 1C */	bne lbl_8013098C
/* 80130974  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 80130978  88 83 05 68 */	lbz r4, 0x568(r3)
/* 8013097C  38 7E 2D 84 */	addi r3, r30, 0x2d84
/* 80130980  38 A0 00 00 */	li r5, 0
/* 80130984  48 19 A7 7D */	bl setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData
/* 80130988  48 00 00 B4 */	b lbl_80130A3C
lbl_8013098C:
/* 8013098C  2C 00 01 8A */	cmpwi r0, 0x18a
/* 80130990  40 82 00 3C */	bne lbl_801309CC
/* 80130994  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 80130998  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8013099C  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 801309A0  7C 04 07 74 */	extsb r4, r0
/* 801309A4  38 7E 2D 84 */	addi r3, r30, 0x2d84
/* 801309A8  38 A0 00 00 */	li r5, 0
/* 801309AC  48 19 A7 55 */	bl setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData
/* 801309B0  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 801309B4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 801309B8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 801309BC  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 801309C0  38 00 00 01 */	li r0, 1
/* 801309C4  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 801309C8  48 00 00 74 */	b lbl_80130A3C
lbl_801309CC:
/* 801309CC  2C 00 01 8D */	cmpwi r0, 0x18d
/* 801309D0  40 82 00 20 */	bne lbl_801309F0
/* 801309D4  38 7E 2D 84 */	addi r3, r30, 0x2d84
/* 801309D8  38 80 00 02 */	li r4, 2
/* 801309DC  38 A0 00 00 */	li r5, 0
/* 801309E0  48 19 A7 21 */	bl setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData
/* 801309E4  38 00 00 01 */	li r0, 1
/* 801309E8  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 801309EC  48 00 00 50 */	b lbl_80130A3C
lbl_801309F0:
/* 801309F0  2C 00 01 8B */	cmpwi r0, 0x18b
/* 801309F4  40 82 00 24 */	bne lbl_80130A18
/* 801309F8  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 801309FC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80130A00  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80130A04  7C 04 07 74 */	extsb r4, r0
/* 80130A08  38 7E 2D 84 */	addi r3, r30, 0x2d84
/* 80130A0C  38 A0 00 00 */	li r5, 0
/* 80130A10  48 19 A6 F1 */	bl setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData
/* 80130A14  48 00 00 28 */	b lbl_80130A3C
lbl_80130A18:
/* 80130A18  38 7E 2D 84 */	addi r3, r30, 0x2d84
/* 80130A1C  38 80 FF FF */	li r4, -1
/* 80130A20  38 A0 00 00 */	li r5, 0
/* 80130A24  48 19 A6 DD */	bl setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData
/* 80130A28  48 00 00 14 */	b lbl_80130A3C
lbl_80130A2C:
/* 80130A2C  38 7E 2D 84 */	addi r3, r30, 0x2d84
/* 80130A30  38 80 FF FF */	li r4, -1
/* 80130A34  38 A0 00 00 */	li r5, 0
/* 80130A38  48 19 A6 C9 */	bl setCorrectData__13Z2WolfHowlMgrFScP14Z2WolfHowlData
lbl_80130A3C:
/* 80130A3C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80130A40  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 80130A44  7F C3 F3 78 */	mr r3, r30
/* 80130A48  38 80 00 0E */	li r4, 0xe
/* 80130A4C  4B FF 7D C1 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130A50  2C 03 00 00 */	cmpwi r3, 0
/* 80130A54  40 82 00 4C */	bne lbl_80130AA0
/* 80130A58  7F C3 F3 78 */	mr r3, r30
/* 80130A5C  38 80 00 8C */	li r4, 0x8c
/* 80130A60  4B FF 7D AD */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130A64  2C 03 00 00 */	cmpwi r3, 0
/* 80130A68  40 82 00 38 */	bne lbl_80130AA0
/* 80130A6C  7F C3 F3 78 */	mr r3, r30
/* 80130A70  38 80 00 5D */	li r4, 0x5d
/* 80130A74  4B FF 7D 99 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130A78  2C 03 00 00 */	cmpwi r3, 0
/* 80130A7C  40 82 00 24 */	bne lbl_80130AA0
/* 80130A80  7F C3 F3 78 */	mr r3, r30
/* 80130A84  38 80 00 0B */	li r4, 0xb
/* 80130A88  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha
/* 80130A8C  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l
/* 80130A90  4B FF 8D B9 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80130A94  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80130A98  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 80130A9C  48 00 00 50 */	b lbl_80130AEC
lbl_80130AA0:
/* 80130AA0  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 80130AA4  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 80130AA8  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 80130AAC  2C 00 00 00 */	cmpwi r0, 0
/* 80130AB0  40 82 00 24 */	bne lbl_80130AD4
/* 80130AB4  7F C3 F3 78 */	mr r3, r30
/* 80130AB8  38 80 00 0E */	li r4, 0xe
/* 80130ABC  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha
/* 80130AC0  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l
/* 80130AC4  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80130AC8  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 80130ACC  4B FF 8C 0D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 80130AD0  48 00 00 1C */	b lbl_80130AEC
lbl_80130AD4:
/* 80130AD4  7F C3 F3 78 */	mr r3, r30
/* 80130AD8  38 80 00 8C */	li r4, 0x8c
/* 80130ADC  4B FF 8B 9D */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 80130AE0  7F C3 F3 78 */	mr r3, r30
/* 80130AE4  38 80 00 A2 */	li r4, 0xa2
/* 80130AE8  4B F7 ED B9 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
lbl_80130AEC:
/* 80130AEC  28 1E 00 00 */	cmplwi r30, 0
/* 80130AF0  41 82 00 0C */	beq lbl_80130AFC
/* 80130AF4  83 FE 00 04 */	lwz r31, 4(r30)
/* 80130AF8  48 00 00 08 */	b lbl_80130B00
lbl_80130AFC:
/* 80130AFC  3B E0 FF FF */	li r31, -1
lbl_80130B00:
/* 80130B00  48 05 0B 41 */	bl dCam_getBody__Fv
/* 80130B04  38 80 00 0C */	li r4, 0xc
/* 80130B08  7F E5 FB 78 */	mr r5, r31
/* 80130B0C  38 C0 00 00 */	li r6, 0
/* 80130B10  4C C6 31 82 */	crclr 6
/* 80130B14  4B F5 7F 69 */	bl StartEventCamera__9dCamera_cFiie
/* 80130B18  38 80 00 00 */	li r4, 0
/* 80130B1C  B0 9E 30 0A */	sth r4, 0x300a(r30)
/* 80130B20  38 60 FF FF */	li r3, -1
/* 80130B24  90 7E 28 F0 */	stw r3, 0x28f0(r30)
/* 80130B28  38 00 05 DD */	li r0, 0x5dd
/* 80130B2C  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 80130B30  B0 9E 30 0C */	sth r4, 0x300c(r30)
/* 80130B34  B0 7E 30 0E */	sth r3, 0x300e(r30)
/* 80130B38  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80130B3C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80130B40  48 18 53 4D */	bl taktModeMute__8Z2SeqMgrFv
/* 80130B44  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 80130B48  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 80130B4C  38 63 03 0F */	addi r3, r3, 0x30f
/* 80130B50  4B F6 CF 11 */	bl checkStageName__9daAlink_cFPCc
/* 80130B54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130B58  41 82 00 24 */	beq lbl_80130B7C
/* 80130B5C  3C 60 80 13 */	lis r3, daAlink_searchGoldWolf__FP10fopAc_ac_cPv@ha
/* 80130B60  38 63 05 6C */	addi r3, r3, daAlink_searchGoldWolf__FP10fopAc_ac_cPv@l
/* 80130B64  38 80 00 00 */	li r4, 0
/* 80130B68  4B EE 8C 91 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80130B6C  7C 64 1B 78 */	mr r4, r3
/* 80130B70  38 7E 28 0C */	addi r3, r30, 0x280c
/* 80130B74  48 02 E1 45 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 80130B78  48 00 00 0C */	b lbl_80130B84
lbl_80130B7C:
/* 80130B7C  38 7E 28 0C */	addi r3, r30, 0x280c
/* 80130B80  48 02 E1 7D */	bl clearData__16daPy_actorKeep_cFv
lbl_80130B84:
/* 80130B84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80130B88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80130B8C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80130B90  64 00 04 00 */	oris r0, r0, 0x400
/* 80130B94  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 80130B98  38 60 00 01 */	li r3, 1
lbl_80130B9C:
/* 80130B9C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80130BA0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80130BA4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80130BA8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80130BAC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80130BB0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80130BB4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80130BB8  7C 08 03 A6 */	mtlr r0
/* 80130BBC  38 21 00 50 */	addi r1, r1, 0x50
/* 80130BC0  4E 80 00 20 */	blr 

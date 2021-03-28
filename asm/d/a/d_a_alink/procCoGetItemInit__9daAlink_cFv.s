lbl_8011A798:
/* 8011A798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011A79C  7C 08 02 A6 */	mflr r0
/* 8011A7A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011A7A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8011A7A8  48 24 7A 31 */	bl _savegpr_28
/* 8011A7AC  7C 7D 1B 78 */	mr r29, r3
/* 8011A7B0  3B E0 00 00 */	li r31, 0
/* 8011A7B4  3B C0 00 00 */	li r30, 0
/* 8011A7B8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 8011A7BC  28 00 01 48 */	cmplwi r0, 0x148
/* 8011A7C0  41 82 00 20 */	beq lbl_8011A7E0
/* 8011A7C4  28 00 00 74 */	cmplwi r0, 0x74
/* 8011A7C8  41 82 00 18 */	beq lbl_8011A7E0
/* 8011A7CC  28 00 00 00 */	cmplwi r0, 0
/* 8011A7D0  40 82 00 18 */	bne lbl_8011A7E8
/* 8011A7D4  4B F9 EA 81 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 8011A7D8  2C 03 00 00 */	cmpwi r3, 0
/* 8011A7DC  40 82 00 0C */	bne lbl_8011A7E8
lbl_8011A7E0:
/* 8011A7E0  38 60 00 01 */	li r3, 1
/* 8011A7E4  48 00 04 2C */	b lbl_8011AC10
lbl_8011A7E8:
/* 8011A7E8  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 8011A7EC  28 00 01 46 */	cmplwi r0, 0x146
/* 8011A7F0  41 82 00 0C */	beq lbl_8011A7FC
/* 8011A7F4  28 00 01 57 */	cmplwi r0, 0x157
/* 8011A7F8  40 82 00 14 */	bne lbl_8011A80C
lbl_8011A7FC:
/* 8011A7FC  28 00 01 46 */	cmplwi r0, 0x146
/* 8011A800  40 82 00 08 */	bne lbl_8011A808
/* 8011A804  3B E0 00 01 */	li r31, 1
lbl_8011A808:
/* 8011A808  3B C0 00 01 */	li r30, 1
lbl_8011A80C:
/* 8011A80C  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 8011A810  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8011A814  90 1D 19 9C */	stw r0, 0x199c(r29)
/* 8011A818  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 8011A81C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011A820  40 82 00 8C */	bne lbl_8011A8AC
/* 8011A824  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8011A828  28 00 00 FF */	cmplwi r0, 0xff
/* 8011A82C  41 82 00 80 */	beq lbl_8011A8AC
/* 8011A830  2C 1E 00 00 */	cmpwi r30, 0
/* 8011A834  40 82 00 78 */	bne lbl_8011A8AC
/* 8011A838  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 8011A83C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8011A840  40 82 00 44 */	bne lbl_8011A884
/* 8011A844  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8011A848  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8011A84C  38 63 00 FE */	addi r3, r3, 0xfe
/* 8011A850  4B F8 32 11 */	bl checkStageName__9daAlink_cFPCc
/* 8011A854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011A858  41 82 00 40 */	beq lbl_8011A898
/* 8011A85C  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8011A860  28 00 00 40 */	cmplwi r0, 0x40
/* 8011A864  40 82 00 34 */	bne lbl_8011A898
/* 8011A868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011A86C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011A870  38 63 00 CC */	addi r3, r3, 0xcc
/* 8011A874  38 80 00 40 */	li r4, 0x40
/* 8011A878  4B F1 96 51 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8011A87C  2C 03 00 00 */	cmpwi r3, 0
/* 8011A880  40 82 00 18 */	bne lbl_8011A898
lbl_8011A884:
/* 8011A884  7F A3 EB 78 */	mr r3, r29
/* 8011A888  38 80 00 00 */	li r4, 0
/* 8011A88C  38 A0 00 00 */	li r5, 0
/* 8011A890  4B FA 6A 4D */	bl deleteEquipItem__9daAlink_cFii
/* 8011A894  48 00 00 18 */	b lbl_8011A8AC
lbl_8011A898:
/* 8011A898  7F A3 EB 78 */	mr r3, r29
/* 8011A89C  38 80 01 48 */	li r4, 0x148
/* 8011A8A0  38 A0 00 00 */	li r5, 0
/* 8011A8A4  4B FA 85 39 */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 8011A8A8  48 00 03 68 */	b lbl_8011AC10
lbl_8011A8AC:
/* 8011A8AC  7F A3 EB 78 */	mr r3, r29
/* 8011A8B0  38 80 01 48 */	li r4, 0x148
/* 8011A8B4  4B FA 76 B9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011A8B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011A8BC  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8011A8C0  38 00 00 00 */	li r0, 0
/* 8011A8C4  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 8011A8C8  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8011A8CC  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 8011A8D0  2C 00 00 00 */	cmpwi r0, 0
/* 8011A8D4  41 82 00 6C */	beq lbl_8011A940
/* 8011A8D8  2C 00 01 00 */	cmpwi r0, 0x100
/* 8011A8DC  41 82 00 0C */	beq lbl_8011A8E8
/* 8011A8E0  7C 1C 03 78 */	mr r28, r0
/* 8011A8E4  48 00 00 10 */	b lbl_8011A8F4
lbl_8011A8E8:
/* 8011A8E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011A8EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011A8F0  8B 83 4F B7 */	lbz r28, 0x4fb7(r3)
lbl_8011A8F4:
/* 8011A8F4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8011A8F8  7F 84 E3 78 */	mr r4, r28
/* 8011A8FC  38 A0 00 00 */	li r5, 0
/* 8011A900  38 C0 FF FF */	li r6, -1
/* 8011A904  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8011A908  7C 07 07 74 */	extsb r7, r0
/* 8011A90C  39 00 00 00 */	li r8, 0
/* 8011A910  39 20 00 00 */	li r9, 0
/* 8011A914  4B F0 12 D5 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 8011A918  7C 64 1B 78 */	mr r4, r3
/* 8011A91C  3C 04 00 01 */	addis r0, r4, 1
/* 8011A920  28 00 FF FF */	cmplwi r0, 0xffff
/* 8011A924  41 82 00 14 */	beq lbl_8011A938
/* 8011A928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011A92C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011A930  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8011A934  4B F2 8D B9 */	bl setPtI_Id__14dEvt_control_cFUi
lbl_8011A938:
/* 8011A938  B3 9D 30 0C */	sth r28, 0x300c(r29)
/* 8011A93C  48 00 00 2C */	b lbl_8011A968
lbl_8011A940:
/* 8011A940  7F A3 EB 78 */	mr r3, r29
/* 8011A944  4B F0 12 01 */	bl fopAcM_getItemEventPartner__FPC10fopAc_ac_c
/* 8011A948  28 03 00 00 */	cmplwi r3, 0
/* 8011A94C  41 82 00 14 */	beq lbl_8011A960
/* 8011A950  4B F1 D1 0D */	bl getItemNo__12daItemBase_cFv
/* 8011A954  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011A958  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8011A95C  48 00 00 0C */	b lbl_8011A968
lbl_8011A960:
/* 8011A960  38 00 FF FF */	li r0, -1
/* 8011A964  B0 1D 30 0C */	sth r0, 0x300c(r29)
lbl_8011A968:
/* 8011A968  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 8011A96C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011A970  41 82 00 78 */	beq lbl_8011A9E8
/* 8011A974  2C 1E 00 00 */	cmpwi r30, 0
/* 8011A978  41 82 00 14 */	beq lbl_8011A98C
/* 8011A97C  7F A3 EB 78 */	mr r3, r29
/* 8011A980  38 80 00 83 */	li r4, 0x83
/* 8011A984  48 00 EC F5 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011A988  48 00 00 20 */	b lbl_8011A9A8
lbl_8011A98C:
/* 8011A98C  7F A3 EB 78 */	mr r3, r29
/* 8011A990  38 80 00 83 */	li r4, 0x83
/* 8011A994  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011A998  C0 42 93 30 */	lfs f2, lit_7625(r2)
/* 8011A99C  38 A0 FF FF */	li r5, -1
/* 8011A9A0  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8011A9A4  48 00 ED 61 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
lbl_8011A9A8:
/* 8011A9A8  38 00 00 0C */	li r0, 0xc
/* 8011A9AC  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 8011A9B0  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8011A9B4  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8011A9B8  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 8011A9BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011A9C0  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 8011A9C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011A9C8  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 8011A9CC  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 8011A9D0  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 8011A9D4  C0 02 93 C8 */	lfs f0, lit_10286(r2)
/* 8011A9D8  D0 1D 34 80 */	stfs f0, 0x3480(r29)
/* 8011A9DC  C0 02 96 64 */	lfs f0, lit_37527(r2)
/* 8011A9E0  D0 1D 34 84 */	stfs f0, 0x3484(r29)
/* 8011A9E4  48 00 01 30 */	b lbl_8011AB14
lbl_8011A9E8:
/* 8011A9E8  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 8011A9EC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8011A9F0  41 82 00 A4 */	beq lbl_8011AA94
/* 8011A9F4  7F A3 EB 78 */	mr r3, r29
/* 8011A9F8  38 80 01 7F */	li r4, 0x17f
/* 8011A9FC  4B F9 25 85 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011AA00  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8011AA04  2C 00 FF FF */	cmpwi r0, -1
/* 8011AA08  41 82 00 10 */	beq lbl_8011AA18
/* 8011AA0C  7F A3 EB 78 */	mr r3, r29
/* 8011AA10  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8011AA14  4B FF D7 8D */	bl setGetItemFace__9daAlink_cFUs
lbl_8011AA18:
/* 8011AA18  38 00 00 00 */	li r0, 0
/* 8011AA1C  88 7D 2F AA */	lbz r3, 0x2faa(r29)
/* 8011AA20  28 03 00 01 */	cmplwi r3, 1
/* 8011AA24  41 82 00 0C */	beq lbl_8011AA30
/* 8011AA28  28 03 00 02 */	cmplwi r3, 2
/* 8011AA2C  40 82 00 08 */	bne lbl_8011AA34
lbl_8011AA30:
/* 8011AA30  38 00 00 01 */	li r0, 1
lbl_8011AA34:
/* 8011AA34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8011AA38  41 82 00 48 */	beq lbl_8011AA80
/* 8011AA3C  7F A3 EB 78 */	mr r3, r29
/* 8011AA40  4B FD 2F E5 */	bl setSyncRidePos__9daAlink_cFv
/* 8011AA44  7F A3 EB 78 */	mr r3, r29
/* 8011AA48  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8011AA4C  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 8011AA50  7D 89 03 A6 */	mtctr r12
/* 8011AA54  4E 80 04 21 */	bctrl 
/* 8011AA58  28 03 00 00 */	cmplwi r3, 0
/* 8011AA5C  41 82 00 24 */	beq lbl_8011AA80
/* 8011AA60  7F A3 EB 78 */	mr r3, r29
/* 8011AA64  38 80 02 6E */	li r4, 0x26e
/* 8011AA68  38 A0 00 02 */	li r5, 2
/* 8011AA6C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011AA70  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8011AA74  38 C0 FF FF */	li r6, -1
/* 8011AA78  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8011AA7C  4B F9 2E E9 */	bl setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf
lbl_8011AA80:
/* 8011AA80  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 8011AA84  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8011AA88  38 00 00 01 */	li r0, 1
/* 8011AA8C  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 8011AA90  48 00 00 84 */	b lbl_8011AB14
lbl_8011AA94:
/* 8011AA94  2C 1E 00 00 */	cmpwi r30, 0
/* 8011AA98  41 82 00 14 */	beq lbl_8011AAAC
/* 8011AA9C  7F A3 EB 78 */	mr r3, r29
/* 8011AAA0  38 80 00 D2 */	li r4, 0xd2
/* 8011AAA4  4B F9 24 DD */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011AAA8  48 00 00 30 */	b lbl_8011AAD8
lbl_8011AAAC:
/* 8011AAAC  7F A3 EB 78 */	mr r3, r29
/* 8011AAB0  38 80 00 D3 */	li r4, 0xd3
/* 8011AAB4  4B F9 24 CD */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011AAB8  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8011AABC  2C 00 FF FF */	cmpwi r0, -1
/* 8011AAC0  41 82 00 10 */	beq lbl_8011AAD0
/* 8011AAC4  7F A3 EB 78 */	mr r3, r29
/* 8011AAC8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8011AACC  4B FF D6 D5 */	bl setGetItemFace__9daAlink_cFUs
lbl_8011AAD0:
/* 8011AAD0  38 00 FF F9 */	li r0, -7
/* 8011AAD4  B0 1D 30 0A */	sth r0, 0x300a(r29)
lbl_8011AAD8:
/* 8011AAD8  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 8011AADC  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 8011AAE0  C0 02 94 04 */	lfs f0, lit_13794(r2)
/* 8011AAE4  D0 1D 34 80 */	stfs f0, 0x3480(r29)
/* 8011AAE8  C0 02 96 68 */	lfs f0, lit_37528(r2)
/* 8011AAEC  D0 1D 34 84 */	stfs f0, 0x3484(r29)
/* 8011AAF0  38 00 00 0C */	li r0, 0xc
/* 8011AAF4  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 8011AAF8  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 8011AAFC  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 8011AB00  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 8011AB04  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011AB08  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 8011AB0C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011AB10  D0 1D 35 90 */	stfs f0, 0x3590(r29)
lbl_8011AB14:
/* 8011AB14  38 60 00 00 */	li r3, 0
/* 8011AB18  B0 7D 30 10 */	sth r3, 0x3010(r29)
/* 8011AB1C  2C 1F 00 00 */	cmpwi r31, 0
/* 8011AB20  41 82 00 18 */	beq lbl_8011AB38
/* 8011AB24  38 00 80 00 */	li r0, -32768
/* 8011AB28  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8011AB2C  38 00 00 01 */	li r0, 1
/* 8011AB30  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 8011AB34  48 00 00 84 */	b lbl_8011ABB8
lbl_8011AB38:
/* 8011AB38  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 8011AB3C  2C 00 00 02 */	cmpwi r0, 2
/* 8011AB40  40 82 00 0C */	bne lbl_8011AB4C
/* 8011AB44  B0 7D 30 0E */	sth r3, 0x300e(r29)
/* 8011AB48  48 00 00 70 */	b lbl_8011ABB8
lbl_8011AB4C:
/* 8011AB4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011AB50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011AB54  80 1D 31 7C */	lwz r0, 0x317c(r29)
/* 8011AB58  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8011AB5C  7C 63 02 14 */	add r3, r3, r0
/* 8011AB60  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8011AB64  A8 63 02 32 */	lha r3, 0x232(r3)
/* 8011AB68  3C 63 00 01 */	addis r3, r3, 1
/* 8011AB6C  38 63 80 00 */	addi r3, r3, -32768
/* 8011AB70  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8011AB74  7C 03 00 50 */	subf r0, r3, r0
/* 8011AB78  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8011AB7C  A8 7D 30 0E */	lha r3, 0x300e(r29)
/* 8011AB80  38 03 16 C1 */	addi r0, r3, 0x16c1
/* 8011AB84  7C 1C 07 34 */	extsh r28, r0
/* 8011AB88  38 03 E9 3F */	addi r0, r3, -5825
/* 8011AB8C  7C 1F 07 34 */	extsh r31, r0
/* 8011AB90  7F E3 FB 78 */	mr r3, r31
/* 8011AB94  48 24 A5 3D */	bl abs
/* 8011AB98  7C 7E 1B 78 */	mr r30, r3
/* 8011AB9C  7F 83 E3 78 */	mr r3, r28
/* 8011ABA0  48 24 A5 31 */	bl abs
/* 8011ABA4  7C 03 F0 00 */	cmpw r3, r30
/* 8011ABA8  40 81 00 0C */	ble lbl_8011ABB4
/* 8011ABAC  B3 FD 30 0E */	sth r31, 0x300e(r29)
/* 8011ABB0  48 00 00 08 */	b lbl_8011ABB8
lbl_8011ABB4:
/* 8011ABB4  B3 9D 30 0E */	sth r28, 0x300e(r29)
lbl_8011ABB8:
/* 8011ABB8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8011ABBC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8011ABC0  38 00 FF FF */	li r0, -1
/* 8011ABC4  90 1D 28 F0 */	stw r0, 0x28f0(r29)
/* 8011ABC8  38 00 00 00 */	li r0, 0
/* 8011ABCC  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 8011ABD0  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 8011ABD4  90 1D 32 CC */	stw r0, 0x32cc(r29)
/* 8011ABD8  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 8011ABDC  48 08 D5 8D */	bl dKy_Itemgetcol_chg_on__Fv
/* 8011ABE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011ABE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011ABE8  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8011ABEC  64 00 04 00 */	oris r0, r0, 0x400
/* 8011ABF0  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8011ABF4  A8 1D 30 10 */	lha r0, 0x3010(r29)
/* 8011ABF8  2C 00 00 00 */	cmpwi r0, 0
/* 8011ABFC  41 82 00 10 */	beq lbl_8011AC0C
/* 8011AC00  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 8011AC04  60 00 00 08 */	ori r0, r0, 8
/* 8011AC08  90 1D 05 8C */	stw r0, 0x58c(r29)
lbl_8011AC0C:
/* 8011AC0C  38 60 00 01 */	li r3, 1
lbl_8011AC10:
/* 8011AC10  39 61 00 20 */	addi r11, r1, 0x20
/* 8011AC14  48 24 76 11 */	bl _restgpr_28
/* 8011AC18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011AC1C  7C 08 03 A6 */	mtlr r0
/* 8011AC20  38 21 00 20 */	addi r1, r1, 0x20
/* 8011AC24  4E 80 00 20 */	blr 

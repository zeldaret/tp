lbl_801110B8:
/* 801110B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801110BC  7C 08 02 A6 */	mflr r0
/* 801110C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801110C4  39 61 00 20 */	addi r11, r1, 0x20
/* 801110C8  48 25 11 11 */	bl _savegpr_28
/* 801110CC  7C 7E 1B 78 */	mr r30, r3
/* 801110D0  7C 9F 23 78 */	mr r31, r4
/* 801110D4  80 63 07 18 */	lwz r3, 0x718(r3)
/* 801110D8  4B F9 81 71 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 801110DC  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 801110E0  4B F9 81 69 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 801110E4  2C 1F 00 00 */	cmpwi r31, 0
/* 801110E8  41 82 00 10 */	beq lbl_801110F8
/* 801110EC  3B BE 20 48 */	addi r29, r30, 0x2048
/* 801110F0  A3 9E 1F BC */	lhz r28, 0x1fbc(r30)
/* 801110F4  48 00 00 0C */	b lbl_80111100
lbl_801110F8:
/* 801110F8  3B BE 1F D0 */	addi r29, r30, 0x1fd0
/* 801110FC  A3 9E 1F 58 */	lhz r28, 0x1f58(r30)
lbl_80111100:
/* 80111100  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80111104  64 00 10 00 */	oris r0, r0, 0x1000
/* 80111108  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8011110C  7F C3 F3 78 */	mr r3, r30
/* 80111110  38 80 01 0C */	li r4, 0x10c
/* 80111114  4B F9 B3 3D */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80111118  A0 63 00 00 */	lhz r3, 0(r3)
/* 8011111C  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80111120  7C 00 18 40 */	cmplw r0, r3
/* 80111124  40 82 00 A0 */	bne lbl_801111C4
/* 80111128  7F A3 EB 78 */	mr r3, r29
/* 8011112C  48 04 D3 A1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80111130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80111134  41 82 00 58 */	beq lbl_8011118C
/* 80111138  2C 1F 00 00 */	cmpwi r31, 0
/* 8011113C  41 82 00 24 */	beq lbl_80111160
/* 80111140  7F C3 F3 78 */	mr r3, r30
/* 80111144  38 80 01 0D */	li r4, 0x10d
/* 80111148  4B F9 B3 09 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8011114C  A0 83 00 02 */	lhz r4, 2(r3)
/* 80111150  7F C3 F3 78 */	mr r3, r30
/* 80111154  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80111158  4B F9 C2 1D */	bl setUpperAnimeBaseMorf__9daAlink_cFUsf
/* 8011115C  48 00 00 14 */	b lbl_80111170
lbl_80111160:
/* 80111160  7F C3 F3 78 */	mr r3, r30
/* 80111164  38 80 01 0D */	li r4, 0x10d
/* 80111168  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011116C  4B F9 BE 45 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
lbl_80111170:
/* 80111170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111174  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111178  A0 64 00 06 */	lhz r3, 6(r4)
/* 8011117C  80 04 5D D4 */	lwz r0, 0x5dd4(r4)
/* 80111180  7C 00 1A 14 */	add r0, r0, r3
/* 80111184  90 04 5D D4 */	stw r0, 0x5dd4(r4)
/* 80111188  48 00 01 68 */	b lbl_801112F0
lbl_8011118C:
/* 8011118C  7F A3 EB 78 */	mr r3, r29
/* 80111190  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 80111194  48 21 72 99 */	bl checkPass__12J3DFrameCtrlFf
/* 80111198  2C 03 00 00 */	cmpwi r3, 0
/* 8011119C  41 82 01 54 */	beq lbl_801112F0
/* 801111A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801111A4  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 801111A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 801111AC  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 801111B0  80 63 00 04 */	lwz r3, 4(r3)
/* 801111B4  38 63 00 58 */	addi r3, r3, 0x58
/* 801111B8  80 9E 07 1C */	lwz r4, 0x71c(r30)
/* 801111BC  48 21 EB 09 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 801111C0  48 00 01 30 */	b lbl_801112F0
lbl_801111C4:
/* 801111C4  7F C3 F3 78 */	mr r3, r30
/* 801111C8  38 80 01 0D */	li r4, 0x10d
/* 801111CC  4B F9 B2 85 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 801111D0  A0 63 00 00 */	lhz r3, 0(r3)
/* 801111D4  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 801111D8  7C 00 18 40 */	cmplw r0, r3
/* 801111DC  40 82 00 C8 */	bne lbl_801112A4
/* 801111E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801111E4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801111E8  A0 64 00 08 */	lhz r3, 8(r4)
/* 801111EC  80 04 5D D8 */	lwz r0, 0x5dd8(r4)
/* 801111F0  7C 00 18 00 */	cmpw r0, r3
/* 801111F4  40 82 00 FC */	bne lbl_801112F0
/* 801111F8  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 801111FC  2C 00 00 00 */	cmpwi r0, 0
/* 80111200  40 82 00 24 */	bne lbl_80111224
/* 80111204  38 00 00 01 */	li r0, 1
/* 80111208  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8011120C  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 80111210  80 63 00 04 */	lwz r3, 4(r3)
/* 80111214  38 63 00 58 */	addi r3, r3, 0x58
/* 80111218  80 9E 07 20 */	lwz r4, 0x720(r30)
/* 8011121C  48 21 EA A9 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80111220  48 00 00 D0 */	b lbl_801112F0
lbl_80111224:
/* 80111224  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80111228  4B F9 80 21 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 8011122C  2C 03 00 00 */	cmpwi r3, 0
/* 80111230  41 82 00 C0 */	beq lbl_801112F0
/* 80111234  2C 1F 00 00 */	cmpwi r31, 0
/* 80111238  41 82 00 30 */	beq lbl_80111268
/* 8011123C  7F C3 F3 78 */	mr r3, r30
/* 80111240  38 80 01 0E */	li r4, 0x10e
/* 80111244  4B F9 B2 0D */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80111248  A0 83 00 02 */	lhz r4, 2(r3)
/* 8011124C  7F C3 F3 78 */	mr r3, r30
/* 80111250  38 A0 00 02 */	li r5, 2
/* 80111254  3C C0 80 39 */	lis r6, m__23daAlinkHIO_kandelaar_c0@ha /* 0x8038E77C@ha */
/* 80111258  38 C6 E7 7C */	addi r6, r6, m__23daAlinkHIO_kandelaar_c0@l /* 0x8038E77C@l */
/* 8011125C  38 C6 00 28 */	addi r6, r6, 0x28
/* 80111260  4B F9 C4 91 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 80111264  48 00 00 1C */	b lbl_80111280
lbl_80111268:
/* 80111268  7F C3 F3 78 */	mr r3, r30
/* 8011126C  38 80 01 0E */	li r4, 0x10e
/* 80111270  3C A0 80 39 */	lis r5, m__23daAlinkHIO_kandelaar_c0@ha /* 0x8038E77C@ha */
/* 80111274  38 A5 E7 7C */	addi r5, r5, m__23daAlinkHIO_kandelaar_c0@l /* 0x8038E77C@l */
/* 80111278  38 A5 00 28 */	addi r5, r5, 0x28
/* 8011127C  4B F9 BE 79 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
lbl_80111280:
/* 80111280  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 80111284  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80111288  D0 03 00 08 */	stfs f0, 8(r3)
/* 8011128C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111290  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111294  38 63 00 9C */	addi r3, r3, 0x9c
/* 80111298  88 9E 2F 9C */	lbz r4, 0x2f9c(r30)
/* 8011129C  4B F2 24 21 */	bl setEquipBottleItemEmpty__17dSv_player_item_cFUc
/* 801112A0  48 00 00 50 */	b lbl_801112F0
lbl_801112A4:
/* 801112A4  7F A3 EB 78 */	mr r3, r29
/* 801112A8  48 04 D2 25 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801112AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801112B0  41 82 00 40 */	beq lbl_801112F0
/* 801112B4  2C 1F 00 00 */	cmpwi r31, 0
/* 801112B8  41 82 00 14 */	beq lbl_801112CC
/* 801112BC  7F C3 F3 78 */	mr r3, r30
/* 801112C0  38 80 00 02 */	li r4, 2
/* 801112C4  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 801112C8  4B F9 C4 5D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_801112CC:
/* 801112CC  7F C3 F3 78 */	mr r3, r30
/* 801112D0  4B FF FC B9 */	bl resetOilBottleModel__9daAlink_cFv
/* 801112D4  7F C3 F3 78 */	mr r3, r30
/* 801112D8  48 00 69 B9 */	bl resetSpecialEvent__9daAlink_cFv
/* 801112DC  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 801112E0  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 801112E4  90 1E 05 78 */	stw r0, 0x578(r30)
/* 801112E8  38 60 00 01 */	li r3, 1
/* 801112EC  48 00 00 08 */	b lbl_801112F4
lbl_801112F0:
/* 801112F0  38 60 00 00 */	li r3, 0
lbl_801112F4:
/* 801112F4  39 61 00 20 */	addi r11, r1, 0x20
/* 801112F8  48 25 0F 2D */	bl _restgpr_28
/* 801112FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80111300  7C 08 03 A6 */	mtlr r0
/* 80111304  38 21 00 20 */	addi r1, r1, 0x20
/* 80111308  4E 80 00 20 */	blr 

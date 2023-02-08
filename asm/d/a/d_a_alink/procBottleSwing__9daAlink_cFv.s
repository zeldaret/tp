lbl_8010FF58:
/* 8010FF58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010FF5C  7C 08 02 A6 */	mflr r0
/* 8010FF60  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010FF64  39 61 00 30 */	addi r11, r1, 0x30
/* 8010FF68  48 25 22 75 */	bl _savegpr_29
/* 8010FF6C  7C 7E 1B 78 */	mr r30, r3
/* 8010FF70  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8010FF74  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8010FF78  2C 00 00 00 */	cmpwi r0, 0
/* 8010FF7C  40 82 02 C8 */	bne lbl_80110244
/* 8010FF80  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8010FF84  28 00 00 06 */	cmplwi r0, 6
/* 8010FF88  40 82 02 00 */	bne lbl_80110188
/* 8010FF8C  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8010FF90  2C 00 00 00 */	cmpwi r0, 0
/* 8010FF94  40 82 00 3C */	bne lbl_8010FFD0
/* 8010FF98  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010FF9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8010FFA0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010FFA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8010FFA8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8010FFAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010FFB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010FFB4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8010FFB8  38 80 00 01 */	li r4, 1
/* 8010FFBC  38 A0 00 01 */	li r5, 1
/* 8010FFC0  38 C1 00 08 */	addi r6, r1, 8
/* 8010FFC4  4B F5 FA 61 */	bl StartShock__12dVibration_cFii4cXyz
/* 8010FFC8  38 00 00 01 */	li r0, 1
/* 8010FFCC  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_8010FFD0:
/* 8010FFD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010FFD4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010FFD8  80 1D 5F 1C */	lwz r0, 0x5f1c(r29)
/* 8010FFDC  64 00 04 00 */	oris r0, r0, 0x400
/* 8010FFE0  90 1D 5F 1C */	stw r0, 0x5f1c(r29)
/* 8010FFE4  38 7D 5B 54 */	addi r3, r29, 0x5b54
/* 8010FFE8  80 9D 5B 64 */	lwz r4, 0x5b64(r29)
/* 8010FFEC  4B F6 39 A1 */	bl convPId__11dAttCatch_cFUi
/* 8010FFF0  28 03 00 00 */	cmplwi r3, 0
/* 8010FFF4  41 82 00 20 */	beq lbl_80110014
/* 8010FFF8  38 7D 5B 54 */	addi r3, r29, 0x5b54
/* 8010FFFC  80 9D 5B 64 */	lwz r4, 0x5b64(r29)
/* 80110000  4B F6 39 8D */	bl convPId__11dAttCatch_cFUi
/* 80110004  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80110008  60 00 08 00 */	ori r0, r0, 0x800
/* 8011000C  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80110010  48 00 00 1C */	b lbl_8011002C
lbl_80110014:
/* 80110014  80 7E 28 10 */	lwz r3, 0x2810(r30)
/* 80110018  28 03 00 00 */	cmplwi r3, 0
/* 8011001C  41 82 00 10 */	beq lbl_8011002C
/* 80110020  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80110024  60 00 08 00 */	ori r0, r0, 0x800
/* 80110028  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_8011002C:
/* 8011002C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80110030  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 80110034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80110038  40 81 02 0C */	ble lbl_80110244
/* 8011003C  38 00 00 01 */	li r0, 1
/* 80110040  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 80110044  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80110048  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8011004C  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 80110050  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 80110054  28 00 00 48 */	cmplwi r0, 0x48
/* 80110058  41 82 01 24 */	beq lbl_8011017C
/* 8011005C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80110060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80110064  8B A3 4F B6 */	lbz r29, 0x4fb6(r3)
/* 80110068  28 1D 00 67 */	cmplwi r29, 0x67
/* 8011006C  40 82 00 20 */	bne lbl_8011008C
/* 80110070  38 7E 1A F0 */	addi r3, r30, 0x1af0
/* 80110074  38 80 00 00 */	li r4, 0
/* 80110078  4B F9 21 69 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 8011007C  7C 60 07 34 */	extsh r0, r3
/* 80110080  2C 00 00 82 */	cmpwi r0, 0x82
/* 80110084  40 82 00 08 */	bne lbl_8011008C
/* 80110088  3B A0 00 6B */	li r29, 0x6b
lbl_8011008C:
/* 8011008C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80110090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80110094  38 63 00 9C */	addi r3, r3, 0x9c
/* 80110098  88 9E 2F 9C */	lbz r4, 0x2f9c(r30)
/* 8011009C  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 801100A0  4B F2 34 F9 */	bl setEquipBottleItemIn__17dSv_player_item_cFUcUc
/* 801100A4  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 801100A8  28 03 00 76 */	cmplwi r3, 0x76
/* 801100AC  40 82 00 18 */	bne lbl_801100C4
/* 801100B0  4B F1 E5 09 */	bl dComIfGs_getBottleMax__Fv
/* 801100B4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 801100B8  88 7E 2F 9C */	lbz r3, 0x2f9c(r30)
/* 801100BC  4B F1 E6 59 */	bl dComIfGp_setSelectItemNum__Fis
/* 801100C0  48 00 00 90 */	b lbl_80110150
lbl_801100C4:
/* 801100C4  28 03 00 67 */	cmplwi r3, 0x67
/* 801100C8  40 82 00 24 */	bne lbl_801100EC
/* 801100CC  7F C3 F3 78 */	mr r3, r30
/* 801100D0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004D@ha */
/* 801100D4  38 84 00 4D */	addi r4, r4, 0x004D /* 0x0002004D@l */
/* 801100D8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 801100DC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 801100E0  7D 89 03 A6 */	mtctr r12
/* 801100E4  4E 80 04 21 */	bctrl 
/* 801100E8  48 00 00 68 */	b lbl_80110150
lbl_801100EC:
/* 801100EC  48 04 EA 55 */	bl checkOilBottleItem__9daPy_py_cFi
/* 801100F0  2C 03 00 00 */	cmpwi r3, 0
/* 801100F4  41 82 00 24 */	beq lbl_80110118
/* 801100F8  7F C3 F3 78 */	mr r3, r30
/* 801100FC  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200AA@ha */
/* 80110100  38 84 00 AA */	addi r4, r4, 0x00AA /* 0x000200AA@l */
/* 80110104  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80110108  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8011010C  7D 89 03 A6 */	mtctr r12
/* 80110110  4E 80 04 21 */	bctrl 
/* 80110114  48 00 00 3C */	b lbl_80110150
lbl_80110118:
/* 80110118  38 1D FF 83 */	addi r0, r29, -125
/* 8011011C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80110120  28 00 00 01 */	cmplwi r0, 1
/* 80110124  40 81 00 10 */	ble lbl_80110134
/* 80110128  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8011012C  28 00 00 7F */	cmplwi r0, 0x7f
/* 80110130  40 82 00 20 */	bne lbl_80110150
lbl_80110134:
/* 80110134  7F C3 F3 78 */	mr r3, r30
/* 80110138  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200AB@ha */
/* 8011013C  38 84 00 AB */	addi r4, r4, 0x00AB /* 0x000200AB@l */
/* 80110140  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80110144  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80110148  7D 89 03 A6 */	mtctr r12
/* 8011014C  4E 80 04 21 */	bctrl 
lbl_80110150:
/* 80110150  7F C3 F3 78 */	mr r3, r30
/* 80110154  7F A4 EB 78 */	mr r4, r29
/* 80110158  4B FF E4 81 */	bl setBottleModel__9daAlink_cFUs
/* 8011015C  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 80110160  80 63 00 04 */	lwz r3, 4(r3)
/* 80110164  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80110168  80 63 00 00 */	lwz r3, 0(r3)
/* 8011016C  80 63 00 08 */	lwz r3, 8(r3)
/* 80110170  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80110174  60 00 00 01 */	ori r0, r0, 1
/* 80110178  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8011017C:
/* 8011017C  38 00 00 05 */	li r0, 5
/* 80110180  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 80110184  48 00 00 C0 */	b lbl_80110244
lbl_80110188:
/* 80110188  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8011018C  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 80110190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80110194  4C 40 13 82 */	cror 2, 0, 2
/* 80110198  40 82 00 AC */	bne lbl_80110244
/* 8011019C  88 7E 2F 9C */	lbz r3, 0x2f9c(r30)
/* 801101A0  4B F1 DD 7D */	bl dComIfGp_getSelectItem__Fi
/* 801101A4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801101A8  28 00 00 60 */	cmplwi r0, 0x60
/* 801101AC  40 82 00 70 */	bne lbl_8011021C
/* 801101B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801101B4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801101B8  38 7D 5B 54 */	addi r3, r29, 0x5b54
/* 801101BC  80 9D 5B 64 */	lwz r4, 0x5b64(r29)
/* 801101C0  4B F6 37 CD */	bl convPId__11dAttCatch_cFUi
/* 801101C4  28 03 00 00 */	cmplwi r3, 0
/* 801101C8  40 82 00 30 */	bne lbl_801101F8
/* 801101CC  88 1E 2F BC */	lbz r0, 0x2fbc(r30)
/* 801101D0  28 00 00 0B */	cmplwi r0, 0xb
/* 801101D4  41 82 00 48 */	beq lbl_8011021C
/* 801101D8  28 00 00 06 */	cmplwi r0, 6
/* 801101DC  41 82 00 40 */	beq lbl_8011021C
/* 801101E0  C0 5E 33 B4 */	lfs f2, 0x33b4(r30)
/* 801101E4  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 801101E8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 801101EC  EC 01 00 2A */	fadds f0, f1, f0
/* 801101F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801101F4  40 81 00 28 */	ble lbl_8011021C
lbl_801101F8:
/* 801101F8  38 7D 5B 54 */	addi r3, r29, 0x5b54
/* 801101FC  80 9D 5B 64 */	lwz r4, 0x5b64(r29)
/* 80110200  4B F6 37 8D */	bl convPId__11dAttCatch_cFUi
/* 80110204  7C 64 1B 78 */	mr r4, r3
/* 80110208  7F C3 F3 78 */	mr r3, r30
/* 8011020C  38 A0 00 00 */	li r5, 0
/* 80110210  38 C0 00 00 */	li r6, 0
/* 80110214  4B F0 B1 21 */	bl fopAcM_orderCatchEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
/* 80110218  48 00 00 2C */	b lbl_80110244
lbl_8011021C:
/* 8011021C  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 80110220  28 00 00 48 */	cmplwi r0, 0x48
/* 80110224  40 82 00 20 */	bne lbl_80110244
/* 80110228  80 9E 28 10 */	lwz r4, 0x2810(r30)
/* 8011022C  28 04 00 00 */	cmplwi r4, 0
/* 80110230  41 82 00 14 */	beq lbl_80110244
/* 80110234  7F C3 F3 78 */	mr r3, r30
/* 80110238  38 A0 00 00 */	li r5, 0
/* 8011023C  38 C0 00 00 */	li r6, 0
/* 80110240  4B F0 B0 F5 */	bl fopAcM_orderCatchEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
lbl_80110244:
/* 80110244  7F E3 FB 78 */	mr r3, r31
/* 80110248  48 04 E2 85 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011024C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80110250  41 82 00 30 */	beq lbl_80110280
/* 80110254  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 80110258  2C 00 00 00 */	cmpwi r0, 0
/* 8011025C  41 82 00 14 */	beq lbl_80110270
/* 80110260  7F C3 F3 78 */	mr r3, r30
/* 80110264  A8 9E 30 10 */	lha r4, 0x3010(r30)
/* 80110268  48 00 00 69 */	bl procBottleGetInit__9daAlink_cFi
/* 8011026C  48 00 00 48 */	b lbl_801102B4
lbl_80110270:
/* 80110270  7F C3 F3 78 */	mr r3, r30
/* 80110274  38 80 00 00 */	li r4, 0
/* 80110278  4B FA 9E 59 */	bl checkNextAction__9daAlink_cFi
/* 8011027C  48 00 00 38 */	b lbl_801102B4
lbl_80110280:
/* 80110280  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80110284  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 80110288  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011028C  40 81 00 28 */	ble lbl_801102B4
/* 80110290  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 80110294  2C 00 00 00 */	cmpwi r0, 0
/* 80110298  40 82 00 1C */	bne lbl_801102B4
/* 8011029C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 801102A0  60 00 00 04 */	ori r0, r0, 4
/* 801102A4  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 801102A8  7F C3 F3 78 */	mr r3, r30
/* 801102AC  38 80 00 01 */	li r4, 1
/* 801102B0  4B FA 9E 21 */	bl checkNextAction__9daAlink_cFi
lbl_801102B4:
/* 801102B4  38 60 00 01 */	li r3, 1
/* 801102B8  39 61 00 30 */	addi r11, r1, 0x30
/* 801102BC  48 25 1F 6D */	bl _restgpr_29
/* 801102C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801102C4  7C 08 03 A6 */	mtlr r0
/* 801102C8  38 21 00 30 */	addi r1, r1, 0x30
/* 801102CC  4E 80 00 20 */	blr 

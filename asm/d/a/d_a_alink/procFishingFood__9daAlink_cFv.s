lbl_800F7AA8:
/* 800F7AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7AAC  7C 08 02 A6 */	mflr r0
/* 800F7AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7AB8  93 C1 00 08 */	stw r30, 8(r1)
/* 800F7ABC  7C 7E 1B 78 */	mr r30, r3
/* 800F7AC0  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 800F7AC4  48 06 6A 09 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F7AC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F7ACC  41 82 01 68 */	beq lbl_800F7C34
/* 800F7AD0  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800F7AD4  2C 00 00 00 */	cmpwi r0, 0
/* 800F7AD8  41 82 00 24 */	beq lbl_800F7AFC
/* 800F7ADC  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800F7AE0  2C 00 00 00 */	cmpwi r0, 0
/* 800F7AE4  41 82 00 0C */	beq lbl_800F7AF0
/* 800F7AE8  7F C3 F3 78 */	mr r3, r30
/* 800F7AEC  4B FC 7D 99 */	bl returnKeepItemData__9daAlink_cFv
lbl_800F7AF0:
/* 800F7AF0  7F C3 F3 78 */	mr r3, r30
/* 800F7AF4  48 02 01 9D */	bl resetSpecialEvent__9daAlink_cFv
/* 800F7AF8  48 00 01 3C */	b lbl_800F7C34
lbl_800F7AFC:
/* 800F7AFC  7F C3 F3 78 */	mr r3, r30
/* 800F7B00  38 80 01 04 */	li r4, 0x104
/* 800F7B04  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F7B08  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800F7B0C  A8 BE 1F D8 */	lha r5, 0x1fd8(r30)
/* 800F7B10  FC 60 08 90 */	fmr f3, f1
/* 800F7B14  4B FB 54 F9 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800F7B18  38 00 00 01 */	li r0, 1
/* 800F7B1C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800F7B20  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800F7B24  4B F3 63 F9 */	bl dComIfGp_getSelectItem__Fi
/* 800F7B28  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 800F7B2C  28 1F 00 74 */	cmplwi r31, 0x74
/* 800F7B30  41 82 00 18 */	beq lbl_800F7B48
/* 800F7B34  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800F7B38  4B F3 6A 89 */	bl dComIfGp_getSelectItemNum__Fi
/* 800F7B3C  7C 60 07 34 */	extsh r0, r3
/* 800F7B40  2C 00 00 01 */	cmpwi r0, 1
/* 800F7B44  40 82 00 20 */	bne lbl_800F7B64
lbl_800F7B48:
/* 800F7B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7B4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7B50  38 63 00 9C */	addi r3, r3, 0x9c
/* 800F7B54  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F7B58  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800F7B5C  4B F3 BB 61 */	bl setEquipBottleItemEmpty__17dSv_player_item_cFUc
/* 800F7B60  48 00 00 10 */	b lbl_800F7B70
lbl_800F7B64:
/* 800F7B64  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800F7B68  38 80 FF FF */	li r4, -1
/* 800F7B6C  4B F3 6C D1 */	bl dComIfGp_addSelectItemNum__Fis
lbl_800F7B70:
/* 800F7B70  A8 BE 30 1A */	lha r5, 0x301a(r30)
/* 800F7B74  2C 05 00 FF */	cmpwi r5, 0xff
/* 800F7B78  41 82 00 38 */	beq lbl_800F7BB0
/* 800F7B7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7B80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7B84  38 63 00 9C */	addi r3, r3, 0x9c
/* 800F7B88  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F7B8C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800F7B90  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 800F7B94  4B F3 BA 05 */	bl setEquipBottleItemIn__17dSv_player_item_cFUcUc
/* 800F7B98  A8 1E 30 1A */	lha r0, 0x301a(r30)
/* 800F7B9C  2C 00 00 76 */	cmpwi r0, 0x76
/* 800F7BA0  40 82 00 10 */	bne lbl_800F7BB0
/* 800F7BA4  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800F7BA8  38 80 00 01 */	li r4, 1
/* 800F7BAC  4B F3 6B 69 */	bl dComIfGp_setSelectItemNum__Fis
lbl_800F7BB0:
/* 800F7BB0  B3 FE 30 1A */	sth r31, 0x301a(r30)
/* 800F7BB4  38 00 00 00 */	li r0, 0
/* 800F7BB8  A0 7E 2F DC */	lhz r3, 0x2fdc(r30)
/* 800F7BBC  28 03 00 5C */	cmplwi r3, 0x5c
/* 800F7BC0  41 82 00 14 */	beq lbl_800F7BD4
/* 800F7BC4  28 03 00 5F */	cmplwi r3, 0x5f
/* 800F7BC8  41 82 00 0C */	beq lbl_800F7BD4
/* 800F7BCC  28 03 00 5E */	cmplwi r3, 0x5e
/* 800F7BD0  40 82 00 08 */	bne lbl_800F7BD8
lbl_800F7BD4:
/* 800F7BD4  38 00 00 01 */	li r0, 1
lbl_800F7BD8:
/* 800F7BD8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800F7BDC  28 1F 00 74 */	cmplwi r31, 0x74
/* 800F7BE0  40 82 00 24 */	bne lbl_800F7C04
/* 800F7BE4  2C 00 00 00 */	cmpwi r0, 0
/* 800F7BE8  41 82 00 10 */	beq lbl_800F7BF8
/* 800F7BEC  38 00 00 5F */	li r0, 0x5f
/* 800F7BF0  B0 1E 2F DC */	sth r0, 0x2fdc(r30)
/* 800F7BF4  48 00 00 2C */	b lbl_800F7C20
lbl_800F7BF8:
/* 800F7BF8  38 00 00 5D */	li r0, 0x5d
/* 800F7BFC  B0 1E 2F DC */	sth r0, 0x2fdc(r30)
/* 800F7C00  48 00 00 20 */	b lbl_800F7C20
lbl_800F7C04:
/* 800F7C04  2C 00 00 00 */	cmpwi r0, 0
/* 800F7C08  41 82 00 10 */	beq lbl_800F7C18
/* 800F7C0C  38 00 00 5E */	li r0, 0x5e
/* 800F7C10  B0 1E 2F DC */	sth r0, 0x2fdc(r30)
/* 800F7C14  48 00 00 0C */	b lbl_800F7C20
lbl_800F7C18:
/* 800F7C18  38 00 00 5B */	li r0, 0x5b
/* 800F7C1C  B0 1E 2F DC */	sth r0, 0x2fdc(r30)
lbl_800F7C20:
/* 800F7C20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7C24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7C28  38 63 00 9C */	addi r3, r3, 0x9c
/* 800F7C2C  7F E4 FB 78 */	mr r4, r31
/* 800F7C30  4B F3 C1 11 */	bl setBaitItem__17dSv_player_item_cFUc
lbl_800F7C34:
/* 800F7C34  38 60 00 01 */	li r3, 1
/* 800F7C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F7C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7C44  7C 08 03 A6 */	mtlr r0
/* 800F7C48  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7C4C  4E 80 00 20 */	blr 

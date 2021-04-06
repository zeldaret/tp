lbl_800C5AF0:
/* 800C5AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C5AF4  7C 08 02 A6 */	mflr r0
/* 800C5AF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C5AFC  39 61 00 20 */	addi r11, r1, 0x20
/* 800C5B00  48 29 C6 DD */	bl _savegpr_29
/* 800C5B04  7C 7F 1B 78 */	mr r31, r3
/* 800C5B08  3B BF 1F D0 */	addi r29, r31, 0x1fd0
/* 800C5B0C  88 03 2F CC */	lbz r0, 0x2fcc(r3)
/* 800C5B10  28 00 00 00 */	cmplwi r0, 0
/* 800C5B14  41 82 00 0C */	beq lbl_800C5B20
/* 800C5B18  38 00 00 0A */	li r0, 0xa
/* 800C5B1C  98 1F 2F CC */	stb r0, 0x2fcc(r31)
lbl_800C5B20:
/* 800C5B20  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800C5B24  64 00 08 00 */	oris r0, r0, 0x800
/* 800C5B28  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800C5B2C  7F A3 EB 78 */	mr r3, r29
/* 800C5B30  48 09 89 9D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C5B34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5B38  41 82 00 74 */	beq lbl_800C5BAC
/* 800C5B3C  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800C5B40  28 00 00 10 */	cmplwi r0, 0x10
/* 800C5B44  40 82 00 1C */	bne lbl_800C5B60
/* 800C5B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C5B4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C5B50  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800C5B54  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 800C5B58  4B F8 26 25 */	bl cutEnd__16dEvent_manager_cFi
/* 800C5B5C  48 00 00 B0 */	b lbl_800C5C0C
lbl_800C5B60:
/* 800C5B60  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800C5B64  3B A0 00 01 */	li r29, 1
/* 800C5B68  7F C3 F3 78 */	mr r3, r30
/* 800C5B6C  4B FA DC 79 */	bl LockonTruth__12dAttention_cFv
/* 800C5B70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5B74  40 82 00 14 */	bne lbl_800C5B88
/* 800C5B78  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800C5B7C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800C5B80  40 82 00 08 */	bne lbl_800C5B88
/* 800C5B84  3B A0 00 00 */	li r29, 0
lbl_800C5B88:
/* 800C5B88  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800C5B8C  40 82 00 10 */	bne lbl_800C5B9C
/* 800C5B90  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800C5B94  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 800C5B98  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_800C5B9C:
/* 800C5B9C  7F E3 FB 78 */	mr r3, r31
/* 800C5BA0  38 80 00 00 */	li r4, 0
/* 800C5BA4  4B FF 45 2D */	bl checkNextAction__9daAlink_cFi
/* 800C5BA8  48 00 00 64 */	b lbl_800C5C0C
lbl_800C5BAC:
/* 800C5BAC  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800C5BB0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_backJump_c0@ha /* 0x8038D82C@ha */
/* 800C5BB4  38 63 D8 2C */	addi r3, r3, m__22daAlinkHIO_backJump_c0@l /* 0x8038D82C@l */
/* 800C5BB8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800C5BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C5BC0  40 81 00 4C */	ble lbl_800C5C0C
/* 800C5BC4  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C5BC8  28 00 01 03 */	cmplwi r0, 0x103
/* 800C5BCC  40 82 00 34 */	bne lbl_800C5C00
/* 800C5BD0  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800C5BD4  2C 00 00 02 */	cmpwi r0, 2
/* 800C5BD8  40 82 00 14 */	bne lbl_800C5BEC
/* 800C5BDC  7F E3 FB 78 */	mr r3, r31
/* 800C5BE0  48 00 B8 05 */	bl checkCutTurnInput__9daAlink_cCFv
/* 800C5BE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5BE8  41 82 00 18 */	beq lbl_800C5C00
lbl_800C5BEC:
/* 800C5BEC  7F E3 FB 78 */	mr r3, r31
/* 800C5BF0  38 80 00 01 */	li r4, 1
/* 800C5BF4  80 BF 31 98 */	lwz r5, 0x3198(r31)
/* 800C5BF8  48 00 EB E5 */	bl procCutTurnInit__9daAlink_cFii
/* 800C5BFC  48 00 00 14 */	b lbl_800C5C10
lbl_800C5C00:
/* 800C5C00  7F E3 FB 78 */	mr r3, r31
/* 800C5C04  38 80 00 01 */	li r4, 1
/* 800C5C08  4B FF 44 C9 */	bl checkNextAction__9daAlink_cFi
lbl_800C5C0C:
/* 800C5C0C  38 60 00 01 */	li r3, 1
lbl_800C5C10:
/* 800C5C10  39 61 00 20 */	addi r11, r1, 0x20
/* 800C5C14  48 29 C6 15 */	bl _restgpr_29
/* 800C5C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C5C1C  7C 08 03 A6 */	mtlr r0
/* 800C5C20  38 21 00 20 */	addi r1, r1, 0x20
/* 800C5C24  4E 80 00 20 */	blr 

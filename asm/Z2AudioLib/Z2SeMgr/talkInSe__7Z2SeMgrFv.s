lbl_802ADB50:
/* 802ADB50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ADB54  7C 08 02 A6 */	mflr r0
/* 802ADB58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ADB5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ADB60  80 8D 86 00 */	lwz r4, __OSReport_disable-0x18(r13)
/* 802ADB64  88 04 00 1C */	lbz r0, 0x1c(r4)
/* 802ADB68  28 00 00 00 */	cmplwi r0, 0
/* 802ADB6C  41 82 00 D4 */	beq lbl_802ADC40
/* 802ADB70  80 8D 85 FC */	lwz r4, __OSReport_disable-0x1C(r13)
/* 802ADB74  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 802ADB78  28 00 00 0D */	cmplwi r0, 0xd
/* 802ADB7C  40 82 00 10 */	bne lbl_802ADB8C
/* 802ADB80  C0 22 BE 78 */	lfs f1, lit_4040(r2)
/* 802ADB84  38 80 00 00 */	li r4, 0
/* 802ADB88  4B FF FE 6D */	bl seMoveVolumeAll__7Z2SeMgrFfUl
lbl_802ADB8C:
/* 802ADB8C  83 ED 85 E0 */	lwz r31, __OSReport_disable-0x38(r13)
/* 802ADB90  38 7F 00 20 */	addi r3, r31, 0x20
/* 802ADB94  C0 2D 82 9C */	lfs f1, VOL_SE_SYSTEM_TALKING__7Z2Param(r13)
/* 802ADB98  38 80 00 02 */	li r4, 2
/* 802ADB9C  4B FF 52 19 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADBA0  38 7F 00 8C */	addi r3, r31, 0x8c
/* 802ADBA4  C0 2D 82 A0 */	lfs f1, VOL_SE_LINK_VOICE_TALKING__7Z2Param(r13)
/* 802ADBA8  38 80 00 02 */	li r4, 2
/* 802ADBAC  4B FF 52 09 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADBB0  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 802ADBB4  C0 2D 82 A4 */	lfs f1, VOL_SE_LINK_MOTION_TALKING__7Z2Param(r13)
/* 802ADBB8  38 80 00 02 */	li r4, 2
/* 802ADBBC  4B FF 51 F9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADBC0  38 7F 01 64 */	addi r3, r31, 0x164
/* 802ADBC4  C0 2D 82 A8 */	lfs f1, VOL_SE_LINK_FOOTNOTE_TALKING__7Z2Param(r13)
/* 802ADBC8  38 80 00 02 */	li r4, 2
/* 802ADBCC  4B FF 51 E9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADBD0  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 802ADBD4  C0 2D 82 B4 */	lfs f1, VOL_SE_OBJECT_TALKING__7Z2Param(r13)
/* 802ADBD8  38 80 00 02 */	li r4, 2
/* 802ADBDC  4B FF 51 D9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADBE0  38 7F 02 3C */	addi r3, r31, 0x23c
/* 802ADBE4  C0 2D 82 AC */	lfs f1, VOL_SE_CHAR_VOICE_TALKING__7Z2Param(r13)
/* 802ADBE8  38 80 00 02 */	li r4, 2
/* 802ADBEC  4B FF 51 C9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADBF0  38 7F 02 A8 */	addi r3, r31, 0x2a8
/* 802ADBF4  C0 2D 82 B0 */	lfs f1, VOL_SE_CHAR_MOVE_TALKING__7Z2Param(r13)
/* 802ADBF8  38 80 00 02 */	li r4, 2
/* 802ADBFC  4B FF 51 B9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADC00  38 7F 03 14 */	addi r3, r31, 0x314
/* 802ADC04  C0 2D 82 AC */	lfs f1, VOL_SE_CHAR_VOICE_TALKING__7Z2Param(r13)
/* 802ADC08  38 80 00 02 */	li r4, 2
/* 802ADC0C  4B FF 51 A9 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADC10  38 7F 03 80 */	addi r3, r31, 0x380
/* 802ADC14  C0 2D 82 B4 */	lfs f1, VOL_SE_OBJECT_TALKING__7Z2Param(r13)
/* 802ADC18  38 80 00 02 */	li r4, 2
/* 802ADC1C  4B FF 51 99 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADC20  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ADC24  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802ADC28  28 00 00 0C */	cmplwi r0, 0xc
/* 802ADC2C  41 82 00 14 */	beq lbl_802ADC40
/* 802ADC30  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 802ADC34  C0 2D 82 B8 */	lfs f1, VOL_SE_ATMOSPHERE_TALKING__7Z2Param(r13)
/* 802ADC38  38 80 00 02 */	li r4, 2
/* 802ADC3C  4B FF 51 79 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802ADC40:
/* 802ADC40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ADC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ADC48  7C 08 03 A6 */	mtlr r0
/* 802ADC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802ADC50  4E 80 00 20 */	blr 

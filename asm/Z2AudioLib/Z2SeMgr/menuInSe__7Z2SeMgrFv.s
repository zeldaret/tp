lbl_802ADD58:
/* 802ADD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ADD5C  7C 08 02 A6 */	mflr r0
/* 802ADD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ADD64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ADD68  80 8D 86 00 */	lwz r4, data_80450B80(r13)
/* 802ADD6C  88 04 00 1C */	lbz r0, 0x1c(r4)
/* 802ADD70  28 00 00 00 */	cmplwi r0, 0
/* 802ADD74  41 82 00 D4 */	beq lbl_802ADE48
/* 802ADD78  80 8D 85 FC */	lwz r4, data_80450B7C(r13)
/* 802ADD7C  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 802ADD80  28 00 00 0D */	cmplwi r0, 0xd
/* 802ADD84  40 82 00 10 */	bne lbl_802ADD94
/* 802ADD88  C0 22 BE 78 */	lfs f1, lit_4040(r2)
/* 802ADD8C  38 80 00 00 */	li r4, 0
/* 802ADD90  4B FF FC 65 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
lbl_802ADD94:
/* 802ADD94  83 ED 85 E0 */	lwz r31, data_80450B60(r13)
/* 802ADD98  38 7F 00 20 */	addi r3, r31, 0x20
/* 802ADD9C  C0 2D 82 C0 */	lfs f1, VOL_SE_SYSTEM_PAUSING__7Z2Param(r13)
/* 802ADDA0  38 80 00 02 */	li r4, 2
/* 802ADDA4  4B FF 50 11 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADDA8  38 7F 00 8C */	addi r3, r31, 0x8c
/* 802ADDAC  C0 2D 82 C4 */	lfs f1, VOL_SE_LINK_VOICE_PAUSING__7Z2Param(r13)
/* 802ADDB0  38 80 00 02 */	li r4, 2
/* 802ADDB4  4B FF 50 01 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADDB8  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 802ADDBC  C0 2D 82 C8 */	lfs f1, VOL_SE_LINK_MOTION_PAUSING__7Z2Param(r13)
/* 802ADDC0  38 80 00 02 */	li r4, 2
/* 802ADDC4  4B FF 4F F1 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADDC8  38 7F 01 64 */	addi r3, r31, 0x164
/* 802ADDCC  C0 2D 82 CC */	lfs f1, VOL_SE_LINK_FOOTNOTE_PAUSING__7Z2Param(r13)
/* 802ADDD0  38 80 00 02 */	li r4, 2
/* 802ADDD4  4B FF 4F E1 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADDD8  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 802ADDDC  C0 2D 82 D8 */	lfs f1, VOL_SE_OBJECT_PAUSING__7Z2Param(r13)
/* 802ADDE0  38 80 00 02 */	li r4, 2
/* 802ADDE4  4B FF 4F D1 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADDE8  38 7F 02 3C */	addi r3, r31, 0x23c
/* 802ADDEC  C0 2D 82 D0 */	lfs f1, VOL_SE_CHAR_VOICE_PAUSING__7Z2Param(r13)
/* 802ADDF0  38 80 00 02 */	li r4, 2
/* 802ADDF4  4B FF 4F C1 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADDF8  38 7F 02 A8 */	addi r3, r31, 0x2a8
/* 802ADDFC  C0 2D 82 D4 */	lfs f1, VOL_SE_CHAR_MOVE_PAUSING__7Z2Param(r13)
/* 802ADE00  38 80 00 02 */	li r4, 2
/* 802ADE04  4B FF 4F B1 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADE08  38 7F 03 14 */	addi r3, r31, 0x314
/* 802ADE0C  C0 2D 82 D0 */	lfs f1, VOL_SE_CHAR_VOICE_PAUSING__7Z2Param(r13)
/* 802ADE10  38 80 00 02 */	li r4, 2
/* 802ADE14  4B FF 4F A1 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADE18  38 7F 03 80 */	addi r3, r31, 0x380
/* 802ADE1C  C0 2D 82 D8 */	lfs f1, VOL_SE_OBJECT_PAUSING__7Z2Param(r13)
/* 802ADE20  38 80 00 02 */	li r4, 2
/* 802ADE24  4B FF 4F 91 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADE28  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802ADE2C  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802ADE30  28 00 00 0C */	cmplwi r0, 0xc
/* 802ADE34  41 82 00 14 */	beq lbl_802ADE48
/* 802ADE38  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 802ADE3C  C0 2D 82 DC */	lfs f1, VOL_SE_ATMOSPHERE_PAUSING__7Z2Param(r13)
/* 802ADE40  38 80 00 02 */	li r4, 2
/* 802ADE44  4B FF 4F 71 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802ADE48:
/* 802ADE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ADE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ADE50  7C 08 03 A6 */	mtlr r0
/* 802ADE54  38 21 00 10 */	addi r1, r1, 0x10
/* 802ADE58  4E 80 00 20 */	blr 

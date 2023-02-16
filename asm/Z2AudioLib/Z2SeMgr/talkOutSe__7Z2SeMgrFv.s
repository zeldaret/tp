lbl_802ADC54:
/* 802ADC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ADC58  7C 08 02 A6 */	mflr r0
/* 802ADC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ADC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ADC64  80 8D 86 00 */	lwz r4, __OSReport_disable-0x18(r13)
/* 802ADC68  88 04 00 1C */	lbz r0, 0x1c(r4)
/* 802ADC6C  28 00 00 00 */	cmplwi r0, 0
/* 802ADC70  41 82 00 D4 */	beq lbl_802ADD44
/* 802ADC74  80 8D 85 FC */	lwz r4, __OSReport_disable-0x1C(r13)
/* 802ADC78  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 802ADC7C  28 00 00 0D */	cmplwi r0, 0xd
/* 802ADC80  40 82 00 10 */	bne lbl_802ADC90
/* 802ADC84  C0 22 BE 78 */	lfs f1, lit_4040(r2)
/* 802ADC88  38 80 00 00 */	li r4, 0
/* 802ADC8C  4B FF FD 69 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
lbl_802ADC90:
/* 802ADC90  83 ED 85 E0 */	lwz r31, __OSReport_disable-0x38(r13)
/* 802ADC94  38 7F 00 20 */	addi r3, r31, 0x20
/* 802ADC98  C0 2D 82 78 */	lfs f1, VOL_SE_SYSTEM_DEFAULT__7Z2Param(r13)
/* 802ADC9C  38 80 00 02 */	li r4, 2
/* 802ADCA0  4B FF 51 15 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADCA4  38 7F 00 8C */	addi r3, r31, 0x8c
/* 802ADCA8  C0 2D 82 7C */	lfs f1, VOL_SE_LINK_VOICE_DEFAULT__7Z2Param(r13)
/* 802ADCAC  38 80 00 02 */	li r4, 2
/* 802ADCB0  4B FF 51 05 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADCB4  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 802ADCB8  C0 2D 82 80 */	lfs f1, VOL_SE_LINK_MOTION_DEFAULT__7Z2Param(r13)
/* 802ADCBC  38 80 00 02 */	li r4, 2
/* 802ADCC0  4B FF 50 F5 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADCC4  38 7F 01 64 */	addi r3, r31, 0x164
/* 802ADCC8  C0 2D 82 84 */	lfs f1, VOL_SE_LINK_FOOTNOTE_DEFAULT__7Z2Param(r13)
/* 802ADCCC  38 80 00 02 */	li r4, 2
/* 802ADCD0  4B FF 50 E5 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADCD4  38 7F 01 D0 */	addi r3, r31, 0x1d0
/* 802ADCD8  C0 2D 82 90 */	lfs f1, VOL_SE_OBJECT_DEFAULT__7Z2Param(r13)
/* 802ADCDC  38 80 00 02 */	li r4, 2
/* 802ADCE0  4B FF 50 D5 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADCE4  38 7F 02 3C */	addi r3, r31, 0x23c
/* 802ADCE8  C0 2D 82 88 */	lfs f1, VOL_SE_CHAR_VOICE_DEFAULT__7Z2Param(r13)
/* 802ADCEC  38 80 00 02 */	li r4, 2
/* 802ADCF0  4B FF 50 C5 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADCF4  38 7F 02 A8 */	addi r3, r31, 0x2a8
/* 802ADCF8  C0 2D 82 8C */	lfs f1, VOL_SE_CHAR_MOVE_DEFAULT__7Z2Param(r13)
/* 802ADCFC  38 80 00 02 */	li r4, 2
/* 802ADD00  4B FF 50 B5 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADD04  38 7F 03 14 */	addi r3, r31, 0x314
/* 802ADD08  C0 2D 82 88 */	lfs f1, VOL_SE_CHAR_VOICE_DEFAULT__7Z2Param(r13)
/* 802ADD0C  38 80 00 02 */	li r4, 2
/* 802ADD10  4B FF 50 A5 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADD14  38 7F 03 80 */	addi r3, r31, 0x380
/* 802ADD18  C0 2D 82 90 */	lfs f1, VOL_SE_OBJECT_DEFAULT__7Z2Param(r13)
/* 802ADD1C  38 80 00 02 */	li r4, 2
/* 802ADD20  4B FF 50 95 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802ADD24  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802ADD28  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802ADD2C  28 00 00 0C */	cmplwi r0, 0xc
/* 802ADD30  41 82 00 14 */	beq lbl_802ADD44
/* 802ADD34  38 7F 03 EC */	addi r3, r31, 0x3ec
/* 802ADD38  C0 2D 82 94 */	lfs f1, VOL_SE_ATMOSPHERE_DEFAULT__7Z2Param(r13)
/* 802ADD3C  38 80 00 02 */	li r4, 2
/* 802ADD40  4B FF 50 75 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802ADD44:
/* 802ADD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ADD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ADD4C  7C 08 03 A6 */	mtlr r0
/* 802ADD50  38 21 00 10 */	addi r1, r1, 0x10
/* 802ADD54  4E 80 00 20 */	blr 

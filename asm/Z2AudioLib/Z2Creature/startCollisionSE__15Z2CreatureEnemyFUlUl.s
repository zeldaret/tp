lbl_802C1A14:
/* 802C1A14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C1A18  7C 08 02 A6 */	mflr r0
/* 802C1A1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C1A20  39 61 00 20 */	addi r11, r1, 0x20
/* 802C1A24  48 0A 07 B9 */	bl _savegpr_29
/* 802C1A28  7C 7D 1B 78 */	mr r29, r3
/* 802C1A2C  7C 9E 23 78 */	mr r30, r4
/* 802C1A30  7C BF 2B 78 */	mr r31, r5
/* 802C1A34  88 83 00 A0 */	lbz r4, 0xa0(r3)
/* 802C1A38  2C 04 00 2F */	cmpwi r4, 0x2f
/* 802C1A3C  41 82 00 40 */	beq lbl_802C1A7C
/* 802C1A40  40 80 00 78 */	bge lbl_802C1AB8
/* 802C1A44  2C 04 00 21 */	cmpwi r4, 0x21
/* 802C1A48  41 82 00 08 */	beq lbl_802C1A50
/* 802C1A4C  48 00 00 6C */	b lbl_802C1AB8
lbl_802C1A50:
/* 802C1A50  38 00 00 01 */	li r0, 1
/* 802C1A54  98 1D 00 A3 */	stb r0, 0xa3(r29)
/* 802C1A58  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C1A5C  88 8D 82 E9 */	lbz r4, struct_80450868+0x1(r13)
/* 802C1A60  4B FF 30 9D */	bl setBattleLastHit__8Z2SeqMgrFUc
/* 802C1A64  38 7D 00 08 */	addi r3, r29, 8
/* 802C1A68  7F C4 F3 78 */	mr r4, r30
/* 802C1A6C  7F E5 FB 78 */	mr r5, r31
/* 802C1A70  38 C0 00 00 */	li r6, 0
/* 802C1A74  4B FF CA 31 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 802C1A78  48 00 00 EC */	b lbl_802C1B64
lbl_802C1A7C:
/* 802C1A7C  80 1D 00 94 */	lwz r0, 0x94(r29)
/* 802C1A80  28 00 00 00 */	cmplwi r0, 0
/* 802C1A84  41 82 00 1C */	beq lbl_802C1AA0
/* 802C1A88  7F A4 EB 78 */	mr r4, r29
/* 802C1A8C  28 1D 00 00 */	cmplwi r29, 0
/* 802C1A90  41 82 00 08 */	beq lbl_802C1A98
/* 802C1A94  38 84 00 90 */	addi r4, r4, 0x90
lbl_802C1A98:
/* 802C1A98  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802C1A9C  4B FF E6 F5 */	bl func_802C0190
lbl_802C1AA0:
/* 802C1AA0  38 7D 00 08 */	addi r3, r29, 8
/* 802C1AA4  7F C4 F3 78 */	mr r4, r30
/* 802C1AA8  7F E5 FB 78 */	mr r5, r31
/* 802C1AAC  38 C0 00 00 */	li r6, 0
/* 802C1AB0  4B FF C9 F5 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 802C1AB4  48 00 00 B0 */	b lbl_802C1B64
lbl_802C1AB8:
/* 802C1AB8  38 1F FF E2 */	addi r0, r31, -30
/* 802C1ABC  28 00 00 16 */	cmplwi r0, 0x16
/* 802C1AC0  41 81 00 90 */	bgt lbl_802C1B50
/* 802C1AC4  3C 60 80 3D */	lis r3, lit_4411@ha /* 0x803CB724@ha */
/* 802C1AC8  38 63 B7 24 */	addi r3, r3, lit_4411@l /* 0x803CB724@l */
/* 802C1ACC  54 00 10 3A */	slwi r0, r0, 2
/* 802C1AD0  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C1AD4  7C 09 03 A6 */	mtctr r0
/* 802C1AD8  4E 80 04 20 */	bctr 
/* 802C1ADC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C1AE0  38 80 00 02 */	li r4, 2
/* 802C1AE4  4B FF 2D 61 */	bl setBattleSeqState__8Z2SeqMgrFUc
/* 802C1AE8  48 00 00 68 */	b lbl_802C1B50
/* 802C1AEC  38 00 00 01 */	li r0, 1
/* 802C1AF0  98 1D 00 A3 */	stb r0, 0xa3(r29)
/* 802C1AF4  88 8D 82 E9 */	lbz r4, struct_80450868+0x1(r13)
/* 802C1AF8  3C 1E FF FC */	addis r0, r30, 0xfffc
/* 802C1AFC  28 00 00 01 */	cmplwi r0, 1
/* 802C1B00  40 81 00 0C */	ble lbl_802C1B0C
/* 802C1B04  28 00 00 03 */	cmplwi r0, 3
/* 802C1B08  40 82 00 08 */	bne lbl_802C1B10
lbl_802C1B0C:
/* 802C1B0C  38 80 00 14 */	li r4, 0x14
lbl_802C1B10:
/* 802C1B10  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C1B14  4B FF 2F E9 */	bl setBattleLastHit__8Z2SeqMgrFUc
/* 802C1B18  48 00 00 38 */	b lbl_802C1B50
/* 802C1B1C  28 04 00 2B */	cmplwi r4, 0x2b
/* 802C1B20  40 82 00 1C */	bne lbl_802C1B3C
/* 802C1B24  38 00 00 01 */	li r0, 1
/* 802C1B28  98 1D 00 A3 */	stb r0, 0xa3(r29)
/* 802C1B2C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C1B30  88 8D 82 E9 */	lbz r4, struct_80450868+0x1(r13)
/* 802C1B34  4B FF 2F C9 */	bl setBattleLastHit__8Z2SeqMgrFUc
/* 802C1B38  48 00 00 18 */	b lbl_802C1B50
lbl_802C1B3C:
/* 802C1B3C  28 04 00 16 */	cmplwi r4, 0x16
/* 802C1B40  40 82 00 10 */	bne lbl_802C1B50
/* 802C1B44  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C1B48  38 80 00 02 */	li r4, 2
/* 802C1B4C  4B FF 2C F9 */	bl setBattleSeqState__8Z2SeqMgrFUc
lbl_802C1B50:
/* 802C1B50  38 7D 00 08 */	addi r3, r29, 8
/* 802C1B54  7F C4 F3 78 */	mr r4, r30
/* 802C1B58  7F E5 FB 78 */	mr r5, r31
/* 802C1B5C  38 C0 00 00 */	li r6, 0
/* 802C1B60  4B FF C9 45 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_802C1B64:
/* 802C1B64  39 61 00 20 */	addi r11, r1, 0x20
/* 802C1B68  48 0A 06 C1 */	bl _restgpr_29
/* 802C1B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C1B70  7C 08 03 A6 */	mtlr r0
/* 802C1B74  38 21 00 20 */	addi r1, r1, 0x20
/* 802C1B78  4E 80 00 20 */	blr 

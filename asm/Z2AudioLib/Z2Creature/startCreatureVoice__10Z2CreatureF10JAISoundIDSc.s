lbl_802C0A4C:
/* 802C0A4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0A50  7C 08 02 A6 */	mflr r0
/* 802C0A54  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0A58  39 61 00 20 */	addi r11, r1, 0x20
/* 802C0A5C  48 0A 17 81 */	bl _savegpr_29
/* 802C0A60  7C 7D 1B 78 */	mr r29, r3
/* 802C0A64  7C 9E 23 78 */	mr r30, r4
/* 802C0A68  7C BF 2B 78 */	mr r31, r5
/* 802C0A6C  80 84 00 00 */	lwz r4, 0(r4)
/* 802C0A70  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501F3@ha */
/* 802C0A74  38 03 01 F3 */	addi r0, r3, 0x01F3 /* 0x000501F3@l */
/* 802C0A78  7C 04 00 00 */	cmpw r4, r0
/* 802C0A7C  41 82 00 3C */	beq lbl_802C0AB8
/* 802C0A80  40 80 00 14 */	bge lbl_802C0A94
/* 802C0A84  38 03 01 E9 */	addi r0, r3, 0x1e9
/* 802C0A88  7C 04 00 00 */	cmpw r4, r0
/* 802C0A8C  40 80 00 14 */	bge lbl_802C0AA0
/* 802C0A90  48 00 00 28 */	b lbl_802C0AB8
lbl_802C0A94:
/* 802C0A94  38 03 02 00 */	addi r0, r3, 0x200
/* 802C0A98  7C 04 00 00 */	cmpw r4, r0
/* 802C0A9C  40 80 00 1C */	bge lbl_802C0AB8
lbl_802C0AA0:
/* 802C0AA0  80 6D 85 F0 */	lwz r3, data_80450B70(r13)
/* 802C0AA4  48 00 C4 E5 */	bl isMidnaSpeak__12Z2SpeechMgr2Fv
/* 802C0AA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802C0AAC  41 82 00 0C */	beq lbl_802C0AB8
/* 802C0AB0  38 60 00 00 */	li r3, 0
/* 802C0AB4  48 00 00 2C */	b lbl_802C0AE0
lbl_802C0AB8:
/* 802C0AB8  80 1E 00 00 */	lwz r0, 0(r30)
/* 802C0ABC  90 01 00 08 */	stw r0, 8(r1)
/* 802C0AC0  38 7D 00 50 */	addi r3, r29, 0x50
/* 802C0AC4  38 81 00 08 */	addi r4, r1, 8
/* 802C0AC8  38 A0 00 00 */	li r5, 0
/* 802C0ACC  7F E6 FB 78 */	mr r6, r31
/* 802C0AD0  81 9D 00 60 */	lwz r12, 0x60(r29)
/* 802C0AD4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C0AD8  7D 89 03 A6 */	mtctr r12
/* 802C0ADC  4E 80 04 21 */	bctrl 
lbl_802C0AE0:
/* 802C0AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 802C0AE4  48 0A 17 45 */	bl _restgpr_29
/* 802C0AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0AEC  7C 08 03 A6 */	mtlr r0
/* 802C0AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0AF4  4E 80 00 20 */	blr 

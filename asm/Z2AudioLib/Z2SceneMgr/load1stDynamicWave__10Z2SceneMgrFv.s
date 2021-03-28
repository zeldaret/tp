lbl_802B9D40:
/* 802B9D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9D44  7C 08 02 A6 */	mflr r0
/* 802B9D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B9D50  7C 7F 1B 78 */	mr r31, r3
/* 802B9D54  38 00 00 00 */	li r0, 0
/* 802B9D58  90 03 00 08 */	stw r0, 8(r3)
/* 802B9D5C  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B9D60  48 00 63 DD */	bl deleteEnemyAll__13Z2SoundObjMgrFv
/* 802B9D64  7F E3 FB 78 */	mr r3, r31
/* 802B9D68  38 80 00 00 */	li r4, 0
/* 802B9D6C  4B FF CB 75 */	bl setSceneExist__10Z2SceneMgrFb
/* 802B9D70  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 802B9D74  7C 00 07 75 */	extsb. r0, r0
/* 802B9D78  40 82 00 0C */	bne lbl_802B9D84
/* 802B9D7C  7F E3 FB 78 */	mr r3, r31
/* 802B9D80  48 00 00 19 */	bl _load1stWaveInner_1__10Z2SceneMgrFv
lbl_802B9D84:
/* 802B9D84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B9D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9D8C  7C 08 03 A6 */	mtlr r0
/* 802B9D90  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9D94  4E 80 00 20 */	blr 

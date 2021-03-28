lbl_802CD8B4:
/* 802CD8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD8B8  7C 08 02 A6 */	mflr r0
/* 802CD8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD8C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD8C4  7C 7F 1B 78 */	mr r31, r3
/* 802CD8C8  38 7F 04 C4 */	addi r3, r31, 0x4c4
/* 802CD8CC  4B FE 8E 51 */	bl processTime__11Z2StatusMgrFv
/* 802CD8D0  38 7F 0F 2C */	addi r3, r31, 0xf2c
/* 802CD8D4  4B FF F0 FD */	bl framework__12Z2SpeechMgr2Fv
/* 802CD8D8  7F E3 FB 78 */	mr r3, r31
/* 802CD8DC  4B FE 08 A9 */	bl processSeFramework__7Z2SeMgrFv
/* 802CD8E0  38 7F 03 D0 */	addi r3, r31, 0x3d0
/* 802CD8E4  4B FE 5A C5 */	bl processBgmFramework__8Z2SeqMgrFv
/* 802CD8E8  38 7F 04 C4 */	addi r3, r31, 0x4c4
/* 802CD8EC  4B FE 86 91 */	bl processHeartGaugeSound__11Z2StatusMgrFv
/* 802CD8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD8F8  7C 08 03 A6 */	mtlr r0
/* 802CD8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD900  4E 80 00 20 */	blr 

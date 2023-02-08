lbl_802BA56C:
/* 802BA56C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA570  7C 08 02 A6 */	mflr r0
/* 802BA574  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BA57C  7C 7F 1B 78 */	mr r31, r3
/* 802BA580  38 80 00 00 */	li r4, 0
/* 802BA584  48 00 01 81 */	bl loadSeWave__10Z2SceneMgrFUl
/* 802BA588  7F E3 FB 78 */	mr r3, r31
/* 802BA58C  38 80 00 00 */	li r4, 0
/* 802BA590  48 00 01 E1 */	bl loadBgmWave__10Z2SceneMgrFUl
/* 802BA594  7F E3 FB 78 */	mr r3, r31
/* 802BA598  38 80 00 58 */	li r4, 0x58
/* 802BA59C  48 00 01 69 */	bl loadSeWave__10Z2SceneMgrFUl
/* 802BA5A0  38 00 00 58 */	li r0, 0x58
/* 802BA5A4  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802BA5A8  98 1F 00 19 */	stb r0, 0x19(r31)
/* 802BA5AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BA5B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA5B4  7C 08 03 A6 */	mtlr r0
/* 802BA5B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA5BC  4E 80 00 20 */	blr 

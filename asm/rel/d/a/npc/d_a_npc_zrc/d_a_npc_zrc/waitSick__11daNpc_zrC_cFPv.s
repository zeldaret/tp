lbl_80B916FC:
/* 80B916FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B91700  7C 08 02 A6 */	mflr r0
/* 80B91704  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B91708  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9170C  7C 7F 1B 78 */	mr r31, r3
/* 80B91710  A0 03 0E 26 */	lhz r0, 0xe26(r3)
/* 80B91714  2C 00 00 02 */	cmpwi r0, 2
/* 80B91718  41 82 00 8C */	beq lbl_80B917A4
/* 80B9171C  40 80 00 D4 */	bge lbl_80B917F0
/* 80B91720  2C 00 00 00 */	cmpwi r0, 0
/* 80B91724  41 82 00 0C */	beq lbl_80B91730
/* 80B91728  48 00 00 C8 */	b lbl_80B917F0
/* 80B9172C  48 00 00 C4 */	b lbl_80B917F0
lbl_80B91730:
/* 80B91730  38 80 00 10 */	li r4, 0x10
/* 80B91734  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B91738  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B9173C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B91740  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91744  7D 89 03 A6 */	mtctr r12
/* 80B91748  4E 80 04 21 */	bctrl 
/* 80B9174C  7F E3 FB 78 */	mr r3, r31
/* 80B91750  38 80 00 0D */	li r4, 0xd
/* 80B91754  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B91758  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B9175C  38 A0 00 00 */	li r5, 0
/* 80B91760  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B91764  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91768  7D 89 03 A6 */	mtctr r12
/* 80B9176C  4E 80 04 21 */	bctrl 
/* 80B91770  7F E3 FB 78 */	mr r3, r31
/* 80B91774  38 80 00 00 */	li r4, 0
/* 80B91778  4B FF F9 C5 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B9177C  38 00 00 00 */	li r0, 0
/* 80B91780  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B91784  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B91788  60 00 00 02 */	ori r0, r0, 2
/* 80B9178C  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B91790  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B91794  60 00 00 04 */	ori r0, r0, 4
/* 80B91798  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B9179C  38 00 00 02 */	li r0, 2
/* 80B917A0  B0 1F 0E 26 */	sth r0, 0xe26(r31)
lbl_80B917A4:
/* 80B917A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B917A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B917AC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B917B0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B917B4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B917B8  41 82 00 38 */	beq lbl_80B917F0
/* 80B917BC  4B 5C DC 68 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 80B917C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B917C4  41 82 00 2C */	beq lbl_80B917F0
/* 80B917C8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500EC@ha */
/* 80B917CC  38 03 00 EC */	addi r0, r3, 0x00EC /* 0x000500EC@l */
/* 80B917D0  90 01 00 08 */	stw r0, 8(r1)
/* 80B917D4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80B917D8  38 81 00 08 */	addi r4, r1, 8
/* 80B917DC  38 A0 FF FF */	li r5, -1
/* 80B917E0  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 80B917E4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B917E8  7D 89 03 A6 */	mtctr r12
/* 80B917EC  4E 80 04 21 */	bctrl 
lbl_80B917F0:
/* 80B917F0  38 60 00 01 */	li r3, 1
/* 80B917F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B917F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B917FC  7C 08 03 A6 */	mtlr r0
/* 80B91800  38 21 00 20 */	addi r1, r1, 0x20
/* 80B91804  4E 80 00 20 */	blr 

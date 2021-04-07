lbl_8010BB48:
/* 8010BB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010BB4C  7C 08 02 A6 */	mflr r0
/* 8010BB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010BB54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010BB58  7C 7F 1B 78 */	mr r31, r3
/* 8010BB5C  4B FF CE BD */	bl checkHookshotWait__9daAlink_cCFv
/* 8010BB60  2C 03 00 00 */	cmpwi r3, 0
/* 8010BB64  41 82 00 10 */	beq lbl_8010BB74
/* 8010BB68  7F E3 FB 78 */	mr r3, r31
/* 8010BB6C  38 80 00 12 */	li r4, 0x12
/* 8010BB70  4B FA 76 E1 */	bl setDoStatus__9daAlink_cFUc
lbl_8010BB74:
/* 8010BB74  7F E3 FB 78 */	mr r3, r31
/* 8010BB78  38 80 00 00 */	li r4, 0
/* 8010BB7C  4B FA 7B B9 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 8010BB80  38 00 00 00 */	li r0, 0
/* 8010BB84  98 1F 20 68 */	stb r0, 0x2068(r31)
/* 8010BB88  7F E3 FB 78 */	mr r3, r31
/* 8010BB8C  38 80 00 00 */	li r4, 0
/* 8010BB90  4B FA E5 41 */	bl checkNextAction__9daAlink_cFi
/* 8010BB94  2C 03 00 00 */	cmpwi r3, 0
/* 8010BB98  40 82 00 58 */	bne lbl_8010BBF0
/* 8010BB9C  7F E3 FB 78 */	mr r3, r31
/* 8010BBA0  4B FF CE 79 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010BBA4  2C 03 00 00 */	cmpwi r3, 0
/* 8010BBA8  41 82 00 34 */	beq lbl_8010BBDC
/* 8010BBAC  7F E3 FB 78 */	mr r3, r31
/* 8010BBB0  4B FC 2C F1 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 8010BBB4  2C 03 00 00 */	cmpwi r3, 0
/* 8010BBB8  41 82 00 0C */	beq lbl_8010BBC4
/* 8010BBBC  7F E3 FB 78 */	mr r3, r31
/* 8010BBC0  4B FF D1 F5 */	bl setHookshotSight__9daAlink_cFv
lbl_8010BBC4:
/* 8010BBC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010BBC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010BBCC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010BBD0  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 8010BBD4  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010BBD8  48 00 00 18 */	b lbl_8010BBF0
lbl_8010BBDC:
/* 8010BBDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010BBE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010BBE4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010BBE8  64 00 00 04 */	oris r0, r0, 4
/* 8010BBEC  90 03 5F 18 */	stw r0, 0x5f18(r3)
lbl_8010BBF0:
/* 8010BBF0  38 60 00 01 */	li r3, 1
/* 8010BBF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010BBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010BBFC  7C 08 03 A6 */	mtlr r0
/* 8010BC00  38 21 00 10 */	addi r1, r1, 0x10
/* 8010BC04  4E 80 00 20 */	blr 

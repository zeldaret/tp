lbl_8002DA30:
/* 8002DA30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DA34  7C 08 02 A6 */	mflr r0
/* 8002DA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DA3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DA40  7C 7F 1B 78 */	mr r31, r3
/* 8002DA44  2C 04 00 00 */	cmpwi r4, 0
/* 8002DA48  41 80 00 08 */	blt lbl_8002DA50
/* 8002DA4C  48 00 00 18 */	b lbl_8002DA64
lbl_8002DA50:
/* 8002DA50  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8002DA54  7C 84 07 75 */	extsb. r4, r4
/* 8002DA58  40 80 00 0C */	bge lbl_8002DA64
/* 8002DA5C  38 60 00 00 */	li r3, 0
/* 8002DA60  48 00 00 28 */	b lbl_8002DA88
lbl_8002DA64:
/* 8002DA64  7C 83 23 78 */	mr r3, r4
/* 8002DA68  4B FF FF 49 */	bl getZoneNo__20dStage_roomControl_cFi
/* 8002DA6C  54 64 28 34 */	slwi r4, r3, 5
/* 8002DA70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002DA74  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002DA78  7C 60 22 14 */	add r3, r0, r4
/* 8002DA7C  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8002DA80  7F E4 FB 78 */	mr r4, r31
/* 8002DA84  48 00 72 CD */	bl isSwitch__13dSv_zoneBit_cCFi
lbl_8002DA88:
/* 8002DA88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DA90  7C 08 03 A6 */	mtlr r0
/* 8002DA94  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DA98  4E 80 00 20 */	blr 

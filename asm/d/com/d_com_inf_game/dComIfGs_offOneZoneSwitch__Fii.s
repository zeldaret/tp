lbl_8002DB00:
/* 8002DB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DB04  7C 08 02 A6 */	mflr r0
/* 8002DB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DB0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DB10  7C 7F 1B 78 */	mr r31, r3
/* 8002DB14  2C 04 00 00 */	cmpwi r4, 0
/* 8002DB18  41 80 00 08 */	blt lbl_8002DB20
/* 8002DB1C  48 00 00 10 */	b lbl_8002DB2C
lbl_8002DB20:
/* 8002DB20  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8002DB24  7C 84 07 75 */	extsb. r4, r4
/* 8002DB28  41 80 00 28 */	blt lbl_8002DB50
lbl_8002DB2C:
/* 8002DB2C  7C 83 23 78 */	mr r3, r4
/* 8002DB30  4B FF FE 81 */	bl getZoneNo__20dStage_roomControl_cFi
/* 8002DB34  54 64 28 34 */	slwi r4, r3, 5
/* 8002DB38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002DB3C  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002DB40  7C 60 22 14 */	add r3, r0, r4
/* 8002DB44  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8002DB48  7F E4 FB 78 */	mr r4, r31
/* 8002DB4C  48 00 72 7D */	bl offOneSwitch__13dSv_zoneBit_cFi
lbl_8002DB50:
/* 8002DB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DB58  7C 08 03 A6 */	mtlr r0
/* 8002DB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DB60  4E 80 00 20 */	blr 

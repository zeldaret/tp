lbl_8002DB64:
/* 8002DB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DB68  7C 08 02 A6 */	mflr r0
/* 8002DB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DB70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DB74  7C 7F 1B 78 */	mr r31, r3
/* 8002DB78  2C 04 00 00 */	cmpwi r4, 0
/* 8002DB7C  41 80 00 08 */	blt lbl_8002DB84
/* 8002DB80  48 00 00 18 */	b lbl_8002DB98
lbl_8002DB84:
/* 8002DB84  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8002DB88  7C 84 07 75 */	extsb. r4, r4
/* 8002DB8C  40 80 00 0C */	bge lbl_8002DB98
/* 8002DB90  38 60 00 00 */	li r3, 0
/* 8002DB94  48 00 00 28 */	b lbl_8002DBBC
lbl_8002DB98:
/* 8002DB98  7C 83 23 78 */	mr r3, r4
/* 8002DB9C  4B FF FE 15 */	bl getZoneNo__20dStage_roomControl_cFi
/* 8002DBA0  54 64 28 34 */	slwi r4, r3, 5
/* 8002DBA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002DBA8  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002DBAC  7C 60 22 14 */	add r3, r0, r4
/* 8002DBB0  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8002DBB4  7F E4 FB 78 */	mr r4, r31
/* 8002DBB8  48 00 72 29 */	bl isOneSwitch__13dSv_zoneBit_cCFi
lbl_8002DBBC:
/* 8002DBBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DBC4  7C 08 03 A6 */	mtlr r0
/* 8002DBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DBCC  4E 80 00 20 */	blr 

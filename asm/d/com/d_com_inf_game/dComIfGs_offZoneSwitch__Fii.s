lbl_8002D9CC:
/* 8002D9CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D9D0  7C 08 02 A6 */	mflr r0
/* 8002D9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D9D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D9DC  7C 7F 1B 78 */	mr r31, r3
/* 8002D9E0  2C 04 00 00 */	cmpwi r4, 0
/* 8002D9E4  41 80 00 08 */	blt lbl_8002D9EC
/* 8002D9E8  48 00 00 10 */	b lbl_8002D9F8
lbl_8002D9EC:
/* 8002D9EC  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8002D9F0  7C 84 07 75 */	extsb. r4, r4
/* 8002D9F4  41 80 00 28 */	blt lbl_8002DA1C
lbl_8002D9F8:
/* 8002D9F8  7C 83 23 78 */	mr r3, r4
/* 8002D9FC  4B FF FF B5 */	bl getZoneNo__20dStage_roomControl_cFi
/* 8002DA00  54 64 28 34 */	slwi r4, r3, 5
/* 8002DA04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002DA08  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002DA0C  7C 60 22 14 */	add r3, r0, r4
/* 8002DA10  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8002DA14  7F E4 FB 78 */	mr r4, r31
/* 8002DA18  48 00 73 15 */	bl offSwitch__13dSv_zoneBit_cFi
lbl_8002DA1C:
/* 8002DA1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DA24  7C 08 03 A6 */	mtlr r0
/* 8002DA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DA2C  4E 80 00 20 */	blr 

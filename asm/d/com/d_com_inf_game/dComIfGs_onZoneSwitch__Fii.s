lbl_8002D94C:
/* 8002D94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D950  7C 08 02 A6 */	mflr r0
/* 8002D954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D95C  7C 7F 1B 78 */	mr r31, r3
/* 8002D960  2C 04 00 00 */	cmpwi r4, 0
/* 8002D964  41 80 00 08 */	blt lbl_8002D96C
/* 8002D968  48 00 00 10 */	b lbl_8002D978
lbl_8002D96C:
/* 8002D96C  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 8002D970  7C 84 07 75 */	extsb. r4, r4
/* 8002D974  41 80 00 28 */	blt lbl_8002D99C
lbl_8002D978:
/* 8002D978  7C 83 23 78 */	mr r3, r4
/* 8002D97C  48 00 00 35 */	bl getZoneNo__20dStage_roomControl_cFi
/* 8002D980  54 64 28 34 */	slwi r4, r3, 5
/* 8002D984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D988  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D98C  7C 60 22 14 */	add r3, r0, r4
/* 8002D990  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8002D994  7F E4 FB 78 */	mr r4, r31
/* 8002D998  48 00 73 6D */	bl onSwitch__13dSv_zoneBit_cFi
lbl_8002D99C:
/* 8002D99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002D9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002D9A4  7C 08 03 A6 */	mtlr r0
/* 8002D9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D9AC  4E 80 00 20 */	blr 

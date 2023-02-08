lbl_80BA1EEC:
/* 80BA1EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1EF0  7C 08 02 A6 */	mflr r0
/* 80BA1EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA1EFC  7C 7F 1B 78 */	mr r31, r3
/* 80BA1F00  88 03 05 C5 */	lbz r0, 0x5c5(r3)
/* 80BA1F04  28 00 00 00 */	cmplwi r0, 0
/* 80BA1F08  40 82 00 58 */	bne lbl_80BA1F60
/* 80BA1F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA1F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA1F14  38 80 00 04 */	li r4, 4
/* 80BA1F18  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BA1F1C  7C 05 07 74 */	extsb r5, r0
/* 80BA1F20  4B 49 34 41 */	bl isSwitch__10dSv_info_cCFii
/* 80BA1F24  2C 03 00 00 */	cmpwi r3, 0
/* 80BA1F28  40 82 00 38 */	bne lbl_80BA1F60
/* 80BA1F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA1F30  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA1F34  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 80BA1F38  38 00 00 03 */	li r0, 3
/* 80BA1F3C  B0 05 06 04 */	sth r0, 0x604(r5)
/* 80BA1F40  38 60 00 00 */	li r3, 0
/* 80BA1F44  90 65 06 0C */	stw r3, 0x60c(r5)
/* 80BA1F48  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BA1F4C  38 00 00 19 */	li r0, 0x19
/* 80BA1F50  90 04 06 14 */	stw r0, 0x614(r4)
/* 80BA1F54  90 64 06 0C */	stw r3, 0x60c(r4)
/* 80BA1F58  90 64 06 10 */	stw r3, 0x610(r4)
/* 80BA1F5C  B0 64 06 0A */	sth r3, 0x60a(r4)
lbl_80BA1F60:
/* 80BA1F60  38 00 00 04 */	li r0, 4
/* 80BA1F64  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80BA1F68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1F70  7C 08 03 A6 */	mtlr r0
/* 80BA1F74  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1F78  4E 80 00 20 */	blr 

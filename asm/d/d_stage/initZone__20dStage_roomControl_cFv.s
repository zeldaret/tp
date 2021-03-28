lbl_80024338:
/* 80024338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002433C  7C 08 02 A6 */	mflr r0
/* 80024340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80024348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002434C  48 01 0E 01 */	bl initZone__10dSv_info_cFv
/* 80024350  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 80024354  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l
/* 80024358  7C 04 03 78 */	mr r4, r0
/* 8002435C  38 60 FF FF */	li r3, -1
/* 80024360  38 00 00 40 */	li r0, 0x40
/* 80024364  7C 09 03 A6 */	mtctr r0
lbl_80024368:
/* 80024368  98 64 03 F7 */	stb r3, 0x3f7(r4)
/* 8002436C  38 84 04 04 */	addi r4, r4, 0x404
/* 80024370  42 00 FF F8 */	bdnz lbl_80024368
/* 80024374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024378  7C 08 03 A6 */	mtlr r0
/* 8002437C  38 21 00 10 */	addi r1, r1, 0x10
/* 80024380  4E 80 00 20 */	blr 

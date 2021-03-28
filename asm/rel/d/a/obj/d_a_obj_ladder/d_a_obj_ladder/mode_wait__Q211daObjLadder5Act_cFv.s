lbl_8058D5B8:
/* 8058D5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D5BC  7C 08 02 A6 */	mflr r0
/* 8058D5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D5C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D5C8  7C 7F 1B 78 */	mr r31, r3
/* 8058D5CC  38 80 00 08 */	li r4, 8
/* 8058D5D0  38 A0 00 08 */	li r5, 8
/* 8058D5D4  48 00 07 41 */	bl func_8058DD14
/* 8058D5D8  7C 64 1B 78 */	mr r4, r3
/* 8058D5DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058D5E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058D5E4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058D5E8  7C 05 07 74 */	extsb r5, r0
/* 8058D5EC  4B AA 7D 74 */	b isSwitch__10dSv_info_cCFii
/* 8058D5F0  2C 03 00 00 */	cmpwi r3, 0
/* 8058D5F4  41 82 00 0C */	beq lbl_8058D600
/* 8058D5F8  7F E3 FB 78 */	mr r3, r31
/* 8058D5FC  48 00 00 19 */	bl mode_demoreq_init__Q211daObjLadder5Act_cFv
lbl_8058D600:
/* 8058D600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D608  7C 08 03 A6 */	mtlr r0
/* 8058D60C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D610  4E 80 00 20 */	blr 

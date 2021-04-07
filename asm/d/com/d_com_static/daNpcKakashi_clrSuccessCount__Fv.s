lbl_80031838:
/* 80031838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003183C  7C 08 02 A6 */	mflr r0
/* 80031840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80031848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003184C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80031850  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FEFF@ha */
/* 80031854  38 84 FE FF */	addi r4, r4, 0xFEFF /* 0x0000FEFF@l */
/* 80031858  38 A0 00 00 */	li r5, 0
/* 8003185C  48 00 31 85 */	bl setEventReg__11dSv_event_cFUsUc
/* 80031860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031864  7C 08 03 A6 */	mtlr r0
/* 80031868  38 21 00 10 */	addi r1, r1, 0x10
/* 8003186C  4E 80 00 20 */	blr 

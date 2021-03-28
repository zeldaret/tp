lbl_8002DA9C:
/* 8002DA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002DAA0  7C 08 02 A6 */	mflr r0
/* 8002DAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002DAA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002DAAC  7C 7F 1B 78 */	mr r31, r3
/* 8002DAB0  2C 04 00 00 */	cmpwi r4, 0
/* 8002DAB4  41 80 00 08 */	blt lbl_8002DABC
/* 8002DAB8  48 00 00 10 */	b lbl_8002DAC8
lbl_8002DABC:
/* 8002DABC  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 8002DAC0  7C 84 07 75 */	extsb. r4, r4
/* 8002DAC4  41 80 00 28 */	blt lbl_8002DAEC
lbl_8002DAC8:
/* 8002DAC8  7C 83 23 78 */	mr r3, r4
/* 8002DACC  4B FF FE E5 */	bl getZoneNo__20dStage_roomControl_cFi
/* 8002DAD0  54 64 28 34 */	slwi r4, r3, 5
/* 8002DAD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002DAD8  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 8002DADC  7C 60 22 14 */	add r3, r0, r4
/* 8002DAE0  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8002DAE4  7F E4 FB 78 */	mr r4, r31
/* 8002DAE8  48 00 72 C5 */	bl onOneSwitch__13dSv_zoneBit_cFi
lbl_8002DAEC:
/* 8002DAEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002DAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002DAF4  7C 08 03 A6 */	mtlr r0
/* 8002DAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002DAFC  4E 80 00 20 */	blr 

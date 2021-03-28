lbl_8002FD18:
/* 8002FD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002FD1C  7C 08 02 A6 */	mflr r0
/* 8002FD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002FD24  38 00 FF FF */	li r0, -1
/* 8002FD28  3C 60 80 40 */	lis r3, dComIfG_mTimerInfo@ha
/* 8002FD2C  38 63 61 A0 */	addi r3, r3, dComIfG_mTimerInfo@l
/* 8002FD30  90 03 00 0C */	stw r0, 0xc(r3)
/* 8002FD34  38 00 00 00 */	li r0, 0
/* 8002FD38  90 03 00 08 */	stw r0, 8(r3)
/* 8002FD3C  90 03 00 04 */	stw r0, 4(r3)
/* 8002FD40  90 03 00 00 */	stw r0, 0(r3)
/* 8002FD44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002FD48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002FD4C  48 00 04 F9 */	bl __ct__13dComIfG_inf_cFv
/* 8002FD50  3C 80 80 03 */	lis r4, __dt__13dComIfG_inf_cFv@ha
/* 8002FD54  38 84 FD 74 */	addi r4, r4, __dt__13dComIfG_inf_cFv@l
/* 8002FD58  3C A0 80 40 */	lis r5, lit_5065@ha
/* 8002FD5C  38 A5 61 B4 */	addi r5, r5, lit_5065@l
/* 8002FD60  48 33 1E C5 */	bl __register_global_object
/* 8002FD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002FD68  7C 08 03 A6 */	mtlr r0
/* 8002FD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002FD70  4E 80 00 20 */	blr 

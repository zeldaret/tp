lbl_8002D008:
/* 8002D008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D00C  7C 08 02 A6 */	mflr r0
/* 8002D010  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D018  7C 7F 1B 78 */	mr r31, r3
/* 8002D01C  80 03 00 04 */	lwz r0, 4(r3)
/* 8002D020  2C 00 00 02 */	cmpwi r0, 2
/* 8002D024  41 82 00 0C */	beq lbl_8002D030
/* 8002D028  38 60 00 00 */	li r3, 0
/* 8002D02C  48 00 00 2C */	b lbl_8002D058
lbl_8002D030:
/* 8002D030  7C 83 23 78 */	mr r3, r4
/* 8002D034  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002D038  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8002D03C  3C 84 00 02 */	addis r4, r4, 2
/* 8002D040  38 A0 00 80 */	li r5, 0x80
/* 8002D044  38 84 C2 F8 */	addi r4, r4, -15624
/* 8002D048  48 00 F1 4D */	bl deleteRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8002D04C  38 00 00 00 */	li r0, 0
/* 8002D050  90 1F 00 04 */	stw r0, 4(r31)
/* 8002D054  38 60 00 01 */	li r3, 1
lbl_8002D058:
/* 8002D058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002D05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002D060  7C 08 03 A6 */	mtlr r0
/* 8002D064  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D068  4E 80 00 20 */	blr 

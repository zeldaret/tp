lbl_80031C9C:
/* 80031C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031CA0  7C 08 02 A6 */	mflr r0
/* 80031CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031CA8  7C 65 1B 78 */	mr r5, r3
/* 80031CAC  88 83 05 6A */	lbz r4, 0x56a(r3)
/* 80031CB0  28 04 00 FF */	cmplwi r4, 0xff
/* 80031CB4  41 82 00 20 */	beq lbl_80031CD4
/* 80031CB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80031CBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80031CC0  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80031CC4  7C 05 07 74 */	extsb r5, r0
/* 80031CC8  48 00 36 99 */	bl isSwitch__10dSv_info_cCFii
/* 80031CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80031CD0  41 82 00 0C */	beq lbl_80031CDC
lbl_80031CD4:
/* 80031CD4  38 60 00 01 */	li r3, 1
/* 80031CD8  48 00 00 08 */	b lbl_80031CE0
lbl_80031CDC:
/* 80031CDC  38 60 00 00 */	li r3, 0
lbl_80031CE0:
/* 80031CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031CE4  7C 08 03 A6 */	mtlr r0
/* 80031CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80031CEC  4E 80 00 20 */	blr 

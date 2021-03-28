lbl_80D3AC64:
/* 80D3AC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3AC68  7C 08 02 A6 */	mflr r0
/* 80D3AC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3AC70  38 00 00 02 */	li r0, 2
/* 80D3AC74  98 03 09 38 */	stb r0, 0x938(r3)
/* 80D3AC78  80 83 09 2C */	lwz r4, 0x92c(r3)
/* 80D3AC7C  3C 04 00 01 */	addis r0, r4, 1
/* 80D3AC80  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D3AC84  41 82 00 14 */	beq lbl_80D3AC98
/* 80D3AC88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3AC8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3AC90  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D3AC94  4B 30 8A 58 */	b setPtI_Id__14dEvt_control_cFUi
lbl_80D3AC98:
/* 80D3AC98  38 60 00 01 */	li r3, 1
/* 80D3AC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3ACA0  7C 08 03 A6 */	mtlr r0
/* 80D3ACA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3ACA8  4E 80 00 20 */	blr 

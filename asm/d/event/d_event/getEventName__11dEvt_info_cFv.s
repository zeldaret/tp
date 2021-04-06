lbl_80043480:
/* 80043480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80043484  7C 08 02 A6 */	mflr r0
/* 80043488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004348C  A8 83 00 08 */	lha r4, 8(r3)
/* 80043490  2C 04 FF FF */	cmpwi r4, -1
/* 80043494  40 82 00 0C */	bne lbl_800434A0
/* 80043498  38 60 00 00 */	li r3, 0
/* 8004349C  48 00 00 20 */	b lbl_800434BC
lbl_800434A0:
/* 800434A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800434A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800434A8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800434AC  48 00 40 11 */	bl getEventData__16dEvent_manager_cFs
/* 800434B0  28 03 00 00 */	cmplwi r3, 0
/* 800434B4  40 82 00 08 */	bne lbl_800434BC
/* 800434B8  38 60 00 00 */	li r3, 0
lbl_800434BC:
/* 800434BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800434C0  7C 08 03 A6 */	mtlr r0
/* 800434C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800434C8  4E 80 00 20 */	blr 

lbl_80031C48:
/* 80031C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031C4C  7C 08 02 A6 */	mflr r0
/* 80031C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031C54  7C 65 1B 78 */	mr r5, r3
/* 80031C58  88 83 05 69 */	lbz r4, 0x569(r3)
/* 80031C5C  28 04 00 FF */	cmplwi r4, 0xff
/* 80031C60  41 82 00 20 */	beq lbl_80031C80
/* 80031C64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80031C68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80031C6C  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80031C70  7C 05 07 74 */	extsb r5, r0
/* 80031C74  48 00 36 ED */	bl isSwitch__10dSv_info_cCFii
/* 80031C78  2C 03 00 00 */	cmpwi r3, 0
/* 80031C7C  41 82 00 0C */	beq lbl_80031C88
lbl_80031C80:
/* 80031C80  38 60 00 01 */	li r3, 1
/* 80031C84  48 00 00 08 */	b lbl_80031C8C
lbl_80031C88:
/* 80031C88  38 60 00 00 */	li r3, 0
lbl_80031C8C:
/* 80031C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031C90  7C 08 03 A6 */	mtlr r0
/* 80031C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80031C98  4E 80 00 20 */	blr 

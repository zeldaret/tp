lbl_8002EE60:
/* 8002EE60  38 00 FF FF */	li r0, -1
/* 8002EE64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002EE68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002EE6C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8002EE70  28 03 00 00 */	cmplwi r3, 0
/* 8002EE74  41 82 00 0C */	beq lbl_8002EE80
/* 8002EE78  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 8002EE7C  7C 00 07 74 */	extsb r0, r0
lbl_8002EE80:
/* 8002EE80  2C 00 00 00 */	cmpwi r0, 0
/* 8002EE84  40 80 00 14 */	bge lbl_8002EE98
/* 8002EE88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002EE8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002EE90  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8002EE94  7C 00 07 74 */	extsb r0, r0
lbl_8002EE98:
/* 8002EE98  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8002EE9C  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8002EEA0  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8002EEA4  7C 63 02 14 */	add r3, r3, r0
/* 8002EEA8  88 63 03 F9 */	lbz r3, 0x3f9(r3)
/* 8002EEAC  4E 80 00 20 */	blr 

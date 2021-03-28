lbl_80017470:
/* 80017470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80017474  7C 08 02 A6 */	mflr r0
/* 80017478  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001747C  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 80017480  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 80017484  4B FF F2 A9 */	bl __ct__15mDoMemCd_Ctrl_cFv
/* 80017488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001748C  7C 08 03 A6 */	mtlr r0
/* 80017490  38 21 00 10 */	addi r1, r1, 0x10
/* 80017494  4E 80 00 20 */	blr 

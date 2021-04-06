lbl_80048348:
/* 80048348  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8004834C  7C 08 02 A6 */	mflr r0
/* 80048350  90 01 00 34 */	stw r0, 0x34(r1)
/* 80048354  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80048358  7C 9F 23 78 */	mr r31, r4
/* 8004835C  7F E3 FB 78 */	mr r3, r31
/* 80048360  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 80048364  38 84 9F 60 */	addi r4, r4, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 80048368  38 84 01 4B */	addi r4, r4, 0x14b
/* 8004836C  48 32 06 29 */	bl strcmp
/* 80048370  2C 03 00 00 */	cmpwi r3, 0
/* 80048374  40 82 00 18 */	bne lbl_8004838C
/* 80048378  3C 60 80 04 */	lis r3, extraOffObjectCallBack__FP10fopAc_ac_cPv@ha /* 0x80046C88@ha */
/* 8004837C  38 63 6C 88 */	addi r3, r3, extraOffObjectCallBack__FP10fopAc_ac_cPv@l /* 0x80046C88@l */
/* 80048380  38 80 00 00 */	li r4, 0
/* 80048384  4B FD 14 75 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80048388  48 00 00 28 */	b lbl_800483B0
lbl_8004838C:
/* 8004838C  38 61 00 08 */	addi r3, r1, 8
/* 80048390  7F E4 FB 78 */	mr r4, r31
/* 80048394  48 32 07 99 */	bl strcpy
/* 80048398  38 61 00 08 */	addi r3, r1, 8
/* 8004839C  38 80 FF FF */	li r4, -1
/* 800483A0  4B FD 54 01 */	bl fopAcM_searchFromName4Event__FPCcs
/* 800483A4  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 800483A8  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 800483AC  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_800483B0:
/* 800483B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800483B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800483B8  7C 08 03 A6 */	mtlr r0
/* 800483BC  38 21 00 30 */	addi r1, r1, 0x30
/* 800483C0  4E 80 00 20 */	blr 

lbl_800482CC:
/* 800482CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800482D0  7C 08 02 A6 */	mflr r0
/* 800482D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800482D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800482DC  7C 9F 23 78 */	mr r31, r4
/* 800482E0  7F E3 FB 78 */	mr r3, r31
/* 800482E4  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 800482E8  38 84 9F 60 */	addi r4, r4, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 800482EC  38 84 01 4B */	addi r4, r4, 0x14b
/* 800482F0  48 32 06 A5 */	bl strcmp
/* 800482F4  2C 03 00 00 */	cmpwi r3, 0
/* 800482F8  40 82 00 18 */	bne lbl_80048310
/* 800482FC  3C 60 80 04 */	lis r3, extraOnObjectCallBack__FP10fopAc_ac_cPv@ha /* 0x80046C74@ha */
/* 80048300  38 63 6C 74 */	addi r3, r3, extraOnObjectCallBack__FP10fopAc_ac_cPv@l /* 0x80046C74@l */
/* 80048304  38 80 00 00 */	li r4, 0
/* 80048308  4B FD 14 F1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8004830C  48 00 00 28 */	b lbl_80048334
lbl_80048310:
/* 80048310  38 61 00 08 */	addi r3, r1, 8
/* 80048314  7F E4 FB 78 */	mr r4, r31
/* 80048318  48 32 08 15 */	bl strcpy
/* 8004831C  38 61 00 08 */	addi r3, r1, 8
/* 80048320  38 80 FF FF */	li r4, -1
/* 80048324  4B FD 54 7D */	bl fopAcM_searchFromName4Event__FPCcs
/* 80048328  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8004832C  60 00 08 00 */	ori r0, r0, 0x800
/* 80048330  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80048334:
/* 80048334  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80048338  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004833C  7C 08 03 A6 */	mtlr r0
/* 80048340  38 21 00 30 */	addi r1, r1, 0x30
/* 80048344  4E 80 00 20 */	blr 

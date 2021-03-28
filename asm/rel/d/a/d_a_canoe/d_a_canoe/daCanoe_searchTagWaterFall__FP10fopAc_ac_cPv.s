lbl_804DA54C:
/* 804DA54C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA550  7C 08 02 A6 */	mflr r0
/* 804DA554  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA558  A8 03 00 08 */	lha r0, 8(r3)
/* 804DA55C  2C 00 01 F8 */	cmpwi r0, 0x1f8
/* 804DA560  40 82 00 44 */	bne lbl_804DA5A4
/* 804DA564  C0 04 00 00 */	lfs f0, 0(r4)
/* 804DA568  D0 01 00 08 */	stfs f0, 8(r1)
/* 804DA56C  C0 04 00 04 */	lfs f0, 4(r4)
/* 804DA570  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804DA574  C0 04 00 08 */	lfs f0, 8(r4)
/* 804DA578  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804DA57C  38 81 00 08 */	addi r4, r1, 8
/* 804DA580  48 88 A1 E8 */	b checkHitWaterFall__16daTagWaterFall_cF4cXyz
/* 804DA584  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804DA588  41 82 00 1C */	beq lbl_804DA5A4
/* 804DA58C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DA590  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DA594  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804DA598  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 804DA59C  60 00 08 00 */	ori r0, r0, 0x800
/* 804DA5A0  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_804DA5A4:
/* 804DA5A4  38 60 00 01 */	li r3, 1
/* 804DA5A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA5AC  7C 08 03 A6 */	mtlr r0
/* 804DA5B0  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA5B4  4E 80 00 20 */	blr 

lbl_8001D698:
/* 8001D698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001D69C  7C 08 02 A6 */	mflr r0
/* 8001D6A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001D6A4  90 81 00 08 */	stw r4, 8(r1)
/* 8001D6A8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8001D6AC  48 00 77 15 */	bl dStage_searchName__FPCc
/* 8001D6B0  28 03 00 00 */	cmplwi r3, 0
/* 8001D6B4  40 82 00 0C */	bne lbl_8001D6C0
/* 8001D6B8  38 60 00 00 */	li r3, 0
/* 8001D6BC  48 00 00 24 */	b lbl_8001D6E0
lbl_8001D6C0:
/* 8001D6C0  A8 03 00 08 */	lha r0, 8(r3)
/* 8001D6C4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8001D6C8  88 03 00 0A */	lbz r0, 0xa(r3)
/* 8001D6CC  98 01 00 12 */	stb r0, 0x12(r1)
/* 8001D6D0  3C 60 80 02 */	lis r3, fopAcM_findObjectCB__FPC10fopAc_ac_cPv@ha /* 0x8001D5EC@ha */
/* 8001D6D4  38 63 D5 EC */	addi r3, r3, fopAcM_findObjectCB__FPC10fopAc_ac_cPv@l /* 0x8001D5EC@l */
/* 8001D6D8  38 81 00 08 */	addi r4, r1, 8
/* 8001D6DC  4B FF C1 1D */	bl fopAcIt_Judge__FPFPvPv_PvPv
lbl_8001D6E0:
/* 8001D6E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001D6E4  7C 08 03 A6 */	mtlr r0
/* 8001D6E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001D6EC  4E 80 00 20 */	blr 

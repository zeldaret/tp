lbl_800AD374:
/* 800AD374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AD378  7C 08 02 A6 */	mflr r0
/* 800AD37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AD380  FC 60 08 90 */	fmr f3, f1
/* 800AD384  38 A0 00 02 */	li r5, 2
/* 800AD388  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AD38C  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800AD390  38 C0 FF FF */	li r6, -1
/* 800AD394  48 00 00 45 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 800AD398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD39C  7C 08 03 A6 */	mtlr r0
/* 800AD3A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800AD3A4  4E 80 00 20 */	blr 

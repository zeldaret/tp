lbl_80BA7370:
/* 80BA7370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7374  7C 08 02 A6 */	mflr r0
/* 80BA7378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA737C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA7380  7C 7F 1B 78 */	mr r31, r3
/* 80BA7384  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BA7388  3C 80 80 BA */	lis r4, l_arcName@ha /* 0x80BA7D90@ha */
/* 80BA738C  38 84 7D 90 */	addi r4, r4, l_arcName@l /* 0x80BA7D90@l */
/* 80BA7390  80 84 00 00 */	lwz r4, 0(r4)
/* 80BA7394  4B 48 5B 29 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BA7398  7C 60 1B 78 */	mr r0, r3
/* 80BA739C  2C 00 00 04 */	cmpwi r0, 4
/* 80BA73A0  40 82 00 3C */	bne lbl_80BA73DC
/* 80BA73A4  7F E3 FB 78 */	mr r3, r31
/* 80BA73A8  3C 80 80 BA */	lis r4, l_arcName@ha /* 0x80BA7D90@ha */
/* 80BA73AC  38 84 7D 90 */	addi r4, r4, l_arcName@l /* 0x80BA7D90@l */
/* 80BA73B0  80 84 00 00 */	lwz r4, 0(r4)
/* 80BA73B4  38 A0 00 0D */	li r5, 0xd
/* 80BA73B8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075B44@ha */
/* 80BA73BC  38 C6 5B 44 */	addi r6, r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075B44@l */
/* 80BA73C0  38 E0 29 20 */	li r7, 0x2920
/* 80BA73C4  39 00 00 00 */	li r8, 0
/* 80BA73C8  4B 4D 13 F5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BA73CC  7C 60 1B 78 */	mr r0, r3
/* 80BA73D0  2C 00 00 05 */	cmpwi r0, 5
/* 80BA73D4  40 82 00 08 */	bne lbl_80BA73DC
/* 80BA73D8  48 00 00 08 */	b lbl_80BA73E0
lbl_80BA73DC:
/* 80BA73DC  7C 03 03 78 */	mr r3, r0
lbl_80BA73E0:
/* 80BA73E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA73E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA73E8  7C 08 03 A6 */	mtlr r0
/* 80BA73EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA73F0  4E 80 00 20 */	blr 

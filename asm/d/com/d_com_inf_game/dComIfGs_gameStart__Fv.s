lbl_8002E974:
/* 8002E974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002E978  7C 08 02 A6 */	mflr r0
/* 8002E97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002E980  38 C0 00 00 */	li r6, 0
/* 8002E984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002E988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E98C  98 C3 4E 1C */	stb r6, 0x4e1c(r3)
/* 8002E990  38 63 00 58 */	addi r3, r3, 0x58
/* 8002E994  88 03 00 09 */	lbz r0, 9(r3)
/* 8002E998  7C 05 07 74 */	extsb r5, r0
/* 8002E99C  88 83 00 08 */	lbz r4, 8(r3)
/* 8002E9A0  90 C1 00 08 */	stw r6, 8(r1)
/* 8002E9A4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8002E9A8  38 C0 FF FF */	li r6, -1
/* 8002E9AC  C0 22 83 04 */	lfs f1, lit_5226(r2)
/* 8002E9B0  38 E0 00 00 */	li r7, 0
/* 8002E9B4  39 00 00 01 */	li r8, 1
/* 8002E9B8  39 20 00 00 */	li r9, 0
/* 8002E9BC  39 40 00 00 */	li r10, 0
/* 8002E9C0  4B FF E9 3D */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
/* 8002E9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002E9C8  7C 08 03 A6 */	mtlr r0
/* 8002E9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8002E9D0  4E 80 00 20 */	blr 

lbl_80C1CFC0:
/* 80C1CFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CFC4  7C 08 02 A6 */	mflr r0
/* 80C1CFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CFCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1CFD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1CFD4  7C 7E 1B 78 */	mr r30, r3
/* 80C1CFD8  7C 9F 23 78 */	mr r31, r4
/* 80C1CFDC  48 00 00 51 */	bl moveSwitch__11daHeavySw_cFv
/* 80C1CFE0  38 7E 06 20 */	addi r3, r30, 0x620
/* 80C1CFE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C1CFE8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C1CFEC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C1CFF0  4B 45 9A BC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C1CFF4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C1CFF8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C1CFFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1D000  7F C3 F3 78 */	mr r3, r30
/* 80C1D004  4B FF FB C5 */	bl setBaseMtx__11daHeavySw_cFv
/* 80C1D008  38 00 00 00 */	li r0, 0
/* 80C1D00C  98 1E 05 D8 */	stb r0, 0x5d8(r30)
/* 80C1D010  38 60 00 01 */	li r3, 1
/* 80C1D014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1D018  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1D01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1D020  7C 08 03 A6 */	mtlr r0
/* 80C1D024  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1D028  4E 80 00 20 */	blr 

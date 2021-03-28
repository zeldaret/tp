lbl_80053B64:
/* 80053B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80053B68  7C 08 02 A6 */	mflr r0
/* 80053B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80053B70  7C 64 1B 78 */	mr r4, r3
/* 80053B74  38 64 00 08 */	addi r3, r4, 8
/* 80053B78  C0 24 01 20 */	lfs f1, 0x120(r4)
/* 80053B7C  C0 44 01 24 */	lfs f2, 0x124(r4)
/* 80053B80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80053B84  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80053B88  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 80053B8C  48 2A 53 49 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80053B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80053B94  7C 08 03 A6 */	mtlr r0
/* 80053B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80053B9C  4E 80 00 20 */	blr 

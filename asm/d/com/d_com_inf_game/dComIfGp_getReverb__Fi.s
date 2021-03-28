lbl_8002D06C:
/* 8002D06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D070  7C 08 02 A6 */	mflr r0
/* 8002D074  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D07C  7C 7F 1B 78 */	mr r31, r3
/* 8002D080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002D084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002D088  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8002D08C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8002D090  7D 89 03 A6 */	mtctr r12
/* 8002D094  4E 80 04 21 */	bctrl 
/* 8002D098  7F E4 FB 78 */	mr r4, r31
/* 8002D09C  4B FF 8D A5 */	bl dStage_roomRead_dt_c_GetReverbStage__FR14roomRead_classi
/* 8002D0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002D0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002D0A8  7C 08 03 A6 */	mtlr r0
/* 8002D0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D0B0  4E 80 00 20 */	blr 

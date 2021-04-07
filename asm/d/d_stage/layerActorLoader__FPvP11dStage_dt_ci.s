lbl_80026AF0:
/* 80026AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026AF4  7C 08 02 A6 */	mflr r0
/* 80026AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80026AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80026B00  93 C1 00 08 */	stw r30, 8(r1)
/* 80026B04  7C 7E 1B 78 */	mr r30, r3
/* 80026B08  7C 9F 23 78 */	mr r31, r4
/* 80026B0C  38 60 00 00 */	li r3, 0
/* 80026B10  48 00 5E 6D */	bl getLayerNo__14dComIfG_play_cFi
/* 80026B14  7C 65 1B 78 */	mr r5, r3
/* 80026B18  3C 60 80 3A */	lis r3, l_layerFuncTable_5158@ha /* 0x803A668C@ha */
/* 80026B1C  38 63 66 8C */	addi r3, r3, l_layerFuncTable_5158@l /* 0x803A668C@l */
/* 80026B20  38 80 00 04 */	li r4, 4
/* 80026B24  4B FF F5 5D */	bl dStage_setLayerTagName__FP9FuncTableii
/* 80026B28  7F C3 F3 78 */	mr r3, r30
/* 80026B2C  7F E4 FB 78 */	mr r4, r31
/* 80026B30  3C A0 80 3A */	lis r5, l_layerFuncTable_5158@ha /* 0x803A668C@ha */
/* 80026B34  38 A5 66 8C */	addi r5, r5, l_layerFuncTable_5158@l /* 0x803A668C@l */
/* 80026B38  38 C0 00 04 */	li r6, 4
/* 80026B3C  4B FF F5 79 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80026B44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80026B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026B4C  7C 08 03 A6 */	mtlr r0
/* 80026B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80026B54  4E 80 00 20 */	blr 

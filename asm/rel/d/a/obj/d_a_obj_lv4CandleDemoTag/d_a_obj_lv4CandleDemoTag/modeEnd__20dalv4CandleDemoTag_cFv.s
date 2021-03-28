lbl_80C5CF40:
/* 80C5CF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CF44  7C 08 02 A6 */	mflr r0
/* 80C5CF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CF4C  7C 65 1B 78 */	mr r5, r3
/* 80C5CF50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5CF54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5CF58  88 85 05 86 */	lbz r4, 0x586(r5)
/* 80C5CF5C  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80C5CF60  7C 05 07 74 */	extsb r5, r0
/* 80C5CF64  4B 3D 83 4C */	b offSwitch__10dSv_info_cFii
/* 80C5CF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CF6C  7C 08 03 A6 */	mtlr r0
/* 80C5CF70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CF74  4E 80 00 20 */	blr 

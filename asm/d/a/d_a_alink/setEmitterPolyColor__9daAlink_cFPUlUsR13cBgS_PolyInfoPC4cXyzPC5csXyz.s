lbl_80120634:
/* 80120634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80120638  7C 08 02 A6 */	mflr r0
/* 8012063C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80120640  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80120644  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80120648  7C 6A 1B 78 */	mr r10, r3
/* 8012064C  7C 9E 23 78 */	mr r30, r4
/* 80120650  7D 09 43 78 */	mr r9, r8
/* 80120654  38 60 00 00 */	li r3, 0
/* 80120658  90 61 00 08 */	stw r3, 8(r1)
/* 8012065C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80120660  38 00 FF FF */	li r0, -1
/* 80120664  90 01 00 10 */	stw r0, 0x10(r1)
/* 80120668  90 61 00 14 */	stw r3, 0x14(r1)
/* 8012066C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80120670  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80120674  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80120678  80 84 00 00 */	lwz r4, 0(r4)
/* 8012067C  39 0A 01 0C */	addi r8, r10, 0x10c
/* 80120680  39 40 00 00 */	li r10, 0
/* 80120684  4B F2 D0 21 */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80120688  90 7E 00 00 */	stw r3, 0(r30)
/* 8012068C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80120690  38 63 02 10 */	addi r3, r3, 0x210
/* 80120694  80 9E 00 00 */	lwz r4, 0(r30)
/* 80120698  4B F2 B2 1D */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8012069C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 801206A0  38 63 02 10 */	addi r3, r3, 0x210
/* 801206A4  80 9E 00 00 */	lwz r4, 0(r30)
/* 801206A8  4B F2 B2 71 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 801206AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801206B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801206B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801206B8  7C 08 03 A6 */	mtlr r0
/* 801206BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801206C0  4E 80 00 20 */	blr 

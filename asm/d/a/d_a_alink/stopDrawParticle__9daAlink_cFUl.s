lbl_80120778:
/* 80120778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012077C  7C 08 02 A6 */	mflr r0
/* 80120780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80120784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80120788  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8012078C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80120790  38 63 02 10 */	addi r3, r3, 0x210
/* 80120794  4B F2 B1 85 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80120798  28 03 00 00 */	cmplwi r3, 0
/* 8012079C  41 82 00 10 */	beq lbl_801207AC
/* 801207A0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 801207A4  60 00 00 04 */	ori r0, r0, 4
/* 801207A8  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_801207AC:
/* 801207AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801207B0  7C 08 03 A6 */	mtlr r0
/* 801207B4  38 21 00 10 */	addi r1, r1, 0x10
/* 801207B8  4E 80 00 20 */	blr 

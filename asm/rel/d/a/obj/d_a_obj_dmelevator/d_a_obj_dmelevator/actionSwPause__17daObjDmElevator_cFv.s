lbl_80BDE868:
/* 80BDE868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDE86C  7C 08 02 A6 */	mflr r0
/* 80BDE870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDE874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDE878  7C 7F 1B 78 */	mr r31, r3
/* 80BDE87C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDE880  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BDE884  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80BDE888  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80BDE88C  60 00 02 00 */	ori r0, r0, 0x200
/* 80BDE890  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80BDE894  88 7F 06 2A */	lbz r3, 0x62a(r31)
/* 80BDE898  38 03 FF FF */	addi r0, r3, -1
/* 80BDE89C  98 1F 06 2A */	stb r0, 0x62a(r31)
/* 80BDE8A0  88 1F 06 2A */	lbz r0, 0x62a(r31)
/* 80BDE8A4  28 00 00 00 */	cmplwi r0, 0
/* 80BDE8A8  40 82 00 14 */	bne lbl_80BDE8BC
/* 80BDE8AC  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80BDE8B0  4B 46 3B B8 */	b reset__14dEvt_control_cFv
/* 80BDE8B4  7F E3 FB 78 */	mr r3, r31
/* 80BDE8B8  4B FF FE E9 */	bl actionSwPauseNoneInit__17daObjDmElevator_cFv
lbl_80BDE8BC:
/* 80BDE8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDE8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDE8C4  7C 08 03 A6 */	mtlr r0
/* 80BDE8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDE8CC  4E 80 00 20 */	blr 

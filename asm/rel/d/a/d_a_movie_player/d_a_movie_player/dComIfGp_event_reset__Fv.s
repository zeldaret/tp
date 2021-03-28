lbl_80878A34:
/* 80878A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878A38  7C 08 02 A6 */	mflr r0
/* 80878A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80878A44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80878A48  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80878A4C  48 00 00 19 */	bl getEvent__14dComIfG_play_cFv
/* 80878A50  4B 7C 9A 18 */	b reset__14dEvt_control_cFv
/* 80878A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878A58  7C 08 03 A6 */	mtlr r0
/* 80878A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80878A60  4E 80 00 20 */	blr 

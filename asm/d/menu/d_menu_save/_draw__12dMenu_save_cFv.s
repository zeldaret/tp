lbl_801F69B8:
/* 801F69B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F69BC  7C 08 02 A6 */	mflr r0
/* 801F69C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F69C4  88 03 21 A1 */	lbz r0, 0x21a1(r3)
/* 801F69C8  28 00 00 00 */	cmplwi r0, 0
/* 801F69CC  40 82 00 20 */	bne lbl_801F69EC
/* 801F69D0  80 63 21 8C */	lwz r3, 0x218c(r3)
/* 801F69D4  28 03 00 00 */	cmplwi r3, 0
/* 801F69D8  41 82 00 14 */	beq lbl_801F69EC
/* 801F69DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801F69E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 801F69E4  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 801F69E8  48 04 6F 31 */	bl draw__17dMsgScrnExplain_cFP13J2DOrthoGraph
lbl_801F69EC:
/* 801F69EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F69F0  7C 08 03 A6 */	mtlr r0
/* 801F69F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F69F8  4E 80 00 20 */	blr 

lbl_8029E560:
/* 8029E560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E564  7C 08 02 A6 */	mflr r0
/* 8029E568  39 00 00 01 */	li r8, 1
/* 8029E56C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E570  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8029E574  64 09 81 00 */	oris r9, r0, 0x8100
/* 8029E578  3C 60 80 2A */	lis r3, setup_callback__FUs@ha /* 0x8029E540@ha */
/* 8029E57C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8029E580  38 03 E5 40 */	addi r0, r3, setup_callback__FUs@l /* 0x8029E540@l */
/* 8029E584  38 61 00 08 */	addi r3, r1, 8
/* 8029E588  38 80 00 05 */	li r4, 5
/* 8029E58C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8029E590  7C 05 03 78 */	mr r5, r0
/* 8029E594  91 21 00 08 */	stw r9, 8(r1)
/* 8029E598  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8029E59C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8029E5A0  91 0D 8D 78 */	stw r8, flag(r13)
/* 8029E5A4  48 00 02 3D */	bl DSPSendCommands2__FPUlUlPFUs_v
lbl_8029E5A8:
/* 8029E5A8  80 0D 8D 78 */	lwz r0, flag(r13)
/* 8029E5AC  2C 00 00 00 */	cmpwi r0, 0
/* 8029E5B0  40 82 FF F8 */	bne lbl_8029E5A8
/* 8029E5B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E5B8  7C 08 03 A6 */	mtlr r0
/* 8029E5BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E5C0  4E 80 00 20 */	blr 

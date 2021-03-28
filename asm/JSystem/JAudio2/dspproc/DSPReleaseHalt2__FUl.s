lbl_8029E4E0:
/* 8029E4E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E4E4  7C 08 02 A6 */	mflr r0
/* 8029E4E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E4EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029E4F0  7C 7F 1B 78 */	mr r31, r3
/* 8029E4F4  4B FF FB C9 */	bl DSP_CreateMap2__FUl
/* 8029E4F8  7C 60 1B 78 */	mr r0, r3
/* 8029E4FC  38 61 00 08 */	addi r3, r1, 8
/* 8029E500  53 E0 80 1E */	rlwimi r0, r31, 0x10, 0, 0xf
/* 8029E504  38 80 00 00 */	li r4, 0
/* 8029E508  90 01 00 08 */	stw r0, 8(r1)
/* 8029E50C  38 A0 00 00 */	li r5, 0
/* 8029E510  48 00 02 D1 */	bl DSPSendCommands2__FPUlUlPFUs_v
/* 8029E514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029E51C  7C 08 03 A6 */	mtlr r0
/* 8029E520  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E524  4E 80 00 20 */	blr 

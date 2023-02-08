lbl_80291A78:
/* 80291A78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80291A7C  7C 08 02 A6 */	mflr r0
/* 80291A80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80291A84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80291A88  7C 7F 1B 78 */	mr r31, r3
/* 80291A8C  48 0A BC 69 */	bl OSDisableInterrupts
/* 80291A90  90 61 00 08 */	stw r3, 8(r1)
/* 80291A94  38 80 00 01 */	li r4, 1
/* 80291A98  88 1F 02 16 */	lbz r0, 0x216(r31)
/* 80291A9C  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 80291AA0  98 1F 02 16 */	stb r0, 0x216(r31)
/* 80291AA4  48 0A BC 79 */	bl OSRestoreInterrupts
/* 80291AA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80291AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80291AB0  7C 08 03 A6 */	mtlr r0
/* 80291AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80291AB8  4E 80 00 20 */	blr 

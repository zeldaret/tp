lbl_800B5C64:
/* 800B5C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B5C68  7C 08 02 A6 */	mflr r0
/* 800B5C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B5C70  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800B5C74  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800B5C78  7D 89 03 A6 */	mtctr r12
/* 800B5C7C  4E 80 04 21 */	bctrl 
/* 800B5C80  2C 03 00 00 */	cmpwi r3, 0
/* 800B5C84  38 80 00 01 */	li r4, 1
/* 800B5C88  41 82 00 08 */	beq lbl_800B5C90
/* 800B5C8C  38 80 00 03 */	li r4, 3
lbl_800B5C90:
/* 800B5C90  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B5C94  D0 21 00 08 */	stfs f1, 8(r1)
/* 800B5C98  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B5C9C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800B5CA0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800B5CA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B5CA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B5CAC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800B5CB0  38 A0 00 0F */	li r5, 0xf
/* 800B5CB4  38 C1 00 08 */	addi r6, r1, 8
/* 800B5CB8  4B FB 9D 6D */	bl StartShock__12dVibration_cFii4cXyz
/* 800B5CBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B5CC0  7C 08 03 A6 */	mtlr r0
/* 800B5CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 800B5CC8  4E 80 00 20 */	blr 

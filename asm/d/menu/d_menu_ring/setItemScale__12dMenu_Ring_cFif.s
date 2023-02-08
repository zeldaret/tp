lbl_801EBA38:
/* 801EBA38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EBA3C  7C 08 02 A6 */	mflr r0
/* 801EBA40  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EBA44  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801EBA48  39 61 00 18 */	addi r11, r1, 0x18
/* 801EBA4C  48 17 67 91 */	bl _savegpr_29
/* 801EBA50  FF E0 08 90 */	fmr f31, f1
/* 801EBA54  3B A0 00 00 */	li r29, 0
/* 801EBA58  3B E0 00 00 */	li r31, 0
/* 801EBA5C  1C 04 00 0C */	mulli r0, r4, 0xc
/* 801EBA60  7F C3 02 14 */	add r30, r3, r0
lbl_801EBA64:
/* 801EBA64  38 1F 00 98 */	addi r0, r31, 0x98
/* 801EBA68  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801EBA6C  28 03 00 00 */	cmplwi r3, 0
/* 801EBA70  41 82 00 1C */	beq lbl_801EBA8C
/* 801EBA74  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801EBA78  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801EBA7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EBA80  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801EBA84  7D 89 03 A6 */	mtctr r12
/* 801EBA88  4E 80 04 21 */	bctrl 
lbl_801EBA8C:
/* 801EBA8C  3B BD 00 01 */	addi r29, r29, 1
/* 801EBA90  2C 1D 00 03 */	cmpwi r29, 3
/* 801EBA94  3B FF 00 04 */	addi r31, r31, 4
/* 801EBA98  41 80 FF CC */	blt lbl_801EBA64
/* 801EBA9C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801EBAA0  39 61 00 18 */	addi r11, r1, 0x18
/* 801EBAA4  48 17 67 85 */	bl _restgpr_29
/* 801EBAA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EBAAC  7C 08 03 A6 */	mtlr r0
/* 801EBAB0  38 21 00 20 */	addi r1, r1, 0x20
/* 801EBAB4  4E 80 00 20 */	blr 

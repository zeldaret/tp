lbl_80C9E5A0:
/* 80C9E5A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9E5A4  7C 08 02 A6 */	mflr r0
/* 80C9E5A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9E5AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9E5B0  4B 6C 3C 28 */	b _savegpr_28
/* 80C9E5B4  7C 7C 1B 78 */	mr r28, r3
/* 80C9E5B8  3B A0 00 00 */	li r29, 0
/* 80C9E5BC  3B E0 00 00 */	li r31, 0
lbl_80C9E5C0:
/* 80C9E5C0  7F DC FA 14 */	add r30, r28, r31
/* 80C9E5C4  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C9E5C8  81 9E 05 B0 */	lwz r12, 0x5b0(r30)
/* 80C9E5CC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C9E5D0  7D 89 03 A6 */	mtctr r12
/* 80C9E5D4  4E 80 04 21 */	bctrl 
/* 80C9E5D8  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80C9E5DC  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 80C9E5E0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C9E5E4  7D 89 03 A6 */	mtctr r12
/* 80C9E5E8  4E 80 04 21 */	bctrl 
/* 80C9E5EC  3B BD 00 01 */	addi r29, r29, 1
/* 80C9E5F0  2C 1D 00 02 */	cmpwi r29, 2
/* 80C9E5F4  3B FF 00 14 */	addi r31, r31, 0x14
/* 80C9E5F8  41 80 FF C8 */	blt lbl_80C9E5C0
/* 80C9E5FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9E600  4B 6C 3C 24 */	b _restgpr_28
/* 80C9E604  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9E608  7C 08 03 A6 */	mtlr r0
/* 80C9E60C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9E610  4E 80 00 20 */	blr 

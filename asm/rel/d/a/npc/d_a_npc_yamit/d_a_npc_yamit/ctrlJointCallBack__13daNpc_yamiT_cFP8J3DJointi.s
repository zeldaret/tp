lbl_80B4A5A8:
/* 80B4A5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A5AC  7C 08 02 A6 */	mflr r0
/* 80B4A5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A5B4  7C 60 1B 78 */	mr r0, r3
/* 80B4A5B8  2C 04 00 00 */	cmpwi r4, 0
/* 80B4A5BC  40 82 00 30 */	bne lbl_80B4A5EC
/* 80B4A5C0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B4A5C4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B4A5C8  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B4A5CC  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B4A5D0  28 03 00 00 */	cmplwi r3, 0
/* 80B4A5D4  41 82 00 18 */	beq lbl_80B4A5EC
/* 80B4A5D8  7C 04 03 78 */	mr r4, r0
/* 80B4A5DC  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B4A5E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B4A5E4  7D 89 03 A6 */	mtctr r12
/* 80B4A5E8  4E 80 04 21 */	bctrl 
lbl_80B4A5EC:
/* 80B4A5EC  38 60 00 01 */	li r3, 1
/* 80B4A5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A5F4  7C 08 03 A6 */	mtlr r0
/* 80B4A5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A5FC  4E 80 00 20 */	blr 

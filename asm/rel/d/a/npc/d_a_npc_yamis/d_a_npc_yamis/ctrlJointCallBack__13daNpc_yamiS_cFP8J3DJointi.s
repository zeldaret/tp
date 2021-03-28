lbl_80B46EC4:
/* 80B46EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46EC8  7C 08 02 A6 */	mflr r0
/* 80B46ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46ED0  7C 60 1B 78 */	mr r0, r3
/* 80B46ED4  2C 04 00 00 */	cmpwi r4, 0
/* 80B46ED8  40 82 00 30 */	bne lbl_80B46F08
/* 80B46EDC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80B46EE0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80B46EE4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B46EE8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B46EEC  28 03 00 00 */	cmplwi r3, 0
/* 80B46EF0  41 82 00 18 */	beq lbl_80B46F08
/* 80B46EF4  7C 04 03 78 */	mr r4, r0
/* 80B46EF8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B46EFC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B46F00  7D 89 03 A6 */	mtctr r12
/* 80B46F04  4E 80 04 21 */	bctrl 
lbl_80B46F08:
/* 80B46F08  38 60 00 01 */	li r3, 1
/* 80B46F0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B46F10  7C 08 03 A6 */	mtlr r0
/* 80B46F14  38 21 00 10 */	addi r1, r1, 0x10
/* 80B46F18  4E 80 00 20 */	blr 

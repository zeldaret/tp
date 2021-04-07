lbl_80809EF0:
/* 80809EF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80809EF4  7C 08 02 A6 */	mflr r0
/* 80809EF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80809EFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80809F00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80809F04  7C 7E 1B 78 */	mr r30, r3
/* 80809F08  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 80809F0C  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 80809F10  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80809F14  38 63 00 0C */	addi r3, r3, 0xc
/* 80809F18  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80809F1C  4B B1 E5 11 */	bl checkPass__12J3DFrameCtrlFf
/* 80809F20  2C 03 00 00 */	cmpwi r3, 0
/* 80809F24  40 82 00 34 */	bne lbl_80809F58
/* 80809F28  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80809F2C  38 63 00 0C */	addi r3, r3, 0xc
/* 80809F30  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80809F34  4B B1 E4 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 80809F38  2C 03 00 00 */	cmpwi r3, 0
/* 80809F3C  40 82 00 1C */	bne lbl_80809F58
/* 80809F40  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80809F44  38 63 00 0C */	addi r3, r3, 0xc
/* 80809F48  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80809F4C  4B B1 E4 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 80809F50  2C 03 00 00 */	cmpwi r3, 0
/* 80809F54  41 82 00 30 */	beq lbl_80809F84
lbl_80809F58:
/* 80809F58  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E6@ha */
/* 80809F5C  38 03 00 E6 */	addi r0, r3, 0x00E6 /* 0x000700E6@l */
/* 80809F60  90 01 00 08 */	stw r0, 8(r1)
/* 80809F64  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80809F68  38 81 00 08 */	addi r4, r1, 8
/* 80809F6C  38 A0 00 00 */	li r5, 0
/* 80809F70  38 C0 FF FF */	li r6, -1
/* 80809F74  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80809F78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80809F7C  7D 89 03 A6 */	mtctr r12
/* 80809F80  4E 80 04 21 */	bctrl 
lbl_80809F84:
/* 80809F84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80809F88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80809F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80809F90  7C 08 03 A6 */	mtlr r0
/* 80809F94  38 21 00 20 */	addi r1, r1, 0x20
/* 80809F98  4E 80 00 20 */	blr 

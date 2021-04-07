lbl_802F7EF4:
/* 802F7EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F7EF8  7C 08 02 A6 */	mflr r0
/* 802F7EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F7F00  28 04 00 00 */	cmplwi r4, 0
/* 802F7F04  41 82 00 B0 */	beq lbl_802F7FB4
/* 802F7F08  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802F7F0C  28 00 00 07 */	cmplwi r0, 7
/* 802F7F10  41 81 00 A4 */	bgt lbl_802F7FB4
/* 802F7F14  3C A0 80 3D */	lis r5, lit_2709@ha /* 0x803CCFB0@ha */
/* 802F7F18  38 A5 CF B0 */	addi r5, r5, lit_2709@l /* 0x803CCFB0@l */
/* 802F7F1C  54 00 10 3A */	slwi r0, r0, 2
/* 802F7F20  7C 05 00 2E */	lwzx r0, r5, r0
/* 802F7F24  7C 09 03 A6 */	mtctr r0
/* 802F7F28  4E 80 04 20 */	bctr 
/* 802F7F2C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F7F30  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 802F7F34  7D 89 03 A6 */	mtctr r12
/* 802F7F38  4E 80 04 21 */	bctrl 
/* 802F7F3C  48 00 00 78 */	b lbl_802F7FB4
/* 802F7F40  81 83 00 00 */	lwz r12, 0(r3)
/* 802F7F44  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 802F7F48  7D 89 03 A6 */	mtctr r12
/* 802F7F4C  4E 80 04 21 */	bctrl 
/* 802F7F50  48 00 00 64 */	b lbl_802F7FB4
/* 802F7F54  81 83 00 00 */	lwz r12, 0(r3)
/* 802F7F58  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 802F7F5C  7D 89 03 A6 */	mtctr r12
/* 802F7F60  4E 80 04 21 */	bctrl 
/* 802F7F64  48 00 00 50 */	b lbl_802F7FB4
/* 802F7F68  81 83 00 00 */	lwz r12, 0(r3)
/* 802F7F6C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 802F7F70  7D 89 03 A6 */	mtctr r12
/* 802F7F74  4E 80 04 21 */	bctrl 
/* 802F7F78  48 00 00 3C */	b lbl_802F7FB4
/* 802F7F7C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F7F80  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 802F7F84  7D 89 03 A6 */	mtctr r12
/* 802F7F88  4E 80 04 21 */	bctrl 
/* 802F7F8C  48 00 00 28 */	b lbl_802F7FB4
/* 802F7F90  81 83 00 00 */	lwz r12, 0(r3)
/* 802F7F94  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 802F7F98  7D 89 03 A6 */	mtctr r12
/* 802F7F9C  4E 80 04 21 */	bctrl 
/* 802F7FA0  48 00 00 14 */	b lbl_802F7FB4
/* 802F7FA4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F7FA8  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 802F7FAC  7D 89 03 A6 */	mtctr r12
/* 802F7FB0  4E 80 04 21 */	bctrl 
lbl_802F7FB4:
/* 802F7FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F7FB8  7C 08 03 A6 */	mtlr r0
/* 802F7FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F7FC0  4E 80 00 20 */	blr 

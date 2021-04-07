lbl_80457BF8:
/* 80457BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457BFC  7C 08 02 A6 */	mflr r0
/* 80457C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457C04  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 80457C08  4B BD 78 B5 */	bl dComIfG_getRoomArcName__Fi
/* 80457C0C  7C 64 1B 78 */	mr r4, r3
/* 80457C10  3C 60 80 46 */	lis r3, arcName@ha /* 0x804595B8@ha */
/* 80457C14  38 63 95 B8 */	addi r3, r3, arcName@l /* 0x804595B8@l */
/* 80457C18  38 A0 00 20 */	li r5, 0x20
/* 80457C1C  4B F1 0E CD */	bl strncpy
/* 80457C20  3C 60 80 46 */	lis r3, arcName@ha /* 0x804595B8@ha */
/* 80457C24  38 63 95 B8 */	addi r3, r3, arcName@l /* 0x804595B8@l */
/* 80457C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457C2C  7C 08 03 A6 */	mtlr r0
/* 80457C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80457C34  4E 80 00 20 */	blr 

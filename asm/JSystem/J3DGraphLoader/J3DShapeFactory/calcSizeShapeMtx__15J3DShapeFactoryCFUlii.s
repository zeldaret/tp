lbl_803379E8:
/* 803379E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803379EC  7C 08 02 A6 */	mflr r0
/* 803379F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803379F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803379F8  80 C3 00 00 */	lwz r6, 0(r3)
/* 803379FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80337A00  54 A0 08 3C */	slwi r0, r5, 1
/* 80337A04  7C 03 02 2E */	lhzx r0, r3, r0
/* 80337A08  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80337A0C  3B E0 00 00 */	li r31, 0
/* 80337A10  54 83 06 F6 */	rlwinm r3, r4, 0, 0x1b, 0x1b
/* 80337A14  2C 03 00 10 */	cmpwi r3, 0x10
/* 80337A18  41 82 00 14 */	beq lbl_80337A2C
/* 80337A1C  40 80 00 70 */	bge lbl_80337A8C
/* 80337A20  2C 03 00 00 */	cmpwi r3, 0
/* 80337A24  41 82 00 68 */	beq lbl_80337A8C
/* 80337A28  48 00 00 64 */	b lbl_80337A8C
lbl_80337A2C:
/* 80337A2C  7C 06 00 AE */	lbzx r0, r6, r0
/* 80337A30  2C 00 00 02 */	cmpwi r0, 2
/* 80337A34  41 82 00 34 */	beq lbl_80337A68
/* 80337A38  40 80 00 14 */	bge lbl_80337A4C
/* 80337A3C  2C 00 00 00 */	cmpwi r0, 0
/* 80337A40  41 82 00 18 */	beq lbl_80337A58
/* 80337A44  40 80 00 1C */	bge lbl_80337A60
/* 80337A48  48 00 00 30 */	b lbl_80337A78
lbl_80337A4C:
/* 80337A4C  2C 00 00 04 */	cmpwi r0, 4
/* 80337A50  40 80 00 28 */	bge lbl_80337A78
/* 80337A54  48 00 00 1C */	b lbl_80337A70
lbl_80337A58:
/* 80337A58  3B E0 00 08 */	li r31, 8
/* 80337A5C  48 00 00 6C */	b lbl_80337AC8
lbl_80337A60:
/* 80337A60  3B E0 00 08 */	li r31, 8
/* 80337A64  48 00 00 64 */	b lbl_80337AC8
lbl_80337A68:
/* 80337A68  3B E0 00 08 */	li r31, 8
/* 80337A6C  48 00 00 5C */	b lbl_80337AC8
lbl_80337A70:
/* 80337A70  3B E0 00 10 */	li r31, 0x10
/* 80337A74  48 00 00 54 */	b lbl_80337AC8
lbl_80337A78:
/* 80337A78  3C 60 80 3A */	lis r3, J3DShapeFactory__stringBase0@ha
/* 80337A7C  38 63 21 00 */	addi r3, r3, J3DShapeFactory__stringBase0@l
/* 80337A80  4C C6 31 82 */	crclr 6
/* 80337A84  4B CC F0 39 */	bl OSReport
/* 80337A88  48 00 00 40 */	b lbl_80337AC8
lbl_80337A8C:
/* 80337A8C  7C 06 00 AE */	lbzx r0, r6, r0
/* 80337A90  2C 00 00 03 */	cmpwi r0, 3
/* 80337A94  41 82 00 1C */	beq lbl_80337AB0
/* 80337A98  40 80 00 20 */	bge lbl_80337AB8
/* 80337A9C  2C 00 00 00 */	cmpwi r0, 0
/* 80337AA0  40 80 00 08 */	bge lbl_80337AA8
/* 80337AA4  48 00 00 14 */	b lbl_80337AB8
lbl_80337AA8:
/* 80337AA8  3B E0 00 08 */	li r31, 8
/* 80337AAC  48 00 00 1C */	b lbl_80337AC8
lbl_80337AB0:
/* 80337AB0  3B E0 00 10 */	li r31, 0x10
/* 80337AB4  48 00 00 14 */	b lbl_80337AC8
lbl_80337AB8:
/* 80337AB8  3C 60 80 3A */	lis r3, J3DShapeFactory__stringBase0@ha
/* 80337ABC  38 63 21 00 */	addi r3, r3, J3DShapeFactory__stringBase0@l
/* 80337AC0  4C C6 31 82 */	crclr 6
/* 80337AC4  4B CC EF F9 */	bl OSReport
lbl_80337AC8:
/* 80337AC8  7F E3 FB 78 */	mr r3, r31
/* 80337ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80337AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80337AD4  7C 08 03 A6 */	mtlr r0
/* 80337AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80337ADC  4E 80 00 20 */	blr 

lbl_80101A18:
/* 80101A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80101A1C  7C 08 02 A6 */	mflr r0
/* 80101A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80101A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80101A28  7C 7F 1B 78 */	mr r31, r3
/* 80101A2C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80101A30  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80101A34  7D 89 03 A6 */	mtctr r12
/* 80101A38  4E 80 04 21 */	bctrl 
/* 80101A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80101A40  41 82 00 14 */	beq lbl_80101A54
/* 80101A44  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80101A48  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80101A4C  C0 23 00 78 */	lfs f1, 0x78(r3)
/* 80101A50  48 00 00 44 */	b lbl_80101A94
lbl_80101A54:
/* 80101A54  7F E3 FB 78 */	mr r3, r31
/* 80101A58  4B FB E3 59 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80101A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80101A60  41 82 00 0C */	beq lbl_80101A6C
/* 80101A64  C0 22 93 48 */	lfs f1, lit_8130(r2)
/* 80101A68  48 00 00 2C */	b lbl_80101A94
lbl_80101A6C:
/* 80101A6C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80101A70  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80101A74  41 82 00 14 */	beq lbl_80101A88
/* 80101A78  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80101A7C  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80101A80  C0 23 00 EC */	lfs f1, 0xec(r3)
/* 80101A84  48 00 00 10 */	b lbl_80101A94
lbl_80101A88:
/* 80101A88  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80101A8C  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80101A90  C0 23 00 68 */	lfs f1, 0x68(r3)
lbl_80101A94:
/* 80101A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80101A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80101A9C  7C 08 03 A6 */	mtlr r0
/* 80101AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80101AA4  4E 80 00 20 */	blr 

lbl_803169DC:
/* 803169DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803169E0  7C 08 02 A6 */	mflr r0
/* 803169E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803169E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803169EC  7C 7F 1B 78 */	mr r31, r3
/* 803169F0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 803169F4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 803169F8  80 03 00 34 */	lwz r0, 0x34(r3)
/* 803169FC  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 80316A00  41 82 00 1C */	beq lbl_80316A1C
/* 80316A04  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80316A08  81 83 00 00 */	lwz r12, 0(r3)
/* 80316A0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80316A10  7D 89 03 A6 */	mtctr r12
/* 80316A14  4E 80 04 21 */	bctrl 
/* 80316A18  48 00 00 18 */	b lbl_80316A30
lbl_80316A1C:
/* 80316A1C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80316A20  81 83 00 00 */	lwz r12, 0(r3)
/* 80316A24  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80316A28  7D 89 03 A6 */	mtctr r12
/* 80316A2C  4E 80 04 21 */	bctrl 
lbl_80316A30:
/* 80316A30  7F E3 FB 78 */	mr r3, r31
/* 80316A34  48 00 00 95 */	bl calcCurrentMtx__11J3DMaterialFv
/* 80316A38  7F E3 FB 78 */	mr r3, r31
/* 80316A3C  48 00 00 75 */	bl setCurrentMtx__11J3DMaterialFv
/* 80316A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80316A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316A48  7C 08 03 A6 */	mtlr r0
/* 80316A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80316A50  4E 80 00 20 */	blr 

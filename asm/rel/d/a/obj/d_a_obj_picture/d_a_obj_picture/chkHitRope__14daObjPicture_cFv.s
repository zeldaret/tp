lbl_80CAED28:
/* 80CAED28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAED2C  7C 08 02 A6 */	mflr r0
/* 80CAED30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAED34  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAED38  4B 6B 34 A1 */	bl _savegpr_28
/* 80CAED3C  7C 7C 1B 78 */	mr r28, r3
/* 80CAED40  3B A0 00 00 */	li r29, 0
/* 80CAED44  3B E0 00 00 */	li r31, 0
lbl_80CAED48:
/* 80CAED48  3B DF 06 28 */	addi r30, r31, 0x628
/* 80CAED4C  7F DC F2 14 */	add r30, r28, r30
/* 80CAED50  7F C3 F3 78 */	mr r3, r30
/* 80CAED54  4B 3D 57 0D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CAED58  28 03 00 00 */	cmplwi r3, 0
/* 80CAED5C  41 82 00 54 */	beq lbl_80CAEDB0
/* 80CAED60  7F C3 F3 78 */	mr r3, r30
/* 80CAED64  4B 3D 57 95 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CAED68  28 03 00 00 */	cmplwi r3, 0
/* 80CAED6C  41 82 00 30 */	beq lbl_80CAED9C
/* 80CAED70  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CAED74  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CAED78  41 82 00 24 */	beq lbl_80CAED9C
/* 80CAED7C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80CAED80  D0 1C 0C 88 */	stfs f0, 0xc88(r28)
/* 80CAED84  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80CAED88  D0 1C 0C 8C */	stfs f0, 0xc8c(r28)
/* 80CAED8C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80CAED90  D0 1C 0C 90 */	stfs f0, 0xc90(r28)
/* 80CAED94  38 60 00 01 */	li r3, 1
/* 80CAED98  48 00 00 2C */	b lbl_80CAEDC4
lbl_80CAED9C:
/* 80CAED9C  7F C3 F3 78 */	mr r3, r30
/* 80CAEDA0  81 9E 00 3C */	lwz r12, 0x3c(r30)
/* 80CAEDA4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CAEDA8  7D 89 03 A6 */	mtctr r12
/* 80CAEDAC  4E 80 04 21 */	bctrl 
lbl_80CAEDB0:
/* 80CAEDB0  3B BD 00 01 */	addi r29, r29, 1
/* 80CAEDB4  2C 1D 00 02 */	cmpwi r29, 2
/* 80CAEDB8  3B FF 01 44 */	addi r31, r31, 0x144
/* 80CAEDBC  41 80 FF 8C */	blt lbl_80CAED48
/* 80CAEDC0  38 60 00 00 */	li r3, 0
lbl_80CAEDC4:
/* 80CAEDC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAEDC8  4B 6B 34 5D */	bl _restgpr_28
/* 80CAEDCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAEDD0  7C 08 03 A6 */	mtlr r0
/* 80CAEDD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAEDD8  4E 80 00 20 */	blr 

lbl_80476A5C:
/* 80476A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476A60  7C 08 02 A6 */	mflr r0
/* 80476A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80476A6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80476A70  7C 7E 1B 78 */	mr r30, r3
/* 80476A74  3B E0 00 00 */	li r31, 0
/* 80476A78  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80476A7C  4B C0 D8 44 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80476A80  28 03 00 00 */	cmplwi r3, 0
/* 80476A84  41 82 00 20 */	beq lbl_80476AA4
/* 80476A88  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80476A8C  81 9E 08 04 */	lwz r12, 0x804(r30)
/* 80476A90  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80476A94  7D 89 03 A6 */	mtctr r12
/* 80476A98  4E 80 04 21 */	bctrl 
/* 80476A9C  3B E0 00 01 */	li r31, 1
/* 80476AA0  48 00 00 48 */	b lbl_80476AE8
lbl_80476AA4:
/* 80476AA4  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80476AA8  4B C0 D9 B8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80476AAC  28 03 00 00 */	cmplwi r3, 0
/* 80476AB0  41 82 00 38 */	beq lbl_80476AE8
/* 80476AB4  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80476AB8  4B C0 DA 40 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80476ABC  28 03 00 00 */	cmplwi r3, 0
/* 80476AC0  41 82 00 28 */	beq lbl_80476AE8
/* 80476AC4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80476AC8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80476ACC  40 82 00 1C */	bne lbl_80476AE8
/* 80476AD0  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80476AD4  81 9E 08 04 */	lwz r12, 0x804(r30)
/* 80476AD8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80476ADC  7D 89 03 A6 */	mtctr r12
/* 80476AE0  4E 80 04 21 */	bctrl 
/* 80476AE4  3B E0 00 01 */	li r31, 1
lbl_80476AE8:
/* 80476AE8  7F E3 FB 78 */	mr r3, r31
/* 80476AEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80476AF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80476AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476AF8  7C 08 03 A6 */	mtlr r0
/* 80476AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80476B00  4E 80 00 20 */	blr 

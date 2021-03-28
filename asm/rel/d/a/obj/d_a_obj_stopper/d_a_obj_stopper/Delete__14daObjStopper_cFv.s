lbl_80CEED60:
/* 80CEED60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEED64  7C 08 02 A6 */	mflr r0
/* 80CEED68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEED6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEED70  7C 7F 1B 78 */	mr r31, r3
/* 80CEED74  38 7F 09 84 */	addi r3, r31, 0x984
/* 80CEED78  81 9F 09 84 */	lwz r12, 0x984(r31)
/* 80CEED7C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CEED80  7D 89 03 A6 */	mtctr r12
/* 80CEED84  4E 80 04 21 */	bctrl 
/* 80CEED88  38 7F 09 98 */	addi r3, r31, 0x998
/* 80CEED8C  81 9F 09 98 */	lwz r12, 0x998(r31)
/* 80CEED90  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CEED94  7D 89 03 A6 */	mtctr r12
/* 80CEED98  4E 80 04 21 */	bctrl 
/* 80CEED9C  38 7F 09 AC */	addi r3, r31, 0x9ac
/* 80CEEDA0  81 9F 09 AC */	lwz r12, 0x9ac(r31)
/* 80CEEDA4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CEEDA8  7D 89 03 A6 */	mtctr r12
/* 80CEEDAC  4E 80 04 21 */	bctrl 
/* 80CEEDB0  38 7F 09 C0 */	addi r3, r31, 0x9c0
/* 80CEEDB4  81 9F 09 C0 */	lwz r12, 0x9c0(r31)
/* 80CEEDB8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CEEDBC  7D 89 03 A6 */	mtctr r12
/* 80CEEDC0  4E 80 04 21 */	bctrl 
/* 80CEEDC4  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 80CEEDC8  81 9F 09 D4 */	lwz r12, 0x9d4(r31)
/* 80CEEDCC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CEEDD0  7D 89 03 A6 */	mtctr r12
/* 80CEEDD4  4E 80 04 21 */	bctrl 
/* 80CEEDD8  38 60 00 01 */	li r3, 1
/* 80CEEDDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEEDE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEEDE4  7C 08 03 A6 */	mtlr r0
/* 80CEEDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEEDEC  4E 80 00 20 */	blr 

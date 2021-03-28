lbl_804EAD1C:
/* 804EAD1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EAD20  7C 08 02 A6 */	mflr r0
/* 804EAD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EAD28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EAD2C  7C 7F 1B 78 */	mr r31, r3
/* 804EAD30  3C 60 80 4F */	lis r3, lit_3789@ha
/* 804EAD34  38 A3 E8 AC */	addi r5, r3, lit_3789@l
/* 804EAD38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804EAD3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804EAD40  80 C3 5D AC */	lwz r6, 0x5dac(r3)
/* 804EAD44  A8 9F 10 C2 */	lha r4, 0x10c2(r31)
/* 804EAD48  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 804EAD4C  38 03 80 00 */	addi r0, r3, -32768
/* 804EAD50  7C 04 00 50 */	subf r0, r4, r0
/* 804EAD54  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 804EAD58  C0 05 00 C4 */	lfs f0, 0xc4(r5)
/* 804EAD5C  D0 1F 07 4C */	stfs f0, 0x74c(r31)
/* 804EAD60  38 00 00 15 */	li r0, 0x15
/* 804EAD64  B0 1F 06 CE */	sth r0, 0x6ce(r31)
/* 804EAD68  38 00 00 00 */	li r0, 0
/* 804EAD6C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 804EAD70  A8 66 04 E6 */	lha r3, 0x4e6(r6)
/* 804EAD74  3C 63 00 01 */	addis r3, r3, 1
/* 804EAD78  38 03 80 00 */	addi r0, r3, -32768
/* 804EAD7C  B0 1F 07 26 */	sth r0, 0x726(r31)
/* 804EAD80  C0 05 00 04 */	lfs f0, 4(r5)
/* 804EAD84  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804EAD88  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 804EAD8C  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 804EAD90  38 00 00 32 */	li r0, 0x32
/* 804EAD94  B0 1F 08 28 */	sth r0, 0x828(r31)
/* 804EAD98  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EAD9C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040005@ha */
/* 804EADA0  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x00040005@l */
/* 804EADA4  38 A0 00 1F */	li r5, 0x1f
/* 804EADA8  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804EADAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 804EADB0  7D 89 03 A6 */	mtctr r12
/* 804EADB4  4E 80 04 21 */	bctrl 
/* 804EADB8  38 00 00 01 */	li r0, 1
/* 804EADBC  98 1F 07 10 */	stb r0, 0x710(r31)
/* 804EADC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EADC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EADC8  7C 08 03 A6 */	mtlr r0
/* 804EADCC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EADD0  4E 80 00 20 */	blr 

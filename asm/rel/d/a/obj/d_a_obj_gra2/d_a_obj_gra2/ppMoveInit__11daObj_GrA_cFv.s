lbl_80C02A68:
/* 80C02A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C02A6C  7C 08 02 A6 */	mflr r0
/* 80C02A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C02A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C02A78  7C 7F 1B 78 */	mr r31, r3
/* 80C02A7C  38 7F 10 AC */	addi r3, r31, 0x10ac
/* 80C02A80  38 80 00 00 */	li r4, 0
/* 80C02A84  38 A0 00 10 */	li r5, 0x10
/* 80C02A88  4B 40 09 D1 */	bl memset
/* 80C02A8C  38 60 00 00 */	li r3, 0
/* 80C02A90  90 7F 10 9C */	stw r3, 0x109c(r31)
/* 80C02A94  90 7F 10 A4 */	stw r3, 0x10a4(r31)
/* 80C02A98  90 7F 10 A8 */	stw r3, 0x10a8(r31)
/* 80C02A9C  38 00 FF FF */	li r0, -1
/* 80C02AA0  90 1F 10 BC */	stw r0, 0x10bc(r31)
/* 80C02AA4  90 7F 10 C4 */	stw r3, 0x10c4(r31)
/* 80C02AA8  90 1F 14 B0 */	stw r0, 0x14b0(r31)
/* 80C02AAC  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 80C02AB0  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 80C02AB4  D0 1F 14 F0 */	stfs f0, 0x14f0(r31)
/* 80C02AB8  90 1F 14 F4 */	stw r0, 0x14f4(r31)
/* 80C02ABC  38 60 00 01 */	li r3, 1
/* 80C02AC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C02AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C02AC8  7C 08 03 A6 */	mtlr r0
/* 80C02ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C02AD0  4E 80 00 20 */	blr 

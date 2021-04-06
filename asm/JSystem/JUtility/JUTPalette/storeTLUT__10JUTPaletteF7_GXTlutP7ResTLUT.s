lbl_802DE890:
/* 802DE890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE894  7C 08 02 A6 */	mflr r0
/* 802DE898  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE89C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE8A0  48 08 39 3D */	bl _savegpr_29
/* 802DE8A4  7C 7D 1B 78 */	mr r29, r3
/* 802DE8A8  7C 9E 23 78 */	mr r30, r4
/* 802DE8AC  7C BF 2B 79 */	or. r31, r5, r5
/* 802DE8B0  40 82 00 1C */	bne lbl_802DE8CC
/* 802DE8B4  3C 60 80 3A */	lis r3, JUTPalette__stringBase0@ha /* 0x8039D360@ha */
/* 802DE8B8  38 63 D3 60 */	addi r3, r3, JUTPalette__stringBase0@l /* 0x8039D360@l */
/* 802DE8BC  38 80 00 23 */	li r4, 0x23
/* 802DE8C0  38 A3 00 0F */	addi r5, r3, 0xf
/* 802DE8C4  4C C6 31 82 */	crclr 6
/* 802DE8C8  4B D2 85 B5 */	bl OSPanic
lbl_802DE8CC:
/* 802DE8CC  9B DD 00 0C */	stb r30, 0xc(r29)
/* 802DE8D0  88 1F 00 00 */	lbz r0, 0(r31)
/* 802DE8D4  98 1D 00 0D */	stb r0, 0xd(r29)
/* 802DE8D8  88 1F 00 01 */	lbz r0, 1(r31)
/* 802DE8DC  98 1D 00 16 */	stb r0, 0x16(r29)
/* 802DE8E0  A0 1F 00 02 */	lhz r0, 2(r31)
/* 802DE8E4  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 802DE8E8  38 1F 00 20 */	addi r0, r31, 0x20
/* 802DE8EC  90 1D 00 10 */	stw r0, 0x10(r29)
/* 802DE8F0  7F A3 EB 78 */	mr r3, r29
/* 802DE8F4  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 802DE8F8  88 BD 00 0D */	lbz r5, 0xd(r29)
/* 802DE8FC  A0 DD 00 14 */	lhz r6, 0x14(r29)
/* 802DE900  48 07 FB 69 */	bl GXInitTlutObj
/* 802DE904  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE908  48 08 39 21 */	bl _restgpr_29
/* 802DE90C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE910  7C 08 03 A6 */	mtlr r0
/* 802DE914  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE918  4E 80 00 20 */	blr 

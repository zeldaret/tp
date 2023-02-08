lbl_801F5EF4:
/* 801F5EF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F5EF8  7C 08 02 A6 */	mflr r0
/* 801F5EFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F5F00  39 61 00 20 */	addi r11, r1, 0x20
/* 801F5F04  48 16 C2 D9 */	bl _savegpr_29
/* 801F5F08  7C 7D 1B 78 */	mr r29, r3
/* 801F5F0C  7C 9E 23 78 */	mr r30, r4
/* 801F5F10  7C BF 2B 78 */	mr r31, r5
/* 801F5F14  80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 801F5F18  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 801F5F1C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5F20  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F5F24  7D 89 03 A6 */	mtctr r12
/* 801F5F28  4E 80 04 21 */	bctrl 
/* 801F5F2C  93 DD 00 B8 */	stw r30, 0xb8(r29)
/* 801F5F30  93 FD 00 BC */	stw r31, 0xbc(r29)
/* 801F5F34  80 1D 00 B8 */	lwz r0, 0xb8(r29)
/* 801F5F38  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F5F3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F5F40  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F5F44  3C 00 43 30 */	lis r0, 0x4330
/* 801F5F48  90 01 00 08 */	stw r0, 8(r1)
/* 801F5F4C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F5F50  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F5F54  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 801F5F58  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F5F5C  80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 801F5F60  48 10 20 6D */	bl animationTransform__7J2DPaneFv
/* 801F5F64  38 00 00 01 */	li r0, 1
/* 801F5F68  98 1D 00 D3 */	stb r0, 0xd3(r29)
/* 801F5F6C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F5F70  48 16 C2 B9 */	bl _restgpr_29
/* 801F5F74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F5F78  7C 08 03 A6 */	mtlr r0
/* 801F5F7C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F5F80  4E 80 00 20 */	blr 

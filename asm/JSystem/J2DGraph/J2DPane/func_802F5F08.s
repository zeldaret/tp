lbl_802F5F08:
/* 802F5F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F5F0C  7C 08 02 A6 */	mflr r0
/* 802F5F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F5F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F5F18  7C 7F 1B 78 */	mr r31, r3
/* 802F5F1C  3C 80 50 41 */	lis r4, 0x5041 /* 0x50414E31@ha */
/* 802F5F20  38 04 4E 31 */	addi r0, r4, 0x4E31 /* 0x50414E31@l */
/* 802F5F24  90 03 00 08 */	stw r0, 8(r3)
/* 802F5F28  38 00 00 01 */	li r0, 1
/* 802F5F2C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802F5F30  90 C3 00 14 */	stw r6, 0x14(r3)
/* 802F5F34  90 A3 00 10 */	stw r5, 0x10(r3)
/* 802F5F38  38 00 00 00 */	li r0, 0
/* 802F5F3C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802F5F40  90 03 00 18 */	stw r0, 0x18(r3)
/* 802F5F44  C0 07 00 00 */	lfs f0, 0(r7)
/* 802F5F48  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802F5F4C  C0 07 00 04 */	lfs f0, 4(r7)
/* 802F5F50  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802F5F54  C0 07 00 08 */	lfs f0, 8(r7)
/* 802F5F58  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802F5F5C  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 802F5F60  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F5F64  4B FF FD 55 */	bl initiate__7J2DPaneFv
/* 802F5F68  7F E3 FB 78 */	mr r3, r31
/* 802F5F6C  38 80 00 00 */	li r4, 0
/* 802F5F70  48 00 04 89 */	bl changeUseTrans__7J2DPaneFP7J2DPane
/* 802F5F74  7F E3 FB 78 */	mr r3, r31
/* 802F5F78  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F5F7C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F5F80  7D 89 03 A6 */	mtctr r12
/* 802F5F84  4E 80 04 21 */	bctrl 
/* 802F5F88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F5F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F5F90  7C 08 03 A6 */	mtlr r0
/* 802F5F94  38 21 00 10 */	addi r1, r1, 0x10
/* 802F5F98  4E 80 00 20 */	blr 

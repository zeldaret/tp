lbl_8070FEE0:
/* 8070FEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070FEE4  7C 08 02 A6 */	mflr r0
/* 8070FEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070FEEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8070FEF0  7C 7F 1B 78 */	mr r31, r3
/* 8070FEF4  3C 60 80 71 */	lis r3, lit_3828@ha
/* 8070FEF8  38 A3 39 74 */	addi r5, r3, lit_3828@l
/* 8070FEFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070FF00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070FF04  80 C3 5D AC */	lwz r6, 0x5dac(r3)
/* 8070FF08  A8 9F 10 A2 */	lha r4, 0x10a2(r31)
/* 8070FF0C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8070FF10  38 03 80 00 */	addi r0, r3, -32768
/* 8070FF14  7C 04 00 50 */	subf r0, r4, r0
/* 8070FF18  B0 1F 07 30 */	sth r0, 0x730(r31)
/* 8070FF1C  C0 05 00 BC */	lfs f0, 0xbc(r5)
/* 8070FF20  D0 1F 07 2C */	stfs f0, 0x72c(r31)
/* 8070FF24  38 00 00 15 */	li r0, 0x15
/* 8070FF28  B0 1F 06 AE */	sth r0, 0x6ae(r31)
/* 8070FF2C  38 00 00 00 */	li r0, 0
/* 8070FF30  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8070FF34  A8 66 04 E6 */	lha r3, 0x4e6(r6)
/* 8070FF38  3C 63 00 01 */	addis r3, r3, 1
/* 8070FF3C  38 03 80 00 */	addi r0, r3, -32768
/* 8070FF40  B0 1F 07 06 */	sth r0, 0x706(r31)
/* 8070FF44  C0 05 00 04 */	lfs f0, 4(r5)
/* 8070FF48  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8070FF4C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8070FF50  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
/* 8070FF54  38 00 00 32 */	li r0, 0x32
/* 8070FF58  B0 1F 08 08 */	sth r0, 0x808(r31)
/* 8070FF5C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8070FF60  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040005@ha */
/* 8070FF64  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x00040005@l */
/* 8070FF68  38 A0 00 1F */	li r5, 0x1f
/* 8070FF6C  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 8070FF70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8070FF74  7D 89 03 A6 */	mtctr r12
/* 8070FF78  4E 80 04 21 */	bctrl 
/* 8070FF7C  38 00 00 01 */	li r0, 1
/* 8070FF80  98 1F 06 F0 */	stb r0, 0x6f0(r31)
/* 8070FF84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8070FF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070FF8C  7C 08 03 A6 */	mtlr r0
/* 8070FF90  38 21 00 10 */	addi r1, r1, 0x10
/* 8070FF94  4E 80 00 20 */	blr 

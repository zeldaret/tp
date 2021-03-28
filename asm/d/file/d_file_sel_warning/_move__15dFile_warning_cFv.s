lbl_80191F18:
/* 80191F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80191F1C  7C 08 02 A6 */	mflr r0
/* 80191F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80191F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80191F28  7C 7F 1B 78 */	mr r31, r3
/* 80191F2C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80191F30  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80191F34  3C 80 80 3C */	lis r4, fileWarningProc@ha
/* 80191F38  38 04 B4 34 */	addi r0, r4, fileWarningProc@l
/* 80191F3C  7D 80 2A 14 */	add r12, r0, r5
/* 80191F40  48 1D 01 45 */	bl __ptmf_scall
/* 80191F44  60 00 00 00 */	nop 
/* 80191F48  C0 02 9F D8 */	lfs f0, lit_3741(r2)
/* 80191F4C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80191F50  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80191F54  41 82 00 28 */	beq lbl_80191F7C
/* 80191F58  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80191F5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80191F60  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80191F64  80 63 00 04 */	lwz r3, 4(r3)
/* 80191F68  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 80191F6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80191F70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80191F74  7D 89 03 A6 */	mtctr r12
/* 80191F78  4E 80 04 21 */	bctrl 
lbl_80191F7C:
/* 80191F7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80191F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80191F84  7C 08 03 A6 */	mtlr r0
/* 80191F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80191F8C  4E 80 00 20 */	blr 

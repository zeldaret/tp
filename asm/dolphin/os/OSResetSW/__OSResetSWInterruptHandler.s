lbl_8033FAE4:
/* 8033FAE4  7C 08 02 A6 */	mflr r0
/* 8033FAE8  90 01 00 04 */	stw r0, 4(r1)
/* 8033FAEC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033FAF0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033FAF4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033FAF8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033FAFC  48 00 2C 21 */	bl __OSGetSystemTime
/* 8033FB00  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 8033FB04  90 8D 91 3C */	stw r4, HoldDown+0x4(r13)
/* 8033FB08  80 05 00 F8 */	lwz r0, 0x00F8(r5)  /* 0x800000F8@l */
/* 8033FB0C  3C 80 43 1C */	lis r4, 0x431C /* 0x431BDE83@ha */
/* 8033FB10  38 84 DE 83 */	addi r4, r4, 0xDE83 /* 0x431BDE83@l */
/* 8033FB14  90 6D 91 38 */	stw r3, HoldDown(r13)
/* 8033FB18  54 00 F0 BE */	srwi r0, r0, 2
/* 8033FB1C  7C 04 00 16 */	mulhwu r0, r4, r0
/* 8033FB20  54 00 8B FE */	srwi r0, r0, 0xf
/* 8033FB24  1C 00 00 64 */	mulli r0, r0, 0x64
/* 8033FB28  54 1D E8 FE */	srwi r29, r0, 3
/* 8033FB2C  3B C0 00 00 */	li r30, 0
/* 8033FB30  3F E0 CC 00 */	lis r31, 0xcc00
lbl_8033FB34:
/* 8033FB34  48 00 2B E9 */	bl __OSGetSystemTime
/* 8033FB38  80 CD 91 3C */	lwz r6, HoldDown+0x4(r13)
/* 8033FB3C  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 8033FB40  80 0D 91 38 */	lwz r0, HoldDown(r13)
/* 8033FB44  7C 86 20 10 */	subfc r4, r6, r4
/* 8033FB48  7C 00 19 10 */	subfe r0, r0, r3
/* 8033FB4C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033FB50  7C 1D 20 10 */	subfc r0, r29, r4
/* 8033FB54  7C A5 19 10 */	subfe r5, r5, r3
/* 8033FB58  7C A3 19 10 */	subfe r5, r3, r3
/* 8033FB5C  7C A5 00 D1 */	neg. r5, r5
/* 8033FB60  41 82 00 10 */	beq lbl_8033FB70
/* 8033FB64  80 1F 30 00 */	lwz r0, 0x3000(r31)
/* 8033FB68  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8033FB6C  41 82 FF C8 */	beq lbl_8033FB34
lbl_8033FB70:
/* 8033FB70  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC003000@ha */
/* 8033FB74  80 03 30 00 */	lwz r0, 0x3000(r3)  /* 0xCC003000@l */
/* 8033FB78  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8033FB7C  40 82 00 34 */	bne lbl_8033FBB0
/* 8033FB80  38 00 00 01 */	li r0, 1
/* 8033FB84  90 0D 91 24 */	stw r0, Down(r13)
/* 8033FB88  38 60 02 00 */	li r3, 0x200
/* 8033FB8C  90 0D 91 28 */	stw r0, LastState(r13)
/* 8033FB90  4B FF DF 2D */	bl __OSMaskInterrupts
/* 8033FB94  81 8D 91 20 */	lwz r12, ResetCallback(r13)
/* 8033FB98  28 0C 00 00 */	cmplwi r12, 0
/* 8033FB9C  41 82 00 14 */	beq lbl_8033FBB0
/* 8033FBA0  38 00 00 00 */	li r0, 0
/* 8033FBA4  7D 88 03 A6 */	mtlr r12
/* 8033FBA8  90 0D 91 20 */	stw r0, ResetCallback(r13)
/* 8033FBAC  4E 80 00 21 */	blrl 
lbl_8033FBB0:
/* 8033FBB0  38 00 00 02 */	li r0, 2
/* 8033FBB4  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC003000@ha */
/* 8033FBB8  90 03 30 00 */	stw r0, 0x3000(r3)  /* 0xCC003000@l */
/* 8033FBBC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033FBC0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033FBC4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033FBC8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033FBCC  38 21 00 28 */	addi r1, r1, 0x28
/* 8033FBD0  7C 08 03 A6 */	mtlr r0
/* 8033FBD4  4E 80 00 20 */	blr 

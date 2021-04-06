lbl_806AF5CC:
/* 806AF5CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806AF5D0  7C 08 02 A6 */	mflr r0
/* 806AF5D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806AF5D8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806AF5DC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806AF5E0  7C 7F 1B 78 */	mr r31, r3
/* 806AF5E4  3C 80 80 6B */	lis r4, lit_3792@ha /* 0x806B5CD4@ha */
/* 806AF5E8  3B C4 5C D4 */	addi r30, r4, lit_3792@l /* 0x806B5CD4@l */
/* 806AF5EC  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 806AF5F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806AF5F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806AF5F8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806AF5FC  38 80 00 15 */	li r4, 0x15
/* 806AF600  4B FF F0 F1 */	bl checkBck__8daE_DT_cFi
/* 806AF604  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806AF608  41 82 01 20 */	beq lbl_806AF728
/* 806AF60C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806AF610  38 63 00 0C */	addi r3, r3, 0xc
/* 806AF614  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806AF618  4B C7 8E 15 */	bl checkPass__12J3DFrameCtrlFf
/* 806AF61C  2C 03 00 00 */	cmpwi r3, 0
/* 806AF620  41 82 00 54 */	beq lbl_806AF674
/* 806AF624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AF628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AF62C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806AF630  38 80 00 00 */	li r4, 0
/* 806AF634  90 81 00 08 */	stw r4, 8(r1)
/* 806AF638  38 00 FF FF */	li r0, -1
/* 806AF63C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AF640  90 81 00 10 */	stw r4, 0x10(r1)
/* 806AF644  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF648  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF64C  38 80 00 00 */	li r4, 0
/* 806AF650  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000856B@ha */
/* 806AF654  38 A5 85 6B */	addi r5, r5, 0x856B /* 0x0000856B@l */
/* 806AF658  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 806AF65C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806AF660  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806AF664  39 21 00 2C */	addi r9, r1, 0x2c
/* 806AF668  39 40 00 FF */	li r10, 0xff
/* 806AF66C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 806AF670  4B 99 D4 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_806AF674:
/* 806AF674  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806AF678  38 63 00 0C */	addi r3, r3, 0xc
/* 806AF67C  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 806AF680  4B C7 8D AD */	bl checkPass__12J3DFrameCtrlFf
/* 806AF684  2C 03 00 00 */	cmpwi r3, 0
/* 806AF688  41 82 00 5C */	beq lbl_806AF6E4
/* 806AF68C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031D@ha */
/* 806AF690  38 03 03 1D */	addi r0, r3, 0x031D /* 0x0007031D@l */
/* 806AF694  90 01 00 28 */	stw r0, 0x28(r1)
/* 806AF698  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806AF69C  38 81 00 28 */	addi r4, r1, 0x28
/* 806AF6A0  38 A0 00 00 */	li r5, 0
/* 806AF6A4  38 C0 FF FF */	li r6, -1
/* 806AF6A8  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806AF6AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806AF6B0  7D 89 03 A6 */	mtctr r12
/* 806AF6B4  4E 80 04 21 */	bctrl 
/* 806AF6B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030F@ha */
/* 806AF6BC  38 03 03 0F */	addi r0, r3, 0x030F /* 0x0007030F@l */
/* 806AF6C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AF6C4  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806AF6C8  38 81 00 24 */	addi r4, r1, 0x24
/* 806AF6CC  38 A0 00 00 */	li r5, 0
/* 806AF6D0  38 C0 FF FF */	li r6, -1
/* 806AF6D4  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806AF6D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806AF6DC  7D 89 03 A6 */	mtctr r12
/* 806AF6E0  4E 80 04 21 */	bctrl 
lbl_806AF6E4:
/* 806AF6E4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806AF6E8  38 63 00 0C */	addi r3, r3, 0xc
/* 806AF6EC  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 806AF6F0  4B C7 8D 3D */	bl checkPass__12J3DFrameCtrlFf
/* 806AF6F4  2C 03 00 00 */	cmpwi r3, 0
/* 806AF6F8  41 82 00 30 */	beq lbl_806AF728
/* 806AF6FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070310@ha */
/* 806AF700  38 03 03 10 */	addi r0, r3, 0x0310 /* 0x00070310@l */
/* 806AF704  90 01 00 20 */	stw r0, 0x20(r1)
/* 806AF708  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806AF70C  38 81 00 20 */	addi r4, r1, 0x20
/* 806AF710  38 A0 00 00 */	li r5, 0
/* 806AF714  38 C0 FF FF */	li r6, -1
/* 806AF718  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806AF71C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806AF720  7D 89 03 A6 */	mtctr r12
/* 806AF724  4E 80 04 21 */	bctrl 
lbl_806AF728:
/* 806AF728  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806AF72C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806AF730  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806AF734  7C 08 03 A6 */	mtlr r0
/* 806AF738  38 21 00 40 */	addi r1, r1, 0x40
/* 806AF73C  4E 80 00 20 */	blr 

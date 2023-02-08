lbl_80BD95A0:
/* 80BD95A0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BD95A4  7C 08 02 A6 */	mflr r0
/* 80BD95A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BD95AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80BD95B0  4B 78 8C 29 */	bl _savegpr_28
/* 80BD95B4  7C 7C 1B 78 */	mr r28, r3
/* 80BD95B8  3C 60 80 BE */	lis r3, l_wallBmd@ha /* 0x80BD9FA4@ha */
/* 80BD95BC  3B C3 9F A4 */	addi r30, r3, l_wallBmd@l /* 0x80BD9FA4@l */
/* 80BD95C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD95C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD95C8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80BD95CC  7F A3 EB 78 */	mr r3, r29
/* 80BD95D0  38 81 00 08 */	addi r4, r1, 8
/* 80BD95D4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80BD95D8  81 8C 01 EC */	lwz r12, 0x1ec(r12)
/* 80BD95DC  7D 89 03 A6 */	mtctr r12
/* 80BD95E0  4E 80 04 21 */	bctrl 
/* 80BD95E4  7C 7F 1B 78 */	mr r31, r3
/* 80BD95E8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80BD95EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BD95F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BD95F4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80BD95F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BD95FC  38 7C 0F 38 */	addi r3, r28, 0xf38
/* 80BD9600  4B 43 37 65 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD9604  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD9608  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD960C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80BD9610  4B 43 2E 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD9614  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD9618  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD961C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80BD9620  7C 85 23 78 */	mr r5, r4
/* 80BD9624  4B 76 D7 49 */	bl PSMTXMultVec
/* 80BD9628  38 61 00 0C */	addi r3, r1, 0xc
/* 80BD962C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BD9630  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80BD9634  4B 68 D5 01 */	bl __mi__4cXyzCFRC3Vec
/* 80BD9638  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BD963C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BD9640  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BD9644  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BD9648  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BD964C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BD9650  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD9654  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD9658  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80BD965C  7C 00 00 D0 */	neg r0, r0
/* 80BD9660  7C 04 07 34 */	extsh r4, r0
/* 80BD9664  4B 43 2D 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BD9668  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD966C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD9670  38 81 00 30 */	addi r4, r1, 0x30
/* 80BD9674  7C 85 23 78 */	mr r5, r4
/* 80BD9678  4B 76 D6 F5 */	bl PSMTXMultVec
/* 80BD967C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD9680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD9684  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BD9688  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80BD968C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BD9690  41 82 00 40 */	beq lbl_80BD96D0
/* 80BD9694  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BD9698  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BD969C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80BD96A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD96A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BD96A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD96AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BD96B0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80BD96B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD96B8  38 7E 00 58 */	addi r3, r30, 0x58
/* 80BD96BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD96C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BD96C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD96C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BD96CC  48 00 00 3C */	b lbl_80BD9708
lbl_80BD96D0:
/* 80BD96D0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80BD96D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BD96D8  38 7E 00 34 */	addi r3, r30, 0x34
/* 80BD96DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD96E0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BD96E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD96E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BD96EC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80BD96F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD96F4  38 7E 00 40 */	addi r3, r30, 0x40
/* 80BD96F8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD96FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BD9700  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD9704  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_80BD9708:
/* 80BD9708  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BD970C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80BD9710  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BD9714  4C 40 13 82 */	cror 2, 0, 2
/* 80BD9718  40 82 00 48 */	bne lbl_80BD9760
/* 80BD971C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BD9720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD9724  4C 40 13 82 */	cror 2, 0, 2
/* 80BD9728  40 82 00 38 */	bne lbl_80BD9760
/* 80BD972C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BD9730  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80BD9734  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BD9738  4C 40 13 82 */	cror 2, 0, 2
/* 80BD973C  40 82 00 24 */	bne lbl_80BD9760
/* 80BD9740  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BD9744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD9748  4C 40 13 82 */	cror 2, 0, 2
/* 80BD974C  40 82 00 14 */	bne lbl_80BD9760
/* 80BD9750  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80BD9754  41 82 00 0C */	beq lbl_80BD9760
/* 80BD9758  38 60 00 01 */	li r3, 1
/* 80BD975C  48 00 00 08 */	b lbl_80BD9764
lbl_80BD9760:
/* 80BD9760  38 60 00 00 */	li r3, 0
lbl_80BD9764:
/* 80BD9764  39 61 00 60 */	addi r11, r1, 0x60
/* 80BD9768  4B 78 8A BD */	bl _restgpr_28
/* 80BD976C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BD9770  7C 08 03 A6 */	mtlr r0
/* 80BD9774  38 21 00 60 */	addi r1, r1, 0x60
/* 80BD9778  4E 80 00 20 */	blr 

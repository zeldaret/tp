lbl_8059B4EC:
/* 8059B4EC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8059B4F0  7C 08 02 A6 */	mflr r0
/* 8059B4F4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8059B4F8  39 61 00 70 */	addi r11, r1, 0x70
/* 8059B4FC  4B DC 6C D9 */	bl _savegpr_27
/* 8059B500  7C 9C 23 78 */	mr r28, r4
/* 8059B504  7C BB 2B 78 */	mr r27, r5
/* 8059B508  3C 60 80 5A */	lis r3, l_dzbIdx@ha /* 0x8059C6A4@ha */
/* 8059B50C  3B C3 C6 A4 */	addi r30, r3, l_dzbIdx@l /* 0x8059C6A4@l */
/* 8059B510  3C 60 80 5A */	lis r3, lit_1109@ha /* 0x8059C870@ha */
/* 8059B514  3B E3 C8 70 */	addi r31, r3, lit_1109@l /* 0x8059C870@l */
/* 8059B518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059B51C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059B520  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8059B524  7F 83 E3 78 */	mr r3, r28
/* 8059B528  48 00 07 FD */	bl checkPushable__10daObjSw5_cFv
/* 8059B52C  2C 03 00 00 */	cmpwi r3, 0
/* 8059B530  41 82 02 0C */	beq lbl_8059B73C
/* 8059B534  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 8059B538  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8059B53C  41 82 02 00 */	beq lbl_8059B73C
/* 8059B540  A8 1B 00 08 */	lha r0, 8(r27)
/* 8059B544  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8059B548  40 82 01 F4 */	bne lbl_8059B73C
/* 8059B54C  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 8059B550  7C 00 07 75 */	extsb. r0, r0
/* 8059B554  40 82 00 F0 */	bne lbl_8059B644
/* 8059B558  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8059B55C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8059B560  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8059B564  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8059B568  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8059B56C  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 8059B570  38 7F 00 74 */	addi r3, r31, 0x74
/* 8059B574  D0 03 00 04 */	stfs f0, 4(r3)
/* 8059B578  D0 23 00 08 */	stfs f1, 8(r3)
/* 8059B57C  3C 80 80 5A */	lis r4, __dt__4cXyzFv@ha /* 0x8059C658@ha */
/* 8059B580  38 84 C6 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8059C658@l */
/* 8059B584  38 BF 00 40 */	addi r5, r31, 0x40
/* 8059B588  4B FF FE F1 */	bl __register_global_object
/* 8059B58C  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 8059B590  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8059B594  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8059B598  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8059B59C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8059B5A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8059B5A4  38 7F 00 74 */	addi r3, r31, 0x74
/* 8059B5A8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8059B5AC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8059B5B0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8059B5B4  38 63 00 0C */	addi r3, r3, 0xc
/* 8059B5B8  3C 80 80 5A */	lis r4, __dt__4cXyzFv@ha /* 0x8059C658@ha */
/* 8059B5BC  38 84 C6 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8059C658@l */
/* 8059B5C0  38 BF 00 50 */	addi r5, r31, 0x50
/* 8059B5C4  4B FF FE B5 */	bl __register_global_object
/* 8059B5C8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8059B5CC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8059B5D0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8059B5D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8059B5D8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8059B5DC  38 7F 00 74 */	addi r3, r31, 0x74
/* 8059B5E0  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8059B5E4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8059B5E8  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8059B5EC  38 63 00 18 */	addi r3, r3, 0x18
/* 8059B5F0  3C 80 80 5A */	lis r4, __dt__4cXyzFv@ha /* 0x8059C658@ha */
/* 8059B5F4  38 84 C6 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8059C658@l */
/* 8059B5F8  38 BF 00 5C */	addi r5, r31, 0x5c
/* 8059B5FC  4B FF FE 7D */	bl __register_global_object
/* 8059B600  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8059B604  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8059B608  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8059B60C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8059B610  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8059B614  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8059B618  38 7F 00 74 */	addi r3, r31, 0x74
/* 8059B61C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 8059B620  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8059B624  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8059B628  38 63 00 24 */	addi r3, r3, 0x24
/* 8059B62C  3C 80 80 5A */	lis r4, __dt__4cXyzFv@ha /* 0x8059C658@ha */
/* 8059B630  38 84 C6 58 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8059C658@l */
/* 8059B634  38 BF 00 68 */	addi r5, r31, 0x68
/* 8059B638  4B FF FE 41 */	bl __register_global_object
/* 8059B63C  38 00 00 01 */	li r0, 1
/* 8059B640  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_8059B644:
/* 8059B644  38 61 00 08 */	addi r3, r1, 8
/* 8059B648  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8059B64C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8059B650  4B CC B4 E5 */	bl __mi__4cXyzCFRC3Vec
/* 8059B654  C0 01 00 08 */	lfs f0, 8(r1)
/* 8059B658  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8059B65C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8059B660  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8059B664  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8059B668  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8059B66C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B674  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8059B678  7C 00 00 D0 */	neg r0, r0
/* 8059B67C  7C 04 07 34 */	extsh r4, r0
/* 8059B680  4B A7 0D 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 8059B684  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B688  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B68C  38 81 00 44 */	addi r4, r1, 0x44
/* 8059B690  7C 85 23 78 */	mr r5, r4
/* 8059B694  4B DA B6 D9 */	bl PSMTXMultVec
/* 8059B698  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8059B69C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8059B6A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8059B6A4  4C 40 13 82 */	cror 2, 0, 2
/* 8059B6A8  40 82 00 94 */	bne lbl_8059B73C
/* 8059B6AC  38 7F 00 74 */	addi r3, r31, 0x74
/* 8059B6B0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8059B6B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8059B6B8  4C 41 13 82 */	cror 2, 1, 2
/* 8059B6BC  40 82 00 80 */	bne lbl_8059B73C
/* 8059B6C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8059B6C4  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8059B6C8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8059B6CC  4C 40 13 82 */	cror 2, 0, 2
/* 8059B6D0  40 82 00 6C */	bne lbl_8059B73C
/* 8059B6D4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8059B6D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8059B6DC  4C 41 13 82 */	cror 2, 1, 2
/* 8059B6E0  40 82 00 5C */	bne lbl_8059B73C
/* 8059B6E4  38 00 00 06 */	li r0, 6
/* 8059B6E8  98 1C 05 AC */	stb r0, 0x5ac(r28)
/* 8059B6EC  7F A3 EB 78 */	mr r3, r29
/* 8059B6F0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8059B6F4  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 8059B6F8  7D 89 03 A6 */	mtctr r12
/* 8059B6FC  4E 80 04 21 */	bctrl 
/* 8059B700  2C 03 00 00 */	cmpwi r3, 0
/* 8059B704  41 82 00 10 */	beq lbl_8059B714
/* 8059B708  38 00 00 01 */	li r0, 1
/* 8059B70C  98 1C 05 B2 */	stb r0, 0x5b2(r28)
/* 8059B710  48 00 00 0C */	b lbl_8059B71C
lbl_8059B714:
/* 8059B714  38 00 00 00 */	li r0, 0
/* 8059B718  98 1C 05 B2 */	stb r0, 0x5b2(r28)
lbl_8059B71C:
/* 8059B71C  88 1B 04 9A */	lbz r0, 0x49a(r27)
/* 8059B720  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8059B724  41 82 00 10 */	beq lbl_8059B734
/* 8059B728  38 00 00 02 */	li r0, 2
/* 8059B72C  98 1C 05 AE */	stb r0, 0x5ae(r28)
/* 8059B730  48 00 00 0C */	b lbl_8059B73C
lbl_8059B734:
/* 8059B734  38 00 00 01 */	li r0, 1
/* 8059B738  98 1C 05 AE */	stb r0, 0x5ae(r28)
lbl_8059B73C:
/* 8059B73C  39 61 00 70 */	addi r11, r1, 0x70
/* 8059B740  4B DC 6A E1 */	bl _restgpr_27
/* 8059B744  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8059B748  7C 08 03 A6 */	mtlr r0
/* 8059B74C  38 21 00 70 */	addi r1, r1, 0x70
/* 8059B750  4E 80 00 20 */	blr 

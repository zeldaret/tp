lbl_8045B5E0:
/* 8045B5E0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8045B5E4  7C 08 02 A6 */	mflr r0
/* 8045B5E8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8045B5EC  39 61 00 70 */	addi r11, r1, 0x70
/* 8045B5F0  4B F0 6B E5 */	bl _savegpr_27
/* 8045B5F4  7C 7F 1B 78 */	mr r31, r3
/* 8045B5F8  3C 60 80 46 */	lis r3, l_cyl_src@ha /* 0x8045C9B8@ha */
/* 8045B5FC  3B A3 C9 B8 */	addi r29, r3, l_cyl_src@l /* 0x8045C9B8@l */
/* 8045B600  3B 60 00 00 */	li r27, 0
/* 8045B604  3B C0 00 00 */	li r30, 0
/* 8045B608  48 00 01 94 */	b lbl_8045B79C
lbl_8045B60C:
/* 8045B60C  3B 9E 06 18 */	addi r28, r30, 0x618
/* 8045B610  7F 9F E2 14 */	add r28, r31, r28
/* 8045B614  7F 83 E3 78 */	mr r3, r28
/* 8045B618  4B C2 8E 49 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8045B61C  28 03 00 00 */	cmplwi r3, 0
/* 8045B620  41 82 01 74 */	beq lbl_8045B794
/* 8045B624  7F 83 E3 78 */	mr r3, r28
/* 8045B628  4B C2 8E D1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8045B62C  7C 64 1B 78 */	mr r4, r3
/* 8045B630  7F E3 FB 78 */	mr r3, r31
/* 8045B634  4B FF FF 01 */	bl checkHitAt__9daBgObj_cFP8cCcD_Obj
/* 8045B638  2C 03 00 00 */	cmpwi r3, 0
/* 8045B63C  41 82 01 44 */	beq lbl_8045B780
/* 8045B640  7F E3 FB 78 */	mr r3, r31
/* 8045B644  4B FF FD 5D */	bl setSe__9daBgObj_cFv
/* 8045B648  38 7C 00 9C */	addi r3, r28, 0x9c
/* 8045B64C  4B C2 80 3D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8045B650  28 03 00 00 */	cmplwi r3, 0
/* 8045B654  41 82 01 18 */	beq lbl_8045B76C
/* 8045B658  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8045B65C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8045B660  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8045B664  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8045B668  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8045B66C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8045B670  38 61 00 2C */	addi r3, r1, 0x2c
/* 8045B674  38 81 00 44 */	addi r4, r1, 0x44
/* 8045B678  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8045B67C  4B E0 B4 B9 */	bl __mi__4cXyzCFRC3Vec
/* 8045B680  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8045B684  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8045B688  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8045B68C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8045B690  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8045B694  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8045B698  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045B69C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045B6A0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8045B6A4  7C 00 00 D0 */	neg r0, r0
/* 8045B6A8  7C 04 07 34 */	extsh r4, r0
/* 8045B6AC  4B BB 0D 31 */	bl mDoMtx_YrotS__FPA4_fs
/* 8045B6B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045B6B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045B6B8  38 81 00 44 */	addi r4, r1, 0x44
/* 8045B6BC  7C 85 23 78 */	mr r5, r4
/* 8045B6C0  4B EE B6 AD */	bl PSMTXMultVec
/* 8045B6C4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8045B6C8  4B BB 16 9D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8045B6CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045B6D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045B6D4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8045B6D8  4B BB 0D 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 8045B6DC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8045B6E0  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8045B6E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045B6E8  40 81 00 24 */	ble lbl_8045B70C
/* 8045B6EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8045B6F0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8045B6F4  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 8045B6F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8045B6FC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045B700  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8045B704  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8045B708  48 00 00 20 */	b lbl_8045B728
lbl_8045B70C:
/* 8045B70C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8045B710  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8045B714  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 8045B718  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8045B71C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045B720  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8045B724  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8045B728:
/* 8045B728  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045B72C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045B730  38 81 00 38 */	addi r4, r1, 0x38
/* 8045B734  7C 85 23 78 */	mr r5, r4
/* 8045B738  4B EE B6 35 */	bl PSMTXMultVec
/* 8045B73C  38 61 00 08 */	addi r3, r1, 8
/* 8045B740  38 81 00 38 */	addi r4, r1, 0x38
/* 8045B744  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8045B748  4B E0 B3 ED */	bl __mi__4cXyzCFRC3Vec
/* 8045B74C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045B750  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045B754  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8045B758  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8045B75C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8045B760  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8045B764  4B E0 BF 11 */	bl cM_atan2s__Fff
/* 8045B768  B0 7F 0C F6 */	sth r3, 0xcf6(r31)
lbl_8045B76C:
/* 8045B76C  7F E3 FB 78 */	mr r3, r31
/* 8045B770  4B FF FA 0D */	bl setParticle__9daBgObj_cFv
/* 8045B774  38 00 00 01 */	li r0, 1
/* 8045B778  98 1F 0C C5 */	stb r0, 0xcc5(r31)
/* 8045B77C  48 00 00 2C */	b lbl_8045B7A8
lbl_8045B780:
/* 8045B780  7F 83 E3 78 */	mr r3, r28
/* 8045B784  81 9C 00 3C */	lwz r12, 0x3c(r28)
/* 8045B788  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8045B78C  7D 89 03 A6 */	mtctr r12
/* 8045B790  4E 80 04 21 */	bctrl 
lbl_8045B794:
/* 8045B794  3B 7B 00 01 */	addi r27, r27, 1
/* 8045B798  3B DE 01 5C */	addi r30, r30, 0x15c
lbl_8045B79C:
/* 8045B79C  88 1F 0C C4 */	lbz r0, 0xcc4(r31)
/* 8045B7A0  7C 1B 00 00 */	cmpw r27, r0
/* 8045B7A4  41 80 FE 68 */	blt lbl_8045B60C
lbl_8045B7A8:
/* 8045B7A8  3B 60 00 00 */	li r27, 0
/* 8045B7AC  3B C0 00 00 */	li r30, 0
/* 8045B7B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045B7B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045B7B8  3B A3 23 3C */	addi r29, r3, 0x233c
/* 8045B7BC  48 00 00 1C */	b lbl_8045B7D8
lbl_8045B7C0:
/* 8045B7C0  7F A3 EB 78 */	mr r3, r29
/* 8045B7C4  38 9E 06 18 */	addi r4, r30, 0x618
/* 8045B7C8  7C 9F 22 14 */	add r4, r31, r4
/* 8045B7CC  4B E0 93 DD */	bl Set__4cCcSFP8cCcD_Obj
/* 8045B7D0  3B 7B 00 01 */	addi r27, r27, 1
/* 8045B7D4  3B DE 01 5C */	addi r30, r30, 0x15c
lbl_8045B7D8:
/* 8045B7D8  88 1F 0C C4 */	lbz r0, 0xcc4(r31)
/* 8045B7DC  7C 1B 00 00 */	cmpw r27, r0
/* 8045B7E0  41 80 FF E0 */	blt lbl_8045B7C0
/* 8045B7E4  39 61 00 70 */	addi r11, r1, 0x70
/* 8045B7E8  4B F0 6A 39 */	bl _restgpr_27
/* 8045B7EC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8045B7F0  7C 08 03 A6 */	mtlr r0
/* 8045B7F4  38 21 00 70 */	addi r1, r1, 0x70
/* 8045B7F8  4E 80 00 20 */	blr 

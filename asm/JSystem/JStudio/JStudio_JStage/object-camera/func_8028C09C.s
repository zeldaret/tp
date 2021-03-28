lbl_8028C09C:
/* 8028C09C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8028C0A0  7C 08 02 A6 */	mflr r0
/* 8028C0A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028C0A8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8028C0AC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8028C0B0  7C 7E 1B 78 */	mr r30, r3
/* 8028C0B4  7C 9F 23 78 */	mr r31, r4
/* 8028C0B8  80 63 01 04 */	lwz r3, 0x104(r3)
/* 8028C0BC  38 81 00 14 */	addi r4, r1, 0x14
/* 8028C0C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8028C0C4  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8028C0C8  7D 89 03 A6 */	mtctr r12
/* 8028C0CC  4E 80 04 21 */	bctrl 
/* 8028C0D0  88 1E 01 20 */	lbz r0, 0x120(r30)
/* 8028C0D4  28 00 00 00 */	cmplwi r0, 0
/* 8028C0D8  40 82 00 34 */	bne lbl_8028C10C
/* 8028C0DC  88 1F 00 89 */	lbz r0, 0x89(r31)
/* 8028C0E0  28 00 00 00 */	cmplwi r0, 0
/* 8028C0E4  40 82 00 0C */	bne lbl_8028C0F0
/* 8028C0E8  38 01 00 14 */	addi r0, r1, 0x14
/* 8028C0EC  48 00 00 18 */	b lbl_8028C104
lbl_8028C0F0:
/* 8028C0F0  38 7F 00 DC */	addi r3, r31, 0xdc
/* 8028C0F4  38 81 00 14 */	addi r4, r1, 0x14
/* 8028C0F8  38 A1 00 08 */	addi r5, r1, 8
/* 8028C0FC  48 0B AC 71 */	bl PSMTXMultVec
/* 8028C100  38 01 00 08 */	addi r0, r1, 8
lbl_8028C104:
/* 8028C104  7C 05 03 78 */	mr r5, r0
/* 8028C108  48 00 00 50 */	b lbl_8028C158
lbl_8028C10C:
/* 8028C10C  38 61 00 20 */	addi r3, r1, 0x20
/* 8028C110  38 81 00 14 */	addi r4, r1, 0x14
/* 8028C114  80 BE 01 18 */	lwz r5, 0x118(r30)
/* 8028C118  80 DE 01 1C */	lwz r6, 0x11c(r30)
/* 8028C11C  4B FF E2 B1 */	bl transform_toLocalFromGlobal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl
/* 8028C120  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028C124  40 82 00 0C */	bne lbl_8028C130
/* 8028C128  38 00 00 00 */	li r0, 0
/* 8028C12C  48 00 00 20 */	b lbl_8028C14C
lbl_8028C130:
/* 8028C130  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8028C134  D0 01 00 08 */	stfs f0, 8(r1)
/* 8028C138  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8028C13C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8028C140  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8028C144  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8028C148  38 00 00 01 */	li r0, 1
lbl_8028C14C:
/* 8028C14C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8028C150  41 82 00 18 */	beq lbl_8028C168
/* 8028C154  38 A1 00 08 */	addi r5, r1, 8
lbl_8028C158:
/* 8028C158  7F C3 F3 78 */	mr r3, r30
/* 8028C15C  3C 80 80 3A */	lis r4, sauVariableValue_3_TARGET_POSITION_XYZ__Q27JStudio15TAdaptor_camera@ha
/* 8028C160  38 84 AA B4 */	addi r4, r4, sauVariableValue_3_TARGET_POSITION_XYZ__Q27JStudio15TAdaptor_camera@l
/* 8028C164  4B FF A0 A1 */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
lbl_8028C168:
/* 8028C168  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8028C16C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8028C170  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8028C174  7C 08 03 A6 */	mtlr r0
/* 8028C178  38 21 00 60 */	addi r1, r1, 0x60
/* 8028C17C  4E 80 00 20 */	blr 

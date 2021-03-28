lbl_8004C188:
/* 8004C188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004C18C  7C 08 02 A6 */	mflr r0
/* 8004C190  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004C194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004C198  93 C1 00 08 */	stw r30, 8(r1)
/* 8004C19C  7C 9E 23 78 */	mr r30, r4
/* 8004C1A0  7C BF 2B 78 */	mr r31, r5
/* 8004C1A4  80 0D 89 20 */	lwz r0, mEmitterMng__13dPa_control_c(r13)
/* 8004C1A8  28 00 00 00 */	cmplwi r0, 0
/* 8004C1AC  41 82 00 54 */	beq lbl_8004C200
/* 8004C1B0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8004C1B4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8004C1B8  48 2C 45 85 */	bl reinitGX__6J3DSysFv
/* 8004C1BC  48 15 B4 05 */	bl dKy_setLight_again__Fv
/* 8004C1C0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8004C1C4  28 00 00 06 */	cmplwi r0, 6
/* 8004C1C8  41 80 00 10 */	blt lbl_8004C1D8
/* 8004C1CC  28 00 00 0B */	cmplwi r0, 0xb
/* 8004C1D0  41 81 00 08 */	bgt lbl_8004C1D8
/* 8004C1D4  48 15 C4 59 */	bl dKy_GxFog_set__Fv
lbl_8004C1D8:
/* 8004C1D8  80 6D 89 20 */	lwz r3, mEmitterMng__13dPa_control_c(r13)
/* 8004C1DC  7F C4 F3 78 */	mr r4, r30
/* 8004C1E0  7F E5 FB 78 */	mr r5, r31
/* 8004C1E4  48 23 1E 45 */	bl draw__17JPAEmitterManagerFPC11JPADrawInfoUc
/* 8004C1E8  38 60 00 00 */	li r3, 0
/* 8004C1EC  48 31 3A 85 */	bl GXSetAlphaUpdate
/* 8004C1F0  38 60 00 00 */	li r3, 0
/* 8004C1F4  48 31 2E E1 */	bl GXSetNumIndStages
/* 8004C1F8  38 60 00 00 */	li r3, 0
/* 8004C1FC  48 31 43 D5 */	bl GXSetClipMode
lbl_8004C200:
/* 8004C200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004C204  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004C208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004C20C  7C 08 03 A6 */	mtlr r0
/* 8004C210  38 21 00 10 */	addi r1, r1, 0x10
/* 8004C214  4E 80 00 20 */	blr 

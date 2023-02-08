lbl_80AA774C:
/* 80AA774C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AA7750  7C 08 02 A6 */	mflr r0
/* 80AA7754  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AA7758  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80AA775C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80AA7760  7C 7E 1B 78 */	mr r30, r3
/* 80AA7764  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80AA7768  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AA776C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80AA7770  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AA7774  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80AA7778  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AA777C  38 7E 09 F0 */	addi r3, r30, 0x9f0
/* 80AA7780  38 81 00 14 */	addi r4, r1, 0x14
/* 80AA7784  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80AA7788  4B 6B 24 8D */	bl checkPoint__11PathTrace_cF4cXyzf
/* 80AA778C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA7790  41 82 00 4C */	beq lbl_80AA77DC
/* 80AA7794  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AA7798  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AA779C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AA77A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AA77A4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AA77A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AA77AC  38 7E 09 F0 */	addi r3, r30, 0x9f0
/* 80AA77B0  38 81 00 08 */	addi r4, r1, 8
/* 80AA77B4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80AA77B8  4B 6B 26 09 */	bl checkPathEnd__11PathTrace_cF4cXyzf
/* 80AA77BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA77C0  41 82 00 10 */	beq lbl_80AA77D0
/* 80AA77C4  7F C3 F3 78 */	mr r3, r30
/* 80AA77C8  4B 57 24 B5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80AA77CC  48 00 00 10 */	b lbl_80AA77DC
lbl_80AA77D0:
/* 80AA77D0  38 7E 09 F0 */	addi r3, r30, 0x9f0
/* 80AA77D4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AA77D8  4B 6B 27 C1 */	bl setNextPoint__11PathTrace_cFR4cXyz
lbl_80AA77DC:
/* 80AA77DC  80 1E 0A 3C */	lwz r0, 0xa3c(r30)
/* 80AA77E0  28 00 00 01 */	cmplwi r0, 1
/* 80AA77E4  41 82 00 0C */	beq lbl_80AA77F0
/* 80AA77E8  28 00 00 00 */	cmplwi r0, 0
/* 80AA77EC  40 82 00 9C */	bne lbl_80AA7888
lbl_80AA77F0:
/* 80AA77F0  38 7E 09 F0 */	addi r3, r30, 0x9f0
/* 80AA77F4  38 81 00 20 */	addi r4, r1, 0x20
/* 80AA77F8  4B 6B 26 5D */	bl getTargetPoint__11PathTrace_cFP3Vec
/* 80AA77FC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80AA7800  38 81 00 20 */	addi r4, r1, 0x20
/* 80AA7804  4B 7C 94 01 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AA7808  7C 64 1B 78 */	mr r4, r3
/* 80AA780C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80AA7810  38 A0 00 03 */	li r5, 3
/* 80AA7814  38 C0 06 00 */	li r6, 0x600
/* 80AA7818  4B 7C 8D F1 */	bl cLib_addCalcAngleS2__FPssss
/* 80AA781C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80AA7820  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80AA7824  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AA7828  41 82 00 60 */	beq lbl_80AA7888
/* 80AA782C  3B E0 00 00 */	li r31, 0
/* 80AA7830  3C 60 80 AB */	lis r3, __vt__8cM3dGPla@ha /* 0x80AA8B80@ha */
/* 80AA7834  38 03 8B 80 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80AA8B80@l */
/* 80AA7838  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AA783C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA7840  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA7844  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80AA7848  38 9E 07 24 */	addi r4, r30, 0x724
/* 80AA784C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80AA7850  4B 5C CE F5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80AA7854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA7858  41 82 00 14 */	beq lbl_80AA786C
/* 80AA785C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80AA7860  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80AA7864  4B 57 63 75 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 80AA7868  7C 7F 1B 78 */	mr r31, r3
lbl_80AA786C:
/* 80AA786C  7F E0 07 35 */	extsh. r0, r31
/* 80AA7870  41 82 00 0C */	beq lbl_80AA787C
/* 80AA7874  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AA7878  D0 1E 0A 38 */	stfs f0, 0xa38(r30)
lbl_80AA787C:
/* 80AA787C  3C 60 80 AB */	lis r3, __vt__8cM3dGPla@ha /* 0x80AA8B80@ha */
/* 80AA7880  38 03 8B 80 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80AA8B80@l */
/* 80AA7884  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80AA7888:
/* 80AA7888  7F C3 F3 78 */	mr r3, r30
/* 80AA788C  48 00 00 81 */	bl setAngle__14daNpcPasser2_cFv
/* 80AA7890  7F C3 F3 78 */	mr r3, r30
/* 80AA7894  48 00 00 85 */	bl pathMoveF__14daNpcPasser2_cFv
/* 80AA7898  38 7E 06 34 */	addi r3, r30, 0x634
/* 80AA789C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA78A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA78A4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AA78A8  4B 5C F2 05 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AA78AC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80AA78B0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80AA78B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AA78B8  7C 08 03 A6 */	mtlr r0
/* 80AA78BC  38 21 00 50 */	addi r1, r1, 0x50
/* 80AA78C0  4E 80 00 20 */	blr 

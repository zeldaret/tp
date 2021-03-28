lbl_80C5076C:
/* 80C5076C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C50770  7C 08 02 A6 */	mflr r0
/* 80C50774  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C50778  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C5077C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C50780  7C 7E 1B 78 */	mr r30, r3
/* 80C50784  7C 9F 23 78 */	mr r31, r4
/* 80C50788  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C5078C  38 03 0F 10 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C50790  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C50794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C50798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5079C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C507A0  38 9E 06 A4 */	addi r4, r30, 0x6a4
/* 80C507A4  38 A1 00 08 */	addi r5, r1, 8
/* 80C507A8  4B 42 3F 9C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C507AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C507B0  41 82 00 20 */	beq lbl_80C507D0
/* 80C507B4  38 61 00 08 */	addi r3, r1, 8
/* 80C507B8  7F E4 FB 78 */	mr r4, r31
/* 80C507BC  4B 3C D4 1C */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 80C507C0  3C 80 80 C5 */	lis r4, __vt__8cM3dGPla@ha
/* 80C507C4  38 04 0F 10 */	addi r0, r4, __vt__8cM3dGPla@l
/* 80C507C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C507CC  48 00 00 14 */	b lbl_80C507E0
lbl_80C507D0:
/* 80C507D0  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80C507D4  3C 80 80 C5 */	lis r4, __vt__8cM3dGPla@ha
/* 80C507D8  38 04 0F 10 */	addi r0, r4, __vt__8cM3dGPla@l
/* 80C507DC  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80C507E0:
/* 80C507E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C507E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C507E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C507EC  7C 08 03 A6 */	mtlr r0
/* 80C507F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C507F4  4E 80 00 20 */	blr 

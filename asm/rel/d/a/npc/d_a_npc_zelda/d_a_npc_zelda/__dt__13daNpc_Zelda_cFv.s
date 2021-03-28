lbl_80B7512C:
/* 80B7512C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B75130  7C 08 02 A6 */	mflr r0
/* 80B75134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B75138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7513C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B75140  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B75144  7C 9F 23 78 */	mr r31, r4
/* 80B75148  41 82 00 E8 */	beq lbl_80B75230
/* 80B7514C  3C 60 80 B8 */	lis r3, __vt__13daNpc_Zelda_c@ha
/* 80B75150  38 03 83 2C */	addi r0, r3, __vt__13daNpc_Zelda_c@l
/* 80B75154  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B75158  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B7515C  28 03 00 00 */	cmplwi r3, 0
/* 80B75160  41 82 00 08 */	beq lbl_80B75168
/* 80B75164  4B 49 C1 AC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B75168:
/* 80B75168  7F C3 F3 78 */	mr r3, r30
/* 80B7516C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B75170  54 00 10 3A */	slwi r0, r0, 2
/* 80B75174  3C 80 80 B8 */	lis r4, l_loadResPtrnList@ha
/* 80B75178  38 84 81 1C */	addi r4, r4, l_loadResPtrnList@l
/* 80B7517C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B75180  3C A0 80 B8 */	lis r5, l_resNameList@ha
/* 80B75184  38 A5 81 10 */	addi r5, r5, l_resNameList@l
/* 80B75188  4B 5D 33 24 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B7518C  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B75190  41 82 00 84 */	beq lbl_80B75214
/* 80B75194  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B75198  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B7519C  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B751A0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B751A4  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B751A8  38 03 00 84 */	addi r0, r3, 0x84
/* 80B751AC  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B751B0  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B751B4  41 82 00 54 */	beq lbl_80B75208
/* 80B751B8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B751BC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B751C0  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B751C4  38 03 00 58 */	addi r0, r3, 0x58
/* 80B751C8  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B751CC  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B751D0  41 82 00 10 */	beq lbl_80B751E0
/* 80B751D4  3C 60 80 B8 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B751D8  38 03 83 20 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B751DC  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B751E0:
/* 80B751E0  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B751E4  41 82 00 24 */	beq lbl_80B75208
/* 80B751E8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B751EC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B751F0  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B751F4  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B751F8  41 82 00 10 */	beq lbl_80B75208
/* 80B751FC  3C 60 80 B8 */	lis r3, __vt__8cM3dGAab@ha
/* 80B75200  38 03 83 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B75204  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B75208:
/* 80B75208  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B7520C  38 80 00 00 */	li r4, 0
/* 80B75210  4B 50 EE D4 */	b __dt__12dCcD_GObjInfFv
lbl_80B75214:
/* 80B75214  7F C3 F3 78 */	mr r3, r30
/* 80B75218  38 80 00 00 */	li r4, 0
/* 80B7521C  48 00 1C 45 */	bl __dt__8daNpcT_cFv
/* 80B75220  7F E0 07 35 */	extsh. r0, r31
/* 80B75224  40 81 00 0C */	ble lbl_80B75230
/* 80B75228  7F C3 F3 78 */	mr r3, r30
/* 80B7522C  4B 75 9B 10 */	b __dl__FPv
lbl_80B75230:
/* 80B75230  7F C3 F3 78 */	mr r3, r30
/* 80B75234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B75238  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7523C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B75240  7C 08 03 A6 */	mtlr r0
/* 80B75244  38 21 00 10 */	addi r1, r1, 0x10
/* 80B75248  4E 80 00 20 */	blr 

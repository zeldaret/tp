lbl_8058AF60:
/* 8058AF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AF64  7C 08 02 A6 */	mflr r0
/* 8058AF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058AF70  93 C1 00 08 */	stw r30, 8(r1)
/* 8058AF74  7C 7E 1B 79 */	or. r30, r3, r3
/* 8058AF78  7C 9F 23 78 */	mr r31, r4
/* 8058AF7C  41 82 00 94 */	beq lbl_8058B010
/* 8058AF80  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8058AF84  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8058AF88  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8058AF8C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8058AF90  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8058AF94  38 03 00 84 */	addi r0, r3, 0x84
/* 8058AF98  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8058AF9C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8058AFA0  41 82 00 54 */	beq lbl_8058AFF4
/* 8058AFA4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8058AFA8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8058AFAC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8058AFB0  38 03 00 58 */	addi r0, r3, 0x58
/* 8058AFB4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8058AFB8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8058AFBC  41 82 00 10 */	beq lbl_8058AFCC
/* 8058AFC0  3C 60 80 59 */	lis r3, __vt__8cM3dGSph@ha
/* 8058AFC4  38 03 C4 F4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8058AFC8  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8058AFCC:
/* 8058AFCC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8058AFD0  41 82 00 24 */	beq lbl_8058AFF4
/* 8058AFD4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8058AFD8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8058AFDC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8058AFE0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8058AFE4  41 82 00 10 */	beq lbl_8058AFF4
/* 8058AFE8  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha
/* 8058AFEC  38 03 C5 00 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8058AFF0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8058AFF4:
/* 8058AFF4  7F C3 F3 78 */	mr r3, r30
/* 8058AFF8  38 80 00 00 */	li r4, 0
/* 8058AFFC  4B AF 90 E8 */	b __dt__12dCcD_GObjInfFv
/* 8058B000  7F E0 07 35 */	extsh. r0, r31
/* 8058B004  40 81 00 0C */	ble lbl_8058B010
/* 8058B008  7F C3 F3 78 */	mr r3, r30
/* 8058B00C  4B D4 3D 30 */	b __dl__FPv
lbl_8058B010:
/* 8058B010  7F C3 F3 78 */	mr r3, r30
/* 8058B014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B018  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058B01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B020  7C 08 03 A6 */	mtlr r0
/* 8058B024  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B028  4E 80 00 20 */	blr 

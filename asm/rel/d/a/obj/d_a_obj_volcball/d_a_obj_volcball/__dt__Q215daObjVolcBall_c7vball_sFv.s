lbl_80D21FA8:
/* 80D21FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21FAC  7C 08 02 A6 */	mflr r0
/* 80D21FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D21FB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D21FBC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D21FC0  7C 9F 23 78 */	mr r31, r4
/* 80D21FC4  41 82 00 E4 */	beq lbl_80D220A8
/* 80D21FC8  38 7E 03 90 */	addi r3, r30, 0x390
/* 80D21FCC  3C 80 80 D2 */	lis r4, __dt__19dPa_followEcallBackFv@ha /* 0x80D220C4@ha */
/* 80D21FD0  38 84 20 C4 */	addi r4, r4, __dt__19dPa_followEcallBackFv@l /* 0x80D220C4@l */
/* 80D21FD4  38 A0 00 14 */	li r5, 0x14
/* 80D21FD8  38 C0 00 04 */	li r6, 4
/* 80D21FDC  4B 63 FD 0D */	bl __destroy_arr
/* 80D21FE0  34 1E 02 2C */	addic. r0, r30, 0x22c
/* 80D21FE4  41 82 00 84 */	beq lbl_80D22068
/* 80D21FE8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80D21FEC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80D21FF0  90 7E 02 68 */	stw r3, 0x268(r30)
/* 80D21FF4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D21FF8  90 1E 03 4C */	stw r0, 0x34c(r30)
/* 80D21FFC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D22000  90 1E 03 60 */	stw r0, 0x360(r30)
/* 80D22004  34 1E 03 30 */	addic. r0, r30, 0x330
/* 80D22008  41 82 00 54 */	beq lbl_80D2205C
/* 80D2200C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80D22010  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80D22014  90 7E 03 4C */	stw r3, 0x34c(r30)
/* 80D22018  38 03 00 58 */	addi r0, r3, 0x58
/* 80D2201C  90 1E 03 60 */	stw r0, 0x360(r30)
/* 80D22020  34 1E 03 50 */	addic. r0, r30, 0x350
/* 80D22024  41 82 00 10 */	beq lbl_80D22034
/* 80D22028  3C 60 80 D2 */	lis r3, __vt__8cM3dGSph@ha /* 0x80D240D8@ha */
/* 80D2202C  38 03 40 D8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80D240D8@l */
/* 80D22030  90 1E 03 60 */	stw r0, 0x360(r30)
lbl_80D22034:
/* 80D22034  34 1E 03 30 */	addic. r0, r30, 0x330
/* 80D22038  41 82 00 24 */	beq lbl_80D2205C
/* 80D2203C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D22040  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D22044  90 1E 03 4C */	stw r0, 0x34c(r30)
/* 80D22048  34 1E 03 30 */	addic. r0, r30, 0x330
/* 80D2204C  41 82 00 10 */	beq lbl_80D2205C
/* 80D22050  3C 60 80 D2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D240CC@ha */
/* 80D22054  38 03 40 CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D240CC@l */
/* 80D22058  90 1E 03 48 */	stw r0, 0x348(r30)
lbl_80D2205C:
/* 80D2205C  38 7E 02 2C */	addi r3, r30, 0x22c
/* 80D22060  38 80 00 00 */	li r4, 0
/* 80D22064  4B 36 20 81 */	bl __dt__12dCcD_GObjInfFv
lbl_80D22068:
/* 80D22068  34 1E 00 54 */	addic. r0, r30, 0x54
/* 80D2206C  41 82 00 2C */	beq lbl_80D22098
/* 80D22070  3C 60 80 D2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D240A8@ha */
/* 80D22074  38 63 40 A8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D240A8@l */
/* 80D22078  90 7E 00 64 */	stw r3, 0x64(r30)
/* 80D2207C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D22080  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80D22084  38 03 00 18 */	addi r0, r3, 0x18
/* 80D22088  90 1E 00 78 */	stw r0, 0x78(r30)
/* 80D2208C  38 7E 00 54 */	addi r3, r30, 0x54
/* 80D22090  38 80 00 00 */	li r4, 0
/* 80D22094  4B 35 3F 01 */	bl __dt__9dBgS_AcchFv
lbl_80D22098:
/* 80D22098  7F E0 07 35 */	extsh. r0, r31
/* 80D2209C  40 81 00 0C */	ble lbl_80D220A8
/* 80D220A0  7F C3 F3 78 */	mr r3, r30
/* 80D220A4  4B 5A CC 99 */	bl __dl__FPv
lbl_80D220A8:
/* 80D220A8  7F C3 F3 78 */	mr r3, r30
/* 80D220AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D220B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D220B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D220B8  7C 08 03 A6 */	mtlr r0
/* 80D220BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D220C0  4E 80 00 20 */	blr 

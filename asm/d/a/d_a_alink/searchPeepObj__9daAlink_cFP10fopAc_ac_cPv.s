lbl_800CECE4:
/* 800CECE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CECE8  7C 08 02 A6 */	mflr r0
/* 800CECEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CECF0  39 61 00 20 */	addi r11, r1, 0x20
/* 800CECF4  48 29 34 E9 */	bl _savegpr_29
/* 800CECF8  7C 7D 1B 78 */	mr r29, r3
/* 800CECFC  7C 9E 23 78 */	mr r30, r4
/* 800CED00  7C BF 2B 78 */	mr r31, r5
/* 800CED04  A8 04 00 08 */	lha r0, 8(r4)
/* 800CED08  2C 00 02 AF */	cmpwi r0, 0x2af
/* 800CED0C  40 82 00 24 */	bne lbl_800CED30
/* 800CED10  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 800CED14  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800CED18  48 27 86 85 */	bl PSVECSquareDistance
/* 800CED1C  C0 1D 34 78 */	lfs f0, 0x3478(r29)
/* 800CED20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CED24  40 80 00 0C */	bge lbl_800CED30
/* 800CED28  D0 3D 34 78 */	stfs f1, 0x3478(r29)
/* 800CED2C  93 DF 00 00 */	stw r30, 0(r31)
lbl_800CED30:
/* 800CED30  39 61 00 20 */	addi r11, r1, 0x20
/* 800CED34  48 29 34 F5 */	bl _restgpr_29
/* 800CED38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CED3C  7C 08 03 A6 */	mtlr r0
/* 800CED40  38 21 00 20 */	addi r1, r1, 0x20
/* 800CED44  4E 80 00 20 */	blr 

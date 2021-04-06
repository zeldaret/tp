lbl_80CC36E4:
/* 80CC36E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC36E8  7C 08 02 A6 */	mflr r0
/* 80CC36EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC36F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC36F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC36F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CC36FC  7C 9F 23 78 */	mr r31, r4
/* 80CC3700  41 82 00 94 */	beq lbl_80CC3794
/* 80CC3704  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CC3708  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CC370C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CC3710  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CC3714  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CC3718  38 03 00 84 */	addi r0, r3, 0x84
/* 80CC371C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CC3720  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CC3724  41 82 00 54 */	beq lbl_80CC3778
/* 80CC3728  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CC372C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CC3730  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CC3734  38 03 00 58 */	addi r0, r3, 0x58
/* 80CC3738  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CC373C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CC3740  41 82 00 10 */	beq lbl_80CC3750
/* 80CC3744  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CC3C60@ha */
/* 80CC3748  38 03 3C 60 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CC3C60@l */
/* 80CC374C  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80CC3750:
/* 80CC3750  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CC3754  41 82 00 24 */	beq lbl_80CC3778
/* 80CC3758  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CC375C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CC3760  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CC3764  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CC3768  41 82 00 10 */	beq lbl_80CC3778
/* 80CC376C  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CC3C54@ha */
/* 80CC3770  38 03 3C 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CC3C54@l */
/* 80CC3774  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CC3778:
/* 80CC3778  7F C3 F3 78 */	mr r3, r30
/* 80CC377C  38 80 00 00 */	li r4, 0
/* 80CC3780  4B 3C 09 65 */	bl __dt__12dCcD_GObjInfFv
/* 80CC3784  7F E0 07 35 */	extsh. r0, r31
/* 80CC3788  40 81 00 0C */	ble lbl_80CC3794
/* 80CC378C  7F C3 F3 78 */	mr r3, r30
/* 80CC3790  4B 60 B5 AD */	bl __dl__FPv
lbl_80CC3794:
/* 80CC3794  7F C3 F3 78 */	mr r3, r30
/* 80CC3798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC379C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC37A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC37A4  7C 08 03 A6 */	mtlr r0
/* 80CC37A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC37AC  4E 80 00 20 */	blr 

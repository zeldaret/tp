lbl_80D3981C:
/* 80D3981C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39820  7C 08 02 A6 */	mflr r0
/* 80D39824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3982C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D39830  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D39834  7C 9F 23 78 */	mr r31, r4
/* 80D39838  41 82 00 94 */	beq lbl_80D398CC
/* 80D3983C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80D39840  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80D39844  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D39848  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D3984C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D39850  38 03 00 84 */	addi r0, r3, 0x84
/* 80D39854  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D39858  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D3985C  41 82 00 54 */	beq lbl_80D398B0
/* 80D39860  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80D39864  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80D39868  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D3986C  38 03 00 58 */	addi r0, r3, 0x58
/* 80D39870  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D39874  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D39878  41 82 00 10 */	beq lbl_80D39888
/* 80D3987C  3C 60 80 D4 */	lis r3, __vt__8cM3dGSph@ha /* 0x80D39D98@ha */
/* 80D39880  38 03 9D 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80D39D98@l */
/* 80D39884  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80D39888:
/* 80D39888  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D3988C  41 82 00 24 */	beq lbl_80D398B0
/* 80D39890  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D39894  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D39898  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D3989C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D398A0  41 82 00 10 */	beq lbl_80D398B0
/* 80D398A4  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D39DA4@ha */
/* 80D398A8  38 03 9D A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D39DA4@l */
/* 80D398AC  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80D398B0:
/* 80D398B0  7F C3 F3 78 */	mr r3, r30
/* 80D398B4  38 80 00 00 */	li r4, 0
/* 80D398B8  4B 34 A8 2D */	bl __dt__12dCcD_GObjInfFv
/* 80D398BC  7F E0 07 35 */	extsh. r0, r31
/* 80D398C0  40 81 00 0C */	ble lbl_80D398CC
/* 80D398C4  7F C3 F3 78 */	mr r3, r30
/* 80D398C8  4B 59 54 75 */	bl __dl__FPv
lbl_80D398CC:
/* 80D398CC  7F C3 F3 78 */	mr r3, r30
/* 80D398D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D398D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D398D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D398DC  7C 08 03 A6 */	mtlr r0
/* 80D398E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D398E4  4E 80 00 20 */	blr 

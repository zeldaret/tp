lbl_80BB3078:
/* 80BB3078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB307C  7C 08 02 A6 */	mflr r0
/* 80BB3080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB3088  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB308C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB3090  7C 9F 23 78 */	mr r31, r4
/* 80BB3094  41 82 00 94 */	beq lbl_80BB3128
/* 80BB3098  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BB309C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BB30A0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BB30A4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BB30A8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BB30AC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BB30B0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BB30B4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB30B8  41 82 00 54 */	beq lbl_80BB310C
/* 80BB30BC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BB30C0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BB30C4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BB30C8  38 03 00 58 */	addi r0, r3, 0x58
/* 80BB30CC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BB30D0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BB30D4  41 82 00 10 */	beq lbl_80BB30E4
/* 80BB30D8  3C 60 80 BB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BB3DF8@ha */
/* 80BB30DC  38 03 3D F8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BB3DF8@l */
/* 80BB30E0  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BB30E4:
/* 80BB30E4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB30E8  41 82 00 24 */	beq lbl_80BB310C
/* 80BB30EC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BB30F0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BB30F4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BB30F8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BB30FC  41 82 00 10 */	beq lbl_80BB310C
/* 80BB3100  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha /* 0x80BB3E10@ha */
/* 80BB3104  38 03 3E 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BB3E10@l */
/* 80BB3108  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BB310C:
/* 80BB310C  7F C3 F3 78 */	mr r3, r30
/* 80BB3110  38 80 00 00 */	li r4, 0
/* 80BB3114  4B 4D 0F D1 */	bl __dt__12dCcD_GObjInfFv
/* 80BB3118  7F E0 07 35 */	extsh. r0, r31
/* 80BB311C  40 81 00 0C */	ble lbl_80BB3128
/* 80BB3120  7F C3 F3 78 */	mr r3, r30
/* 80BB3124  4B 71 BC 19 */	bl __dl__FPv
lbl_80BB3128:
/* 80BB3128  7F C3 F3 78 */	mr r3, r30
/* 80BB312C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3130  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB3134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB3138  7C 08 03 A6 */	mtlr r0
/* 80BB313C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB3140  4E 80 00 20 */	blr 

lbl_8058A81C:
/* 8058A81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A820  7C 08 02 A6 */	mflr r0
/* 8058A824  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A82C  93 C1 00 08 */	stw r30, 8(r1)
/* 8058A830  7C 7E 1B 79 */	or. r30, r3, r3
/* 8058A834  7C 9F 23 78 */	mr r31, r4
/* 8058A838  41 82 00 94 */	beq lbl_8058A8CC
/* 8058A83C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8058A840  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8058A844  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8058A848  38 03 00 2C */	addi r0, r3, 0x2c
/* 8058A84C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8058A850  38 03 00 84 */	addi r0, r3, 0x84
/* 8058A854  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8058A858  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8058A85C  41 82 00 54 */	beq lbl_8058A8B0
/* 8058A860  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8058A864  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8058A868  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8058A86C  38 03 00 58 */	addi r0, r3, 0x58
/* 8058A870  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8058A874  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8058A878  41 82 00 10 */	beq lbl_8058A888
/* 8058A87C  3C 60 80 59 */	lis r3, __vt__8cM3dGCyl@ha
/* 8058A880  38 03 AE 70 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8058A884  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_8058A888:
/* 8058A888  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8058A88C  41 82 00 24 */	beq lbl_8058A8B0
/* 8058A890  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8058A894  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8058A898  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8058A89C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8058A8A0  41 82 00 10 */	beq lbl_8058A8B0
/* 8058A8A4  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha
/* 8058A8A8  38 03 AE 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8058A8AC  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8058A8B0:
/* 8058A8B0  7F C3 F3 78 */	mr r3, r30
/* 8058A8B4  38 80 00 00 */	li r4, 0
/* 8058A8B8  4B AF 98 2C */	b __dt__12dCcD_GObjInfFv
/* 8058A8BC  7F E0 07 35 */	extsh. r0, r31
/* 8058A8C0  40 81 00 0C */	ble lbl_8058A8CC
/* 8058A8C4  7F C3 F3 78 */	mr r3, r30
/* 8058A8C8  4B D4 44 74 */	b __dl__FPv
lbl_8058A8CC:
/* 8058A8CC  7F C3 F3 78 */	mr r3, r30
/* 8058A8D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A8D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058A8D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A8DC  7C 08 03 A6 */	mtlr r0
/* 8058A8E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A8E4  4E 80 00 20 */	blr 

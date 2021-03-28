lbl_80C705F8:
/* 80C705F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C705FC  7C 08 02 A6 */	mflr r0
/* 80C70600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70608  93 C1 00 08 */	stw r30, 8(r1)
/* 80C7060C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C70610  7C 9F 23 78 */	mr r31, r4
/* 80C70614  41 82 00 94 */	beq lbl_80C706A8
/* 80C70618  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C7061C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C70620  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C70624  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C70628  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C7062C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C70630  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C70634  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C70638  41 82 00 54 */	beq lbl_80C7068C
/* 80C7063C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C70640  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C70644  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C70648  38 03 00 58 */	addi r0, r3, 0x58
/* 80C7064C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C70650  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C70654  41 82 00 10 */	beq lbl_80C70664
/* 80C70658  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C7065C  38 03 0B 00 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C70660  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C70664:
/* 80C70664  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C70668  41 82 00 24 */	beq lbl_80C7068C
/* 80C7066C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C70670  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C70674  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C70678  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C7067C  41 82 00 10 */	beq lbl_80C7068C
/* 80C70680  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha
/* 80C70684  38 03 0A F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C70688  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C7068C:
/* 80C7068C  7F C3 F3 78 */	mr r3, r30
/* 80C70690  38 80 00 00 */	li r4, 0
/* 80C70694  4B 41 3A 50 */	b __dt__12dCcD_GObjInfFv
/* 80C70698  7F E0 07 35 */	extsh. r0, r31
/* 80C7069C  40 81 00 0C */	ble lbl_80C706A8
/* 80C706A0  7F C3 F3 78 */	mr r3, r30
/* 80C706A4  4B 65 E6 98 */	b __dl__FPv
lbl_80C706A8:
/* 80C706A8  7F C3 F3 78 */	mr r3, r30
/* 80C706AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C706B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C706B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C706B8  7C 08 03 A6 */	mtlr r0
/* 80C706BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C706C0  4E 80 00 20 */	blr 

lbl_80C434E8:
/* 80C434E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C434EC  7C 08 02 A6 */	mflr r0
/* 80C434F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C434F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C434F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C434FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C43500  7C 9F 23 78 */	mr r31, r4
/* 80C43504  41 82 00 94 */	beq lbl_80C43598
/* 80C43508  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C4350C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C43510  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C43514  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C43518  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C4351C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C43520  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C43524  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C43528  41 82 00 54 */	beq lbl_80C4357C
/* 80C4352C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C43530  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C43534  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C43538  38 03 00 58 */	addi r0, r3, 0x58
/* 80C4353C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C43540  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C43544  41 82 00 10 */	beq lbl_80C43554
/* 80C43548  3C 60 80 C4 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C43C7C@ha */
/* 80C4354C  38 03 3C 7C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C43C7C@l */
/* 80C43550  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80C43554:
/* 80C43554  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C43558  41 82 00 24 */	beq lbl_80C4357C
/* 80C4355C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C43560  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C43564  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C43568  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C4356C  41 82 00 10 */	beq lbl_80C4357C
/* 80C43570  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C43C88@ha */
/* 80C43574  38 03 3C 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C43C88@l */
/* 80C43578  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C4357C:
/* 80C4357C  7F C3 F3 78 */	mr r3, r30
/* 80C43580  38 80 00 00 */	li r4, 0
/* 80C43584  4B 44 0B 61 */	bl __dt__12dCcD_GObjInfFv
/* 80C43588  7F E0 07 35 */	extsh. r0, r31
/* 80C4358C  40 81 00 0C */	ble lbl_80C43598
/* 80C43590  7F C3 F3 78 */	mr r3, r30
/* 80C43594  4B 68 B7 A9 */	bl __dl__FPv
lbl_80C43598:
/* 80C43598  7F C3 F3 78 */	mr r3, r30
/* 80C4359C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C435A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C435A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C435A8  7C 08 03 A6 */	mtlr r0
/* 80C435AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C435B0  4E 80 00 20 */	blr 

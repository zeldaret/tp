lbl_80C1C474:
/* 80C1C474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1C478  7C 08 02 A6 */	mflr r0
/* 80C1C47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1C480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1C484  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1C488  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C1C48C  7C 9F 23 78 */	mr r31, r4
/* 80C1C490  41 82 01 3C */	beq lbl_80C1C5CC
/* 80C1C494  3C 60 80 C2 */	lis r3, __vt__16daObjHBombkoya_c@ha /* 0x80C1C9A8@ha */
/* 80C1C498  38 63 C9 A8 */	addi r3, r3, __vt__16daObjHBombkoya_c@l /* 0x80C1C9A8@l */
/* 80C1C49C  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C1C4A0  38 03 00 28 */	addi r0, r3, 0x28
/* 80C1C4A4  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C1C4A8  34 1E 06 84 */	addic. r0, r30, 0x684
/* 80C1C4AC  41 82 00 84 */	beq lbl_80C1C530
/* 80C1C4B0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C1C4B4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C1C4B8  90 7E 06 C0 */	stw r3, 0x6c0(r30)
/* 80C1C4BC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C1C4C0  90 1E 07 A4 */	stw r0, 0x7a4(r30)
/* 80C1C4C4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C1C4C8  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80C1C4CC  34 1E 07 88 */	addic. r0, r30, 0x788
/* 80C1C4D0  41 82 00 54 */	beq lbl_80C1C524
/* 80C1C4D4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C1C4D8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C1C4DC  90 7E 07 A4 */	stw r3, 0x7a4(r30)
/* 80C1C4E0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C1C4E4  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80C1C4E8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80C1C4EC  41 82 00 10 */	beq lbl_80C1C4FC
/* 80C1C4F0  3C 60 80 C2 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C1C978@ha */
/* 80C1C4F4  38 03 C9 78 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C1C978@l */
/* 80C1C4F8  90 1E 07 BC */	stw r0, 0x7bc(r30)
lbl_80C1C4FC:
/* 80C1C4FC  34 1E 07 88 */	addic. r0, r30, 0x788
/* 80C1C500  41 82 00 24 */	beq lbl_80C1C524
/* 80C1C504  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C1C508  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C1C50C  90 1E 07 A4 */	stw r0, 0x7a4(r30)
/* 80C1C510  34 1E 07 88 */	addic. r0, r30, 0x788
/* 80C1C514  41 82 00 10 */	beq lbl_80C1C524
/* 80C1C518  3C 60 80 C2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C1C99C@ha */
/* 80C1C51C  38 03 C9 9C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C1C99C@l */
/* 80C1C520  90 1E 07 A0 */	stw r0, 0x7a0(r30)
lbl_80C1C524:
/* 80C1C524  38 7E 06 84 */	addi r3, r30, 0x684
/* 80C1C528  38 80 00 00 */	li r4, 0
/* 80C1C52C  4B 46 7B B9 */	bl __dt__12dCcD_GObjInfFv
lbl_80C1C530:
/* 80C1C530  34 1E 06 48 */	addic. r0, r30, 0x648
/* 80C1C534  41 82 00 54 */	beq lbl_80C1C588
/* 80C1C538  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C1C53C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C1C540  90 7E 06 60 */	stw r3, 0x660(r30)
/* 80C1C544  38 03 00 20 */	addi r0, r3, 0x20
/* 80C1C548  90 1E 06 64 */	stw r0, 0x664(r30)
/* 80C1C54C  34 1E 06 64 */	addic. r0, r30, 0x664
/* 80C1C550  41 82 00 24 */	beq lbl_80C1C574
/* 80C1C554  3C 60 80 C2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C1C96C@ha */
/* 80C1C558  38 03 C9 6C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C1C96C@l */
/* 80C1C55C  90 1E 06 64 */	stw r0, 0x664(r30)
/* 80C1C560  34 1E 06 64 */	addic. r0, r30, 0x664
/* 80C1C564  41 82 00 10 */	beq lbl_80C1C574
/* 80C1C568  3C 60 80 C2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C1C960@ha */
/* 80C1C56C  38 03 C9 60 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C1C960@l */
/* 80C1C570  90 1E 06 64 */	stw r0, 0x664(r30)
lbl_80C1C574:
/* 80C1C574  34 1E 06 48 */	addic. r0, r30, 0x648
/* 80C1C578  41 82 00 10 */	beq lbl_80C1C588
/* 80C1C57C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C1C580  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C1C584  90 1E 06 60 */	stw r0, 0x660(r30)
lbl_80C1C588:
/* 80C1C588  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80C1C58C  41 82 00 10 */	beq lbl_80C1C59C
/* 80C1C590  3C 60 80 C2 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C1C984@ha */
/* 80C1C594  38 03 C9 84 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C1C984@l */
/* 80C1C598  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C1C59C:
/* 80C1C59C  28 1E 00 00 */	cmplwi r30, 0
/* 80C1C5A0  41 82 00 1C */	beq lbl_80C1C5BC
/* 80C1C5A4  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80C1C5A8  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80C1C5AC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C1C5B0  7F C3 F3 78 */	mr r3, r30
/* 80C1C5B4  38 80 00 00 */	li r4, 0
/* 80C1C5B8  4B 3F C6 D5 */	bl __dt__10fopAc_ac_cFv
lbl_80C1C5BC:
/* 80C1C5BC  7F E0 07 35 */	extsh. r0, r31
/* 80C1C5C0  40 81 00 0C */	ble lbl_80C1C5CC
/* 80C1C5C4  7F C3 F3 78 */	mr r3, r30
/* 80C1C5C8  4B 6B 27 75 */	bl __dl__FPv
lbl_80C1C5CC:
/* 80C1C5CC  7F C3 F3 78 */	mr r3, r30
/* 80C1C5D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1C5D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1C5D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1C5DC  7C 08 03 A6 */	mtlr r0
/* 80C1C5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1C5E4  4E 80 00 20 */	blr 

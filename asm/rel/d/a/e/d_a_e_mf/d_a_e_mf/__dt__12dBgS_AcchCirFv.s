lbl_807133A8:
/* 807133A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807133AC  7C 08 02 A6 */	mflr r0
/* 807133B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807133B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807133B8  93 C1 00 08 */	stw r30, 8(r1)
/* 807133BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 807133C0  7C 9F 23 78 */	mr r31, r4
/* 807133C4  41 82 00 38 */	beq lbl_807133FC
/* 807133C8  3C 60 80 71 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80713E84@ha */
/* 807133CC  38 03 3E 84 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80713E84@l */
/* 807133D0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807133D4  38 7E 00 14 */	addi r3, r30, 0x14
/* 807133D8  38 80 FF FF */	li r4, -1
/* 807133DC  4B B5 BB 3D */	bl __dt__8cM3dGCirFv
/* 807133E0  7F C3 F3 78 */	mr r3, r30
/* 807133E4  38 80 00 00 */	li r4, 0
/* 807133E8  4B B5 4C C9 */	bl __dt__13cBgS_PolyInfoFv
/* 807133EC  7F E0 07 35 */	extsh. r0, r31
/* 807133F0  40 81 00 0C */	ble lbl_807133FC
/* 807133F4  7F C3 F3 78 */	mr r3, r30
/* 807133F8  4B BB B9 45 */	bl __dl__FPv
lbl_807133FC:
/* 807133FC  7F C3 F3 78 */	mr r3, r30
/* 80713400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80713404  83 C1 00 08 */	lwz r30, 8(r1)
/* 80713408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071340C  7C 08 03 A6 */	mtlr r0
/* 80713410  38 21 00 10 */	addi r1, r1, 0x10
/* 80713414  4E 80 00 20 */	blr 

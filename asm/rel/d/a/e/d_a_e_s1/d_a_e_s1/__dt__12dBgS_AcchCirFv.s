lbl_80780788:
/* 80780788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078078C  7C 08 02 A6 */	mflr r0
/* 80780790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80780794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80780798  93 C1 00 08 */	stw r30, 8(r1)
/* 8078079C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807807A0  7C 9F 23 78 */	mr r31, r4
/* 807807A4  41 82 00 38 */	beq lbl_807807DC
/* 807807A8  3C 60 80 78 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x807812B4@ha */
/* 807807AC  38 03 12 B4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x807812B4@l */
/* 807807B0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807807B4  38 7E 00 14 */	addi r3, r30, 0x14
/* 807807B8  38 80 FF FF */	li r4, -1
/* 807807BC  4B AE E7 5D */	bl __dt__8cM3dGCirFv
/* 807807C0  7F C3 F3 78 */	mr r3, r30
/* 807807C4  38 80 00 00 */	li r4, 0
/* 807807C8  4B AE 78 E9 */	bl __dt__13cBgS_PolyInfoFv
/* 807807CC  7F E0 07 35 */	extsh. r0, r31
/* 807807D0  40 81 00 0C */	ble lbl_807807DC
/* 807807D4  7F C3 F3 78 */	mr r3, r30
/* 807807D8  4B B4 E5 65 */	bl __dl__FPv
lbl_807807DC:
/* 807807DC  7F C3 F3 78 */	mr r3, r30
/* 807807E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807807E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 807807E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807807EC  7C 08 03 A6 */	mtlr r0
/* 807807F0  38 21 00 10 */	addi r1, r1, 0x10
/* 807807F4  4E 80 00 20 */	blr 

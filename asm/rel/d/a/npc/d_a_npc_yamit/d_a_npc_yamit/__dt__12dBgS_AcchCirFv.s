lbl_80B4C634:
/* 80B4C634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C638  7C 08 02 A6 */	mflr r0
/* 80B4C63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C644  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4C648  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B4C64C  7C 9F 23 78 */	mr r31, r4
/* 80B4C650  41 82 00 38 */	beq lbl_80B4C688
/* 80B4C654  3C 60 80 B5 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B4D0B0@ha */
/* 80B4C658  38 03 D0 B0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B4D0B0@l */
/* 80B4C65C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B4C660  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B4C664  38 80 FF FF */	li r4, -1
/* 80B4C668  4B 72 28 B1 */	bl __dt__8cM3dGCirFv
/* 80B4C66C  7F C3 F3 78 */	mr r3, r30
/* 80B4C670  38 80 00 00 */	li r4, 0
/* 80B4C674  4B 71 BA 3D */	bl __dt__13cBgS_PolyInfoFv
/* 80B4C678  7F E0 07 35 */	extsh. r0, r31
/* 80B4C67C  40 81 00 0C */	ble lbl_80B4C688
/* 80B4C680  7F C3 F3 78 */	mr r3, r30
/* 80B4C684  4B 78 26 B9 */	bl __dl__FPv
lbl_80B4C688:
/* 80B4C688  7F C3 F3 78 */	mr r3, r30
/* 80B4C68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C690  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4C694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C698  7C 08 03 A6 */	mtlr r0
/* 80B4C69C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C6A0  4E 80 00 20 */	blr 

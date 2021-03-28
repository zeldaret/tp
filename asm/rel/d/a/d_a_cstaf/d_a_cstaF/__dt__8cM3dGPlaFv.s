lbl_804DEB18:
/* 804DEB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DEB1C  7C 08 02 A6 */	mflr r0
/* 804DEB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DEB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DEB28  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DEB2C  41 82 00 1C */	beq lbl_804DEB48
/* 804DEB30  3C A0 80 4E */	lis r5, __vt__8cM3dGPla@ha
/* 804DEB34  38 05 FA 34 */	addi r0, r5, __vt__8cM3dGPla@l
/* 804DEB38  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804DEB3C  7C 80 07 35 */	extsh. r0, r4
/* 804DEB40  40 81 00 08 */	ble lbl_804DEB48
/* 804DEB44  4B DF 01 F8 */	b __dl__FPv
lbl_804DEB48:
/* 804DEB48  7F E3 FB 78 */	mr r3, r31
/* 804DEB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DEB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEB54  7C 08 03 A6 */	mtlr r0
/* 804DEB58  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEB5C  4E 80 00 20 */	blr 

lbl_80A7325C:
/* 80A7325C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73260  7C 08 02 A6 */	mflr r0
/* 80A73264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7326C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A73270  41 82 00 30 */	beq lbl_80A732A0
/* 80A73274  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A73C30@ha */
/* 80A73278  38 03 3C 30 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A73C30@l */
/* 80A7327C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A73280  41 82 00 10 */	beq lbl_80A73290
/* 80A73284  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A73C24@ha */
/* 80A73288  38 03 3C 24 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A73C24@l */
/* 80A7328C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A73290:
/* 80A73290  7C 80 07 35 */	extsh. r0, r4
/* 80A73294  40 81 00 0C */	ble lbl_80A732A0
/* 80A73298  7F E3 FB 78 */	mr r3, r31
/* 80A7329C  4B 85 BA A1 */	bl __dl__FPv
lbl_80A732A0:
/* 80A732A0  7F E3 FB 78 */	mr r3, r31
/* 80A732A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A732A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A732AC  7C 08 03 A6 */	mtlr r0
/* 80A732B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A732B4  4E 80 00 20 */	blr 

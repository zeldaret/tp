lbl_807F71D0:
/* 807F71D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F71D4  7C 08 02 A6 */	mflr r0
/* 807F71D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F71DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F71E0  93 C1 00 08 */	stw r30, 8(r1)
/* 807F71E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807F71E8  7C 9F 23 78 */	mr r31, r4
/* 807F71EC  41 82 00 38 */	beq lbl_807F7224
/* 807F71F0  3C 60 80 7F */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x807F7CEC@ha */
/* 807F71F4  38 03 7C EC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x807F7CEC@l */
/* 807F71F8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807F71FC  38 7E 00 14 */	addi r3, r30, 0x14
/* 807F7200  38 80 FF FF */	li r4, -1
/* 807F7204  4B A7 7D 15 */	bl __dt__8cM3dGCirFv
/* 807F7208  7F C3 F3 78 */	mr r3, r30
/* 807F720C  38 80 00 00 */	li r4, 0
/* 807F7210  4B A7 0E A1 */	bl __dt__13cBgS_PolyInfoFv
/* 807F7214  7F E0 07 35 */	extsh. r0, r31
/* 807F7218  40 81 00 0C */	ble lbl_807F7224
/* 807F721C  7F C3 F3 78 */	mr r3, r30
/* 807F7220  4B AD 7B 1D */	bl __dl__FPv
lbl_807F7224:
/* 807F7224  7F C3 F3 78 */	mr r3, r30
/* 807F7228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F722C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807F7230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7234  7C 08 03 A6 */	mtlr r0
/* 807F7238  38 21 00 10 */	addi r1, r1, 0x10
/* 807F723C  4E 80 00 20 */	blr 

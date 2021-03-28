lbl_807EECD0:
/* 807EECD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EECD4  7C 08 02 A6 */	mflr r0
/* 807EECD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EECDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EECE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 807EECE4  41 82 00 1C */	beq lbl_807EED00
/* 807EECE8  3C A0 80 7F */	lis r5, __vt__8cM3dGAab@ha
/* 807EECEC  38 05 FA F4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 807EECF0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807EECF4  7C 80 07 35 */	extsh. r0, r4
/* 807EECF8  40 81 00 08 */	ble lbl_807EED00
/* 807EECFC  4B AE 00 40 */	b __dl__FPv
lbl_807EED00:
/* 807EED00  7F E3 FB 78 */	mr r3, r31
/* 807EED04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EED08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EED0C  7C 08 03 A6 */	mtlr r0
/* 807EED10  38 21 00 10 */	addi r1, r1, 0x10
/* 807EED14  4E 80 00 20 */	blr 

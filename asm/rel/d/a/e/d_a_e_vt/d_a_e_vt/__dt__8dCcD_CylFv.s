lbl_807C46E8:
/* 807C46E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C46EC  7C 08 02 A6 */	mflr r0
/* 807C46F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C46F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C46F8  93 C1 00 08 */	stw r30, 8(r1)
/* 807C46FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 807C4700  7C 9F 23 78 */	mr r31, r4
/* 807C4704  41 82 00 94 */	beq lbl_807C4798
/* 807C4708  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 807C470C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 807C4710  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 807C4714  38 03 00 2C */	addi r0, r3, 0x2c
/* 807C4718  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807C471C  38 03 00 84 */	addi r0, r3, 0x84
/* 807C4720  90 1E 01 38 */	stw r0, 0x138(r30)
/* 807C4724  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807C4728  41 82 00 54 */	beq lbl_807C477C
/* 807C472C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 807C4730  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 807C4734  90 7E 01 20 */	stw r3, 0x120(r30)
/* 807C4738  38 03 00 58 */	addi r0, r3, 0x58
/* 807C473C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 807C4740  34 1E 01 24 */	addic. r0, r30, 0x124
/* 807C4744  41 82 00 10 */	beq lbl_807C4754
/* 807C4748  3C 60 80 7D */	lis r3, __vt__8cM3dGCyl@ha
/* 807C474C  38 03 F4 48 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 807C4750  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_807C4754:
/* 807C4754  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807C4758  41 82 00 24 */	beq lbl_807C477C
/* 807C475C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807C4760  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807C4764  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807C4768  34 1E 01 04 */	addic. r0, r30, 0x104
/* 807C476C  41 82 00 10 */	beq lbl_807C477C
/* 807C4770  3C 60 80 7D */	lis r3, __vt__8cM3dGAab@ha
/* 807C4774  38 03 F4 54 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807C4778  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_807C477C:
/* 807C477C  7F C3 F3 78 */	mr r3, r30
/* 807C4780  38 80 00 00 */	li r4, 0
/* 807C4784  4B 8B F9 60 */	b __dt__12dCcD_GObjInfFv
/* 807C4788  7F E0 07 35 */	extsh. r0, r31
/* 807C478C  40 81 00 0C */	ble lbl_807C4798
/* 807C4790  7F C3 F3 78 */	mr r3, r30
/* 807C4794  4B B0 A5 A8 */	b __dl__FPv
lbl_807C4798:
/* 807C4798  7F C3 F3 78 */	mr r3, r30
/* 807C479C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C47A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807C47A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C47A8  7C 08 03 A6 */	mtlr r0
/* 807C47AC  38 21 00 10 */	addi r1, r1, 0x10
/* 807C47B0  4E 80 00 20 */	blr 

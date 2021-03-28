lbl_80BC93F0:
/* 80BC93F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC93F4  7C 08 02 A6 */	mflr r0
/* 80BC93F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC93FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC9400  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC9404  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BC9408  7C 9F 23 78 */	mr r31, r4
/* 80BC940C  41 82 00 94 */	beq lbl_80BC94A0
/* 80BC9410  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BC9414  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BC9418  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BC941C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BC9420  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BC9424  38 03 00 84 */	addi r0, r3, 0x84
/* 80BC9428  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BC942C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC9430  41 82 00 54 */	beq lbl_80BC9484
/* 80BC9434  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BC9438  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BC943C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BC9440  38 03 00 58 */	addi r0, r3, 0x58
/* 80BC9444  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BC9448  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BC944C  41 82 00 10 */	beq lbl_80BC945C
/* 80BC9450  3C 60 80 BD */	lis r3, __vt__8cM3dGCyl@ha
/* 80BC9454  38 03 A1 A4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BC9458  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BC945C:
/* 80BC945C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC9460  41 82 00 24 */	beq lbl_80BC9484
/* 80BC9464  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BC9468  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BC946C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BC9470  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC9474  41 82 00 10 */	beq lbl_80BC9484
/* 80BC9478  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha
/* 80BC947C  38 03 A1 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BC9480  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BC9484:
/* 80BC9484  7F C3 F3 78 */	mr r3, r30
/* 80BC9488  38 80 00 00 */	li r4, 0
/* 80BC948C  4B 4B AC 58 */	b __dt__12dCcD_GObjInfFv
/* 80BC9490  7F E0 07 35 */	extsh. r0, r31
/* 80BC9494  40 81 00 0C */	ble lbl_80BC94A0
/* 80BC9498  7F C3 F3 78 */	mr r3, r30
/* 80BC949C  4B 70 58 A0 */	b __dl__FPv
lbl_80BC94A0:
/* 80BC94A0  7F C3 F3 78 */	mr r3, r30
/* 80BC94A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC94A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC94AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC94B0  7C 08 03 A6 */	mtlr r0
/* 80BC94B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC94B8  4E 80 00 20 */	blr 

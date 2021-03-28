lbl_80A2AECC:
/* 80A2AECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2AED0  7C 08 02 A6 */	mflr r0
/* 80A2AED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2AED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2AEDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2AEE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A2AEE4  7C 9F 23 78 */	mr r31, r4
/* 80A2AEE8  41 82 00 94 */	beq lbl_80A2AF7C
/* 80A2AEEC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80A2AEF0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80A2AEF4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A2AEF8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A2AEFC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A2AF00  38 03 00 84 */	addi r0, r3, 0x84
/* 80A2AF04  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80A2AF08  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80A2AF0C  41 82 00 54 */	beq lbl_80A2AF60
/* 80A2AF10  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80A2AF14  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80A2AF18  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A2AF1C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A2AF20  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80A2AF24  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80A2AF28  41 82 00 10 */	beq lbl_80A2AF38
/* 80A2AF2C  3C 60 80 A4 */	lis r3, __vt__8cM3dGSph@ha
/* 80A2AF30  38 03 31 98 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80A2AF34  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80A2AF38:
/* 80A2AF38  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80A2AF3C  41 82 00 24 */	beq lbl_80A2AF60
/* 80A2AF40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A2AF44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A2AF48  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A2AF4C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80A2AF50  41 82 00 10 */	beq lbl_80A2AF60
/* 80A2AF54  3C 60 80 A4 */	lis r3, __vt__8cM3dGAab@ha
/* 80A2AF58  38 03 32 10 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A2AF5C  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80A2AF60:
/* 80A2AF60  7F C3 F3 78 */	mr r3, r30
/* 80A2AF64  38 80 00 00 */	li r4, 0
/* 80A2AF68  4B 65 91 7C */	b __dt__12dCcD_GObjInfFv
/* 80A2AF6C  7F E0 07 35 */	extsh. r0, r31
/* 80A2AF70  40 81 00 0C */	ble lbl_80A2AF7C
/* 80A2AF74  7F C3 F3 78 */	mr r3, r30
/* 80A2AF78  4B 8A 3D C4 */	b __dl__FPv
lbl_80A2AF7C:
/* 80A2AF7C  7F C3 F3 78 */	mr r3, r30
/* 80A2AF80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2AF84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2AF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2AF8C  7C 08 03 A6 */	mtlr r0
/* 80A2AF90  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2AF94  4E 80 00 20 */	blr 

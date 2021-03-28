lbl_80BD9C40:
/* 80BD9C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9C44  7C 08 02 A6 */	mflr r0
/* 80BD9C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD9C50  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD9C54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BD9C58  7C 9F 23 78 */	mr r31, r4
/* 80BD9C5C  41 82 00 94 */	beq lbl_80BD9CF0
/* 80BD9C60  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BD9C64  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BD9C68  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BD9C6C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BD9C70  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BD9C74  38 03 00 84 */	addi r0, r3, 0x84
/* 80BD9C78  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BD9C7C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BD9C80  41 82 00 54 */	beq lbl_80BD9CD4
/* 80BD9C84  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BD9C88  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BD9C8C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BD9C90  38 03 00 58 */	addi r0, r3, 0x58
/* 80BD9C94  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BD9C98  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BD9C9C  41 82 00 10 */	beq lbl_80BD9CAC
/* 80BD9CA0  3C 60 80 BE */	lis r3, __vt__8cM3dGCyl@ha
/* 80BD9CA4  38 03 A2 B4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BD9CA8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BD9CAC:
/* 80BD9CAC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BD9CB0  41 82 00 24 */	beq lbl_80BD9CD4
/* 80BD9CB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BD9CB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BD9CBC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BD9CC0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BD9CC4  41 82 00 10 */	beq lbl_80BD9CD4
/* 80BD9CC8  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha
/* 80BD9CCC  38 03 A2 C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BD9CD0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BD9CD4:
/* 80BD9CD4  7F C3 F3 78 */	mr r3, r30
/* 80BD9CD8  38 80 00 00 */	li r4, 0
/* 80BD9CDC  4B 4A A4 08 */	b __dt__12dCcD_GObjInfFv
/* 80BD9CE0  7F E0 07 35 */	extsh. r0, r31
/* 80BD9CE4  40 81 00 0C */	ble lbl_80BD9CF0
/* 80BD9CE8  7F C3 F3 78 */	mr r3, r30
/* 80BD9CEC  4B 6F 50 50 */	b __dl__FPv
lbl_80BD9CF0:
/* 80BD9CF0  7F C3 F3 78 */	mr r3, r30
/* 80BD9CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD9CF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD9CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9D00  7C 08 03 A6 */	mtlr r0
/* 80BD9D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9D08  4E 80 00 20 */	blr 

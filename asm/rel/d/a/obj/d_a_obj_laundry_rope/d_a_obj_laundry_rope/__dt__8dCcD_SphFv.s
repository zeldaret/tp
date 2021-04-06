lbl_80C52F2C:
/* 80C52F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C52F30  7C 08 02 A6 */	mflr r0
/* 80C52F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C52F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C52F3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C52F40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C52F44  7C 9F 23 78 */	mr r31, r4
/* 80C52F48  41 82 00 94 */	beq lbl_80C52FDC
/* 80C52F4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C52F50  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C52F54  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C52F58  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C52F5C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C52F60  38 03 00 84 */	addi r0, r3, 0x84
/* 80C52F64  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C52F68  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C52F6C  41 82 00 54 */	beq lbl_80C52FC0
/* 80C52F70  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C52F74  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C52F78  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C52F7C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C52F80  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C52F84  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C52F88  41 82 00 10 */	beq lbl_80C52F98
/* 80C52F8C  3C 60 80 C5 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C53444@ha */
/* 80C52F90  38 03 34 44 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C53444@l */
/* 80C52F94  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80C52F98:
/* 80C52F98  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C52F9C  41 82 00 24 */	beq lbl_80C52FC0
/* 80C52FA0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C52FA4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C52FA8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C52FAC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C52FB0  41 82 00 10 */	beq lbl_80C52FC0
/* 80C52FB4  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C53438@ha */
/* 80C52FB8  38 03 34 38 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C53438@l */
/* 80C52FBC  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C52FC0:
/* 80C52FC0  7F C3 F3 78 */	mr r3, r30
/* 80C52FC4  38 80 00 00 */	li r4, 0
/* 80C52FC8  4B 43 11 1D */	bl __dt__12dCcD_GObjInfFv
/* 80C52FCC  7F E0 07 35 */	extsh. r0, r31
/* 80C52FD0  40 81 00 0C */	ble lbl_80C52FDC
/* 80C52FD4  7F C3 F3 78 */	mr r3, r30
/* 80C52FD8  4B 67 BD 65 */	bl __dl__FPv
lbl_80C52FDC:
/* 80C52FDC  7F C3 F3 78 */	mr r3, r30
/* 80C52FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C52FE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C52FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C52FEC  7C 08 03 A6 */	mtlr r0
/* 80C52FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C52FF4  4E 80 00 20 */	blr 

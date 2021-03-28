lbl_80601F24:
/* 80601F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601F28  7C 08 02 A6 */	mflr r0
/* 80601F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601F34  93 C1 00 08 */	stw r30, 8(r1)
/* 80601F38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80601F3C  7C 9F 23 78 */	mr r31, r4
/* 80601F40  41 82 00 94 */	beq lbl_80601FD4
/* 80601F44  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80601F48  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80601F4C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80601F50  38 03 00 2C */	addi r0, r3, 0x2c
/* 80601F54  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80601F58  38 03 00 84 */	addi r0, r3, 0x84
/* 80601F5C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80601F60  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80601F64  41 82 00 54 */	beq lbl_80601FB8
/* 80601F68  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80601F6C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80601F70  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80601F74  38 03 00 58 */	addi r0, r3, 0x58
/* 80601F78  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80601F7C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80601F80  41 82 00 10 */	beq lbl_80601F90
/* 80601F84  3C 60 80 60 */	lis r3, __vt__8cM3dGSph@ha
/* 80601F88  38 03 2F 00 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80601F8C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80601F90:
/* 80601F90  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80601F94  41 82 00 24 */	beq lbl_80601FB8
/* 80601F98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80601F9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80601FA0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80601FA4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80601FA8  41 82 00 10 */	beq lbl_80601FB8
/* 80601FAC  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha
/* 80601FB0  38 03 2F 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80601FB4  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80601FB8:
/* 80601FB8  7F C3 F3 78 */	mr r3, r30
/* 80601FBC  38 80 00 00 */	li r4, 0
/* 80601FC0  4B A8 21 24 */	b __dt__12dCcD_GObjInfFv
/* 80601FC4  7F E0 07 35 */	extsh. r0, r31
/* 80601FC8  40 81 00 0C */	ble lbl_80601FD4
/* 80601FCC  7F C3 F3 78 */	mr r3, r30
/* 80601FD0  4B CC CD 6C */	b __dl__FPv
lbl_80601FD4:
/* 80601FD4  7F C3 F3 78 */	mr r3, r30
/* 80601FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601FDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80601FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601FE4  7C 08 03 A6 */	mtlr r0
/* 80601FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80601FEC  4E 80 00 20 */	blr 

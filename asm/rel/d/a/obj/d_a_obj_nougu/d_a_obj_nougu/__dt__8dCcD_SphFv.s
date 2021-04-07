lbl_80CA3D58:
/* 80CA3D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA3D5C  7C 08 02 A6 */	mflr r0
/* 80CA3D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3D64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA3D68  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA3D6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA3D70  7C 9F 23 78 */	mr r31, r4
/* 80CA3D74  41 82 00 94 */	beq lbl_80CA3E08
/* 80CA3D78  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CA3D7C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CA3D80  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CA3D84  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA3D88  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CA3D8C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA3D90  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CA3D94  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CA3D98  41 82 00 54 */	beq lbl_80CA3DEC
/* 80CA3D9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CA3DA0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CA3DA4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CA3DA8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA3DAC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CA3DB0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CA3DB4  41 82 00 10 */	beq lbl_80CA3DC4
/* 80CA3DB8  3C 60 80 CA */	lis r3, __vt__8cM3dGSph@ha /* 0x80CA4AA0@ha */
/* 80CA3DBC  38 03 4A A0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CA4AA0@l */
/* 80CA3DC0  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80CA3DC4:
/* 80CA3DC4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CA3DC8  41 82 00 24 */	beq lbl_80CA3DEC
/* 80CA3DCC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CA3DD0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CA3DD4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CA3DD8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CA3DDC  41 82 00 10 */	beq lbl_80CA3DEC
/* 80CA3DE0  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha /* 0x80CA4A94@ha */
/* 80CA3DE4  38 03 4A 94 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CA4A94@l */
/* 80CA3DE8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CA3DEC:
/* 80CA3DEC  7F C3 F3 78 */	mr r3, r30
/* 80CA3DF0  38 80 00 00 */	li r4, 0
/* 80CA3DF4  4B 3E 02 F1 */	bl __dt__12dCcD_GObjInfFv
/* 80CA3DF8  7F E0 07 35 */	extsh. r0, r31
/* 80CA3DFC  40 81 00 0C */	ble lbl_80CA3E08
/* 80CA3E00  7F C3 F3 78 */	mr r3, r30
/* 80CA3E04  4B 62 AF 39 */	bl __dl__FPv
lbl_80CA3E08:
/* 80CA3E08  7F C3 F3 78 */	mr r3, r30
/* 80CA3E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA3E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3E18  7C 08 03 A6 */	mtlr r0
/* 80CA3E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3E20  4E 80 00 20 */	blr 

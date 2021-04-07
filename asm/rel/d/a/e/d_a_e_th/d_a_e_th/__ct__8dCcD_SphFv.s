lbl_807B3D0C:
/* 807B3D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3D10  7C 08 02 A6 */	mflr r0
/* 807B3D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3D18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3D1C  7C 7F 1B 78 */	mr r31, r3
/* 807B3D20  4B 8C FD 09 */	bl __ct__12dCcD_GObjInfFv
/* 807B3D24  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807B3D28  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807B3D2C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807B3D30  3C 60 80 7B */	lis r3, __vt__8cM3dGAab@ha /* 0x807B4808@ha */
/* 807B3D34  38 03 48 08 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807B4808@l */
/* 807B3D38  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 807B3D3C  3C 60 80 7B */	lis r3, __vt__8cM3dGSph@ha /* 0x807B4814@ha */
/* 807B3D40  38 03 48 14 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807B4814@l */
/* 807B3D44  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807B3D48  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807B3D4C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807B3D50  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807B3D54  38 03 00 58 */	addi r0, r3, 0x58
/* 807B3D58  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807B3D5C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807B3D60  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807B3D64  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807B3D68  38 03 00 2C */	addi r0, r3, 0x2c
/* 807B3D6C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807B3D70  38 03 00 84 */	addi r0, r3, 0x84
/* 807B3D74  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807B3D78  7F E3 FB 78 */	mr r3, r31
/* 807B3D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3D84  7C 08 03 A6 */	mtlr r0
/* 807B3D88  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3D8C  4E 80 00 20 */	blr 

lbl_806A11D0:
/* 806A11D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A11D4  7C 08 02 A6 */	mflr r0
/* 806A11D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A11DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A11E0  93 C1 00 08 */	stw r30, 8(r1)
/* 806A11E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 806A11E8  7C 9F 23 78 */	mr r31, r4
/* 806A11EC  41 82 00 94 */	beq lbl_806A1280
/* 806A11F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806A11F4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806A11F8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806A11FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 806A1200  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806A1204  38 03 00 84 */	addi r0, r3, 0x84
/* 806A1208  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806A120C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806A1210  41 82 00 54 */	beq lbl_806A1264
/* 806A1214  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806A1218  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806A121C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806A1220  38 03 00 58 */	addi r0, r3, 0x58
/* 806A1224  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806A1228  34 1E 01 24 */	addic. r0, r30, 0x124
/* 806A122C  41 82 00 10 */	beq lbl_806A123C
/* 806A1230  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha /* 0x806A1D58@ha */
/* 806A1234  38 03 1D 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806A1D58@l */
/* 806A1238  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_806A123C:
/* 806A123C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806A1240  41 82 00 24 */	beq lbl_806A1264
/* 806A1244  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806A1248  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806A124C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806A1250  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806A1254  41 82 00 10 */	beq lbl_806A1264
/* 806A1258  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha /* 0x806A1D64@ha */
/* 806A125C  38 03 1D 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806A1D64@l */
/* 806A1260  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_806A1264:
/* 806A1264  7F C3 F3 78 */	mr r3, r30
/* 806A1268  38 80 00 00 */	li r4, 0
/* 806A126C  4B 9E 2E 79 */	bl __dt__12dCcD_GObjInfFv
/* 806A1270  7F E0 07 35 */	extsh. r0, r31
/* 806A1274  40 81 00 0C */	ble lbl_806A1280
/* 806A1278  7F C3 F3 78 */	mr r3, r30
/* 806A127C  4B C2 DA C1 */	bl __dl__FPv
lbl_806A1280:
/* 806A1280  7F C3 F3 78 */	mr r3, r30
/* 806A1284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A1288  83 C1 00 08 */	lwz r30, 8(r1)
/* 806A128C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1290  7C 08 03 A6 */	mtlr r0
/* 806A1294  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1298  4E 80 00 20 */	blr 

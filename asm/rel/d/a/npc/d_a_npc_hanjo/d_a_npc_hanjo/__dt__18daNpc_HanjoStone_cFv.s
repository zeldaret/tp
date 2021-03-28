lbl_809FFFD4:
/* 809FFFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FFFD8  7C 08 02 A6 */	mflr r0
/* 809FFFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FFFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FFFE4  93 C1 00 08 */	stw r30, 8(r1)
/* 809FFFE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809FFFEC  7C 9F 23 78 */	mr r31, r4
/* 809FFFF0  41 82 00 9C */	beq lbl_80A0008C
/* 809FFFF4  34 1E 00 30 */	addic. r0, r30, 0x30
/* 809FFFF8  41 82 00 84 */	beq lbl_80A0007C
/* 809FFFFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80A00000  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80A00004  90 7E 00 6C */	stw r3, 0x6c(r30)
/* 80A00008  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A0000C  90 1E 01 50 */	stw r0, 0x150(r30)
/* 80A00010  38 03 00 84 */	addi r0, r3, 0x84
/* 80A00014  90 1E 01 64 */	stw r0, 0x164(r30)
/* 80A00018  34 1E 01 34 */	addic. r0, r30, 0x134
/* 80A0001C  41 82 00 54 */	beq lbl_80A00070
/* 80A00020  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80A00024  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80A00028  90 7E 01 50 */	stw r3, 0x150(r30)
/* 80A0002C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A00030  90 1E 01 64 */	stw r0, 0x164(r30)
/* 80A00034  34 1E 01 54 */	addic. r0, r30, 0x154
/* 80A00038  41 82 00 10 */	beq lbl_80A00048
/* 80A0003C  3C 60 80 A0 */	lis r3, __vt__8cM3dGSph@ha
/* 80A00040  38 03 11 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80A00044  90 1E 01 64 */	stw r0, 0x164(r30)
lbl_80A00048:
/* 80A00048  34 1E 01 34 */	addic. r0, r30, 0x134
/* 80A0004C  41 82 00 24 */	beq lbl_80A00070
/* 80A00050  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A00054  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A00058  90 1E 01 50 */	stw r0, 0x150(r30)
/* 80A0005C  34 1E 01 34 */	addic. r0, r30, 0x134
/* 80A00060  41 82 00 10 */	beq lbl_80A00070
/* 80A00064  3C 60 80 A0 */	lis r3, __vt__8cM3dGAab@ha
/* 80A00068  38 03 11 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A0006C  90 1E 01 4C */	stw r0, 0x14c(r30)
lbl_80A00070:
/* 80A00070  38 7E 00 30 */	addi r3, r30, 0x30
/* 80A00074  38 80 00 00 */	li r4, 0
/* 80A00078  4B 68 40 6C */	b __dt__12dCcD_GObjInfFv
lbl_80A0007C:
/* 80A0007C  7F E0 07 35 */	extsh. r0, r31
/* 80A00080  40 81 00 0C */	ble lbl_80A0008C
/* 80A00084  7F C3 F3 78 */	mr r3, r30
/* 80A00088  4B 8C EC B4 */	b __dl__FPv
lbl_80A0008C:
/* 80A0008C  7F C3 F3 78 */	mr r3, r30
/* 80A00090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A00094  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A00098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0009C  7C 08 03 A6 */	mtlr r0
/* 80A000A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A000A4  4E 80 00 20 */	blr 

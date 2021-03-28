lbl_806EFFAC:
/* 806EFFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EFFB0  7C 08 02 A6 */	mflr r0
/* 806EFFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EFFB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806EFFBC  93 C1 00 08 */	stw r30, 8(r1)
/* 806EFFC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 806EFFC4  7C 9F 23 78 */	mr r31, r4
/* 806EFFC8  41 82 00 94 */	beq lbl_806F005C
/* 806EFFCC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806EFFD0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806EFFD4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806EFFD8  38 03 00 2C */	addi r0, r3, 0x2c
/* 806EFFDC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806EFFE0  38 03 00 84 */	addi r0, r3, 0x84
/* 806EFFE4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806EFFE8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806EFFEC  41 82 00 54 */	beq lbl_806F0040
/* 806EFFF0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806EFFF4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806EFFF8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806EFFFC  38 03 00 58 */	addi r0, r3, 0x58
/* 806F0000  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806F0004  34 1E 01 24 */	addic. r0, r30, 0x124
/* 806F0008  41 82 00 10 */	beq lbl_806F0018
/* 806F000C  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F0010  38 03 0A E8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F0014  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_806F0018:
/* 806F0018  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806F001C  41 82 00 24 */	beq lbl_806F0040
/* 806F0020  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F0024  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F0028  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806F002C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806F0030  41 82 00 10 */	beq lbl_806F0040
/* 806F0034  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F0038  38 03 0A DC */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F003C  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_806F0040:
/* 806F0040  7F C3 F3 78 */	mr r3, r30
/* 806F0044  38 80 00 00 */	li r4, 0
/* 806F0048  4B 99 40 9C */	b __dt__12dCcD_GObjInfFv
/* 806F004C  7F E0 07 35 */	extsh. r0, r31
/* 806F0050  40 81 00 0C */	ble lbl_806F005C
/* 806F0054  7F C3 F3 78 */	mr r3, r30
/* 806F0058  4B BD EC E4 */	b __dl__FPv
lbl_806F005C:
/* 806F005C  7F C3 F3 78 */	mr r3, r30
/* 806F0060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F0064  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F0068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F006C  7C 08 03 A6 */	mtlr r0
/* 806F0070  38 21 00 10 */	addi r1, r1, 0x10
/* 806F0074  4E 80 00 20 */	blr 

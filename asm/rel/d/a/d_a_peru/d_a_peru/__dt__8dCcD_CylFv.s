lbl_80D4B050:
/* 80D4B050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B054  7C 08 02 A6 */	mflr r0
/* 80D4B058  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B060  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4B064  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4B068  7C 9F 23 78 */	mr r31, r4
/* 80D4B06C  41 82 00 94 */	beq lbl_80D4B100
/* 80D4B070  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D4B074  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D4B078  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D4B07C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D4B080  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D4B084  38 03 00 84 */	addi r0, r3, 0x84
/* 80D4B088  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D4B08C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D4B090  41 82 00 54 */	beq lbl_80D4B0E4
/* 80D4B094  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D4B098  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D4B09C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D4B0A0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D4B0A4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D4B0A8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D4B0AC  41 82 00 10 */	beq lbl_80D4B0BC
/* 80D4B0B0  3C 60 80 D5 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D4B0B4  38 03 C6 84 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D4B0B8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80D4B0BC:
/* 80D4B0BC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D4B0C0  41 82 00 24 */	beq lbl_80D4B0E4
/* 80D4B0C4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D4B0C8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D4B0CC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D4B0D0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D4B0D4  41 82 00 10 */	beq lbl_80D4B0E4
/* 80D4B0D8  3C 60 80 D5 */	lis r3, __vt__8cM3dGAab@ha
/* 80D4B0DC  38 03 C6 78 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D4B0E0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80D4B0E4:
/* 80D4B0E4  7F C3 F3 78 */	mr r3, r30
/* 80D4B0E8  38 80 00 00 */	li r4, 0
/* 80D4B0EC  4B 33 8F F8 */	b __dt__12dCcD_GObjInfFv
/* 80D4B0F0  7F E0 07 35 */	extsh. r0, r31
/* 80D4B0F4  40 81 00 0C */	ble lbl_80D4B100
/* 80D4B0F8  7F C3 F3 78 */	mr r3, r30
/* 80D4B0FC  4B 58 3C 40 */	b __dl__FPv
lbl_80D4B100:
/* 80D4B100  7F C3 F3 78 */	mr r3, r30
/* 80D4B104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B108  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4B10C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B110  7C 08 03 A6 */	mtlr r0
/* 80D4B114  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B118  4E 80 00 20 */	blr 

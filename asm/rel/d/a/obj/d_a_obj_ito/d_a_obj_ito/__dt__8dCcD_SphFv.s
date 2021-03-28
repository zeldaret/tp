lbl_8047D598:
/* 8047D598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D59C  7C 08 02 A6 */	mflr r0
/* 8047D5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047D5A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8047D5AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8047D5B0  7C 9F 23 78 */	mr r31, r4
/* 8047D5B4  41 82 00 94 */	beq lbl_8047D648
/* 8047D5B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8047D5BC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8047D5C0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8047D5C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 8047D5C8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8047D5CC  38 03 00 84 */	addi r0, r3, 0x84
/* 8047D5D0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8047D5D4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8047D5D8  41 82 00 54 */	beq lbl_8047D62C
/* 8047D5DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8047D5E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8047D5E4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8047D5E8  38 03 00 58 */	addi r0, r3, 0x58
/* 8047D5EC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8047D5F0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8047D5F4  41 82 00 10 */	beq lbl_8047D604
/* 8047D5F8  3C 60 80 48 */	lis r3, __vt__8cM3dGSph@ha
/* 8047D5FC  38 03 D9 94 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8047D600  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8047D604:
/* 8047D604  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8047D608  41 82 00 24 */	beq lbl_8047D62C
/* 8047D60C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8047D610  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8047D614  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8047D618  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8047D61C  41 82 00 10 */	beq lbl_8047D62C
/* 8047D620  3C 60 80 48 */	lis r3, __vt__8cM3dGAab@ha
/* 8047D624  38 03 D9 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8047D628  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8047D62C:
/* 8047D62C  7F C3 F3 78 */	mr r3, r30
/* 8047D630  38 80 00 00 */	li r4, 0
/* 8047D634  4B C0 6A B0 */	b __dt__12dCcD_GObjInfFv
/* 8047D638  7F E0 07 35 */	extsh. r0, r31
/* 8047D63C  40 81 00 0C */	ble lbl_8047D648
/* 8047D640  7F C3 F3 78 */	mr r3, r30
/* 8047D644  4B E5 16 F8 */	b __dl__FPv
lbl_8047D648:
/* 8047D648  7F C3 F3 78 */	mr r3, r30
/* 8047D64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D650  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047D654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D658  7C 08 03 A6 */	mtlr r0
/* 8047D65C  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D660  4E 80 00 20 */	blr 

lbl_8045B9C4:
/* 8045B9C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8045B9C8  7C 08 02 A6 */	mflr r0
/* 8045B9CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8045B9D0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8045B9D4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8045B9D8  7C 7E 1B 78 */	mr r30, r3
/* 8045B9DC  3C 80 80 46 */	lis r4, l_cyl_src@ha
/* 8045B9E0  3B E4 C9 B8 */	addi r31, r4, l_cyl_src@l
/* 8045B9E4  4B FF F9 BD */	bl setSe__9daBgObj_cFv
/* 8045B9E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045B9EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045B9F0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8045B9F4  28 03 00 00 */	cmplwi r3, 0
/* 8045B9F8  41 82 01 18 */	beq lbl_8045BB10
/* 8045B9FC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8045BA00  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8045BA04  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8045BA08  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8045BA0C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8045BA10  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8045BA14  38 61 00 2C */	addi r3, r1, 0x2c
/* 8045BA18  38 81 00 44 */	addi r4, r1, 0x44
/* 8045BA1C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8045BA20  4B E0 B1 14 */	b __mi__4cXyzCFRC3Vec
/* 8045BA24  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8045BA28  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8045BA2C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8045BA30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8045BA34  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8045BA38  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8045BA3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045BA40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045BA44  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8045BA48  7C 00 00 D0 */	neg r0, r0
/* 8045BA4C  7C 04 07 34 */	extsh r4, r0
/* 8045BA50  4B BB 09 8C */	b mDoMtx_YrotS__FPA4_fs
/* 8045BA54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045BA58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045BA5C  38 81 00 44 */	addi r4, r1, 0x44
/* 8045BA60  7C 85 23 78 */	mr r5, r4
/* 8045BA64  4B EE B3 08 */	b PSMTXMultVec
/* 8045BA68  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8045BA6C  4B BB 12 F8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8045BA70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045BA74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045BA78  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8045BA7C  4B BB 09 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 8045BA80  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8045BA84  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8045BA88  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045BA8C  40 81 00 24 */	ble lbl_8045BAB0
/* 8045BA90  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8045BA94  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8045BA98  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8045BA9C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8045BAA0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045BAA4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8045BAA8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8045BAAC  48 00 00 20 */	b lbl_8045BACC
lbl_8045BAB0:
/* 8045BAB0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8045BAB4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8045BAB8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8045BABC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8045BAC0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045BAC4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8045BAC8  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8045BACC:
/* 8045BACC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045BAD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045BAD4  38 81 00 38 */	addi r4, r1, 0x38
/* 8045BAD8  7C 85 23 78 */	mr r5, r4
/* 8045BADC  4B EE B2 90 */	b PSMTXMultVec
/* 8045BAE0  38 61 00 08 */	addi r3, r1, 8
/* 8045BAE4  38 81 00 38 */	addi r4, r1, 0x38
/* 8045BAE8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8045BAEC  4B E0 B0 48 */	b __mi__4cXyzCFRC3Vec
/* 8045BAF0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045BAF4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045BAF8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8045BAFC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8045BB00  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8045BB04  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8045BB08  4B E0 BB 6C */	b cM_atan2s__Fff
/* 8045BB0C  B0 7E 0C F6 */	sth r3, 0xcf6(r30)
lbl_8045BB10:
/* 8045BB10  7F C3 F3 78 */	mr r3, r30
/* 8045BB14  4B FF F6 69 */	bl setParticle__9daBgObj_cFv
/* 8045BB18  38 00 00 01 */	li r0, 1
/* 8045BB1C  98 1E 0C C5 */	stb r0, 0xcc5(r30)
/* 8045BB20  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8045BB24  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8045BB28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8045BB2C  7C 08 03 A6 */	mtlr r0
/* 8045BB30  38 21 00 60 */	addi r1, r1, 0x60
/* 8045BB34  4E 80 00 20 */	blr 

lbl_80CA9E98:
/* 80CA9E98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA9E9C  7C 08 02 A6 */	mflr r0
/* 80CA9EA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA9EA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA9EA8  4B 6B 83 35 */	bl _savegpr_29
/* 80CA9EAC  7C 7E 1B 78 */	mr r30, r3
/* 80CA9EB0  7C DF 33 78 */	mr r31, r6
/* 80CA9EB4  54 DD 07 BF */	clrlwi. r29, r6, 0x1e
/* 80CA9EB8  41 82 00 C8 */	beq lbl_80CA9F80
/* 80CA9EBC  38 61 00 08 */	addi r3, r1, 8
/* 80CA9EC0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80CA9EC4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CA9EC8  4B 5B CC 6D */	bl __mi__4cXyzCFRC3Vec
/* 80CA9ECC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CA9ED0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CA9ED4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CA9ED8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CA9EDC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CA9EE0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CA9EE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA9EE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA9EEC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CA9EF0  7C 00 00 D0 */	neg r0, r0
/* 80CA9EF4  7C 04 07 34 */	extsh r4, r0
/* 80CA9EF8  4B 36 24 E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CA9EFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA9F00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA9F04  38 81 00 14 */	addi r4, r1, 0x14
/* 80CA9F08  7C 85 23 78 */	mr r5, r4
/* 80CA9F0C  4B 69 CE 61 */	bl PSMTXMultVec
/* 80CA9F10  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80CA9F14  3C 60 80 CB */	lis r3, lit_3695@ha /* 0x80CAAB20@ha */
/* 80CA9F18  C0 03 AB 20 */	lfs f0, lit_3695@l(r3)  /* 0x80CAAB20@l */
/* 80CA9F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA9F20  40 81 00 10 */	ble lbl_80CA9F30
/* 80CA9F24  57 A0 07 FE */	clrlwi r0, r29, 0x1f
/* 80CA9F28  68 06 00 01 */	xori r6, r0, 1
/* 80CA9F2C  48 00 00 0C */	b lbl_80CA9F38
lbl_80CA9F30:
/* 80CA9F30  57 A0 07 FE */	clrlwi r0, r29, 0x1f
/* 80CA9F34  7C 06 03 78 */	mr r6, r0
lbl_80CA9F38:
/* 80CA9F38  38 E0 00 00 */	li r7, 0
/* 80CA9F3C  38 60 00 00 */	li r3, 0
/* 80CA9F40  38 00 00 02 */	li r0, 2
/* 80CA9F44  7C 09 03 A6 */	mtctr r0
lbl_80CA9F48:
/* 80CA9F48  7C 07 30 00 */	cmpw r7, r6
/* 80CA9F4C  40 82 00 18 */	bne lbl_80CA9F64
/* 80CA9F50  38 A7 05 B6 */	addi r5, r7, 0x5b6
/* 80CA9F54  7C 9E 28 AE */	lbzx r4, r30, r5
/* 80CA9F58  38 04 00 01 */	addi r0, r4, 1
/* 80CA9F5C  7C 1E 29 AE */	stbx r0, r30, r5
/* 80CA9F60  48 00 00 0C */	b lbl_80CA9F6C
lbl_80CA9F64:
/* 80CA9F64  38 07 05 B6 */	addi r0, r7, 0x5b6
/* 80CA9F68  7C 7E 01 AE */	stbx r3, r30, r0
lbl_80CA9F6C:
/* 80CA9F6C  38 E7 00 01 */	addi r7, r7, 1
/* 80CA9F70  42 00 FF D8 */	bdnz lbl_80CA9F48
/* 80CA9F74  38 00 00 01 */	li r0, 1
/* 80CA9F78  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80CA9F7C  93 FE 05 C0 */	stw r31, 0x5c0(r30)
lbl_80CA9F80:
/* 80CA9F80  7F C3 F3 78 */	mr r3, r30
/* 80CA9F84  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA9F88  4B 6B 82 A1 */	bl _restgpr_29
/* 80CA9F8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA9F90  7C 08 03 A6 */	mtlr r0
/* 80CA9F94  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA9F98  4E 80 00 20 */	blr 

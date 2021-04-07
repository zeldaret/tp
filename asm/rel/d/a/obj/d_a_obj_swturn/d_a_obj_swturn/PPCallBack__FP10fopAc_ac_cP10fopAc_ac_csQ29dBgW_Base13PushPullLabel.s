lbl_80D00BD8:
/* 80D00BD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D00BDC  7C 08 02 A6 */	mflr r0
/* 80D00BE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D00BE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D00BE8  4B 66 15 F5 */	bl _savegpr_29
/* 80D00BEC  7C 7E 1B 78 */	mr r30, r3
/* 80D00BF0  7C DF 33 78 */	mr r31, r6
/* 80D00BF4  54 DD 07 BF */	clrlwi. r29, r6, 0x1e
/* 80D00BF8  41 82 00 C4 */	beq lbl_80D00CBC
/* 80D00BFC  38 61 00 08 */	addi r3, r1, 8
/* 80D00C00  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D00C04  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D00C08  4B 56 5F 2D */	bl __mi__4cXyzCFRC3Vec
/* 80D00C0C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D00C10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D00C14  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D00C18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D00C1C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D00C20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D00C24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00C28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00C2C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80D00C30  7C 00 00 D0 */	neg r0, r0
/* 80D00C34  7C 04 07 34 */	extsh r4, r0
/* 80D00C38  4B 30 B7 A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D00C3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00C40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00C44  38 81 00 14 */	addi r4, r1, 0x14
/* 80D00C48  7C 85 23 78 */	mr r5, r4
/* 80D00C4C  4B 64 61 21 */	bl PSMTXMultVec
/* 80D00C50  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80D00C54  3C 60 80 D0 */	lis r3, lit_3698@ha /* 0x80D02090@ha */
/* 80D00C58  C0 03 20 90 */	lfs f0, lit_3698@l(r3)  /* 0x80D02090@l */
/* 80D00C5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D00C60  40 81 00 10 */	ble lbl_80D00C70
/* 80D00C64  57 A0 FF FE */	rlwinm r0, r29, 0x1f, 0x1f, 0x1f
/* 80D00C68  68 06 00 01 */	xori r6, r0, 1
/* 80D00C6C  48 00 00 08 */	b lbl_80D00C74
lbl_80D00C70:
/* 80D00C70  57 A6 FF FE */	rlwinm r6, r29, 0x1f, 0x1f, 0x1f
lbl_80D00C74:
/* 80D00C74  38 E0 00 00 */	li r7, 0
/* 80D00C78  38 60 00 00 */	li r3, 0
/* 80D00C7C  38 00 00 02 */	li r0, 2
/* 80D00C80  7C 09 03 A6 */	mtctr r0
lbl_80D00C84:
/* 80D00C84  7C 07 30 00 */	cmpw r7, r6
/* 80D00C88  40 82 00 18 */	bne lbl_80D00CA0
/* 80D00C8C  38 A7 05 B0 */	addi r5, r7, 0x5b0
/* 80D00C90  7C 9E 28 AE */	lbzx r4, r30, r5
/* 80D00C94  38 04 00 01 */	addi r0, r4, 1
/* 80D00C98  7C 1E 29 AE */	stbx r0, r30, r5
/* 80D00C9C  48 00 00 0C */	b lbl_80D00CA8
lbl_80D00CA0:
/* 80D00CA0  38 07 05 B0 */	addi r0, r7, 0x5b0
/* 80D00CA4  7C 7E 01 AE */	stbx r3, r30, r0
lbl_80D00CA8:
/* 80D00CA8  38 E7 00 01 */	addi r7, r7, 1
/* 80D00CAC  42 00 FF D8 */	bdnz lbl_80D00C84
/* 80D00CB0  38 00 00 01 */	li r0, 1
/* 80D00CB4  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80D00CB8  93 FE 05 D8 */	stw r31, 0x5d8(r30)
lbl_80D00CBC:
/* 80D00CBC  7F C3 F3 78 */	mr r3, r30
/* 80D00CC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D00CC4  4B 66 15 65 */	bl _restgpr_29
/* 80D00CC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D00CCC  7C 08 03 A6 */	mtlr r0
/* 80D00CD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D00CD4  4E 80 00 20 */	blr 

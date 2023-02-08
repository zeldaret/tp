lbl_804C8928:
/* 804C8928  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C892C  7C 08 02 A6 */	mflr r0
/* 804C8930  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C8934  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804C8938  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804C893C  7C 7E 1B 78 */	mr r30, r3
/* 804C8940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8948  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 804C894C  7F E3 FB 78 */	mr r3, r31
/* 804C8950  38 9E 0A A0 */	addi r4, r30, 0xaa0
/* 804C8954  4B BA BA 61 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804C8958  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804C895C  41 82 00 C8 */	beq lbl_804C8A24
/* 804C8960  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804CC5E0@ha */
/* 804C8964  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804CC5E0@l */
/* 804C8968  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C896C  7F E3 FB 78 */	mr r3, r31
/* 804C8970  38 9E 0A B4 */	addi r4, r30, 0xab4
/* 804C8974  38 A1 00 08 */	addi r5, r1, 8
/* 804C8978  4B BA BD CD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804C897C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8984  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804C8988  4B C1 AE 99 */	bl getBombInsectLimitAngle__9daAlink_cCFv
/* 804C898C  7C 60 07 34 */	extsh r0, r3
/* 804C8990  3C 60 80 4D */	lis r3, lit_4689@ha /* 0x804CC3D8@ha */
/* 804C8994  C8 23 C3 D8 */	lfd f1, lit_4689@l(r3)  /* 0x804CC3D8@l */
/* 804C8998  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C899C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C89A0  3C 00 43 30 */	lis r0, 0x4330
/* 804C89A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C89A8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804C89AC  EC 20 08 28 */	fsubs f1, f0, f1
/* 804C89B0  3C 60 80 4D */	lis r3, lit_5214@ha /* 0x804CC3F8@ha */
/* 804C89B4  C0 03 C3 F8 */	lfs f0, lit_5214@l(r3)  /* 0x804CC3F8@l */
/* 804C89B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804C89BC  FC 00 00 1E */	fctiwz f0, f0
/* 804C89C0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804C89C4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804C89C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804C89CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804C89D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804C89D4  7C 63 02 14 */	add r3, r3, r0
/* 804C89D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 804C89DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804C89E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804C89E4  41 80 00 18 */	blt lbl_804C89FC
/* 804C89E8  7F E3 FB 78 */	mr r3, r31
/* 804C89EC  38 9E 0A B4 */	addi r4, r30, 0xab4
/* 804C89F0  4B BA C5 01 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 804C89F4  2C 03 00 01 */	cmpwi r3, 1
/* 804C89F8  40 82 00 18 */	bne lbl_804C8A10
lbl_804C89FC:
/* 804C89FC  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804CC5E0@ha */
/* 804C8A00  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804CC5E0@l */
/* 804C8A04  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C8A08  38 60 00 02 */	li r3, 2
/* 804C8A0C  48 00 00 1C */	b lbl_804C8A28
lbl_804C8A10:
/* 804C8A10  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804CC5E0@ha */
/* 804C8A14  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804CC5E0@l */
/* 804C8A18  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C8A1C  38 60 00 01 */	li r3, 1
/* 804C8A20  48 00 00 08 */	b lbl_804C8A28
lbl_804C8A24:
/* 804C8A24  38 60 00 00 */	li r3, 0
lbl_804C8A28:
/* 804C8A28  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804C8A2C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804C8A30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C8A34  7C 08 03 A6 */	mtlr r0
/* 804C8A38  38 21 00 40 */	addi r1, r1, 0x40
/* 804C8A3C  4E 80 00 20 */	blr 

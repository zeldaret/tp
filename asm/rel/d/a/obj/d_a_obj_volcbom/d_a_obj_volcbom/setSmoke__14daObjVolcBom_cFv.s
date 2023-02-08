lbl_80D2523C:
/* 80D2523C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D25240  7C 08 02 A6 */	mflr r0
/* 80D25244  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D25248  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D2524C  7C 7F 1B 78 */	mr r31, r3
/* 80D25250  80 03 05 C4 */	lwz r0, 0x5c4(r3)
/* 80D25254  28 00 00 00 */	cmplwi r0, 0
/* 80D25258  40 82 00 5C */	bne lbl_80D252B4
/* 80D2525C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D25260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D25264  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D25268  38 80 00 00 */	li r4, 0
/* 80D2526C  90 81 00 08 */	stw r4, 8(r1)
/* 80D25270  38 00 FF FF */	li r0, -1
/* 80D25274  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D25278  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D2527C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D25280  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D25284  38 80 00 00 */	li r4, 0
/* 80D25288  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008608@ha */
/* 80D2528C  38 A5 86 08 */	addi r5, r5, 0x8608 /* 0x00008608@l */
/* 80D25290  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80D25294  38 E0 00 00 */	li r7, 0
/* 80D25298  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80D2529C  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80D252A0  39 40 00 FF */	li r10, 0xff
/* 80D252A4  3D 60 80 D2 */	lis r11, lit_3785@ha /* 0x80D26B7C@ha */
/* 80D252A8  C0 2B 6B 7C */	lfs f1, lit_3785@l(r11)  /* 0x80D26B7C@l */
/* 80D252AC  4B 32 77 E5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D252B0  90 7F 05 C4 */	stw r3, 0x5c4(r31)
lbl_80D252B4:
/* 80D252B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D252B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D252BC  7C 08 03 A6 */	mtlr r0
/* 80D252C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D252C4  4E 80 00 20 */	blr 

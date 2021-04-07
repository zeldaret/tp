lbl_8060688C:
/* 8060688C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80606890  7C 08 02 A6 */	mflr r0
/* 80606894  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80606898  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8060689C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 806068A0  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 806068A4  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 806068A8  39 61 00 80 */	addi r11, r1, 0x80
/* 806068AC  4B D5 B9 25 */	bl _savegpr_26
/* 806068B0  7C 7B 1B 78 */	mr r27, r3
/* 806068B4  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 806068B8  3B C3 FD E0 */	addi r30, r3, lit_3928@l /* 0x8060FDE0@l */
/* 806068BC  38 61 00 14 */	addi r3, r1, 0x14
/* 806068C0  4B A7 0C BD */	bl __ct__11dBgS_GndChkFv
/* 806068C4  3B 80 00 00 */	li r28, 0
/* 806068C8  3B 40 00 00 */	li r26, 0
/* 806068CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806068D0  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806068D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806068D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806068DC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806068E0  C3 DE 00 00 */	lfs f30, 0(r30)
/* 806068E4  C3 FE 00 3C */	lfs f31, 0x3c(r30)
lbl_806068E8:
/* 806068E8  2C 1C 00 00 */	cmpwi r28, 0
/* 806068EC  40 82 00 40 */	bne lbl_8060692C
/* 806068F0  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 806068F4  80 63 00 04 */	lwz r3, 4(r3)
/* 806068F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806068FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80606900  38 63 0B D0 */	addi r3, r3, 0xbd0
/* 80606904  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80606908  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060690C  4B D3 FB A5 */	bl PSMTXCopy
/* 80606910  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80606914  D0 01 00 08 */	stfs f0, 8(r1)
/* 80606918  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8060691C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80606920  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80606924  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80606928  48 00 00 4C */	b lbl_80606974
lbl_8060692C:
/* 8060692C  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80606930  80 63 00 04 */	lwz r3, 4(r3)
/* 80606934  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80606938  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060693C  38 63 00 60 */	addi r3, r3, 0x60
/* 80606940  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80606944  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80606948  4B D3 FB 69 */	bl PSMTXCopy
/* 8060694C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80606950  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80606954  FC 60 10 90 */	fmr f3, f2
/* 80606958  4B A0 64 45 */	bl transM__14mDoMtx_stack_cFfff
/* 8060695C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80606960  D0 01 00 08 */	stfs f0, 8(r1)
/* 80606964  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80606968  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8060696C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80606970  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80606974:
/* 80606974  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80606978  EC 00 F0 2A */	fadds f0, f0, f30
/* 8060697C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80606980  38 61 00 14 */	addi r3, r1, 0x14
/* 80606984  38 81 00 08 */	addi r4, r1, 8
/* 80606988  4B C6 13 A1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8060698C  7F A3 EB 78 */	mr r3, r29
/* 80606990  38 81 00 14 */	addi r4, r1, 0x14
/* 80606994  4B A6 DB 0D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80606998  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8060699C  FC 00 08 18 */	frsp f0, f1
/* 806069A0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 806069A4  41 82 00 28 */	beq lbl_806069CC
/* 806069A8  7C 9B D2 14 */	add r4, r27, r26
/* 806069AC  38 64 25 F8 */	addi r3, r4, 0x25f8
/* 806069B0  38 84 26 08 */	addi r4, r4, 0x2608
/* 806069B4  38 A1 00 08 */	addi r5, r1, 8
/* 806069B8  38 C0 00 00 */	li r6, 0
/* 806069BC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806069C0  38 FB 01 0C */	addi r7, r27, 0x10c
/* 806069C4  39 00 00 01 */	li r8, 1
/* 806069C8  4B A1 66 59 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_806069CC:
/* 806069CC  3B 9C 00 01 */	addi r28, r28, 1
/* 806069D0  2C 1C 00 02 */	cmpwi r28, 2
/* 806069D4  3B 5A 00 04 */	addi r26, r26, 4
/* 806069D8  41 80 FF 10 */	blt lbl_806068E8
/* 806069DC  38 61 00 14 */	addi r3, r1, 0x14
/* 806069E0  38 80 FF FF */	li r4, -1
/* 806069E4  4B A7 0C 0D */	bl __dt__11dBgS_GndChkFv
/* 806069E8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 806069EC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 806069F0  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 806069F4  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 806069F8  39 61 00 80 */	addi r11, r1, 0x80
/* 806069FC  4B D5 B8 21 */	bl _restgpr_26
/* 80606A00  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80606A04  7C 08 03 A6 */	mtlr r0
/* 80606A08  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80606A0C  4E 80 00 20 */	blr 

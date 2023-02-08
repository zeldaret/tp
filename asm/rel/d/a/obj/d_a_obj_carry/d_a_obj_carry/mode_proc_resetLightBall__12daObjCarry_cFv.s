lbl_80475598:
/* 80475598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047559C  7C 08 02 A6 */	mflr r0
/* 804755A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804755A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804755A8  7C 7F 1B 78 */	mr r31, r3
/* 804755AC  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 804755B0  3C 80 80 48 */	lis r4, lit_4685@ha /* 0x8047A3CC@ha */
/* 804755B4  C0 24 A3 CC */	lfs f1, lit_4685@l(r4)  /* 0x8047A3CC@l */
/* 804755B8  3C 80 80 48 */	lis r4, lit_5551@ha /* 0x8047A410@ha */
/* 804755BC  C0 44 A4 10 */	lfs f2, lit_5551@l(r4)  /* 0x8047A410@l */
/* 804755C0  4B DF B1 81 */	bl cLib_chaseF__FPfff
/* 804755C4  2C 03 00 00 */	cmpwi r3, 0
/* 804755C8  41 82 00 1C */	beq lbl_804755E4
/* 804755CC  38 00 00 0A */	li r0, 0xa
/* 804755D0  98 1F 0C F3 */	stb r0, 0xcf3(r31)
/* 804755D4  38 00 00 01 */	li r0, 1
/* 804755D8  98 1F 0D B1 */	stb r0, 0xdb1(r31)
/* 804755DC  7F E3 FB 78 */	mr r3, r31
/* 804755E0  4B FF DE 09 */	bl mode_init_wait__12daObjCarry_cFv
lbl_804755E4:
/* 804755E4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804755E8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 804755EC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804755F0  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 804755F4  7F E3 FB 78 */	mr r3, r31
/* 804755F8  38 80 00 00 */	li r4, 0
/* 804755FC  4B BA 50 D1 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80475600  38 60 00 01 */	li r3, 1
/* 80475604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047560C  7C 08 03 A6 */	mtlr r0
/* 80475610  38 21 00 10 */	addi r1, r1, 0x10
/* 80475614  4E 80 00 20 */	blr 

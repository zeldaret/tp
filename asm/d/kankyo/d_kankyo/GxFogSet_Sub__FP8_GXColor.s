lbl_801A8538:
/* 801A8538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A853C  7C 08 02 A6 */	mflr r0
/* 801A8540  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8544  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A8548  C0 82 A3 A8 */	lfs f4, lit_8647(r2)
/* 801A854C  88 03 00 00 */	lbz r0, 0(r3)
/* 801A8550  98 01 00 0C */	stb r0, 0xc(r1)
/* 801A8554  88 03 00 01 */	lbz r0, 1(r3)
/* 801A8558  98 01 00 0D */	stb r0, 0xd(r1)
/* 801A855C  88 03 00 02 */	lbz r0, 2(r3)
/* 801A8560  98 01 00 0E */	stb r0, 0xe(r1)
/* 801A8564  88 03 00 03 */	lbz r0, 3(r3)
/* 801A8568  98 01 00 0F */	stb r0, 0xf(r1)
/* 801A856C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A8570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A8574  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 801A8578  28 03 00 00 */	cmplwi r3, 0
/* 801A857C  41 82 00 38 */	beq lbl_801A85B4
/* 801A8580  C0 43 00 C8 */	lfs f2, 0xc8(r3)
/* 801A8584  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A8588  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A858C  4C 41 13 82 */	cror 2, 1, 2
/* 801A8590  40 82 00 24 */	bne lbl_801A85B4
/* 801A8594  C0 23 00 CC */	lfs f1, 0xcc(r3)
/* 801A8598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A859C  4C 41 13 82 */	cror 2, 1, 2
/* 801A85A0  40 82 00 14 */	bne lbl_801A85B4
/* 801A85A4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801A85A8  40 80 00 0C */	bge lbl_801A85B4
/* 801A85AC  FC 60 10 90 */	fmr f3, f2
/* 801A85B0  FC 80 08 90 */	fmr f4, f1
lbl_801A85B4:
/* 801A85B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801A85B8  90 01 00 08 */	stw r0, 8(r1)
/* 801A85BC  38 60 00 02 */	li r3, 2
/* 801A85C0  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A85C4  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A85C8  C0 24 11 E4 */	lfs f1, 0x11e4(r4)
/* 801A85CC  C0 44 11 E8 */	lfs f2, 0x11e8(r4)
/* 801A85D0  38 81 00 08 */	addi r4, r1, 8
/* 801A85D4  48 1B 72 E5 */	bl GXSetFog
/* 801A85D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A85DC  7C 08 03 A6 */	mtlr r0
/* 801A85E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801A85E4  4E 80 00 20 */	blr 

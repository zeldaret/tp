lbl_80061324:
/* 80061324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80061328  7C 08 02 A6 */	mflr r0
/* 8006132C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80061330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80061334  93 C1 00 08 */	stw r30, 8(r1)
/* 80061338  38 60 00 4C */	li r3, 0x4c
/* 8006133C  38 80 00 20 */	li r4, 0x20
/* 80061340  48 26 D9 35 */	bl __nw__FUli
/* 80061344  7C 7E 1B 79 */	or. r30, r3, r3
/* 80061348  41 82 00 50 */	beq lbl_80061398
/* 8006134C  7F C4 F3 78 */	mr r4, r30
/* 80061350  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80061354  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80061358  90 1E 00 00 */	stw r0, 0(r30)
/* 8006135C  38 00 00 00 */	li r0, 0
/* 80061360  90 1E 00 04 */	stw r0, 4(r30)
/* 80061364  90 1E 00 08 */	stw r0, 8(r30)
/* 80061368  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8006136C  3C 60 80 3B */	lis r3, __vt__19dKankyo_star_Packet@ha
/* 80061370  38 03 9B 38 */	addi r0, r3, __vt__19dKankyo_star_Packet@l
/* 80061374  90 1E 00 00 */	stw r0, 0(r30)
/* 80061378  38 64 00 14 */	addi r3, r4, 0x14
/* 8006137C  3C 80 80 05 */	lis r4, __ct__8STAR_EFFFv@ha
/* 80061380  38 84 6E 04 */	addi r4, r4, __ct__8STAR_EFFFv@l
/* 80061384  3C A0 80 05 */	lis r5, __dt__8STAR_EFFFv@ha
/* 80061388  38 A5 6D C8 */	addi r5, r5, __dt__8STAR_EFFFv@l
/* 8006138C  38 C0 00 34 */	li r6, 0x34
/* 80061390  38 E0 00 01 */	li r7, 1
/* 80061394  48 30 09 CD */	bl __construct_array
lbl_80061398:
/* 80061398  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006139C  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 800613A0  93 DF 0E A4 */	stw r30, 0xea4(r31)
/* 800613A4  28 1E 00 00 */	cmplwi r30, 0
/* 800613A8  41 82 00 4C */	beq lbl_800613F4
/* 800613AC  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 800613B0  38 63 A5 78 */	addi r3, r3, d_kankyo_d_kankyo_rain__stringBase0@l
/* 800613B4  38 63 00 10 */	addi r3, r3, 0x10
/* 800613B8  38 80 00 4A */	li r4, 0x4a
/* 800613BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 800613C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 800613C4  3C A5 00 02 */	addis r5, r5, 2
/* 800613C8  38 C0 00 80 */	li r6, 0x80
/* 800613CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 800613D0  4B FD AF 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800613D4  80 9F 0E A4 */	lwz r4, 0xea4(r31)
/* 800613D8  90 64 00 10 */	stw r3, 0x10(r4)
/* 800613DC  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 800613E0  80 7F 0E A4 */	lwz r3, 0xea4(r31)
/* 800613E4  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 800613E8  38 00 00 00 */	li r0, 0
/* 800613EC  80 7F 0E A4 */	lwz r3, 0xea4(r31)
/* 800613F0  B0 03 00 48 */	sth r0, 0x48(r3)
lbl_800613F4:
/* 800613F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800613F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800613FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80061400  7C 08 03 A6 */	mtlr r0
/* 80061404  38 21 00 10 */	addi r1, r1, 0x10
/* 80061408  4E 80 00 20 */	blr 

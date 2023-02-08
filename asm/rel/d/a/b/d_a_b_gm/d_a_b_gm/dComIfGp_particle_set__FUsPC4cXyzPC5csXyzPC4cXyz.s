lbl_805F40EC:
/* 805F40EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F40F0  7C 08 02 A6 */	mflr r0
/* 805F40F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F40F8  7C 6A 1B 78 */	mr r10, r3
/* 805F40FC  7C 87 23 78 */	mr r7, r4
/* 805F4100  7C A8 2B 78 */	mr r8, r5
/* 805F4104  7C C9 33 78 */	mr r9, r6
/* 805F4108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F410C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F4110  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805F4114  38 80 00 00 */	li r4, 0
/* 805F4118  90 81 00 08 */	stw r4, 8(r1)
/* 805F411C  38 00 FF FF */	li r0, -1
/* 805F4120  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F4124  90 81 00 10 */	stw r4, 0x10(r1)
/* 805F4128  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F412C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F4130  38 80 00 00 */	li r4, 0
/* 805F4134  7D 45 53 78 */	mr r5, r10
/* 805F4138  7C E6 3B 78 */	mr r6, r7
/* 805F413C  38 E0 00 00 */	li r7, 0
/* 805F4140  39 40 00 FF */	li r10, 0xff
/* 805F4144  3D 60 80 5F */	lis r11, lit_3774@ha /* 0x805F4188@ha */
/* 805F4148  C0 2B 41 88 */	lfs f1, lit_3774@l(r11)  /* 0x805F4188@l */
/* 805F414C  4B A5 89 45 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805F4150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F4154  7C 08 03 A6 */	mtlr r0
/* 805F4158  38 21 00 20 */	addi r1, r1, 0x20
/* 805F415C  4E 80 00 20 */	blr 

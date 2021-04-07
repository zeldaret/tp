lbl_805C4130:
/* 805C4130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C4134  7C 08 02 A6 */	mflr r0
/* 805C4138  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C413C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C4140  7C 7F 1B 78 */	mr r31, r3
/* 805C4144  4B FF F8 95 */	bl executeParts__8daB_DR_cFv
/* 805C4148  7F E3 FB 78 */	mr r3, r31
/* 805C414C  38 9F 0A 08 */	addi r4, r31, 0xa08
/* 805C4150  4B A5 65 7D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805C4154  38 7F 08 30 */	addi r3, r31, 0x830
/* 805C4158  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C415C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C4160  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805C4164  4B AB 29 49 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805C4168  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805C416C  7C 03 07 74 */	extsb r3, r0
/* 805C4170  4B A6 8E FD */	bl dComIfGp_getReverb__Fi
/* 805C4174  7C 65 1B 78 */	mr r5, r3
/* 805C4178  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805C417C  38 80 00 00 */	li r4, 0
/* 805C4180  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805C4184  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 805C4188  7D 89 03 A6 */	mtctr r12
/* 805C418C  4E 80 04 21 */	bctrl 
/* 805C4190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C4194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C4198  7C 08 03 A6 */	mtlr r0
/* 805C419C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C41A0  4E 80 00 20 */	blr 

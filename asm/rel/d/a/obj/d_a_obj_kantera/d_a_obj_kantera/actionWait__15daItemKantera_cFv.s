lbl_80C3911C:
/* 80C3911C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39120  7C 08 02 A6 */	mflr r0
/* 80C39124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3912C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C39130  7C 7F 1B 78 */	mr r31, r3
/* 80C39134  3C 80 80 C4 */	lis r4, l_cyl_src@ha /* 0x80C39648@ha */
/* 80C39138  3B C4 96 48 */	addi r30, r4, l_cyl_src@l /* 0x80C39648@l */
/* 80C3913C  38 9F 07 A4 */	addi r4, r31, 0x7a4
/* 80C39140  4B 3E 15 8D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C39144  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80C39148  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3914C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C39150  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C39154  4B 43 D9 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C39158  7F E3 FB 78 */	mr r3, r31
/* 80C3915C  4B FF FE 1D */	bl bg_check__15daItemKantera_cFv
/* 80C39160  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80C39164  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C39168  41 82 00 3C */	beq lbl_80C391A4
/* 80C3916C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80C39170  60 00 00 10 */	ori r0, r0, 0x10
/* 80C39174  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C39178  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80C3917C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80C39180  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C39184  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C39188  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80C3918C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80C39190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C39194  40 80 00 1C */	bge lbl_80C391B0
/* 80C39198  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C3919C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C391A0  48 00 00 10 */	b lbl_80C391B0
lbl_80C391A4:
/* 80C391A4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80C391A8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C391AC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80C391B0:
/* 80C391B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C391B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C391B8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C391BC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80C391C0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C391C4  41 82 00 30 */	beq lbl_80C391F4
/* 80C391C8  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80C391CC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C391D0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C391D4  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80C391D8  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80C391DC  41 82 00 24 */	beq lbl_80C39200
/* 80C391E0  7F E3 FB 78 */	mr r3, r31
/* 80C391E4  4B 3E 39 BD */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80C391E8  7F E3 FB 78 */	mr r3, r31
/* 80C391EC  48 00 00 49 */	bl initActionOrderGetDemo__15daItemKantera_cFv
/* 80C391F0  48 00 00 10 */	b lbl_80C39200
lbl_80C391F4:
/* 80C391F4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80C391F8  60 00 00 10 */	ori r0, r0, 0x10
/* 80C391FC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80C39200:
/* 80C39200  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C39204  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C39208  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C3920C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C39210  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C39214  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C39218  38 60 00 01 */	li r3, 1
/* 80C3921C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C39220  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C39224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39228  7C 08 03 A6 */	mtlr r0
/* 80C3922C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39230  4E 80 00 20 */	blr 

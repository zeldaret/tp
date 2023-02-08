lbl_8069AFB4:
/* 8069AFB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8069AFB8  7C 08 02 A6 */	mflr r0
/* 8069AFBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069AFC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069AFC4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069AFC8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8069AFCC  C0 03 06 88 */	lfs f0, 0x688(r3)
/* 8069AFD0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8069AFD4  40 80 00 18 */	bge lbl_8069AFEC
/* 8069AFD8  4B 98 1E 25 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8069AFDC  2C 03 00 00 */	cmpwi r3, 0
/* 8069AFE0  40 82 00 0C */	bne lbl_8069AFEC
/* 8069AFE4  38 60 00 01 */	li r3, 1
/* 8069AFE8  48 00 00 08 */	b lbl_8069AFF0
lbl_8069AFEC:
/* 8069AFEC  38 60 00 00 */	li r3, 0
lbl_8069AFF0:
/* 8069AFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069AFF4  7C 08 03 A6 */	mtlr r0
/* 8069AFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8069AFFC  4E 80 00 20 */	blr 

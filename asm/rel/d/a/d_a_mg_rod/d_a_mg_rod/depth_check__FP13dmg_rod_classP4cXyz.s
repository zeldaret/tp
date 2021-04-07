lbl_804ABFA4:
/* 804ABFA4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804ABFA8  7C 08 02 A6 */	mflr r0
/* 804ABFAC  90 01 00 84 */	stw r0, 0x84(r1)
/* 804ABFB0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 804ABFB4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 804ABFB8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 804ABFBC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 804ABFC0  7C 7E 1B 78 */	mr r30, r3
/* 804ABFC4  7C 9F 23 78 */	mr r31, r4
/* 804ABFC8  38 61 00 14 */	addi r3, r1, 0x14
/* 804ABFCC  4B BC B5 B1 */	bl __ct__11dBgS_GndChkFv
/* 804ABFD0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804ABFD4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804ABFD8  3C 60 80 4C */	lis r3, lit_5035@ha /* 0x804BB5E8@ha */
/* 804ABFDC  C0 23 B5 E8 */	lfs f1, lit_5035@l(r3)  /* 0x804BB5E8@l */
/* 804ABFE0  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 804ABFE4  EC 01 00 2A */	fadds f0, f1, f0
/* 804ABFE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804ABFEC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804ABFF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804ABFF4  38 61 00 14 */	addi r3, r1, 0x14
/* 804ABFF8  38 81 00 08 */	addi r4, r1, 8
/* 804ABFFC  4B DB BD 11 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 804AC000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AC004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AC008  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804AC00C  38 81 00 14 */	addi r4, r1, 0x14
/* 804AC010  4B BC 84 91 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804AC014  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 804AC018  EF E0 08 28 */	fsubs f31, f0, f1
/* 804AC01C  38 61 00 14 */	addi r3, r1, 0x14
/* 804AC020  38 80 FF FF */	li r4, -1
/* 804AC024  4B BC B5 CD */	bl __dt__11dBgS_GndChkFv
/* 804AC028  FC 20 F8 90 */	fmr f1, f31
/* 804AC02C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 804AC030  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 804AC034  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804AC038  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804AC03C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804AC040  7C 08 03 A6 */	mtlr r0
/* 804AC044  38 21 00 80 */	addi r1, r1, 0x80
/* 804AC048  4E 80 00 20 */	blr 

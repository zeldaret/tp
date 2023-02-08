lbl_807FD9D8:
/* 807FD9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FD9DC  7C 08 02 A6 */	mflr r0
/* 807FD9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FD9E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FD9E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FD9EC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807FD9F0  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 807FD9F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807FD9F8  40 80 00 18 */	bge lbl_807FDA10
/* 807FD9FC  4B 81 F4 01 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807FDA00  2C 03 00 00 */	cmpwi r3, 0
/* 807FDA04  40 82 00 0C */	bne lbl_807FDA10
/* 807FDA08  38 60 00 01 */	li r3, 1
/* 807FDA0C  48 00 00 08 */	b lbl_807FDA14
lbl_807FDA10:
/* 807FDA10  38 60 00 00 */	li r3, 0
lbl_807FDA14:
/* 807FDA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FDA18  7C 08 03 A6 */	mtlr r0
/* 807FDA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 807FDA20  4E 80 00 20 */	blr 

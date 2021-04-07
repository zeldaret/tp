lbl_8068A90C:
/* 8068A90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068A910  7C 08 02 A6 */	mflr r0
/* 8068A914  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068A918  88 03 05 B5 */	lbz r0, 0x5b5(r3)
/* 8068A91C  28 00 00 01 */	cmplwi r0, 1
/* 8068A920  40 82 00 0C */	bne lbl_8068A92C
/* 8068A924  38 60 00 00 */	li r3, 0
/* 8068A928  48 00 00 34 */	b lbl_8068A95C
lbl_8068A92C:
/* 8068A92C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068A930  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068A934  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8068A938  C0 03 06 88 */	lfs f0, 0x688(r3)
/* 8068A93C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8068A940  40 80 00 18 */	bge lbl_8068A958
/* 8068A944  4B 99 24 B9 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068A948  2C 03 00 00 */	cmpwi r3, 0
/* 8068A94C  40 82 00 0C */	bne lbl_8068A958
/* 8068A950  38 60 00 01 */	li r3, 1
/* 8068A954  48 00 00 08 */	b lbl_8068A95C
lbl_8068A958:
/* 8068A958  38 60 00 00 */	li r3, 0
lbl_8068A95C:
/* 8068A95C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068A960  7C 08 03 A6 */	mtlr r0
/* 8068A964  38 21 00 10 */	addi r1, r1, 0x10
/* 8068A968  4E 80 00 20 */	blr 

lbl_8011BD6C:
/* 8011BD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011BD70  7C 08 02 A6 */	mflr r0
/* 8011BD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011BD78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011BD7C  7C 7F 1B 78 */	mr r31, r3
/* 8011BD80  38 80 00 B2 */	li r4, 0xb2
/* 8011BD84  4B FA 70 21 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011BD88  2C 03 00 00 */	cmpwi r3, 0
/* 8011BD8C  40 82 00 0C */	bne lbl_8011BD98
/* 8011BD90  38 60 00 00 */	li r3, 0
/* 8011BD94  48 00 00 48 */	b lbl_8011BDDC
lbl_8011BD98:
/* 8011BD98  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011BD9C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011BDA0  7F E3 FB 78 */	mr r3, r31
/* 8011BDA4  38 80 00 00 */	li r4, 0
/* 8011BDA8  38 A0 00 00 */	li r5, 0
/* 8011BDAC  4B FA 55 31 */	bl deleteEquipItem__9daAlink_cFii
/* 8011BDB0  38 00 00 40 */	li r0, 0x40
/* 8011BDB4  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 8011BDB8  7F E3 FB 78 */	mr r3, r31
/* 8011BDBC  4B FA 3C 35 */	bl setItemActor__9daAlink_cFv
/* 8011BDC0  7F E3 FB 78 */	mr r3, r31
/* 8011BDC4  38 80 00 BB */	li r4, 0xbb
/* 8011BDC8  3C A0 80 39 */	lis r5, m__18daAlinkHIO_boom_c0@ha
/* 8011BDCC  38 A5 E6 C8 */	addi r5, r5, m__18daAlinkHIO_boom_c0@l
/* 8011BDD0  38 A5 00 14 */	addi r5, r5, 0x14
/* 8011BDD4  4B F9 13 21 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8011BDD8  38 60 00 01 */	li r3, 1
lbl_8011BDDC:
/* 8011BDDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011BDE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BDE4  7C 08 03 A6 */	mtlr r0
/* 8011BDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011BDEC  4E 80 00 20 */	blr 

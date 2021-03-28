lbl_801120C8:
/* 801120C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801120CC  7C 08 02 A6 */	mflr r0
/* 801120D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801120D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801120D8  7C 7F 1B 78 */	mr r31, r3
/* 801120DC  38 80 00 00 */	li r4, 0
/* 801120E0  4B FA 11 B9 */	bl setBStatus__9daAlink_cFUc
/* 801120E4  A8 7F 30 10 */	lha r3, 0x3010(r31)
/* 801120E8  38 03 FF FF */	addi r0, r3, -1
/* 801120EC  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 801120F0  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 801120F4  2C 00 00 02 */	cmpwi r0, 2
/* 801120F8  40 81 00 40 */	ble lbl_80112138
/* 801120FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80112100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80112104  80 83 5D B8 */	lwz r4, 0x5db8(r3)
/* 80112108  28 04 00 00 */	cmplwi r4, 0
/* 8011210C  41 82 00 2C */	beq lbl_80112138
/* 80112110  7F E3 FB 78 */	mr r3, r31
/* 80112114  4B F0 85 FD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80112118  7C 64 1B 78 */	mr r4, r3
/* 8011211C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80112120  38 A0 00 02 */	li r5, 2
/* 80112124  38 C0 20 00 */	li r6, 0x2000
/* 80112128  38 E0 08 00 */	li r7, 0x800
/* 8011212C  48 15 E4 15 */	bl cLib_addCalcAngleS__FPsssss
/* 80112130  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80112134  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80112138:
/* 80112138  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8011213C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80112140  40 82 00 14 */	bne lbl_80112154
/* 80112144  48 06 F4 FD */	bl dCam_getBody__Fv
/* 80112148  38 00 00 02 */	li r0, 2
/* 8011214C  90 03 05 0C */	stw r0, 0x50c(r3)
/* 80112150  48 00 00 4C */	b lbl_8011219C
lbl_80112154:
/* 80112154  2C 00 00 0F */	cmpwi r0, 0xf
/* 80112158  40 82 00 14 */	bne lbl_8011216C
/* 8011215C  48 06 F4 E5 */	bl dCam_getBody__Fv
/* 80112160  38 00 00 03 */	li r0, 3
/* 80112164  90 03 05 0C */	stw r0, 0x50c(r3)
/* 80112168  48 00 00 34 */	b lbl_8011219C
lbl_8011216C:
/* 8011216C  7C 00 07 35 */	extsh. r0, r0
/* 80112170  40 82 00 2C */	bne lbl_8011219C
/* 80112174  7F E3 FB 78 */	mr r3, r31
/* 80112178  48 00 5B 19 */	bl resetSpecialEvent__9daAlink_cFv
/* 8011217C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80112180  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80112184  41 82 00 10 */	beq lbl_80112194
/* 80112188  7F E3 FB 78 */	mr r3, r31
/* 8011218C  48 01 B0 1D */	bl procWolfWaitInit__9daAlink_cFv
/* 80112190  48 00 00 0C */	b lbl_8011219C
lbl_80112194:
/* 80112194  7F E3 FB 78 */	mr r3, r31
/* 80112198  4B FB 12 21 */	bl procWaitInit__9daAlink_cFv
lbl_8011219C:
/* 8011219C  38 60 00 01 */	li r3, 1
/* 801121A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801121A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801121A8  7C 08 03 A6 */	mtlr r0
/* 801121AC  38 21 00 10 */	addi r1, r1, 0x10
/* 801121B0  4E 80 00 20 */	blr 

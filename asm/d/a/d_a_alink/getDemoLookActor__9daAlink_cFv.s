lbl_801180EC:
/* 801180EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801180F0  7C 08 02 A6 */	mflr r0
/* 801180F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801180F8  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 801180FC  2C 00 00 01 */	cmpwi r0, 1
/* 80118100  40 82 00 1C */	bne lbl_8011811C
/* 80118104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80118108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011810C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80118110  80 83 00 C4 */	lwz r4, 0xc4(r3)
/* 80118114  4B F2 B1 D9 */	bl convPId__14dEvt_control_cFUi
/* 80118118  48 00 00 48 */	b lbl_80118160
lbl_8011811C:
/* 8011811C  2C 00 00 02 */	cmpwi r0, 2
/* 80118120  40 82 00 1C */	bne lbl_8011813C
/* 80118124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80118128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011812C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80118130  80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 80118134  4B F2 B1 B9 */	bl convPId__14dEvt_control_cFUi
/* 80118138  48 00 00 28 */	b lbl_80118160
lbl_8011813C:
/* 8011813C  2C 00 00 03 */	cmpwi r0, 3
/* 80118140  40 82 00 0C */	bne lbl_8011814C
/* 80118144  4B F0 39 D1 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 80118148  48 00 00 18 */	b lbl_80118160
lbl_8011814C:
/* 8011814C  2C 00 00 04 */	cmpwi r0, 4
/* 80118150  40 82 00 0C */	bne lbl_8011815C
/* 80118154  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 80118158  48 00 00 08 */	b lbl_80118160
lbl_8011815C:
/* 8011815C  38 60 00 00 */	li r3, 0
lbl_80118160:
/* 80118160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80118164  7C 08 03 A6 */	mtlr r0
/* 80118168  38 21 00 10 */	addi r1, r1, 0x10
/* 8011816C  4E 80 00 20 */	blr 

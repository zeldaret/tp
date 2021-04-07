lbl_8011A688:
/* 8011A688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A68C  7C 08 02 A6 */	mflr r0
/* 8011A690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A694  3C A0 80 39 */	lis r5, getSeType@ha /* 0x80391A5C@ha */
/* 8011A698  38 A5 1A 5C */	addi r5, r5, getSeType@l /* 0x80391A5C@l */
/* 8011A69C  7C 85 20 AE */	lbzx r4, r5, r4
/* 8011A6A0  28 04 00 03 */	cmplwi r4, 3
/* 8011A6A4  40 82 00 14 */	bne lbl_8011A6B8
/* 8011A6A8  A8 03 30 10 */	lha r0, 0x3010(r3)
/* 8011A6AC  2C 00 00 00 */	cmpwi r0, 0
/* 8011A6B0  40 82 00 08 */	bne lbl_8011A6B8
/* 8011A6B4  38 80 00 07 */	li r4, 7
lbl_8011A6B8:
/* 8011A6B8  28 04 00 08 */	cmplwi r4, 8
/* 8011A6BC  41 82 00 30 */	beq lbl_8011A6EC
/* 8011A6C0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8011A6C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8011A6C8  54 80 10 3A */	slwi r0, r4, 2
/* 8011A6CC  3C 80 80 39 */	lis r4, bgmLabel@ha /* 0x80391B5C@ha */
/* 8011A6D0  38 84 1B 5C */	addi r4, r4, bgmLabel@l /* 0x80391B5C@l */
/* 8011A6D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8011A6D8  48 19 4D C5 */	bl subBgmStart__8Z2SeqMgrFUl
/* 8011A6DC  38 00 00 01 */	li r0, 1
/* 8011A6E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011A6E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011A6E8  98 03 5E B4 */	stb r0, 0x5eb4(r3)
lbl_8011A6EC:
/* 8011A6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A6F0  7C 08 03 A6 */	mtlr r0
/* 8011A6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A6F8  4E 80 00 20 */	blr 

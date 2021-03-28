lbl_8011E9F8:
/* 8011E9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011E9FC  7C 08 02 A6 */	mflr r0
/* 8011EA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011EA04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EA08  7C 7F 1B 78 */	mr r31, r3
/* 8011EA0C  38 80 00 E6 */	li r4, 0xe6
/* 8011EA10  4B FA 43 95 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011EA14  2C 03 00 00 */	cmpwi r3, 0
/* 8011EA18  40 82 00 0C */	bne lbl_8011EA24
/* 8011EA1C  38 60 00 01 */	li r3, 1
/* 8011EA20  48 00 00 44 */	b lbl_8011EA64
lbl_8011EA24:
/* 8011EA24  7F E3 FB 78 */	mr r3, r31
/* 8011EA28  38 80 01 97 */	li r4, 0x197
/* 8011EA2C  4B F8 E5 55 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011EA30  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011EA34  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011EA38  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8011EA3C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8011EA40  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 8011EA44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8011EA48  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 8011EA4C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8011EA50  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 8011EA54  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 8011EA58  64 00 80 00 */	oris r0, r0, 0x8000
/* 8011EA5C  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8011EA60  38 60 00 01 */	li r3, 1
lbl_8011EA64:
/* 8011EA64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011EA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011EA6C  7C 08 03 A6 */	mtlr r0
/* 8011EA70  38 21 00 10 */	addi r1, r1, 0x10
/* 8011EA74  4E 80 00 20 */	blr 

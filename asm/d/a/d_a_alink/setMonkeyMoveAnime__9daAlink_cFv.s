lbl_8011BC14:
/* 8011BC14  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 8011BC18  2C 00 00 00 */	cmpwi r0, 0
/* 8011BC1C  40 82 00 1C */	bne lbl_8011BC38
/* 8011BC20  38 00 00 FE */	li r0, 0xfe
/* 8011BC24  98 03 2F 92 */	stb r0, 0x2f92(r3)
/* 8011BC28  98 03 2F 93 */	stb r0, 0x2f93(r3)
/* 8011BC2C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011BC30  D0 03 1F E0 */	stfs f0, 0x1fe0(r3)
/* 8011BC34  48 00 00 1C */	b lbl_8011BC50
lbl_8011BC38:
/* 8011BC38  38 00 00 02 */	li r0, 2
/* 8011BC3C  98 03 2F 92 */	stb r0, 0x2f92(r3)
/* 8011BC40  38 00 00 05 */	li r0, 5
/* 8011BC44  98 03 2F 93 */	stb r0, 0x2f93(r3)
/* 8011BC48  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011BC4C  D0 03 1F E0 */	stfs f0, 0x1fe0(r3)
lbl_8011BC50:
/* 8011BC50  C0 03 1F E0 */	lfs f0, 0x1fe0(r3)
/* 8011BC54  80 83 1F 2C */	lwz r4, 0x1f2c(r3)
/* 8011BC58  D0 04 00 08 */	stfs f0, 8(r4)
/* 8011BC5C  80 03 06 10 */	lwz r0, 0x610(r3)
/* 8011BC60  B0 03 30 88 */	sth r0, 0x3088(r3)
/* 8011BC64  A8 03 30 88 */	lha r0, 0x3088(r3)
/* 8011BC68  7C 00 0E 70 */	srawi r0, r0, 1
/* 8011BC6C  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 8011BC70  4E 80 00 20 */	blr 

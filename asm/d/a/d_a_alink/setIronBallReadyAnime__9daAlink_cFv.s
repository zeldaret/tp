lbl_8011510C:
/* 8011510C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80115110  7C 08 02 A6 */	mflr r0
/* 80115114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80115118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011511C  93 C1 00 08 */	stw r30, 8(r1)
/* 80115120  7C 7E 1B 78 */	mr r30, r3
/* 80115124  38 80 00 02 */	li r4, 2
/* 80115128  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8011512C  4B F9 85 F9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 80115130  7F C3 F3 78 */	mr r3, r30
/* 80115134  38 80 01 62 */	li r4, 0x162
/* 80115138  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha /* 0x8038EA70@ha */
/* 8011513C  3B E5 EA 70 */	addi r31, r5, m__22daAlinkHIO_ironBall_c0@l /* 0x8038EA70@l */
/* 80115140  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80115144  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 80115148  38 A0 00 15 */	li r5, 0x15
/* 8011514C  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80115150  4B F9 7E BD */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 80115154  7F C3 F3 78 */	mr r3, r30
/* 80115158  38 80 01 9A */	li r4, 0x19a
/* 8011515C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80115160  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 80115164  4B F9 82 45 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 80115168  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011516C  D0 1E 1F 50 */	stfs f0, 0x1f50(r30)
/* 80115170  7F C3 F3 78 */	mr r3, r30
/* 80115174  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010027@ha */
/* 80115178  38 84 00 27 */	addi r4, r4, 0x0027 /* 0x00010027@l */
/* 8011517C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80115180  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80115184  7D 89 03 A6 */	mtctr r12
/* 80115188  4E 80 04 21 */	bctrl 
/* 8011518C  80 1E 0F B8 */	lwz r0, 0xfb8(r30)
/* 80115190  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80115194  90 1E 0F B8 */	stw r0, 0xfb8(r30)
/* 80115198  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 8011519C  4B F6 F1 7D */	bl ResetAtHit__12dCcD_GObjInfFv
/* 801151A0  38 00 00 02 */	li r0, 2
/* 801151A4  98 1E 0F CC */	stb r0, 0xfcc(r30)
/* 801151A8  38 00 00 0A */	li r0, 0xa
/* 801151AC  B0 1E 30 1E */	sth r0, 0x301e(r30)
/* 801151B0  38 00 00 00 */	li r0, 0
/* 801151B4  B0 1E 30 20 */	sth r0, 0x3020(r30)
/* 801151B8  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 801151BC  D0 1E 34 94 */	stfs f0, 0x3494(r30)
/* 801151C0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801151C4  D0 1E 34 90 */	stfs f0, 0x3490(r30)
/* 801151C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801151CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801151D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801151D4  7C 08 03 A6 */	mtlr r0
/* 801151D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801151DC  4E 80 00 20 */	blr 

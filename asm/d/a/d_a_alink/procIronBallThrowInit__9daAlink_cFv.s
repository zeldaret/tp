lbl_8011577C:
/* 8011577C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80115780  7C 08 02 A6 */	mflr r0
/* 80115784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80115788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011578C  7C 7F 1B 78 */	mr r31, r3
/* 80115790  38 80 00 DA */	li r4, 0xda
/* 80115794  4B FA C7 D9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80115798  7F E3 FB 78 */	mr r3, r31
/* 8011579C  38 80 01 62 */	li r4, 0x162
/* 801157A0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha /* 0x8038EA70@ha */
/* 801157A4  38 C5 EA 70 */	addi r6, r5, m__22daAlinkHIO_ironBall_c0@l /* 0x8038EA70@l */
/* 801157A8  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 801157AC  C0 42 96 50 */	lfs f2, lit_34957(r2)
/* 801157B0  38 A0 00 1E */	li r5, 0x1e
/* 801157B4  C0 66 00 30 */	lfs f3, 0x30(r6)
/* 801157B8  4B F9 78 55 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 801157BC  38 00 00 0C */	li r0, 0xc
/* 801157C0  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 801157C4  3C 60 80 42 */	lis r3, l_ironBallBaseAnime@ha /* 0x8042552C@ha */
/* 801157C8  C4 03 55 2C */	lfsu f0, l_ironBallBaseAnime@l(r3)  /* 0x8042552C@l */
/* 801157CC  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 801157D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801157D4  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 801157D8  C0 03 00 08 */	lfs f0, 8(r3)
/* 801157DC  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 801157E0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801157E4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801157E8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801157EC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801157F0  38 60 00 00 */	li r3, 0
/* 801157F4  B0 7F 30 0C */	sth r3, 0x300c(r31)
/* 801157F8  38 00 00 03 */	li r0, 3
/* 801157FC  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80115800  B0 7F 30 24 */	sth r3, 0x3024(r31)
/* 80115804  B0 7F 30 26 */	sth r3, 0x3026(r31)
/* 80115808  7F E3 FB 78 */	mr r3, r31
/* 8011580C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010028@ha */
/* 80115810  38 84 00 28 */	addi r4, r4, 0x0028 /* 0x00010028@l */
/* 80115814  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80115818  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011581C  7D 89 03 A6 */	mtctr r12
/* 80115820  4E 80 04 21 */	bctrl 
/* 80115824  7F E3 FB 78 */	mr r3, r31
/* 80115828  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020032@ha */
/* 8011582C  38 84 00 32 */	addi r4, r4, 0x0032 /* 0x00020032@l */
/* 80115830  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80115834  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80115838  7D 89 03 A6 */	mtctr r12
/* 8011583C  4E 80 04 21 */	bctrl 
/* 80115840  38 00 00 03 */	li r0, 3
/* 80115844  98 1F 0F CC */	stb r0, 0xfcc(r31)
/* 80115848  38 60 00 01 */	li r3, 1
/* 8011584C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80115850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80115854  7C 08 03 A6 */	mtlr r0
/* 80115858  38 21 00 10 */	addi r1, r1, 0x10
/* 8011585C  4E 80 00 20 */	blr 

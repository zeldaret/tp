lbl_800C6850:
/* 800C6850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C6854  7C 08 02 A6 */	mflr r0
/* 800C6858  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C685C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C6860  7C 7F 1B 78 */	mr r31, r3
/* 800C6864  38 80 00 17 */	li r4, 0x17
/* 800C6868  4B FF B7 05 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C686C  7F E3 FB 78 */	mr r3, r31
/* 800C6870  38 80 00 EF */	li r4, 0xef
/* 800C6874  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C6878  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 800C687C  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 800C6880  C0 45 00 80 */	lfs f2, 0x80(r5)
/* 800C6884  4B FE 67 5D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800C6888  C0 1F 34 10 */	lfs f0, 0x3410(r31)
/* 800C688C  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800C6890  C0 1F 34 10 */	lfs f0, 0x3410(r31)
/* 800C6894  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C6898  C0 1F 34 14 */	lfs f0, 0x3414(r31)
/* 800C689C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800C68A0  A8 1F 30 EE */	lha r0, 0x30ee(r31)
/* 800C68A4  B0 1F 2F E6 */	sth r0, 0x2fe6(r31)
/* 800C68A8  A8 1F 30 EE */	lha r0, 0x30ee(r31)
/* 800C68AC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800C68B0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C68B4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C68B8  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800C68BC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800C68C0  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 800C68C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C68C8  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800C68CC  38 00 00 01 */	li r0, 1
/* 800C68D0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 800C68D4  7F E3 FB 78 */	mr r3, r31
/* 800C68D8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010025@ha */
/* 800C68DC  38 84 00 25 */	addi r4, r4, 0x0025 /* 0x00010025@l */
/* 800C68E0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C68E4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C68E8  7D 89 03 A6 */	mtctr r12
/* 800C68EC  4E 80 04 21 */	bctrl 
/* 800C68F0  7F E3 FB 78 */	mr r3, r31
/* 800C68F4  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002005B@ha */
/* 800C68F8  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0002005B@l */
/* 800C68FC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C6900  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800C6904  7D 89 03 A6 */	mtctr r12
/* 800C6908  4E 80 04 21 */	bctrl 
/* 800C690C  38 00 00 01 */	li r0, 1
/* 800C6910  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C6914  38 60 00 01 */	li r3, 1
/* 800C6918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C691C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C6920  7C 08 03 A6 */	mtlr r0
/* 800C6924  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6928  4E 80 00 20 */	blr 

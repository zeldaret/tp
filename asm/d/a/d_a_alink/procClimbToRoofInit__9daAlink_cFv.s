lbl_801003E4:
/* 801003E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801003E8  7C 08 02 A6 */	mflr r0
/* 801003EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801003F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801003F4  7C 7F 1B 78 */	mr r31, r3
/* 801003F8  38 80 00 85 */	li r4, 0x85
/* 801003FC  4B FC 1B 71 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80100400  7F E3 FB 78 */	mr r3, r31
/* 80100404  38 80 00 A8 */	li r4, 0xa8
/* 80100408  4B FA CB 79 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8010040C  7F E3 FB 78 */	mr r3, r31
/* 80100410  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80100414  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 80100418  38 80 00 00 */	li r4, 0
/* 8010041C  4B FB B3 55 */	bl setSpecialGravity__9daAlink_cFffi
/* 80100420  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80100424  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80100428  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8010042C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80100430  38 00 00 0A */	li r0, 0xa
/* 80100434  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80100438  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010043C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80100440  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80100444  60 00 00 08 */	ori r0, r0, 8
/* 80100448  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010044C  38 60 00 01 */	li r3, 1
/* 80100450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80100454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80100458  7C 08 03 A6 */	mtlr r0
/* 8010045C  38 21 00 10 */	addi r1, r1, 0x10
/* 80100460  4E 80 00 20 */	blr 

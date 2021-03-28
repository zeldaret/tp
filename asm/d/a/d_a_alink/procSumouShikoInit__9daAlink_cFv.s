lbl_800EC538:
/* 800EC538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EC53C  7C 08 02 A6 */	mflr r0
/* 800EC540  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EC544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EC548  7C 7F 1B 78 */	mr r31, r3
/* 800EC54C  38 80 00 D4 */	li r4, 0xd4
/* 800EC550  4B FD 68 55 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EC554  2C 03 00 00 */	cmpwi r3, 0
/* 800EC558  40 82 00 0C */	bne lbl_800EC564
/* 800EC55C  38 60 00 00 */	li r3, 0
/* 800EC560  48 00 00 80 */	b lbl_800EC5E0
lbl_800EC564:
/* 800EC564  7F E3 FB 78 */	mr r3, r31
/* 800EC568  38 80 01 5D */	li r4, 0x15d
/* 800EC56C  4B FC 0A 15 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EC570  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EC574  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800EC578  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 800EC57C  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 800EC580  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800EC584  C0 03 00 04 */	lfs f0, 4(r3)
/* 800EC588  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800EC58C  C0 03 00 08 */	lfs f0, 8(r3)
/* 800EC590  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800EC594  C0 1F 35 88 */	lfs f0, 0x3588(r31)
/* 800EC598  D0 1F 34 D4 */	stfs f0, 0x34d4(r31)
/* 800EC59C  C0 1F 35 8C */	lfs f0, 0x358c(r31)
/* 800EC5A0  D0 1F 34 D8 */	stfs f0, 0x34d8(r31)
/* 800EC5A4  C0 1F 35 90 */	lfs f0, 0x3590(r31)
/* 800EC5A8  D0 1F 34 DC */	stfs f0, 0x34dc(r31)
/* 800EC5AC  38 00 00 0C */	li r0, 0xc
/* 800EC5B0  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EC5B4  38 00 00 00 */	li r0, 0
/* 800EC5B8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EC5BC  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EC5C0  7F E3 FB 78 */	mr r3, r31
/* 800EC5C4  38 80 00 05 */	li r4, 5
/* 800EC5C8  48 03 4B F9 */	bl setFootEffectProcType__9daAlink_cFi
/* 800EC5CC  7F E3 FB 78 */	mr r3, r31
/* 800EC5D0  38 80 00 00 */	li r4, 0
/* 800EC5D4  38 A0 00 01 */	li r5, 1
/* 800EC5D8  4B FD 4D 05 */	bl deleteEquipItem__9daAlink_cFii
/* 800EC5DC  38 60 00 01 */	li r3, 1
lbl_800EC5E0:
/* 800EC5E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EC5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EC5E8  7C 08 03 A6 */	mtlr r0
/* 800EC5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800EC5F0  4E 80 00 20 */	blr 

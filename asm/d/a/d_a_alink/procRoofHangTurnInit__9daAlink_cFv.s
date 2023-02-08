lbl_801013B8:
/* 801013B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801013BC  7C 08 02 A6 */	mflr r0
/* 801013C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801013C4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801013C8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801013CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801013D0  7C 7F 1B 78 */	mr r31, r3
/* 801013D4  38 80 00 8A */	li r4, 0x8a
/* 801013D8  4B FC 0B 95 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801013DC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 801013E0  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 801013E4  7C 03 00 50 */	subf r0, r3, r0
/* 801013E8  7C 00 07 35 */	extsh. r0, r0
/* 801013EC  40 80 00 6C */	bge lbl_80101458
/* 801013F0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_roofHang_c0@ha /* 0x8038EBFC@ha */
/* 801013F4  38 63 EB FC */	addi r3, r3, m__22daAlinkHIO_roofHang_c0@l /* 0x8038EBFC@l */
/* 801013F8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 801013FC  FF E0 00 50 */	fneg f31, f0
/* 80101400  38 00 00 01 */	li r0, 1
/* 80101404  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80101408  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8010140C  3C 63 00 01 */	addis r3, r3, 1
/* 80101410  38 03 80 00 */	addi r0, r3, -32768
/* 80101414  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80101418  7F E3 FB 78 */	mr r3, r31
/* 8010141C  38 80 00 00 */	li r4, 0
/* 80101420  38 A0 80 00 */	li r5, -32768
/* 80101424  38 C0 00 00 */	li r6, 0
/* 80101428  4B FA C7 51 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 8010142C  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 80101430  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80101434  C0 02 95 B4 */	lfs f0, lit_26275(r2)
/* 80101438  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8010143C  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 80101440  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80101444  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80101448  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8010144C  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 80101450  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 80101454  48 00 00 38 */	b lbl_8010148C
lbl_80101458:
/* 80101458  3C 60 80 39 */	lis r3, m__22daAlinkHIO_roofHang_c0@ha /* 0x8038EBFC@ha */
/* 8010145C  38 63 EB FC */	addi r3, r3, m__22daAlinkHIO_roofHang_c0@l /* 0x8038EBFC@l */
/* 80101460  C3 E3 00 44 */	lfs f31, 0x44(r3)
/* 80101464  38 00 00 00 */	li r0, 0
/* 80101468  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8010146C  A8 7F 2F E2 */	lha r3, 0x2fe2(r31)
/* 80101470  3C 63 00 01 */	addis r3, r3, 1
/* 80101474  38 03 80 00 */	addi r0, r3, -32768
/* 80101478  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8010147C  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 80101480  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 80101484  C0 02 95 B8 */	lfs f0, lit_26276(r2)
/* 80101488  D0 1F 34 7C */	stfs f0, 0x347c(r31)
lbl_8010148C:
/* 8010148C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80101490  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80101494  7F E3 FB 78 */	mr r3, r31
/* 80101498  38 80 00 AD */	li r4, 0xad
/* 8010149C  FC 20 F8 90 */	fmr f1, f31
/* 801014A0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_roofHang_c0@ha /* 0x8038EBFC@ha */
/* 801014A4  38 A5 EB FC */	addi r5, r5, m__22daAlinkHIO_roofHang_c0@l /* 0x8038EBFC@l */
/* 801014A8  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 801014AC  4B FA BB 35 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 801014B0  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 801014B4  2C 00 00 00 */	cmpwi r0, 0
/* 801014B8  41 82 00 14 */	beq lbl_801014CC
/* 801014BC  7F E3 FB 78 */	mr r3, r31
/* 801014C0  38 80 00 04 */	li r4, 4
/* 801014C4  4B FA E3 DD */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 801014C8  48 00 00 10 */	b lbl_801014D8
lbl_801014CC:
/* 801014CC  7F E3 FB 78 */	mr r3, r31
/* 801014D0  38 80 00 03 */	li r4, 3
/* 801014D4  4B FA E3 CD */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
lbl_801014D8:
/* 801014D8  38 00 00 04 */	li r0, 4
/* 801014DC  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 801014E0  7F E3 FB 78 */	mr r3, r31
/* 801014E4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801014E8  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 801014EC  38 80 00 00 */	li r4, 0
/* 801014F0  4B FB A2 81 */	bl setSpecialGravity__9daAlink_cFffi
/* 801014F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801014F8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801014FC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80101500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80101504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80101508  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010150C  64 00 00 10 */	oris r0, r0, 0x10
/* 80101510  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 80101514  38 60 00 01 */	li r3, 1
/* 80101518  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8010151C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80101520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80101524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80101528  7C 08 03 A6 */	mtlr r0
/* 8010152C  38 21 00 20 */	addi r1, r1, 0x20
/* 80101530  4E 80 00 20 */	blr 

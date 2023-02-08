lbl_800F38E8:
/* 800F38E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F38EC  7C 08 02 A6 */	mflr r0
/* 800F38F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F38F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F38F8  7C 7F 1B 78 */	mr r31, r3
/* 800F38FC  38 80 00 53 */	li r4, 0x53
/* 800F3900  4B FC E6 6D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F3904  7F E3 FB 78 */	mr r3, r31
/* 800F3908  38 80 00 02 */	li r4, 2
/* 800F390C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F3910  4B FB 9E 15 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F3914  7F E3 FB 78 */	mr r3, r31
/* 800F3918  38 80 00 02 */	li r4, 2
/* 800F391C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F3920  4B FB A1 CD */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
/* 800F3924  38 00 00 00 */	li r0, 0
/* 800F3928  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800F392C  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800F3930  C0 22 95 0C */	lfs f1, lit_20496(r2)
/* 800F3934  48 17 40 21 */	bl cM_rndF__Ff
/* 800F3938  C0 02 95 08 */	lfs f0, lit_20495(r2)
/* 800F393C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F3940  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800F3944  7F E3 FB 78 */	mr r3, r31
/* 800F3948  38 80 00 61 */	li r4, 0x61
/* 800F394C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800F3950  C0 42 93 24 */	lfs f2, lit_7450(r2)
/* 800F3954  4B FB 96 8D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800F3958  38 00 00 00 */	li r0, 0
/* 800F395C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F3960  7F E3 FB 78 */	mr r3, r31
/* 800F3964  4B FF 9E 29 */	bl setSyncBoarPos__9daAlink_cFv
/* 800F3968  38 00 00 00 */	li r0, 0
/* 800F396C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F3970  7F E3 FB 78 */	mr r3, r31
/* 800F3974  38 80 00 00 */	li r4, 0
/* 800F3978  38 A0 00 00 */	li r5, 0
/* 800F397C  4B FC D9 61 */	bl deleteEquipItem__9daAlink_cFii
/* 800F3980  38 60 00 01 */	li r3, 1
/* 800F3984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F3988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F398C  7C 08 03 A6 */	mtlr r0
/* 800F3990  38 21 00 10 */	addi r1, r1, 0x10
/* 800F3994  4E 80 00 20 */	blr 

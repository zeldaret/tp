lbl_800C38CC:
/* 800C38CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C38D0  7C 08 02 A6 */	mflr r0
/* 800C38D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C38D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C38DC  7C 7F 1B 78 */	mr r31, r3
/* 800C38E0  38 80 00 06 */	li r4, 6
/* 800C38E4  4B FF F4 C1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C38E8  2C 03 00 00 */	cmpwi r3, 0
/* 800C38EC  40 82 00 0C */	bne lbl_800C38F8
/* 800C38F0  38 60 00 00 */	li r3, 0
/* 800C38F4  48 00 00 74 */	b lbl_800C3968
lbl_800C38F8:
/* 800C38F8  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 800C38FC  28 04 00 00 */	cmplwi r4, 0
/* 800C3900  41 82 00 0C */	beq lbl_800C390C
/* 800C3904  7F E3 FB 78 */	mr r3, r31
/* 800C3908  4B F5 6E 09 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
lbl_800C390C:
/* 800C390C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C3910  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C3914  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800C3918  28 00 00 02 */	cmplwi r0, 2
/* 800C391C  41 82 00 0C */	beq lbl_800C3928
/* 800C3920  38 00 00 03 */	li r0, 3
/* 800C3924  98 1F 2F 98 */	stb r0, 0x2f98(r31)
lbl_800C3928:
/* 800C3928  7F E3 FB 78 */	mr r3, r31
/* 800C392C  4B FE F9 85 */	bl checkAtnWaitAnime__9daAlink_cFv
/* 800C3930  2C 03 00 00 */	cmpwi r3, 0
/* 800C3934  41 82 00 1C */	beq lbl_800C3950
/* 800C3938  7F E3 FB 78 */	mr r3, r31
/* 800C393C  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C3940  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C3944  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800C3948  4B FE B1 29 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800C394C  48 00 00 18 */	b lbl_800C3964
lbl_800C3950:
/* 800C3950  7F E3 FB 78 */	mr r3, r31
/* 800C3954  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C3958  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C395C  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800C3960  4B FE A4 B5 */	bl setBlendMoveAnime__9daAlink_cFf
lbl_800C3964:
/* 800C3964  38 60 00 01 */	li r3, 1
lbl_800C3968:
/* 800C3968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C396C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3970  7C 08 03 A6 */	mtlr r0
/* 800C3974  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3978  4E 80 00 20 */	blr 

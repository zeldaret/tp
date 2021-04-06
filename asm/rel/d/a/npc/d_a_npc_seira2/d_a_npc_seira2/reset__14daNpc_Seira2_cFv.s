lbl_80AD1834:
/* 80AD1834  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD1838  7C 08 02 A6 */	mflr r0
/* 80AD183C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD1840  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD1844  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AD1848  7C 7F 1B 78 */	mr r31, r3
/* 80AD184C  3C 60 80 AD */	lis r3, m__20daNpc_Seira2_Param_c@ha /* 0x80AD4A60@ha */
/* 80AD1850  3B C3 4A 60 */	addi r30, r3, m__20daNpc_Seira2_Param_c@l /* 0x80AD4A60@l */
/* 80AD1854  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AD1858  38 80 00 00 */	li r4, 0
/* 80AD185C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AD1860  7C A3 00 50 */	subf r5, r3, r0
/* 80AD1864  4B 53 1B F5 */	bl memset
/* 80AD1868  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD186C  4B 67 40 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD1870  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD1874  4B 67 40 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD1878  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AD187C  4B 67 3E 59 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD1880  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AD1884  4B 67 3E 51 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD1888  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD188C  4B 67 54 0D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AD1890  38 60 00 00 */	li r3, 0
/* 80AD1894  38 80 00 00 */	li r4, 0
/* 80AD1898  7C 87 23 78 */	mr r7, r4
/* 80AD189C  7C 86 23 78 */	mr r6, r4
/* 80AD18A0  7C 85 23 78 */	mr r5, r4
/* 80AD18A4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AD18A8  38 00 00 02 */	li r0, 2
/* 80AD18AC  7C 09 03 A6 */	mtctr r0
lbl_80AD18B0:
/* 80AD18B0  7D 1F 22 14 */	add r8, r31, r4
/* 80AD18B4  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80AD18B8  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80AD18BC  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80AD18C0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AD18C4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AD18C8  38 63 00 04 */	addi r3, r3, 4
/* 80AD18CC  38 84 00 06 */	addi r4, r4, 6
/* 80AD18D0  42 00 FF E0 */	bdnz lbl_80AD18B0
/* 80AD18D4  38 00 00 00 */	li r0, 0
/* 80AD18D8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AD18DC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AD18E0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AD18E4  38 00 FF FF */	li r0, -1
/* 80AD18E8  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AD18EC  38 00 00 01 */	li r0, 1
/* 80AD18F0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AD18F4  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80AD18F8  4B 79 60 5D */	bl cM_rndF__Ff
/* 80AD18FC  FC 00 08 1E */	fctiwz f0, f1
/* 80AD1900  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AD1904  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AD1908  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD190C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AD1910  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AD1914  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AD1918  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80AD191C  38 80 00 00 */	li r4, 0
/* 80AD1920  38 1F 10 F0 */	addi r0, r31, 0x10f0
/* 80AD1924  7C A3 00 50 */	subf r5, r3, r0
/* 80AD1928  4B 53 1B 31 */	bl memset
/* 80AD192C  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AD1930  28 03 00 00 */	cmplwi r3, 0
/* 80AD1934  41 82 00 08 */	beq lbl_80AD193C
/* 80AD1938  4B 67 3E 2D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AD193C:
/* 80AD193C  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80AD1940  4B 67 3D 95 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD1944  7F E3 FB 78 */	mr r3, r31
/* 80AD1948  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AD194C  4B 67 90 CD */	bl setAngle__8daNpcT_cFs
/* 80AD1950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD1954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AD1958  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD195C  7C 08 03 A6 */	mtlr r0
/* 80AD1960  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD1964  4E 80 00 20 */	blr 

lbl_8013A7EC:
/* 8013A7EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013A7F0  7C 08 02 A6 */	mflr r0
/* 8013A7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013A7F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013A7FC  7C 7F 1B 78 */	mr r31, r3
/* 8013A800  38 80 01 1D */	li r4, 0x11d
/* 8013A804  4B F8 77 69 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013A808  7F E3 FB 78 */	mr r3, r31
/* 8013A80C  38 80 00 6C */	li r4, 0x6c
/* 8013A810  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlAtCjump_c0@ha /* 0x8038F5B4@ha */
/* 8013A814  38 A5 F5 B4 */	addi r5, r5, m__23daAlinkHIO_wlAtCjump_c0@l /* 0x8038F5B4@l */
/* 8013A818  38 A5 00 14 */	addi r5, r5, 0x14
/* 8013A81C  4B FE F0 2D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013A820  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013A824  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 8013A828  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 8013A82C  7F E3 FB 78 */	mr r3, r31
/* 8013A830  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8013A834  38 80 00 00 */	li r4, 0
/* 8013A838  4B F8 0F 39 */	bl setSpecialGravity__9daAlink_cFffi
/* 8013A83C  7F E3 FB 78 */	mr r3, r31
/* 8013A840  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010038@ha */
/* 8013A844  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x00010038@l */
/* 8013A848  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013A84C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013A850  7D 89 03 A6 */	mtctr r12
/* 8013A854  4E 80 04 21 */	bctrl 
/* 8013A858  7F E3 FB 78 */	mr r3, r31
/* 8013A85C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020009@ha */
/* 8013A860  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00020009@l */
/* 8013A864  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013A868  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013A86C  7D 89 03 A6 */	mtctr r12
/* 8013A870  4E 80 04 21 */	bctrl 
/* 8013A874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013A878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013A87C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013A880  64 00 00 20 */	oris r0, r0, 0x20
/* 8013A884  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8013A888  38 60 00 01 */	li r3, 1
/* 8013A88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013A890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013A894  7C 08 03 A6 */	mtlr r0
/* 8013A898  38 21 00 10 */	addi r1, r1, 0x10
/* 8013A89C  4E 80 00 20 */	blr 

lbl_8013D588:
/* 8013D588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013D58C  7C 08 02 A6 */	mflr r0
/* 8013D590  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013D594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013D598  93 C1 00 08 */	stw r30, 8(r1)
/* 8013D59C  7C 7E 1B 78 */	mr r30, r3
/* 8013D5A0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 8013D5A4  28 00 01 2C */	cmplwi r0, 0x12c
/* 8013D5A8  40 82 00 0C */	bne lbl_8013D5B4
/* 8013D5AC  38 60 00 00 */	li r3, 0
/* 8013D5B0  48 00 00 94 */	b lbl_8013D644
lbl_8013D5B4:
/* 8013D5B4  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 8013D5B8  20 00 02 DA */	subfic r0, r0, 0x2da
/* 8013D5BC  7C 00 00 34 */	cntlzw r0, r0
/* 8013D5C0  54 1F DE 3E */	rlwinm r31, r0, 0x1b, 0x18, 0x1f
/* 8013D5C4  38 80 01 2C */	li r4, 0x12c
/* 8013D5C8  4B F8 49 A5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013D5CC  2C 1F 00 00 */	cmpwi r31, 0
/* 8013D5D0  41 82 00 38 */	beq lbl_8013D608
/* 8013D5D4  7F C3 F3 78 */	mr r3, r30
/* 8013D5D8  38 80 00 47 */	li r4, 0x47
/* 8013D5DC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlGrab_c0@ha
/* 8013D5E0  38 A5 F9 5C */	addi r5, r5, m__20daAlinkHIO_wlGrab_c0@l
/* 8013D5E4  38 A5 00 14 */	addi r5, r5, 0x14
/* 8013D5E8  4B FE C2 61 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013D5EC  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 8013D5F0  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8013D5F4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlGrab_c0@ha
/* 8013D5F8  38 63 F9 5C */	addi r3, r3, m__20daAlinkHIO_wlGrab_c0@l
/* 8013D5FC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8013D600  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 8013D604  48 00 00 34 */	b lbl_8013D638
lbl_8013D608:
/* 8013D608  7F C3 F3 78 */	mr r3, r30
/* 8013D60C  38 80 00 4E */	li r4, 0x4e
/* 8013D610  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlGrab_c0@ha
/* 8013D614  38 A5 F9 5C */	addi r5, r5, m__20daAlinkHIO_wlGrab_c0@l
/* 8013D618  38 A5 00 3C */	addi r5, r5, 0x3c
/* 8013D61C  4B FE C2 2D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013D620  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 8013D624  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8013D628  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlGrab_c0@ha
/* 8013D62C  38 63 F9 5C */	addi r3, r3, m__20daAlinkHIO_wlGrab_c0@l
/* 8013D630  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8013D634  D0 1E 34 7C */	stfs f0, 0x347c(r30)
lbl_8013D638:
/* 8013D638  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013D63C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8013D640  38 60 00 01 */	li r3, 1
lbl_8013D644:
/* 8013D644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013D648  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013D64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013D650  7C 08 03 A6 */	mtlr r0
/* 8013D654  38 21 00 10 */	addi r1, r1, 0x10
/* 8013D658  4E 80 00 20 */	blr 

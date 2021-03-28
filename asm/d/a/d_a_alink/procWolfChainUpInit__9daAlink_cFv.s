lbl_8013DDF8:
/* 8013DDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013DDFC  7C 08 02 A6 */	mflr r0
/* 8013DE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013DE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013DE08  7C 7F 1B 78 */	mr r31, r3
/* 8013DE0C  4B FA 9B ED */	bl searchFmChainPos__9daAlink_cFv
/* 8013DE10  98 7F 2F A3 */	stb r3, 0x2fa3(r31)
/* 8013DE14  88 1F 2F A3 */	lbz r0, 0x2fa3(r31)
/* 8013DE18  28 00 00 00 */	cmplwi r0, 0
/* 8013DE1C  40 82 00 10 */	bne lbl_8013DE2C
/* 8013DE20  7F E3 FB 78 */	mr r3, r31
/* 8013DE24  4B FE F3 85 */	bl procWolfWaitInit__9daAlink_cFv
/* 8013DE28  48 00 00 34 */	b lbl_8013DE5C
lbl_8013DE2C:
/* 8013DE2C  7F E3 FB 78 */	mr r3, r31
/* 8013DE30  38 80 01 2E */	li r4, 0x12e
/* 8013DE34  4B F8 41 39 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013DE38  7F E3 FB 78 */	mr r3, r31
/* 8013DE3C  38 80 00 4E */	li r4, 0x4e
/* 8013DE40  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlGrab_c0@ha
/* 8013DE44  38 A5 F9 5C */	addi r5, r5, m__20daAlinkHIO_wlGrab_c0@l
/* 8013DE48  38 A5 00 28 */	addi r5, r5, 0x28
/* 8013DE4C  4B FE B9 FD */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013DE50  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013DE54  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013DE58  38 60 00 01 */	li r3, 1
lbl_8013DE5C:
/* 8013DE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013DE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013DE64  7C 08 03 A6 */	mtlr r0
/* 8013DE68  38 21 00 10 */	addi r1, r1, 0x10
/* 8013DE6C  4E 80 00 20 */	blr 

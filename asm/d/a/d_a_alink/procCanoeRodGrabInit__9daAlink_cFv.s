lbl_800F6320:
/* 800F6320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6324  7C 08 02 A6 */	mflr r0
/* 800F6328  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F632C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6330  7C 7F 1B 78 */	mr r31, r3
/* 800F6334  38 80 00 94 */	li r4, 0x94
/* 800F6338  4B FC BC 35 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F633C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F6340  28 00 00 FF */	cmplwi r0, 0xff
/* 800F6344  41 82 00 1C */	beq lbl_800F6360
/* 800F6348  7F E3 FB 78 */	mr r3, r31
/* 800F634C  38 80 00 00 */	li r4, 0
/* 800F6350  4B FC 34 ED */	bl allUnequip__9daAlink_cFi
/* 800F6354  38 00 00 01 */	li r0, 1
/* 800F6358  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800F635C  48 00 00 18 */	b lbl_800F6374
lbl_800F6360:
/* 800F6360  7F E3 FB 78 */	mr r3, r31
/* 800F6364  38 80 00 E4 */	li r4, 0xe4
/* 800F6368  4B FB 6C 19 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F636C  38 00 00 00 */	li r0, 0
/* 800F6370  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800F6374:
/* 800F6374  7F E3 FB 78 */	mr r3, r31
/* 800F6378  4B FF E2 25 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F637C  38 60 00 01 */	li r3, 1
/* 800F6380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6388  7C 08 03 A6 */	mtlr r0
/* 800F638C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6390  4E 80 00 20 */	blr 

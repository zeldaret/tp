lbl_801301E4:
/* 801301E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801301E8  7C 08 02 A6 */	mflr r0
/* 801301EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801301F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801301F4  7C 7F 1B 78 */	mr r31, r3
/* 801301F8  38 80 01 11 */	li r4, 0x111
/* 801301FC  4B F9 2B A9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80130200  2C 03 00 00 */	cmpwi r3, 0
/* 80130204  40 82 00 0C */	bne lbl_80130210
/* 80130208  38 60 00 00 */	li r3, 0
/* 8013020C  48 00 00 48 */	b lbl_80130254
lbl_80130210:
/* 80130210  7F E3 FB 78 */	mr r3, r31
/* 80130214  38 80 00 1C */	li r4, 0x1c
/* 80130218  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8013021C  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 80130220  C0 25 00 B8 */	lfs f1, 0xb8(r5)
/* 80130224  C0 45 00 BC */	lfs f2, 0xbc(r5)
/* 80130228  4B FF 94 B1 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8013022C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80130230  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80130234  7F E3 FB 78 */	mr r3, r31
/* 80130238  4B FF BF BD */	bl setWolfWaitSlip__9daAlink_cFv
/* 8013023C  38 00 00 78 */	li r0, 0x78
/* 80130240  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 80130244  7F E3 FB 78 */	mr r3, r31
/* 80130248  38 80 00 01 */	li r4, 1
/* 8013024C  4B FF 0F 75 */	bl setFootEffectProcType__9daAlink_cFi
/* 80130250  38 60 00 01 */	li r3, 1
lbl_80130254:
/* 80130254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013025C  7C 08 03 A6 */	mtlr r0
/* 80130260  38 21 00 10 */	addi r1, r1, 0x10
/* 80130264  4E 80 00 20 */	blr 

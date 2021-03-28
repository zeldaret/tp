lbl_800E2308:
/* 800E2308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E230C  7C 08 02 A6 */	mflr r0
/* 800E2310  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E2314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E2318  7C 7F 1B 78 */	mr r31, r3
/* 800E231C  38 80 00 66 */	li r4, 0x66
/* 800E2320  4B FE 0A 85 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E2324  2C 03 00 00 */	cmpwi r3, 0
/* 800E2328  40 82 00 0C */	bne lbl_800E2334
/* 800E232C  38 60 00 01 */	li r3, 1
/* 800E2330  48 00 00 60 */	b lbl_800E2390
lbl_800E2334:
/* 800E2334  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 800E2338  2C 00 00 00 */	cmpwi r0, 0
/* 800E233C  40 82 00 3C */	bne lbl_800E2378
/* 800E2340  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E2344  28 00 00 46 */	cmplwi r0, 0x46
/* 800E2348  41 82 00 24 */	beq lbl_800E236C
/* 800E234C  7F E3 FB 78 */	mr r3, r31
/* 800E2350  38 80 00 00 */	li r4, 0
/* 800E2354  38 A0 00 00 */	li r5, 0
/* 800E2358  4B FD EF 85 */	bl deleteEquipItem__9daAlink_cFii
/* 800E235C  38 00 00 46 */	li r0, 0x46
/* 800E2360  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800E2364  7F E3 FB 78 */	mr r3, r31
/* 800E2368  4B FF F3 E1 */	bl setCopyRodModel__9daAlink_cFv
lbl_800E236C:
/* 800E236C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E2370  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 800E2374  D0 03 00 08 */	stfs f0, 8(r3)
lbl_800E2378:
/* 800E2378  7F E3 FB 78 */	mr r3, r31
/* 800E237C  38 80 01 7A */	li r4, 0x17a
/* 800E2380  4B FC AC 01 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E2384  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E2388  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E238C  38 60 00 01 */	li r3, 1
lbl_800E2390:
/* 800E2390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E2394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E2398  7C 08 03 A6 */	mtlr r0
/* 800E239C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E23A0  4E 80 00 20 */	blr 

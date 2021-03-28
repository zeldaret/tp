lbl_80CC2364:
/* 80CC2364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC2368  7C 08 02 A6 */	mflr r0
/* 80CC236C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC2370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC2374  7C 7F 1B 78 */	mr r31, r3
/* 80CC2378  88 03 05 BC */	lbz r0, 0x5bc(r3)
/* 80CC237C  28 00 00 00 */	cmplwi r0, 0
/* 80CC2380  41 82 00 30 */	beq lbl_80CC23B0
/* 80CC2384  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80CC2388  4B 5A 5E 4C */	b ChkUsed__9cBgW_BgIdCFv
/* 80CC238C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC2390  41 82 00 18 */	beq lbl_80CC23A8
/* 80CC2394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC2398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC239C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC23A0  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80CC23A4  4B 3B 1E AC */	b Release__4cBgSFP9dBgW_Base
lbl_80CC23A8:
/* 80CC23A8  38 00 00 00 */	li r0, 0
/* 80CC23AC  98 1F 05 BC */	stb r0, 0x5bc(r31)
lbl_80CC23B0:
/* 80CC23B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC23B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC23B8  7C 08 03 A6 */	mtlr r0
/* 80CC23BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC23C0  4E 80 00 20 */	blr 

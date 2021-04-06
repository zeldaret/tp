lbl_800E191C:
/* 800E191C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1920  7C 08 02 A6 */	mflr r0
/* 800E1924  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E192C  93 C1 00 08 */	stw r30, 8(r1)
/* 800E1930  7C 7F 1B 78 */	mr r31, r3
/* 800E1934  83 C3 28 28 */	lwz r30, 0x2828(r3)
/* 800E1938  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800E193C  64 00 00 01 */	oris r0, r0, 1
/* 800E1940  90 03 05 74 */	stw r0, 0x574(r3)
/* 800E1944  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800E1948  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 800E194C  7D 89 03 A6 */	mtctr r12
/* 800E1950  4E 80 04 21 */	bctrl 
/* 800E1954  2C 03 00 00 */	cmpwi r3, 0
/* 800E1958  41 82 00 30 */	beq lbl_800E1988
/* 800E195C  38 00 00 02 */	li r0, 2
/* 800E1960  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 800E1964  80 1F 28 24 */	lwz r0, 0x2824(r31)
/* 800E1968  90 1F 28 3C */	stw r0, 0x283c(r31)
/* 800E196C  80 1F 28 28 */	lwz r0, 0x2828(r31)
/* 800E1970  90 1F 28 40 */	stw r0, 0x2840(r31)
/* 800E1974  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800E1978  64 00 00 04 */	oris r0, r0, 4
/* 800E197C  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800E1980  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800E1984  48 07 D3 79 */	bl clearData__16daPy_actorKeep_cFv
lbl_800E1988:
/* 800E1988  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E198C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E1990  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800E1994  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800E1998  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800E199C  38 00 FF FF */	li r0, -1
/* 800E19A0  B0 1F 30 8E */	sth r0, 0x308e(r31)
/* 800E19A4  7F E3 FB 78 */	mr r3, r31
/* 800E19A8  3C 80 00 01 */	lis r4, 1
/* 800E19AC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E19B0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E19B4  7D 89 03 A6 */	mtctr r12
/* 800E19B8  4E 80 04 21 */	bctrl 
/* 800E19BC  7F E3 FB 78 */	mr r3, r31
/* 800E19C0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002006A@ha */
/* 800E19C4  38 84 00 6A */	addi r4, r4, 0x006A /* 0x0002006A@l */
/* 800E19C8  4B FD D7 25 */	bl seStartSwordCut__9daAlink_cFUl
/* 800E19CC  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800E19D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800E19D4  41 82 00 44 */	beq lbl_800E1A18
/* 800E19D8  7F E3 FB 78 */	mr r3, r31
/* 800E19DC  4B FD 1F 29 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800E19E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E19E4  41 82 00 18 */	beq lbl_800E19FC
/* 800E19E8  38 00 00 03 */	li r0, 3
/* 800E19EC  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800E19F0  7F E3 FB 78 */	mr r3, r31
/* 800E19F4  4B FE 1E D9 */	bl procAtnActorWaitInit__9daAlink_cFv
/* 800E19F8  48 00 00 0C */	b lbl_800E1A04
lbl_800E19FC:
/* 800E19FC  7F E3 FB 78 */	mr r3, r31
/* 800E1A00  4B FE 1F ED */	bl procAtnActorMoveInit__9daAlink_cFv
lbl_800E1A04:
/* 800E1A04  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800E1A08  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E1A0C  38 80 00 00 */	li r4, 0
/* 800E1A10  38 A0 00 23 */	li r5, 0x23
/* 800E1A14  4B F2 DE 35 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800E1A18:
/* 800E1A18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E1A1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E1A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1A24  7C 08 03 A6 */	mtlr r0
/* 800E1A28  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1A2C  4E 80 00 20 */	blr 

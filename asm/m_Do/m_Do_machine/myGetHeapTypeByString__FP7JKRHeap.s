lbl_8000B1EC:
/* 8000B1EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000B1F0  7C 08 02 A6 */	mflr r0
/* 8000B1F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000B1F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8000B1FC  7C 7F 1B 78 */	mr r31, r3
/* 8000B200  80 0D 8D F0 */	lwz r0, sSystemHeap__7JKRHeap(r13)
/* 8000B204  7C 1F 00 40 */	cmplw r31, r0
/* 8000B208  40 82 00 10 */	bne lbl_8000B218
/* 8000B20C  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B210  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B214  48 00 01 C4 */	b lbl_8000B3D8
lbl_8000B218:
/* 8000B218  48 00 3B 69 */	bl mDoExt_getZeldaHeap__Fv
/* 8000B21C  7C 1F 18 40 */	cmplw r31, r3
/* 8000B220  40 82 00 14 */	bne lbl_8000B234
/* 8000B224  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B228  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B22C  38 63 00 0B */	addi r3, r3, 0xb
/* 8000B230  48 00 01 A8 */	b lbl_8000B3D8
lbl_8000B234:
/* 8000B234  48 00 3B 1D */	bl mDoExt_getGameHeap__Fv
/* 8000B238  7C 1F 18 40 */	cmplw r31, r3
/* 8000B23C  40 82 00 14 */	bne lbl_8000B250
/* 8000B240  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B244  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B248  38 63 00 15 */	addi r3, r3, 0x15
/* 8000B24C  48 00 01 8C */	b lbl_8000B3D8
lbl_8000B250:
/* 8000B250  48 00 3B 9D */	bl mDoExt_getArchiveHeap__Fv
/* 8000B254  7C 1F 18 40 */	cmplw r31, r3
/* 8000B258  40 82 00 14 */	bne lbl_8000B26C
/* 8000B25C  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B260  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B264  38 63 00 1E */	addi r3, r3, 0x1e
/* 8000B268  48 00 01 70 */	b lbl_8000B3D8
lbl_8000B26C:
/* 8000B26C  48 00 3B 45 */	bl mDoExt_getCommandHeap__Fv
/* 8000B270  7C 1F 18 40 */	cmplw r31, r3
/* 8000B274  40 82 00 14 */	bne lbl_8000B288
/* 8000B278  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B27C  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B280  38 63 00 2A */	addi r3, r3, 0x2a
/* 8000B284  48 00 01 54 */	b lbl_8000B3D8
lbl_8000B288:
/* 8000B288  48 00 3A 8D */	bl mDoExt_getDbPrintHeap__Fv
/* 8000B28C  7C 1F 18 40 */	cmplw r31, r3
/* 8000B290  40 82 00 14 */	bne lbl_8000B2A4
/* 8000B294  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B298  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B29C  38 63 00 36 */	addi r3, r3, 0x36
/* 8000B2A0  48 00 01 38 */	b lbl_8000B3D8
lbl_8000B2A4:
/* 8000B2A4  48 00 3B 8D */	bl mDoExt_getJ2dHeap__Fv
/* 8000B2A8  7C 1F 18 40 */	cmplw r31, r3
/* 8000B2AC  40 82 00 14 */	bne lbl_8000B2C0
/* 8000B2B0  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B2B4  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B2B8  38 63 00 42 */	addi r3, r3, 0x42
/* 8000B2BC  48 00 01 1C */	b lbl_8000B3D8
lbl_8000B2C0:
/* 8000B2C0  7F E3 FB 78 */	mr r3, r31
/* 8000B2C4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000B2C8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000B2CC  7D 89 03 A6 */	mtctr r12
/* 8000B2D0  4E 80 04 21 */	bctrl 
/* 8000B2D4  3C 80 53 4C */	lis r4, 0x534C /* 0x534C4944@ha */
/* 8000B2D8  38 04 49 44 */	addi r0, r4, 0x4944 /* 0x534C4944@l */
/* 8000B2DC  7C 03 00 00 */	cmpw r3, r0
/* 8000B2E0  41 82 00 84 */	beq lbl_8000B364
/* 8000B2E4  40 80 00 38 */	bge lbl_8000B31C
/* 8000B2E8  3C 80 41 53 */	lis r4, 0x4153 /* 0x41535448@ha */
/* 8000B2EC  38 04 54 48 */	addi r0, r4, 0x5448 /* 0x41535448@l */
/* 8000B2F0  7C 03 00 00 */	cmpw r3, r0
/* 8000B2F4  41 82 00 50 */	beq lbl_8000B344
/* 8000B2F8  40 80 00 10 */	bge lbl_8000B308
/* 8000B2FC  2C 03 00 00 */	cmpwi r3, 0
/* 8000B300  41 82 00 94 */	beq lbl_8000B394
/* 8000B304  48 00 00 A0 */	b lbl_8000B3A4
lbl_8000B308:
/* 8000B308  3C 80 45 58 */	lis r4, 0x4558 /* 0x45585048@ha */
/* 8000B30C  38 04 50 48 */	addi r0, r4, 0x5048 /* 0x45585048@l */
/* 8000B310  7C 03 00 00 */	cmpw r3, r0
/* 8000B314  41 82 00 40 */	beq lbl_8000B354
/* 8000B318  48 00 00 8C */	b lbl_8000B3A4
lbl_8000B31C:
/* 8000B31C  3C 80 55 4E */	lis r4, 0x554E /* 0x554E4954@ha */
/* 8000B320  38 04 49 54 */	addi r0, r4, 0x4954 /* 0x554E4954@l */
/* 8000B324  7C 03 00 00 */	cmpw r3, r0
/* 8000B328  41 82 00 5C */	beq lbl_8000B384
/* 8000B32C  40 80 00 78 */	bge lbl_8000B3A4
/* 8000B330  3C 80 53 54 */	lis r4, 0x5354 /* 0x53544448@ha */
/* 8000B334  38 04 44 48 */	addi r0, r4, 0x4448 /* 0x53544448@l */
/* 8000B338  7C 03 00 00 */	cmpw r3, r0
/* 8000B33C  41 82 00 38 */	beq lbl_8000B374
/* 8000B340  48 00 00 64 */	b lbl_8000B3A4
lbl_8000B344:
/* 8000B344  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B348  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B34C  38 63 00 4A */	addi r3, r3, 0x4a
/* 8000B350  48 00 00 88 */	b lbl_8000B3D8
lbl_8000B354:
/* 8000B354  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B358  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B35C  38 63 00 4F */	addi r3, r3, 0x4f
/* 8000B360  48 00 00 78 */	b lbl_8000B3D8
lbl_8000B364:
/* 8000B364  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B368  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B36C  38 63 00 54 */	addi r3, r3, 0x54
/* 8000B370  48 00 00 68 */	b lbl_8000B3D8
lbl_8000B374:
/* 8000B374  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B378  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B37C  38 63 00 59 */	addi r3, r3, 0x59
/* 8000B380  48 00 00 58 */	b lbl_8000B3D8
lbl_8000B384:
/* 8000B384  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B388  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B38C  38 63 00 5E */	addi r3, r3, 0x5e
/* 8000B390  48 00 00 48 */	b lbl_8000B3D8
lbl_8000B394:
/* 8000B394  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000B398  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000B39C  38 63 00 63 */	addi r3, r3, 0x63
/* 8000B3A0  48 00 00 38 */	b lbl_8000B3D8
lbl_8000B3A4:
/* 8000B3A4  90 61 00 08 */	stw r3, 8(r1)
/* 8000B3A8  88 01 00 08 */	lbz r0, 8(r1)
/* 8000B3AC  98 0D 86 90 */	stb r0, struct_80450C10+0x0(r13)
/* 8000B3B0  88 01 00 09 */	lbz r0, 9(r1)
/* 8000B3B4  38 6D 86 90 */	la r3, struct_80450C10+0x0(r13) /* 80450C10-_SDA_BASE_ */
/* 8000B3B8  98 03 00 01 */	stb r0, 1(r3)
/* 8000B3BC  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8000B3C0  98 03 00 02 */	stb r0, 2(r3)
/* 8000B3C4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8000B3C8  98 03 00 03 */	stb r0, 3(r3)
/* 8000B3CC  38 00 00 00 */	li r0, 0
/* 8000B3D0  98 03 00 04 */	stb r0, 4(r3)
/* 8000B3D4  38 6D 86 90 */	la r3, struct_80450C10+0x0(r13) /* 80450C10-_SDA_BASE_ */
lbl_8000B3D8:
/* 8000B3D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8000B3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000B3E0  7C 08 03 A6 */	mtlr r0
/* 8000B3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8000B3E8  4E 80 00 20 */	blr 

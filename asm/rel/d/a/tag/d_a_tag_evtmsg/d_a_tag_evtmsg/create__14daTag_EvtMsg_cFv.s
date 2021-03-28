lbl_8048CF38:
/* 8048CF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CF3C  7C 08 02 A6 */	mflr r0
/* 8048CF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CF48  93 C1 00 08 */	stw r30, 8(r1)
/* 8048CF4C  7C 7F 1B 78 */	mr r31, r3
/* 8048CF50  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048CF54  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048CF58  40 82 00 34 */	bne lbl_8048CF8C
/* 8048CF5C  7F E0 FB 79 */	or. r0, r31, r31
/* 8048CF60  41 82 00 20 */	beq lbl_8048CF80
/* 8048CF64  7C 1E 03 78 */	mr r30, r0
/* 8048CF68  4B B8 BB FC */	b __ct__10fopAc_ac_cFv
/* 8048CF6C  3C 60 80 49 */	lis r3, __vt__14daTag_EvtMsg_c@ha
/* 8048CF70  38 03 D8 D4 */	addi r0, r3, __vt__14daTag_EvtMsg_c@l
/* 8048CF74  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 8048CF78  38 7E 05 74 */	addi r3, r30, 0x574
/* 8048CF7C  4B DB CF 84 */	b __ct__10dMsgFlow_cFv
lbl_8048CF80:
/* 8048CF80  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8048CF84  60 00 00 08 */	ori r0, r0, 8
/* 8048CF88  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048CF8C:
/* 8048CF8C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048CF90  3C 60 80 49 */	lis r3, lit_3826@ha
/* 8048CF94  C0 23 D7 E8 */	lfs f1, lit_3826@l(r3)
/* 8048CF98  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048CF9C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048CFA0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048CFA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048CFA8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048CFAC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048CFB0  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048CFB4  A8 7F 04 B8 */	lha r3, 0x4b8(r31)
/* 8048CFB8  3C 03 00 00 */	addis r0, r3, 0
/* 8048CFBC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048CFC0  41 82 00 0C */	beq lbl_8048CFCC
/* 8048CFC4  90 7F 05 6C */	stw r3, 0x56c(r31)
/* 8048CFC8  48 00 00 0C */	b lbl_8048CFD4
lbl_8048CFCC:
/* 8048CFCC  38 00 FF FF */	li r0, -1
/* 8048CFD0  90 1F 05 6C */	stw r0, 0x56c(r31)
lbl_8048CFD4:
/* 8048CFD4  38 00 FF FF */	li r0, -1
/* 8048CFD8  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 8048CFDC  38 00 00 00 */	li r0, 0
/* 8048CFE0  98 1F 05 72 */	stb r0, 0x572(r31)
/* 8048CFE4  7F E3 FB 78 */	mr r3, r31
/* 8048CFE8  48 00 03 9D */	bl isDelete__14daTag_EvtMsg_cFv
/* 8048CFEC  2C 03 00 01 */	cmpwi r3, 1
/* 8048CFF0  38 60 00 04 */	li r3, 4
/* 8048CFF4  40 82 00 08 */	bne lbl_8048CFFC
/* 8048CFF8  38 60 00 05 */	li r3, 5
lbl_8048CFFC:
/* 8048CFFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D000  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048D004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D008  7C 08 03 A6 */	mtlr r0
/* 8048D00C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D010  4E 80 00 20 */	blr 

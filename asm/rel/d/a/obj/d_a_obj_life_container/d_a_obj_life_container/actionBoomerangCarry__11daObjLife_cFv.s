lbl_804CDD0C:
/* 804CDD0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CDD10  7C 08 02 A6 */	mflr r0
/* 804CDD14  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CDD18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804CDD1C  7C 7F 1B 78 */	mr r31, r3
/* 804CDD20  38 00 00 FE */	li r0, 0xfe
/* 804CDD24  B0 01 00 08 */	sth r0, 8(r1)
/* 804CDD28  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 804CDD2C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 804CDD30  38 81 00 08 */	addi r4, r1, 8
/* 804CDD34  4B B4 BA C4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804CDD38  28 03 00 00 */	cmplwi r3, 0
/* 804CDD3C  41 82 00 20 */	beq lbl_804CDD5C
/* 804CDD40  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804CDD44  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804CDD48  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 804CDD4C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804CDD50  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 804CDD54  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804CDD58  48 00 00 0C */	b lbl_804CDD64
lbl_804CDD5C:
/* 804CDD5C  7F E3 FB 78 */	mr r3, r31
/* 804CDD60  4B FF F8 59 */	bl actionWaitInit__11daObjLife_cFv
lbl_804CDD64:
/* 804CDD64  38 60 00 01 */	li r3, 1
/* 804CDD68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804CDD6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CDD70  7C 08 03 A6 */	mtlr r0
/* 804CDD74  38 21 00 20 */	addi r1, r1, 0x20
/* 804CDD78  4E 80 00 20 */	blr 

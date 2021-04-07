lbl_805917B8:
/* 805917B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805917BC  7C 08 02 A6 */	mflr r0
/* 805917C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805917C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805917C8  7C 7F 1B 78 */	mr r31, r3
/* 805917CC  80 03 0A 18 */	lwz r0, 0xa18(r3)
/* 805917D0  90 01 00 08 */	stw r0, 8(r1)
/* 805917D4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805917D8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805917DC  38 81 00 08 */	addi r4, r1, 8
/* 805917E0  4B A8 80 19 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805917E4  28 03 00 00 */	cmplwi r3, 0
/* 805917E8  41 82 00 0C */	beq lbl_805917F4
/* 805917EC  38 00 00 01 */	li r0, 1
/* 805917F0  98 03 07 00 */	stb r0, 0x700(r3)
lbl_805917F4:
/* 805917F4  7F E3 FB 78 */	mr r3, r31
/* 805917F8  48 00 04 01 */	bl setMagneHoleEffect__11daObjMarm_cFv
/* 805917FC  38 00 00 00 */	li r0, 0
/* 80591800  98 1F 0A 17 */	stb r0, 0xa17(r31)
/* 80591804  38 00 00 01 */	li r0, 1
/* 80591808  98 1F 0A 14 */	stb r0, 0xa14(r31)
/* 8059180C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80591810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591814  7C 08 03 A6 */	mtlr r0
/* 80591818  38 21 00 20 */	addi r1, r1, 0x20
/* 8059181C  4E 80 00 20 */	blr 

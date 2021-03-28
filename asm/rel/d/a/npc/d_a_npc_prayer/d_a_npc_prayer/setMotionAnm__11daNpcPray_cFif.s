lbl_80AB3B0C:
/* 80AB3B0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB3B10  7C 08 02 A6 */	mflr r0
/* 80AB3B14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB3B18  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80AB3B1C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80AB3B20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB3B24  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB3B28  7C 7F 1B 78 */	mr r31, r3
/* 80AB3B2C  FF E0 08 90 */	fmr f31, f1
/* 80AB3B30  1F C4 00 0C */	mulli r30, r4, 0xc
/* 80AB3B34  3C 80 80 AB */	lis r4, l_bckGetParamList@ha
/* 80AB3B38  38 A4 59 A4 */	addi r5, r4, l_bckGetParamList@l
/* 80AB3B3C  7C 85 F2 14 */	add r4, r5, r30
/* 80AB3B40  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB3B44  54 00 10 3A */	slwi r0, r0, 2
/* 80AB3B48  3C 80 80 AB */	lis r4, l_arcNames@ha
/* 80AB3B4C  38 84 59 EC */	addi r4, r4, l_arcNames@l
/* 80AB3B50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AB3B54  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80AB3B58  4B 69 EF D4 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AB3B5C  7C 64 1B 79 */	or. r4, r3, r3
/* 80AB3B60  3C 60 80 AB */	lis r3, l_bckGetParamList@ha
/* 80AB3B64  38 03 59 A4 */	addi r0, r3, l_bckGetParamList@l
/* 80AB3B68  7C 60 F2 14 */	add r3, r0, r30
/* 80AB3B6C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AB3B70  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80AB3B74  38 00 FF F6 */	li r0, -10
/* 80AB3B78  7C 60 00 38 */	and r0, r3, r0
/* 80AB3B7C  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80AB3B80  41 82 00 3C */	beq lbl_80AB3BBC
/* 80AB3B84  7F E3 FB 78 */	mr r3, r31
/* 80AB3B88  3C C0 80 AB */	lis r6, lit_4220@ha
/* 80AB3B8C  C0 26 58 84 */	lfs f1, lit_4220@l(r6)
/* 80AB3B90  FC 40 F8 90 */	fmr f2, f31
/* 80AB3B94  38 C0 00 00 */	li r6, 0
/* 80AB3B98  38 E0 FF FF */	li r7, -1
/* 80AB3B9C  4B 69 F0 80 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80AB3BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80AB3BA4  41 82 00 18 */	beq lbl_80AB3BBC
/* 80AB3BA8  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80AB3BAC  60 00 00 09 */	ori r0, r0, 9
/* 80AB3BB0  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80AB3BB4  38 00 00 00 */	li r0, 0
/* 80AB3BB8  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80AB3BBC:
/* 80AB3BBC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80AB3BC0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80AB3BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB3BC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB3BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB3BD0  7C 08 03 A6 */	mtlr r0
/* 80AB3BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB3BD8  4E 80 00 20 */	blr 

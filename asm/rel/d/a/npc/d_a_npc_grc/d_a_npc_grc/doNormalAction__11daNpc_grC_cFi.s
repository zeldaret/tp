lbl_809CD960:
/* 809CD960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CD964  7C 08 02 A6 */	mflr r0
/* 809CD968  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CD96C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809CD970  7C 7F 1B 78 */	mr r31, r3
/* 809CD974  2C 04 00 00 */	cmpwi r4, 0
/* 809CD978  41 82 00 5C */	beq lbl_809CD9D4
/* 809CD97C  38 9F 0C C4 */	addi r4, r31, 0xcc4
/* 809CD980  38 A0 00 01 */	li r5, 1
/* 809CD984  38 C0 00 00 */	li r6, 0
/* 809CD988  4B 78 5B F0 */	b hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 809CD98C  2C 03 00 00 */	cmpwi r3, 0
/* 809CD990  41 82 00 44 */	beq lbl_809CD9D4
/* 809CD994  7F E3 FB 78 */	mr r3, r31
/* 809CD998  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 809CD99C  2C 00 00 08 */	cmpwi r0, 8
/* 809CD9A0  40 82 00 0C */	bne lbl_809CD9AC
/* 809CD9A4  38 80 00 14 */	li r4, 0x14
/* 809CD9A8  48 00 00 10 */	b lbl_809CD9B8
lbl_809CD9AC:
/* 809CD9AC  3C 80 80 9D */	lis r4, m__17daNpc_grC_Param_c@ha
/* 809CD9B0  38 84 F5 1C */	addi r4, r4, m__17daNpc_grC_Param_c@l
/* 809CD9B4  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_809CD9B8:
/* 809CD9B8  38 A0 00 0E */	li r5, 0xe
/* 809CD9BC  38 C0 00 00 */	li r6, 0
/* 809CD9C0  4B 78 5C 98 */	b setDamage__8daNpcF_cFiii
/* 809CD9C4  7F E3 FB 78 */	mr r3, r31
/* 809CD9C8  38 80 00 01 */	li r4, 1
/* 809CD9CC  48 00 03 85 */	bl setLookMode__11daNpc_grC_cFi
/* 809CD9D0  48 00 00 28 */	b lbl_809CD9F8
lbl_809CD9D4:
/* 809CD9D4  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809CD9D8  28 00 00 00 */	cmplwi r0, 0
/* 809CD9DC  41 82 00 1C */	beq lbl_809CD9F8
/* 809CD9E0  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809CD9E4  2C 00 00 00 */	cmpwi r0, 0
/* 809CD9E8  40 82 00 10 */	bne lbl_809CD9F8
/* 809CD9EC  38 00 00 00 */	li r0, 0
/* 809CD9F0  B0 1F 0E 46 */	sth r0, 0xe46(r31)
/* 809CD9F4  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_809CD9F8:
/* 809CD9F8  38 00 00 00 */	li r0, 0
/* 809CD9FC  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809CDA00  38 7F 0E 00 */	addi r3, r31, 0xe00
/* 809CDA04  4B 99 46 14 */	b __ptmf_test
/* 809CDA08  2C 03 00 00 */	cmpwi r3, 0
/* 809CDA0C  41 82 00 54 */	beq lbl_809CDA60
/* 809CDA10  38 7F 0E 0C */	addi r3, r31, 0xe0c
/* 809CDA14  38 9F 0E 00 */	addi r4, r31, 0xe00
/* 809CDA18  4B 99 46 30 */	b __ptmf_cmpr
/* 809CDA1C  2C 03 00 00 */	cmpwi r3, 0
/* 809CDA20  40 82 00 1C */	bne lbl_809CDA3C
/* 809CDA24  7F E3 FB 78 */	mr r3, r31
/* 809CDA28  38 80 00 00 */	li r4, 0
/* 809CDA2C  39 9F 0E 0C */	addi r12, r31, 0xe0c
/* 809CDA30  4B 99 46 54 */	b __ptmf_scall
/* 809CDA34  60 00 00 00 */	nop 
/* 809CDA38  48 00 00 28 */	b lbl_809CDA60
lbl_809CDA3C:
/* 809CDA3C  80 7F 0E 00 */	lwz r3, 0xe00(r31)
/* 809CDA40  80 1F 0E 04 */	lwz r0, 0xe04(r31)
/* 809CDA44  90 61 00 08 */	stw r3, 8(r1)
/* 809CDA48  90 01 00 0C */	stw r0, 0xc(r1)
/* 809CDA4C  80 1F 0E 08 */	lwz r0, 0xe08(r31)
/* 809CDA50  90 01 00 10 */	stw r0, 0x10(r1)
/* 809CDA54  7F E3 FB 78 */	mr r3, r31
/* 809CDA58  38 81 00 08 */	addi r4, r1, 8
/* 809CDA5C  4B FF FD 65 */	bl setAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i
lbl_809CDA60:
/* 809CDA60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809CDA64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CDA68  7C 08 03 A6 */	mtlr r0
/* 809CDA6C  38 21 00 20 */	addi r1, r1, 0x20
/* 809CDA70  4E 80 00 20 */	blr 

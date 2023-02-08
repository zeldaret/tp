lbl_809DD960:
/* 809DD960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DD964  7C 08 02 A6 */	mflr r0
/* 809DD968  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DD96C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DD970  93 C1 00 08 */	stw r30, 8(r1)
/* 809DD974  7C 7F 1B 78 */	mr r31, r3
/* 809DD978  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809DD97C  2C 00 00 02 */	cmpwi r0, 2
/* 809DD980  41 82 00 74 */	beq lbl_809DD9F4
/* 809DD984  40 80 01 C8 */	bge lbl_809DDB4C
/* 809DD988  2C 00 00 00 */	cmpwi r0, 0
/* 809DD98C  41 82 00 0C */	beq lbl_809DD998
/* 809DD990  48 00 01 BC */	b lbl_809DDB4C
/* 809DD994  48 00 01 B8 */	b lbl_809DDB4C
lbl_809DD998:
/* 809DD998  38 80 00 0B */	li r4, 0xb
/* 809DD99C  3C A0 80 9E */	lis r5, lit_4812@ha /* 0x809DF01C@ha */
/* 809DD9A0  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)  /* 0x809DF01C@l */
/* 809DD9A4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809DD9A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DD9AC  7D 89 03 A6 */	mtctr r12
/* 809DD9B0  4E 80 04 21 */	bctrl 
/* 809DD9B4  7F E3 FB 78 */	mr r3, r31
/* 809DD9B8  38 80 00 04 */	li r4, 4
/* 809DD9BC  3C A0 80 9E */	lis r5, lit_4812@ha /* 0x809DF01C@ha */
/* 809DD9C0  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)  /* 0x809DF01C@l */
/* 809DD9C4  38 A0 00 00 */	li r5, 0
/* 809DD9C8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809DD9CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809DD9D0  7D 89 03 A6 */	mtctr r12
/* 809DD9D4  4E 80 04 21 */	bctrl 
/* 809DD9D8  7F E3 FB 78 */	mr r3, r31
/* 809DD9DC  38 80 00 00 */	li r4, 0
/* 809DD9E0  4B FF F9 F9 */	bl setLookMode__11daNpc_grO_cFi
/* 809DD9E4  38 00 00 00 */	li r0, 0
/* 809DD9E8  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809DD9EC  38 00 00 02 */	li r0, 2
/* 809DD9F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809DD9F4:
/* 809DD9F4  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809DD9F8  28 00 00 00 */	cmplwi r0, 0
/* 809DD9FC  40 82 01 50 */	bne lbl_809DDB4C
/* 809DDA00  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDA04  4B 77 2C E9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809DDA08  30 03 FF FF */	addic r0, r3, -1
/* 809DDA0C  7C 00 19 10 */	subfe r0, r0, r3
/* 809DDA10  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 809DDA14  7F E3 FB 78 */	mr r3, r31
/* 809DDA18  7F C4 F3 78 */	mr r4, r30
/* 809DDA1C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809DDA20  4B 77 6F C1 */	bl chkFindPlayer2__8daNpcF_cFis
/* 809DDA24  2C 03 00 00 */	cmpwi r3, 0
/* 809DDA28  41 82 00 2C */	beq lbl_809DDA54
/* 809DDA2C  2C 1E 00 00 */	cmpwi r30, 0
/* 809DDA30  40 82 00 3C */	bne lbl_809DDA6C
/* 809DDA34  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDA38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DDA3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DDA40  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809DDA44  4B 77 2C 79 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809DDA48  38 00 00 00 */	li r0, 0
/* 809DDA4C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809DDA50  48 00 00 1C */	b lbl_809DDA6C
lbl_809DDA54:
/* 809DDA54  2C 1E 00 00 */	cmpwi r30, 0
/* 809DDA58  41 82 00 14 */	beq lbl_809DDA6C
/* 809DDA5C  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDA60  4B 77 2C 81 */	bl remove__18daNpcF_ActorMngr_cFv
/* 809DDA64  38 00 00 00 */	li r0, 0
/* 809DDA68  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809DDA6C:
/* 809DDA6C  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDA70  4B 77 2C 7D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809DDA74  28 03 00 00 */	cmplwi r3, 0
/* 809DDA78  41 82 00 14 */	beq lbl_809DDA8C
/* 809DDA7C  7F E3 FB 78 */	mr r3, r31
/* 809DDA80  38 80 00 02 */	li r4, 2
/* 809DDA84  4B FF F9 55 */	bl setLookMode__11daNpc_grO_cFi
/* 809DDA88  48 00 00 44 */	b lbl_809DDACC
lbl_809DDA8C:
/* 809DDA8C  7F E3 FB 78 */	mr r3, r31
/* 809DDA90  38 80 00 00 */	li r4, 0
/* 809DDA94  4B FF F9 45 */	bl setLookMode__11daNpc_grO_cFi
/* 809DDA98  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809DDA9C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809DDAA0  7C 04 00 00 */	cmpw r4, r0
/* 809DDAA4  41 82 00 28 */	beq lbl_809DDACC
/* 809DDAA8  7F E3 FB 78 */	mr r3, r31
/* 809DDAAC  38 A0 00 0C */	li r5, 0xc
/* 809DDAB0  38 C0 00 08 */	li r6, 8
/* 809DDAB4  38 E0 00 0F */	li r7, 0xf
/* 809DDAB8  4B 77 65 ED */	bl step__8daNpcF_cFsiii
/* 809DDABC  2C 03 00 00 */	cmpwi r3, 0
/* 809DDAC0  41 82 00 0C */	beq lbl_809DDACC
/* 809DDAC4  38 00 00 00 */	li r0, 0
/* 809DDAC8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809DDACC:
/* 809DDACC  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809DDAD0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809DDAD4  7C 03 00 00 */	cmpw r3, r0
/* 809DDAD8  40 82 00 6C */	bne lbl_809DDB44
/* 809DDADC  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDAE0  4B 77 2C 0D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809DDAE4  30 03 FF FF */	addic r0, r3, -1
/* 809DDAE8  7C 00 19 10 */	subfe r0, r0, r3
/* 809DDAEC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809DDAF0  7F E3 FB 78 */	mr r3, r31
/* 809DDAF4  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha /* 0x80152654@ha */
/* 809DDAF8  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l /* 0x80152654@l */
/* 809DDAFC  3C C0 80 9E */	lis r6, m__17daNpc_grO_Param_c@ha /* 0x809DEF7C@ha */
/* 809DDB00  38 C6 EF 7C */	addi r6, r6, m__17daNpc_grO_Param_c@l /* 0x809DEF7C@l */
/* 809DDB04  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 809DDB08  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 809DDB0C  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 809DDB10  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 809DDB14  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 809DDB18  38 E0 00 78 */	li r7, 0x78
/* 809DDB1C  39 00 00 01 */	li r8, 1
/* 809DDB20  4B 77 68 4D */	bl getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 809DDB24  7C 64 1B 79 */	or. r4, r3, r3
/* 809DDB28  41 82 00 24 */	beq lbl_809DDB4C
/* 809DDB2C  38 7F 0C 84 */	addi r3, r31, 0xc84
/* 809DDB30  4B 77 2B 8D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809DDB34  7F E3 FB 78 */	mr r3, r31
/* 809DDB38  38 80 00 04 */	li r4, 4
/* 809DDB3C  4B FF F8 9D */	bl setLookMode__11daNpc_grO_cFi
/* 809DDB40  48 00 00 0C */	b lbl_809DDB4C
lbl_809DDB44:
/* 809DDB44  38 00 00 00 */	li r0, 0
/* 809DDB48  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_809DDB4C:
/* 809DDB4C  38 60 00 01 */	li r3, 1
/* 809DDB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DDB54  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DDB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DDB5C  7C 08 03 A6 */	mtlr r0
/* 809DDB60  38 21 00 10 */	addi r1, r1, 0x10
/* 809DDB64  4E 80 00 20 */	blr 

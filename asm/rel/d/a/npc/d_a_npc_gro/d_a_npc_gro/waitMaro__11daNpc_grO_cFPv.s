lbl_809DDB68:
/* 809DDB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DDB6C  7C 08 02 A6 */	mflr r0
/* 809DDB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DDB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DDB78  93 C1 00 08 */	stw r30, 8(r1)
/* 809DDB7C  7C 7F 1B 78 */	mr r31, r3
/* 809DDB80  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809DDB84  2C 00 00 02 */	cmpwi r0, 2
/* 809DDB88  41 82 00 7C */	beq lbl_809DDC04
/* 809DDB8C  40 80 01 50 */	bge lbl_809DDCDC
/* 809DDB90  2C 00 00 00 */	cmpwi r0, 0
/* 809DDB94  41 82 00 0C */	beq lbl_809DDBA0
/* 809DDB98  48 00 01 44 */	b lbl_809DDCDC
/* 809DDB9C  48 00 01 40 */	b lbl_809DDCDC
lbl_809DDBA0:
/* 809DDBA0  38 80 00 07 */	li r4, 7
/* 809DDBA4  3C A0 80 9E */	lis r5, lit_4812@ha
/* 809DDBA8  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)
/* 809DDBAC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809DDBB0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DDBB4  7D 89 03 A6 */	mtctr r12
/* 809DDBB8  4E 80 04 21 */	bctrl 
/* 809DDBBC  7F E3 FB 78 */	mr r3, r31
/* 809DDBC0  38 80 00 07 */	li r4, 7
/* 809DDBC4  3C A0 80 9E */	lis r5, lit_4812@ha
/* 809DDBC8  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)
/* 809DDBCC  38 A0 00 00 */	li r5, 0
/* 809DDBD0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809DDBD4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809DDBD8  7D 89 03 A6 */	mtctr r12
/* 809DDBDC  4E 80 04 21 */	bctrl 
/* 809DDBE0  7F E3 FB 78 */	mr r3, r31
/* 809DDBE4  38 80 00 00 */	li r4, 0
/* 809DDBE8  4B FF F7 F1 */	bl setLookMode__11daNpc_grO_cFi
/* 809DDBEC  38 00 00 00 */	li r0, 0
/* 809DDBF0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809DDBF4  38 00 00 01 */	li r0, 1
/* 809DDBF8  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 809DDBFC  38 00 00 02 */	li r0, 2
/* 809DDC00  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809DDC04:
/* 809DDC04  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809DDC08  28 00 00 00 */	cmplwi r0, 0
/* 809DDC0C  40 82 00 D0 */	bne lbl_809DDCDC
/* 809DDC10  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDC14  4B 77 2A D8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809DDC18  30 03 FF FF */	addic r0, r3, -1
/* 809DDC1C  7C 00 19 10 */	subfe r0, r0, r3
/* 809DDC20  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 809DDC24  7F E3 FB 78 */	mr r3, r31
/* 809DDC28  7F C4 F3 78 */	mr r4, r30
/* 809DDC2C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809DDC30  4B 77 6D B0 */	b chkFindPlayer2__8daNpcF_cFis
/* 809DDC34  2C 03 00 00 */	cmpwi r3, 0
/* 809DDC38  41 82 00 2C */	beq lbl_809DDC64
/* 809DDC3C  2C 1E 00 00 */	cmpwi r30, 0
/* 809DDC40  40 82 00 3C */	bne lbl_809DDC7C
/* 809DDC44  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDC48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809DDC4C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809DDC50  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809DDC54  4B 77 2A 68 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809DDC58  38 00 00 00 */	li r0, 0
/* 809DDC5C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809DDC60  48 00 00 1C */	b lbl_809DDC7C
lbl_809DDC64:
/* 809DDC64  2C 1E 00 00 */	cmpwi r30, 0
/* 809DDC68  41 82 00 14 */	beq lbl_809DDC7C
/* 809DDC6C  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDC70  4B 77 2A 70 */	b remove__18daNpcF_ActorMngr_cFv
/* 809DDC74  38 00 00 00 */	li r0, 0
/* 809DDC78  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809DDC7C:
/* 809DDC7C  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809DDC80  4B 77 2A 6C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809DDC84  28 03 00 00 */	cmplwi r3, 0
/* 809DDC88  41 82 00 14 */	beq lbl_809DDC9C
/* 809DDC8C  7F E3 FB 78 */	mr r3, r31
/* 809DDC90  38 80 00 02 */	li r4, 2
/* 809DDC94  4B FF F7 45 */	bl setLookMode__11daNpc_grO_cFi
/* 809DDC98  48 00 00 44 */	b lbl_809DDCDC
lbl_809DDC9C:
/* 809DDC9C  7F E3 FB 78 */	mr r3, r31
/* 809DDCA0  38 80 00 00 */	li r4, 0
/* 809DDCA4  4B FF F7 35 */	bl setLookMode__11daNpc_grO_cFi
/* 809DDCA8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809DDCAC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809DDCB0  7C 04 00 00 */	cmpw r4, r0
/* 809DDCB4  41 82 00 28 */	beq lbl_809DDCDC
/* 809DDCB8  7F E3 FB 78 */	mr r3, r31
/* 809DDCBC  38 A0 00 0C */	li r5, 0xc
/* 809DDCC0  38 C0 00 08 */	li r6, 8
/* 809DDCC4  38 E0 00 0F */	li r7, 0xf
/* 809DDCC8  4B 77 63 DC */	b step__8daNpcF_cFsiii
/* 809DDCCC  2C 03 00 00 */	cmpwi r3, 0
/* 809DDCD0  41 82 00 0C */	beq lbl_809DDCDC
/* 809DDCD4  38 00 00 00 */	li r0, 0
/* 809DDCD8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809DDCDC:
/* 809DDCDC  38 60 00 01 */	li r3, 1
/* 809DDCE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DDCE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DDCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DDCEC  7C 08 03 A6 */	mtlr r0
/* 809DDCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809DDCF4  4E 80 00 20 */	blr 

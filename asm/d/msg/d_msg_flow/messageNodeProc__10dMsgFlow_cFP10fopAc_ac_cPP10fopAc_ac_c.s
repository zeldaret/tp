lbl_8024AB30:
/* 8024AB30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024AB34  7C 08 02 A6 */	mflr r0
/* 8024AB38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024AB3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8024AB40  48 11 76 99 */	bl _savegpr_28
/* 8024AB44  7C 7E 1B 78 */	mr r30, r3
/* 8024AB48  7C 86 23 78 */	mr r6, r4
/* 8024AB4C  7C BC 2B 78 */	mr r28, r5
/* 8024AB50  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 8024AB54  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8024AB58  54 00 18 38 */	slwi r0, r0, 3
/* 8024AB5C  7F E7 02 14 */	add r31, r7, r0
/* 8024AB60  88 03 00 25 */	lbz r0, 0x25(r3)
/* 8024AB64  28 00 00 00 */	cmplwi r0, 0
/* 8024AB68  41 82 00 B8 */	beq lbl_8024AC20
/* 8024AB6C  88 9E 00 46 */	lbz r4, 0x46(r30)
/* 8024AB70  28 04 00 00 */	cmplwi r4, 0
/* 8024AB74  41 82 00 88 */	beq lbl_8024ABFC
/* 8024AB78  A3 BF 00 04 */	lhz r29, 4(r31)
/* 8024AB7C  28 04 00 01 */	cmplwi r4, 1
/* 8024AB80  40 82 00 3C */	bne lbl_8024ABBC
/* 8024AB84  57 A0 1B 78 */	rlwinm r0, r29, 3, 0xd, 0x1c
/* 8024AB88  7C A7 02 14 */	add r5, r7, r0
/* 8024AB8C  88 05 00 00 */	lbz r0, 0(r5)
/* 8024AB90  28 00 00 01 */	cmplwi r0, 1
/* 8024AB94  40 82 00 28 */	bne lbl_8024ABBC
/* 8024AB98  7F E4 FB 78 */	mr r4, r31
/* 8024AB9C  4B FF FD C1 */	bl setSelectMsg__10dMsgFlow_cFP14mesg_flow_nodeP14mesg_flow_nodeP10fopAc_ac_c
/* 8024ABA0  2C 03 00 00 */	cmpwi r3, 0
/* 8024ABA4  41 82 00 74 */	beq lbl_8024AC18
/* 8024ABA8  B3 BE 00 10 */	sth r29, 0x10(r30)
/* 8024ABAC  38 00 00 00 */	li r0, 0
/* 8024ABB0  98 1E 00 46 */	stb r0, 0x46(r30)
/* 8024ABB4  98 1E 00 25 */	stb r0, 0x25(r30)
/* 8024ABB8  48 00 00 60 */	b lbl_8024AC18
lbl_8024ABBC:
/* 8024ABBC  28 04 00 02 */	cmplwi r4, 2
/* 8024ABC0  40 82 00 58 */	bne lbl_8024AC18
/* 8024ABC4  57 A0 1B 78 */	rlwinm r0, r29, 3, 0xd, 0x1c
/* 8024ABC8  7C 07 00 AE */	lbzx r0, r7, r0
/* 8024ABCC  28 00 00 02 */	cmplwi r0, 2
/* 8024ABD0  40 82 00 48 */	bne lbl_8024AC18
/* 8024ABD4  7F C3 F3 78 */	mr r3, r30
/* 8024ABD8  7F E4 FB 78 */	mr r4, r31
/* 8024ABDC  7C C5 33 78 */	mr r5, r6
/* 8024ABE0  4B FF FE 71 */	bl setNormalMsg__10dMsgFlow_cFP14mesg_flow_nodeP10fopAc_ac_c
/* 8024ABE4  2C 03 00 00 */	cmpwi r3, 0
/* 8024ABE8  41 82 00 30 */	beq lbl_8024AC18
/* 8024ABEC  38 00 00 00 */	li r0, 0
/* 8024ABF0  98 1E 00 46 */	stb r0, 0x46(r30)
/* 8024ABF4  98 1E 00 25 */	stb r0, 0x25(r30)
/* 8024ABF8  48 00 00 20 */	b lbl_8024AC18
lbl_8024ABFC:
/* 8024ABFC  7F E4 FB 78 */	mr r4, r31
/* 8024AC00  7C C5 33 78 */	mr r5, r6
/* 8024AC04  4B FF FE 4D */	bl setNormalMsg__10dMsgFlow_cFP14mesg_flow_nodeP10fopAc_ac_c
/* 8024AC08  2C 03 00 00 */	cmpwi r3, 0
/* 8024AC0C  41 82 00 0C */	beq lbl_8024AC18
/* 8024AC10  38 00 00 00 */	li r0, 0
/* 8024AC14  98 1E 00 25 */	stb r0, 0x25(r30)
lbl_8024AC18:
/* 8024AC18  38 60 00 00 */	li r3, 0
/* 8024AC1C  48 00 01 20 */	b lbl_8024AD3C
lbl_8024AC20:
/* 8024AC20  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8024AC24  4B DD 4E 01 */	bl fopMsgM_SearchByID__FUi
/* 8024AC28  7C 7D 1B 79 */	or. r29, r3, r3
/* 8024AC2C  40 82 00 10 */	bne lbl_8024AC3C
/* 8024AC30  38 00 00 01 */	li r0, 1
/* 8024AC34  98 1E 00 25 */	stb r0, 0x25(r30)
/* 8024AC38  48 00 01 00 */	b lbl_8024AD38
lbl_8024AC3C:
/* 8024AC3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024AC40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024AC44  80 63 5E EC */	lwz r3, 0x5eec(r3)
/* 8024AC48  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 8024AC4C  7C 03 00 00 */	cmpw r3, r0
/* 8024AC50  41 82 00 08 */	beq lbl_8024AC58
/* 8024AC54  90 7E 00 34 */	stw r3, 0x34(r30)
lbl_8024AC58:
/* 8024AC58  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8024AC5C  28 00 00 12 */	cmplwi r0, 0x12
/* 8024AC60  41 81 00 D8 */	bgt lbl_8024AD38
/* 8024AC64  3C 60 80 3C */	lis r3, lit_4936@ha
/* 8024AC68  38 63 15 84 */	addi r3, r3, lit_4936@l
/* 8024AC6C  54 00 10 3A */	slwi r0, r0, 2
/* 8024AC70  7C 03 00 2E */	lwzx r0, r3, r0
/* 8024AC74  7C 09 03 A6 */	mtctr r0
/* 8024AC78  4E 80 04 20 */	bctr 
/* 8024AC7C  38 00 00 01 */	li r0, 1
/* 8024AC80  98 1E 00 41 */	stb r0, 0x41(r30)
/* 8024AC84  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 8024AC88  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 8024AC8C  48 00 00 AC */	b lbl_8024AD38
/* 8024AC90  88 1E 00 41 */	lbz r0, 0x41(r30)
/* 8024AC94  98 1E 00 40 */	stb r0, 0x40(r30)
/* 8024AC98  38 60 FF FF */	li r3, -1
/* 8024AC9C  3B E0 FF FF */	li r31, -1
/* 8024ACA0  88 1E 00 41 */	lbz r0, 0x41(r30)
/* 8024ACA4  28 00 00 00 */	cmplwi r0, 0
/* 8024ACA8  41 82 00 14 */	beq lbl_8024ACBC
/* 8024ACAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024ACB0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8024ACB4  88 64 5E 7A */	lbz r3, 0x5e7a(r4)
/* 8024ACB8  8B E4 5E 7B */	lbz r31, 0x5e7b(r4)
lbl_8024ACBC:
/* 8024ACBC  2C 03 00 1F */	cmpwi r3, 0x1f
/* 8024ACC0  41 80 00 08 */	blt lbl_8024ACC8
/* 8024ACC4  4B F1 4C 91 */	bl setMidnaMotionNum__9daPy_py_cFi
lbl_8024ACC8:
/* 8024ACC8  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 8024ACCC  41 80 00 0C */	blt lbl_8024ACD8
/* 8024ACD0  7F E3 FB 78 */	mr r3, r31
/* 8024ACD4  4B F1 4C 95 */	bl setMidnaFaceNum__9daPy_py_cFi
lbl_8024ACD8:
/* 8024ACD8  38 00 00 00 */	li r0, 0
/* 8024ACDC  98 1E 00 41 */	stb r0, 0x41(r30)
/* 8024ACE0  80 1D 00 EC */	lwz r0, 0xec(r29)
/* 8024ACE4  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 8024ACE8  48 00 00 50 */	b lbl_8024AD38
/* 8024ACEC  7F C3 F3 78 */	mr r3, r30
/* 8024ACF0  A0 9F 00 04 */	lhz r4, 4(r31)
/* 8024ACF4  7F 85 E3 78 */	mr r5, r28
/* 8024ACF8  4B FF FA D5 */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
/* 8024ACFC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8024AD00  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8024AD04  54 00 18 38 */	slwi r0, r0, 3
/* 8024AD08  7C 63 02 14 */	add r3, r3, r0
/* 8024AD0C  88 03 00 01 */	lbz r0, 1(r3)
/* 8024AD10  28 00 00 15 */	cmplwi r0, 0x15
/* 8024AD14  41 82 00 14 */	beq lbl_8024AD28
/* 8024AD18  28 00 00 20 */	cmplwi r0, 0x20
/* 8024AD1C  41 82 00 0C */	beq lbl_8024AD28
/* 8024AD20  28 00 00 21 */	cmplwi r0, 0x21
/* 8024AD24  40 82 00 0C */	bne lbl_8024AD30
lbl_8024AD28:
/* 8024AD28  38 60 00 00 */	li r3, 0
/* 8024AD2C  48 00 00 10 */	b lbl_8024AD3C
lbl_8024AD30:
/* 8024AD30  38 60 00 01 */	li r3, 1
/* 8024AD34  48 00 00 08 */	b lbl_8024AD3C
lbl_8024AD38:
/* 8024AD38  38 60 00 00 */	li r3, 0
lbl_8024AD3C:
/* 8024AD3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8024AD40  48 11 74 E5 */	bl _restgpr_28
/* 8024AD44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024AD48  7C 08 03 A6 */	mtlr r0
/* 8024AD4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8024AD50  4E 80 00 20 */	blr 

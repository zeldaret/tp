lbl_80A24AD8:
/* 80A24AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24ADC  7C 08 02 A6 */	mflr r0
/* 80A24AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A24AE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A24AE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A24AEC  7C 7F 1B 78 */	mr r31, r3
/* 80A24AF0  3C 60 80 A2 */	lis r3, m__20daNpcKasiKyu_Param_c@ha
/* 80A24AF4  3B C3 58 B8 */	addi r30, r3, m__20daNpcKasiKyu_Param_c@l
/* 80A24AF8  A8 1F 14 04 */	lha r0, 0x1404(r31)
/* 80A24AFC  2C 00 00 00 */	cmpwi r0, 0
/* 80A24B00  41 82 00 18 */	beq lbl_80A24B18
/* 80A24B04  40 80 00 08 */	bge lbl_80A24B0C
/* 80A24B08  48 00 01 A0 */	b lbl_80A24CA8
lbl_80A24B0C:
/* 80A24B0C  2C 00 00 02 */	cmpwi r0, 2
/* 80A24B10  40 80 01 98 */	bge lbl_80A24CA8
/* 80A24B14  48 00 00 9C */	b lbl_80A24BB0
lbl_80A24B18:
/* 80A24B18  38 60 01 22 */	li r3, 0x122
/* 80A24B1C  4B 73 0B 18 */	b daNpcF_chkEvtBit__FUl
/* 80A24B20  2C 03 00 00 */	cmpwi r3, 0
/* 80A24B24  41 82 00 28 */	beq lbl_80A24B4C
/* 80A24B28  7F E3 FB 78 */	mr r3, r31
/* 80A24B2C  38 80 00 03 */	li r4, 3
/* 80A24B30  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80A24B34  38 A0 00 00 */	li r5, 0
/* 80A24B38  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A24B3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A24B40  7D 89 03 A6 */	mtctr r12
/* 80A24B44  4E 80 04 21 */	bctrl 
/* 80A24B48  48 00 00 24 */	b lbl_80A24B6C
lbl_80A24B4C:
/* 80A24B4C  7F E3 FB 78 */	mr r3, r31
/* 80A24B50  38 80 00 02 */	li r4, 2
/* 80A24B54  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80A24B58  38 A0 00 00 */	li r5, 0
/* 80A24B5C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A24B60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A24B64  7D 89 03 A6 */	mtctr r12
/* 80A24B68  4E 80 04 21 */	bctrl 
lbl_80A24B6C:
/* 80A24B6C  7F E3 FB 78 */	mr r3, r31
/* 80A24B70  38 80 00 02 */	li r4, 2
/* 80A24B74  4B FF E7 B9 */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A24B78  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80A24B7C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A24B80  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A24B84  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A24B88  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A24B8C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A24B90  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A24B94  38 00 00 00 */	li r0, 0
/* 80A24B98  98 1F 14 66 */	stb r0, 0x1466(r31)
/* 80A24B9C  38 00 00 0C */	li r0, 0xc
/* 80A24BA0  90 1F 14 60 */	stw r0, 0x1460(r31)
/* 80A24BA4  38 00 00 01 */	li r0, 1
/* 80A24BA8  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A24BAC  48 00 00 FC */	b lbl_80A24CA8
lbl_80A24BB0:
/* 80A24BB0  80 7F 14 60 */	lwz r3, 0x1460(r31)
/* 80A24BB4  2C 03 00 00 */	cmpwi r3, 0
/* 80A24BB8  40 81 00 34 */	ble lbl_80A24BEC
/* 80A24BBC  38 03 FF FF */	addi r0, r3, -1
/* 80A24BC0  90 1F 14 60 */	stw r0, 0x1460(r31)
/* 80A24BC4  80 1F 14 60 */	lwz r0, 0x1460(r31)
/* 80A24BC8  2C 00 00 00 */	cmpwi r0, 0
/* 80A24BCC  40 82 00 14 */	bne lbl_80A24BE0
/* 80A24BD0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80A24BD4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A24BD8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A24BDC  48 00 00 10 */	b lbl_80A24BEC
lbl_80A24BE0:
/* 80A24BE0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80A24BE4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A24BE8  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A24BEC:
/* 80A24BEC  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80A24BF0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A24BF4  38 A0 04 00 */	li r5, 0x400
/* 80A24BF8  4B 84 BF 98 */	b cLib_chaseAngleS__FPsss
/* 80A24BFC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A24C00  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A24C04  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A24C08  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A24C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A24C10  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80A24C14  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80A24C18  28 00 00 00 */	cmplwi r0, 0
/* 80A24C1C  41 82 00 58 */	beq lbl_80A24C74
/* 80A24C20  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80A24C24  28 00 00 01 */	cmplwi r0, 1
/* 80A24C28  40 82 00 80 */	bne lbl_80A24CA8
/* 80A24C2C  38 00 00 00 */	li r0, 0
/* 80A24C30  88 7E 4F B5 */	lbz r3, 0x4fb5(r30)
/* 80A24C34  28 03 00 01 */	cmplwi r3, 1
/* 80A24C38  41 82 00 0C */	beq lbl_80A24C44
/* 80A24C3C  28 03 00 02 */	cmplwi r3, 2
/* 80A24C40  40 82 00 08 */	bne lbl_80A24C48
lbl_80A24C44:
/* 80A24C44  38 00 00 01 */	li r0, 1
lbl_80A24C48:
/* 80A24C48  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A24C4C  41 82 00 14 */	beq lbl_80A24C60
/* 80A24C50  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80A24C54  4B 62 3B 9C */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A24C58  2C 03 00 00 */	cmpwi r3, 0
/* 80A24C5C  41 82 00 4C */	beq lbl_80A24CA8
lbl_80A24C60:
/* 80A24C60  38 00 00 01 */	li r0, 1
/* 80A24C64  98 1F 14 66 */	stb r0, 0x1466(r31)
/* 80A24C68  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A24C6C  4B 61 D7 FC */	b reset__14dEvt_control_cFv
/* 80A24C70  48 00 00 38 */	b lbl_80A24CA8
lbl_80A24C74:
/* 80A24C74  7F E3 FB 78 */	mr r3, r31
/* 80A24C78  88 9F 14 69 */	lbz r4, 0x1469(r31)
/* 80A24C7C  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80A24C80  54 00 10 3A */	slwi r0, r0, 2
/* 80A24C84  3C A0 80 A2 */	lis r5, l_evtNames@ha
/* 80A24C88  38 A5 5C 1C */	addi r5, r5, l_evtNames@l
/* 80A24C8C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A24C90  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A24C94  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A24C98  38 E0 00 04 */	li r7, 4
/* 80A24C9C  39 00 00 FF */	li r8, 0xff
/* 80A24CA0  39 20 00 02 */	li r9, 2
/* 80A24CA4  4B 72 EB D8 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A24CA8:
/* 80A24CA8  38 60 00 01 */	li r3, 1
/* 80A24CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A24CB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A24CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A24CB8  7C 08 03 A6 */	mtlr r0
/* 80A24CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A24CC0  4E 80 00 20 */	blr 

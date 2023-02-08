lbl_80B95C6C:
/* 80B95C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B95C70  7C 08 02 A6 */	mflr r0
/* 80B95C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B95C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80B95C7C  4B 7C C5 5D */	bl _savegpr_28
/* 80B95C80  7C 7D 1B 78 */	mr r29, r3
/* 80B95C84  7C 9E 23 78 */	mr r30, r4
/* 80B95C88  7C BF 2B 78 */	mr r31, r5
/* 80B95C8C  3C 80 80 BA */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B9B284@ha */
/* 80B95C90  38 C4 B2 84 */	addi r6, r4, cNullVec__6Z2Calc@l /* 0x80B9B284@l */
/* 80B95C94  3B 80 00 00 */	li r28, 0
/* 80B95C98  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80B95C9C  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80B95CA0  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B95CA4  88 03 14 4C */	lbz r0, 0x144c(r3)
/* 80B95CA8  28 00 00 01 */	cmplwi r0, 1
/* 80B95CAC  40 82 00 38 */	bne lbl_80B95CE4
/* 80B95CB0  57 C0 18 38 */	slwi r0, r30, 3
/* 80B95CB4  38 86 00 58 */	addi r4, r6, 0x58
/* 80B95CB8  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B95CBC  2C 05 00 00 */	cmpwi r5, 0
/* 80B95CC0  41 80 00 54 */	blt lbl_80B95D14
/* 80B95CC4  7C 84 02 14 */	add r4, r4, r0
/* 80B95CC8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B95CCC  54 00 10 3A */	slwi r0, r0, 2
/* 80B95CD0  38 86 01 10 */	addi r4, r6, 0x110
/* 80B95CD4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B95CD8  4B 5B CE 55 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B95CDC  7C 7C 1B 78 */	mr r28, r3
/* 80B95CE0  48 00 00 34 */	b lbl_80B95D14
lbl_80B95CE4:
/* 80B95CE4  57 C0 18 38 */	slwi r0, r30, 3
/* 80B95CE8  38 86 00 30 */	addi r4, r6, 0x30
/* 80B95CEC  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B95CF0  2C 05 00 00 */	cmpwi r5, 0
/* 80B95CF4  41 80 00 20 */	blt lbl_80B95D14
/* 80B95CF8  7C 84 02 14 */	add r4, r4, r0
/* 80B95CFC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B95D00  54 00 10 3A */	slwi r0, r0, 2
/* 80B95D04  38 86 01 10 */	addi r4, r6, 0x110
/* 80B95D08  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B95D0C  4B 5B CE 21 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B95D10  7C 7C 1B 78 */	mr r28, r3
lbl_80B95D14:
/* 80B95D14  38 60 00 00 */	li r3, 0
/* 80B95D18  2C 1E 00 02 */	cmpwi r30, 2
/* 80B95D1C  40 80 00 2C */	bge lbl_80B95D48
/* 80B95D20  2C 1E 00 00 */	cmpwi r30, 0
/* 80B95D24  40 80 00 08 */	bge lbl_80B95D2C
/* 80B95D28  48 00 00 20 */	b lbl_80B95D48
lbl_80B95D2C:
/* 80B95D2C  7F A3 EB 78 */	mr r3, r29
/* 80B95D30  38 80 00 00 */	li r4, 0
/* 80B95D34  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B95D38  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B95D3C  7D 89 03 A6 */	mtctr r12
/* 80B95D40  4E 80 04 21 */	bctrl 
/* 80B95D44  48 00 00 08 */	b lbl_80B95D4C
lbl_80B95D48:
/* 80B95D48  3B 80 00 00 */	li r28, 0
lbl_80B95D4C:
/* 80B95D4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B95D50  40 82 00 0C */	bne lbl_80B95D5C
/* 80B95D54  38 60 00 00 */	li r3, 0
/* 80B95D58  48 00 00 60 */	b lbl_80B95DB8
lbl_80B95D5C:
/* 80B95D5C  28 1C 00 00 */	cmplwi r28, 0
/* 80B95D60  40 82 00 0C */	bne lbl_80B95D6C
/* 80B95D64  38 60 00 01 */	li r3, 1
/* 80B95D68  48 00 00 50 */	b lbl_80B95DB8
lbl_80B95D6C:
/* 80B95D6C  7F A3 EB 78 */	mr r3, r29
/* 80B95D70  7F 84 E3 78 */	mr r4, r28
/* 80B95D74  3C A0 80 BA */	lis r5, lit_4521@ha /* 0x80B9B080@ha */
/* 80B95D78  C0 25 B0 80 */	lfs f1, lit_4521@l(r5)  /* 0x80B9B080@l */
/* 80B95D7C  38 A0 00 00 */	li r5, 0
/* 80B95D80  38 C0 00 00 */	li r6, 0
/* 80B95D84  38 E0 FF FF */	li r7, -1
/* 80B95D88  7F E8 FB 78 */	mr r8, r31
/* 80B95D8C  4B 5B CE F5 */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80B95D90  2C 03 00 00 */	cmpwi r3, 0
/* 80B95D94  41 82 00 20 */	beq lbl_80B95DB4
/* 80B95D98  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B95D9C  60 00 01 40 */	ori r0, r0, 0x140
/* 80B95DA0  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80B95DA4  38 00 00 00 */	li r0, 0
/* 80B95DA8  B0 1D 09 E4 */	sth r0, 0x9e4(r29)
/* 80B95DAC  38 60 00 01 */	li r3, 1
/* 80B95DB0  48 00 00 08 */	b lbl_80B95DB8
lbl_80B95DB4:
/* 80B95DB4  38 60 00 00 */	li r3, 0
lbl_80B95DB8:
/* 80B95DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B95DBC  4B 7C C4 69 */	bl _restgpr_28
/* 80B95DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B95DC4  7C 08 03 A6 */	mtlr r0
/* 80B95DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B95DCC  4E 80 00 20 */	blr 

lbl_80B0DA94:
/* 80B0DA94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0DA98  7C 08 02 A6 */	mflr r0
/* 80B0DA9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0DAA0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B0DAA4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B0DAA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0DAAC  4B 85 47 31 */	bl _savegpr_29
/* 80B0DAB0  7C 7E 1B 78 */	mr r30, r3
/* 80B0DAB4  7C 80 23 78 */	mr r0, r4
/* 80B0DAB8  FF E0 08 90 */	fmr f31, f1
/* 80B0DABC  3C 80 80 B1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B10A60@ha */
/* 80B0DAC0  3B E4 0A 60 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B10A60@l */
/* 80B0DAC4  2C 00 00 02 */	cmpwi r0, 2
/* 80B0DAC8  41 80 00 E0 */	blt lbl_80B0DBA8
/* 80B0DACC  2C 00 00 03 */	cmpwi r0, 3
/* 80B0DAD0  41 80 00 08 */	blt lbl_80B0DAD8
/* 80B0DAD4  48 00 00 D4 */	b lbl_80B0DBA8
lbl_80B0DAD8:
/* 80B0DAD8  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 80B0DADC  54 1D 18 38 */	slwi r29, r0, 3
/* 80B0DAE0  38 BF 00 20 */	addi r5, r31, 0x20
/* 80B0DAE4  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80B0DAE8  4B 64 50 45 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B0DAEC  7C 64 1B 79 */	or. r4, r3, r3
/* 80B0DAF0  38 1F 00 20 */	addi r0, r31, 0x20
/* 80B0DAF4  7C 60 EA 14 */	add r3, r0, r29
/* 80B0DAF8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B0DAFC  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80B0DB00  38 00 FF E4 */	li r0, -28
/* 80B0DB04  7C 60 00 38 */	and r0, r3, r0
/* 80B0DB08  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B0DB0C  41 82 00 4C */	beq lbl_80B0DB58
/* 80B0DB10  7F C3 F3 78 */	mr r3, r30
/* 80B0DB14  3C C0 80 B1 */	lis r6, lit_4358@ha /* 0x80B10964@ha */
/* 80B0DB18  C0 26 09 64 */	lfs f1, lit_4358@l(r6)  /* 0x80B10964@l */
/* 80B0DB1C  FC 40 F8 90 */	fmr f2, f31
/* 80B0DB20  38 C0 00 00 */	li r6, 0
/* 80B0DB24  38 E0 FF FF */	li r7, -1
/* 80B0DB28  4B 64 50 F5 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80B0DB2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DB30  41 82 00 28 */	beq lbl_80B0DB58
/* 80B0DB34  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B0DB38  60 00 00 09 */	ori r0, r0, 9
/* 80B0DB3C  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B0DB40  38 00 00 00 */	li r0, 0
/* 80B0DB44  B0 1E 09 E2 */	sth r0, 0x9e2(r30)
/* 80B0DB48  3C 60 80 B1 */	lis r3, lit_4358@ha /* 0x80B10964@ha */
/* 80B0DB4C  C0 03 09 64 */	lfs f0, lit_4358@l(r3)  /* 0x80B10964@l */
/* 80B0DB50  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0DB54  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B0DB58:
/* 80B0DB58  7F C3 F3 78 */	mr r3, r30
/* 80B0DB5C  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 80B0DB60  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 80B0DB64  4B 64 50 41 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B0DB68  7C 64 1B 79 */	or. r4, r3, r3
/* 80B0DB6C  38 7F 00 40 */	addi r3, r31, 0x40
/* 80B0DB70  80 C3 00 04 */	lwz r6, 4(r3)
/* 80B0DB74  41 82 00 34 */	beq lbl_80B0DBA8
/* 80B0DB78  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0DB7C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B0DB80  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B0DB84  7F C3 F3 78 */	mr r3, r30
/* 80B0DB88  3C E0 80 B1 */	lis r7, lit_4358@ha /* 0x80B10964@ha */
/* 80B0DB8C  C0 27 09 64 */	lfs f1, lit_4358@l(r7)  /* 0x80B10964@l */
/* 80B0DB90  4B 64 51 75 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80B0DB94  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DB98  41 82 00 10 */	beq lbl_80B0DBA8
/* 80B0DB9C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B0DBA0  60 00 00 12 */	ori r0, r0, 0x12
/* 80B0DBA4  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80B0DBA8:
/* 80B0DBA8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B0DBAC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B0DBB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0DBB4  4B 85 46 75 */	bl _restgpr_29
/* 80B0DBB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0DBBC  7C 08 03 A6 */	mtlr r0
/* 80B0DBC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0DBC4  4E 80 00 20 */	blr 

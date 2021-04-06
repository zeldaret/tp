lbl_80A2D198:
/* 80A2D198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2D19C  7C 08 02 A6 */	mflr r0
/* 80A2D1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2D1A4  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A40D34@ha */
/* 80A2D1A8  38 84 0D 34 */	addi r4, r4, cNullVec__6Z2Calc@l /* 0x80A40D34@l */
/* 80A2D1AC  3C A0 80 3A */	lis r5, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A2D1B0  38 C5 21 80 */	addi r6, r5, __ptmf_null@l /* 0x803A2180@l */
/* 80A2D1B4  80 A6 00 00 */	lwz r5, 0(r6)
/* 80A2D1B8  80 06 00 04 */	lwz r0, 4(r6)
/* 80A2D1BC  90 A3 17 14 */	stw r5, 0x1714(r3)
/* 80A2D1C0  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D1C4  80 06 00 08 */	lwz r0, 8(r6)
/* 80A2D1C8  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D1CC  3C A0 80 A4 */	lis r5, m__16daNpc_Kn_Param_c@ha /* 0x80A40970@ha */
/* 80A2D1D0  38 A5 09 70 */	addi r5, r5, m__16daNpc_Kn_Param_c@l /* 0x80A40970@l */
/* 80A2D1D4  88 05 00 6A */	lbz r0, 0x6a(r5)
/* 80A2D1D8  28 00 00 00 */	cmplwi r0, 0
/* 80A2D1DC  41 82 00 20 */	beq lbl_80A2D1FC
/* 80A2D1E0  80 A4 0B 48 */	lwz r5, 0xb48(r4)
/* 80A2D1E4  80 04 0B 4C */	lwz r0, 0xb4c(r4)
/* 80A2D1E8  90 A3 17 14 */	stw r5, 0x1714(r3)
/* 80A2D1EC  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D1F0  80 04 0B 50 */	lwz r0, 0xb50(r4)
/* 80A2D1F4  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D1F8  48 00 01 98 */	b lbl_80A2D390
lbl_80A2D1FC:
/* 80A2D1FC  88 03 15 AC */	lbz r0, 0x15ac(r3)
/* 80A2D200  28 00 00 06 */	cmplwi r0, 6
/* 80A2D204  41 81 01 74 */	bgt lbl_80A2D378
/* 80A2D208  3C A0 80 A4 */	lis r5, lit_7450@ha /* 0x80A418C4@ha */
/* 80A2D20C  38 A5 18 C4 */	addi r5, r5, lit_7450@l /* 0x80A418C4@l */
/* 80A2D210  54 00 10 3A */	slwi r0, r0, 2
/* 80A2D214  7C 05 00 2E */	lwzx r0, r5, r0
/* 80A2D218  7C 09 03 A6 */	mtctr r0
/* 80A2D21C  4E 80 04 20 */	bctr 
lbl_80A2D220:
/* 80A2D220  48 00 F9 DD */	bl teach01_selectAction__10daNpc_Kn_cFv
/* 80A2D224  48 00 01 6C */	b lbl_80A2D390
lbl_80A2D228:
/* 80A2D228  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D22C  7C 00 07 74 */	extsb r0, r0
/* 80A2D230  2C 00 00 04 */	cmpwi r0, 4
/* 80A2D234  40 80 00 0C */	bge lbl_80A2D240
/* 80A2D238  48 00 F9 C5 */	bl teach01_selectAction__10daNpc_Kn_cFv
/* 80A2D23C  48 00 01 54 */	b lbl_80A2D390
lbl_80A2D240:
/* 80A2D240  48 01 1C DD */	bl teach02_selectAction__10daNpc_Kn_cFv
/* 80A2D244  48 00 01 4C */	b lbl_80A2D390
lbl_80A2D248:
/* 80A2D248  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D24C  7C 00 07 74 */	extsb r0, r0
/* 80A2D250  2C 00 00 08 */	cmpwi r0, 8
/* 80A2D254  40 80 00 0C */	bge lbl_80A2D260
/* 80A2D258  48 01 1C C5 */	bl teach02_selectAction__10daNpc_Kn_cFv
/* 80A2D25C  48 00 01 34 */	b lbl_80A2D390
lbl_80A2D260:
/* 80A2D260  48 00 01 45 */	bl teach03_selectAction__10daNpc_Kn_cFv
/* 80A2D264  48 00 01 2C */	b lbl_80A2D390
lbl_80A2D268:
/* 80A2D268  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D26C  7C 00 07 74 */	extsb r0, r0
/* 80A2D270  2C 00 00 04 */	cmpwi r0, 4
/* 80A2D274  40 82 00 20 */	bne lbl_80A2D294
/* 80A2D278  80 A4 0B 54 */	lwz r5, 0xb54(r4)
/* 80A2D27C  80 04 0B 58 */	lwz r0, 0xb58(r4)
/* 80A2D280  90 A3 17 14 */	stw r5, 0x1714(r3)
/* 80A2D284  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D288  80 04 0B 5C */	lwz r0, 0xb5c(r4)
/* 80A2D28C  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D290  48 00 01 00 */	b lbl_80A2D390
lbl_80A2D294:
/* 80A2D294  2C 00 00 09 */	cmpwi r0, 9
/* 80A2D298  40 80 00 0C */	bge lbl_80A2D2A4
/* 80A2D29C  48 00 01 09 */	bl teach03_selectAction__10daNpc_Kn_cFv
/* 80A2D2A0  48 00 00 F0 */	b lbl_80A2D390
lbl_80A2D2A4:
/* 80A2D2A4  48 00 01 59 */	bl teach04_selectAction__10daNpc_Kn_cFv
/* 80A2D2A8  48 00 00 E8 */	b lbl_80A2D390
lbl_80A2D2AC:
/* 80A2D2AC  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D2B0  7C 00 07 74 */	extsb r0, r0
/* 80A2D2B4  2C 00 00 04 */	cmpwi r0, 4
/* 80A2D2B8  40 82 00 20 */	bne lbl_80A2D2D8
/* 80A2D2BC  80 A4 0B 60 */	lwz r5, 0xb60(r4)
/* 80A2D2C0  80 04 0B 64 */	lwz r0, 0xb64(r4)
/* 80A2D2C4  90 A3 17 14 */	stw r5, 0x1714(r3)
/* 80A2D2C8  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D2CC  80 04 0B 68 */	lwz r0, 0xb68(r4)
/* 80A2D2D0  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D2D4  48 00 00 BC */	b lbl_80A2D390
lbl_80A2D2D8:
/* 80A2D2D8  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A2D2DC  40 80 00 0C */	bge lbl_80A2D2E8
/* 80A2D2E0  48 00 01 1D */	bl teach04_selectAction__10daNpc_Kn_cFv
/* 80A2D2E4  48 00 00 AC */	b lbl_80A2D390
lbl_80A2D2E8:
/* 80A2D2E8  48 00 01 B9 */	bl teach05_selectAction__10daNpc_Kn_cFv
/* 80A2D2EC  48 00 00 A4 */	b lbl_80A2D390
lbl_80A2D2F0:
/* 80A2D2F0  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D2F4  7C 00 07 74 */	extsb r0, r0
/* 80A2D2F8  2C 00 00 04 */	cmpwi r0, 4
/* 80A2D2FC  40 82 00 20 */	bne lbl_80A2D31C
/* 80A2D300  80 A4 0B 6C */	lwz r5, 0xb6c(r4)
/* 80A2D304  80 04 0B 70 */	lwz r0, 0xb70(r4)
/* 80A2D308  90 A3 17 14 */	stw r5, 0x1714(r3)
/* 80A2D30C  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D310  80 04 0B 74 */	lwz r0, 0xb74(r4)
/* 80A2D314  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D318  48 00 00 78 */	b lbl_80A2D390
lbl_80A2D31C:
/* 80A2D31C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80A2D320  40 80 00 0C */	bge lbl_80A2D32C
/* 80A2D324  48 00 01 7D */	bl teach05_selectAction__10daNpc_Kn_cFv
/* 80A2D328  48 00 00 68 */	b lbl_80A2D390
lbl_80A2D32C:
/* 80A2D32C  48 00 01 CD */	bl teach06_selectAction__10daNpc_Kn_cFv
/* 80A2D330  48 00 00 60 */	b lbl_80A2D390
lbl_80A2D334:
/* 80A2D334  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A2D338  7C 00 07 74 */	extsb r0, r0
/* 80A2D33C  2C 00 00 04 */	cmpwi r0, 4
/* 80A2D340  40 82 00 20 */	bne lbl_80A2D360
/* 80A2D344  80 A4 0B 78 */	lwz r5, 0xb78(r4)
/* 80A2D348  80 04 0B 7C */	lwz r0, 0xb7c(r4)
/* 80A2D34C  90 A3 17 14 */	stw r5, 0x1714(r3)
/* 80A2D350  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D354  80 04 0B 80 */	lwz r0, 0xb80(r4)
/* 80A2D358  90 03 17 1C */	stw r0, 0x171c(r3)
/* 80A2D35C  48 00 00 34 */	b lbl_80A2D390
lbl_80A2D360:
/* 80A2D360  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A2D364  40 80 00 0C */	bge lbl_80A2D370
/* 80A2D368  48 00 01 91 */	bl teach06_selectAction__10daNpc_Kn_cFv
/* 80A2D36C  48 00 00 24 */	b lbl_80A2D390
lbl_80A2D370:
/* 80A2D370  48 00 02 91 */	bl teach07_selectAction__10daNpc_Kn_cFv
/* 80A2D374  48 00 00 1C */	b lbl_80A2D390
lbl_80A2D378:
/* 80A2D378  80 A4 0B 84 */	lwz r5, 0xb84(r4)
/* 80A2D37C  80 04 0B 88 */	lwz r0, 0xb88(r4)
/* 80A2D380  90 A3 17 14 */	stw r5, 0x1714(r3)
/* 80A2D384  90 03 17 18 */	stw r0, 0x1718(r3)
/* 80A2D388  80 04 0B 8C */	lwz r0, 0xb8c(r4)
/* 80A2D38C  90 03 17 1C */	stw r0, 0x171c(r3)
lbl_80A2D390:
/* 80A2D390  38 60 00 01 */	li r3, 1
/* 80A2D394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2D398  7C 08 03 A6 */	mtlr r0
/* 80A2D39C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2D3A0  4E 80 00 20 */	blr 

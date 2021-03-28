lbl_80A7D138:
/* 80A7D138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A7D13C  7C 08 02 A6 */	mflr r0
/* 80A7D140  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7D144  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7D148  4B 8E 50 8C */	b _savegpr_27
/* 80A7D14C  7C 7E 1B 78 */	mr r30, r3
/* 80A7D150  7C 9B 23 78 */	mr r27, r4
/* 80A7D154  7C BF 2B 78 */	mr r31, r5
/* 80A7D158  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80A7D15C  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80A7D160  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80A7D164  1F 9B 00 0C */	mulli r28, r27, 0xc
/* 80A7D168  3C 80 80 A8 */	lis r4, l_bckGetParamList@ha
/* 80A7D16C  38 84 38 D0 */	addi r4, r4, l_bckGetParamList@l
/* 80A7D170  7C A4 E0 2E */	lwzx r5, r4, r28
/* 80A7D174  2C 05 00 00 */	cmpwi r5, 0
/* 80A7D178  41 80 00 24 */	blt lbl_80A7D19C
/* 80A7D17C  7C 84 E2 14 */	add r4, r4, r28
/* 80A7D180  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7D184  54 00 10 3A */	slwi r0, r0, 2
/* 80A7D188  3C 80 80 A8 */	lis r4, l_arcNames@ha
/* 80A7D18C  38 84 3A F8 */	addi r4, r4, l_arcNames@l
/* 80A7D190  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A7D194  4B 6D 59 98 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A7D198  48 00 00 08 */	b lbl_80A7D1A0
lbl_80A7D19C:
/* 80A7D19C  38 60 00 00 */	li r3, 0
lbl_80A7D1A0:
/* 80A7D1A0  7C 7D 1B 78 */	mr r29, r3
/* 80A7D1A4  3C 60 80 A8 */	lis r3, l_bckGetParamList@ha
/* 80A7D1A8  38 03 38 D0 */	addi r0, r3, l_bckGetParamList@l
/* 80A7D1AC  7C 60 E2 14 */	add r3, r0, r28
/* 80A7D1B0  83 83 00 04 */	lwz r28, 4(r3)
/* 80A7D1B4  38 60 00 00 */	li r3, 0
/* 80A7D1B8  28 1B 00 0A */	cmplwi r27, 0xa
/* 80A7D1BC  41 81 01 50 */	bgt lbl_80A7D30C
/* 80A7D1C0  3C 80 80 A8 */	lis r4, lit_4538@ha
/* 80A7D1C4  38 84 3B 70 */	addi r4, r4, lit_4538@l
/* 80A7D1C8  57 60 10 3A */	slwi r0, r27, 2
/* 80A7D1CC  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A7D1D0  7C 09 03 A6 */	mtctr r0
/* 80A7D1D4  4E 80 04 20 */	bctr 
lbl_80A7D1D8:
/* 80A7D1D8  7F C3 F3 78 */	mr r3, r30
/* 80A7D1DC  38 80 00 00 */	li r4, 0
/* 80A7D1E0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D1E4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D1E8  7D 89 03 A6 */	mtctr r12
/* 80A7D1EC  4E 80 04 21 */	bctrl 
/* 80A7D1F0  48 00 01 20 */	b lbl_80A7D310
lbl_80A7D1F4:
/* 80A7D1F4  7F C3 F3 78 */	mr r3, r30
/* 80A7D1F8  38 80 00 00 */	li r4, 0
/* 80A7D1FC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D200  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D204  7D 89 03 A6 */	mtctr r12
/* 80A7D208  4E 80 04 21 */	bctrl 
/* 80A7D20C  48 00 01 04 */	b lbl_80A7D310
lbl_80A7D210:
/* 80A7D210  7F C3 F3 78 */	mr r3, r30
/* 80A7D214  38 80 00 00 */	li r4, 0
/* 80A7D218  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D21C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D220  7D 89 03 A6 */	mtctr r12
/* 80A7D224  4E 80 04 21 */	bctrl 
/* 80A7D228  48 00 00 E8 */	b lbl_80A7D310
lbl_80A7D22C:
/* 80A7D22C  7F C3 F3 78 */	mr r3, r30
/* 80A7D230  38 80 00 00 */	li r4, 0
/* 80A7D234  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D238  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D23C  7D 89 03 A6 */	mtctr r12
/* 80A7D240  4E 80 04 21 */	bctrl 
/* 80A7D244  48 00 00 CC */	b lbl_80A7D310
lbl_80A7D248:
/* 80A7D248  7F C3 F3 78 */	mr r3, r30
/* 80A7D24C  38 80 00 00 */	li r4, 0
/* 80A7D250  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D254  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D258  7D 89 03 A6 */	mtctr r12
/* 80A7D25C  4E 80 04 21 */	bctrl 
/* 80A7D260  48 00 00 B0 */	b lbl_80A7D310
lbl_80A7D264:
/* 80A7D264  7F C3 F3 78 */	mr r3, r30
/* 80A7D268  38 80 00 00 */	li r4, 0
/* 80A7D26C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D270  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D274  7D 89 03 A6 */	mtctr r12
/* 80A7D278  4E 80 04 21 */	bctrl 
/* 80A7D27C  48 00 00 94 */	b lbl_80A7D310
lbl_80A7D280:
/* 80A7D280  7F C3 F3 78 */	mr r3, r30
/* 80A7D284  38 80 00 00 */	li r4, 0
/* 80A7D288  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D28C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D290  7D 89 03 A6 */	mtctr r12
/* 80A7D294  4E 80 04 21 */	bctrl 
/* 80A7D298  48 00 00 78 */	b lbl_80A7D310
lbl_80A7D29C:
/* 80A7D29C  7F C3 F3 78 */	mr r3, r30
/* 80A7D2A0  38 80 00 00 */	li r4, 0
/* 80A7D2A4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D2A8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D2AC  7D 89 03 A6 */	mtctr r12
/* 80A7D2B0  4E 80 04 21 */	bctrl 
/* 80A7D2B4  48 00 00 5C */	b lbl_80A7D310
lbl_80A7D2B8:
/* 80A7D2B8  7F C3 F3 78 */	mr r3, r30
/* 80A7D2BC  38 80 00 01 */	li r4, 1
/* 80A7D2C0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D2C4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D2C8  7D 89 03 A6 */	mtctr r12
/* 80A7D2CC  4E 80 04 21 */	bctrl 
/* 80A7D2D0  48 00 00 40 */	b lbl_80A7D310
lbl_80A7D2D4:
/* 80A7D2D4  7F C3 F3 78 */	mr r3, r30
/* 80A7D2D8  38 80 00 00 */	li r4, 0
/* 80A7D2DC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D2E0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D2E4  7D 89 03 A6 */	mtctr r12
/* 80A7D2E8  4E 80 04 21 */	bctrl 
/* 80A7D2EC  48 00 00 24 */	b lbl_80A7D310
lbl_80A7D2F0:
/* 80A7D2F0  7F C3 F3 78 */	mr r3, r30
/* 80A7D2F4  38 80 00 00 */	li r4, 0
/* 80A7D2F8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7D2FC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A7D300  7D 89 03 A6 */	mtctr r12
/* 80A7D304  4E 80 04 21 */	bctrl 
/* 80A7D308  48 00 00 08 */	b lbl_80A7D310
lbl_80A7D30C:
/* 80A7D30C  3B A0 00 00 */	li r29, 0
lbl_80A7D310:
/* 80A7D310  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A7D314  40 82 00 0C */	bne lbl_80A7D320
/* 80A7D318  38 60 00 00 */	li r3, 0
/* 80A7D31C  48 00 00 60 */	b lbl_80A7D37C
lbl_80A7D320:
/* 80A7D320  28 1D 00 00 */	cmplwi r29, 0
/* 80A7D324  40 82 00 0C */	bne lbl_80A7D330
/* 80A7D328  38 60 00 01 */	li r3, 1
/* 80A7D32C  48 00 00 50 */	b lbl_80A7D37C
lbl_80A7D330:
/* 80A7D330  7F C3 F3 78 */	mr r3, r30
/* 80A7D334  7F A4 EB 78 */	mr r4, r29
/* 80A7D338  3C A0 80 A8 */	lis r5, lit_4337@ha
/* 80A7D33C  C0 25 33 30 */	lfs f1, lit_4337@l(r5)
/* 80A7D340  7F 85 E3 78 */	mr r5, r28
/* 80A7D344  38 C0 00 00 */	li r6, 0
/* 80A7D348  38 E0 FF FF */	li r7, -1
/* 80A7D34C  7F E8 FB 78 */	mr r8, r31
/* 80A7D350  4B 6D 59 30 */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80A7D354  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D358  41 82 00 20 */	beq lbl_80A7D378
/* 80A7D35C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A7D360  60 00 01 40 */	ori r0, r0, 0x140
/* 80A7D364  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A7D368  38 00 00 00 */	li r0, 0
/* 80A7D36C  B0 1E 09 E4 */	sth r0, 0x9e4(r30)
/* 80A7D370  38 60 00 01 */	li r3, 1
/* 80A7D374  48 00 00 08 */	b lbl_80A7D37C
lbl_80A7D378:
/* 80A7D378  38 60 00 00 */	li r3, 0
lbl_80A7D37C:
/* 80A7D37C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7D380  4B 8E 4E A0 */	b _restgpr_27
/* 80A7D384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7D388  7C 08 03 A6 */	mtlr r0
/* 80A7D38C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A7D390  4E 80 00 20 */	blr 

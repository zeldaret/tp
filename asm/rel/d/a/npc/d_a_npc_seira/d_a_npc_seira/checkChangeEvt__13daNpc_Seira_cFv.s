lbl_80ACC818:
/* 80ACC818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACC81C  7C 08 02 A6 */	mflr r0
/* 80ACC820  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACC824  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ACC828  7C 7F 1B 78 */	mr r31, r3
/* 80ACC82C  3C 80 80 AD */	lis r4, lit_4679@ha /* 0x80AD0724@ha */
/* 80ACC830  38 A4 07 24 */	addi r5, r4, lit_4679@l /* 0x80AD0724@l */
/* 80ACC834  80 85 00 00 */	lwz r4, 0(r5)
/* 80ACC838  80 05 00 04 */	lwz r0, 4(r5)
/* 80ACC83C  90 81 00 08 */	stw r4, 8(r1)
/* 80ACC840  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ACC844  80 05 00 08 */	lwz r0, 8(r5)
/* 80ACC848  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ACC84C  38 81 00 08 */	addi r4, r1, 8
/* 80ACC850  48 00 10 B1 */	bl chkAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i
/* 80ACC854  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC858  40 82 00 50 */	bne lbl_80ACC8A8
/* 80ACC85C  88 1F 10 C1 */	lbz r0, 0x10c1(r31)
/* 80ACC860  2C 00 00 05 */	cmpwi r0, 5
/* 80ACC864  41 82 00 10 */	beq lbl_80ACC874
/* 80ACC868  40 80 00 40 */	bge lbl_80ACC8A8
/* 80ACC86C  48 00 00 3C */	b lbl_80ACC8A8
/* 80ACC870  48 00 00 38 */	b lbl_80ACC8A8
lbl_80ACC874:
/* 80ACC874  38 60 02 4D */	li r3, 0x24d
/* 80ACC878  4B 68 02 35 */	bl daNpcT_chkEvtBit__FUl
/* 80ACC87C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC880  41 82 00 10 */	beq lbl_80ACC890
/* 80ACC884  38 00 00 03 */	li r0, 3
/* 80ACC888  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80ACC88C  48 00 00 0C */	b lbl_80ACC898
lbl_80ACC890:
/* 80ACC890  38 00 00 02 */	li r0, 2
/* 80ACC894  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80ACC898:
/* 80ACC898  7F E3 FB 78 */	mr r3, r31
/* 80ACC89C  4B 67 D9 89 */	bl evtChange__8daNpcT_cFv
/* 80ACC8A0  38 60 00 01 */	li r3, 1
/* 80ACC8A4  48 00 00 08 */	b lbl_80ACC8AC
lbl_80ACC8A8:
/* 80ACC8A8  38 60 00 00 */	li r3, 0
lbl_80ACC8AC:
/* 80ACC8AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ACC8B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACC8B4  7C 08 03 A6 */	mtlr r0
/* 80ACC8B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACC8BC  4E 80 00 20 */	blr 

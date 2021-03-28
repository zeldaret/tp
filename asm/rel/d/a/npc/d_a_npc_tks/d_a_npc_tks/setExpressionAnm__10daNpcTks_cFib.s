lbl_80B157C0:
/* 80B157C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B157C4  7C 08 02 A6 */	mflr r0
/* 80B157C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B157CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B157D0  4B 84 CA 04 */	b _savegpr_27
/* 80B157D4  7C 7D 1B 78 */	mr r29, r3
/* 80B157D8  7C 9E 23 78 */	mr r30, r4
/* 80B157DC  7C BF 2B 78 */	mr r31, r5
/* 80B157E0  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80B157E4  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80B157E8  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B157EC  54 9C 18 38 */	slwi r28, r4, 3
/* 80B157F0  3C 80 80 B2 */	lis r4, l_bckGetParamList@ha
/* 80B157F4  38 84 E1 04 */	addi r4, r4, l_bckGetParamList@l
/* 80B157F8  7C A4 E0 2E */	lwzx r5, r4, r28
/* 80B157FC  2C 05 00 00 */	cmpwi r5, 0
/* 80B15800  41 80 00 18 */	blt lbl_80B15818
/* 80B15804  3C 80 80 B2 */	lis r4, l_arcName@ha
/* 80B15808  38 84 E2 08 */	addi r4, r4, l_arcName@l
/* 80B1580C  80 84 00 00 */	lwz r4, 0(r4)
/* 80B15810  4B 63 D3 1C */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B15814  48 00 00 08 */	b lbl_80B1581C
lbl_80B15818:
/* 80B15818  38 60 00 00 */	li r3, 0
lbl_80B1581C:
/* 80B1581C  7C 7B 1B 78 */	mr r27, r3
/* 80B15820  3C 60 80 B2 */	lis r3, l_bckGetParamList@ha
/* 80B15824  38 03 E1 04 */	addi r0, r3, l_bckGetParamList@l
/* 80B15828  7C 60 E2 14 */	add r3, r0, r28
/* 80B1582C  83 83 00 04 */	lwz r28, 4(r3)
/* 80B15830  38 60 00 00 */	li r3, 0
/* 80B15834  2C 1E 00 01 */	cmpwi r30, 1
/* 80B15838  41 82 00 30 */	beq lbl_80B15868
/* 80B1583C  40 80 00 48 */	bge lbl_80B15884
/* 80B15840  2C 1E 00 00 */	cmpwi r30, 0
/* 80B15844  40 80 00 08 */	bge lbl_80B1584C
/* 80B15848  48 00 00 3C */	b lbl_80B15884
lbl_80B1584C:
/* 80B1584C  7F A3 EB 78 */	mr r3, r29
/* 80B15850  38 80 00 00 */	li r4, 0
/* 80B15854  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B15858  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B1585C  7D 89 03 A6 */	mtctr r12
/* 80B15860  4E 80 04 21 */	bctrl 
/* 80B15864  48 00 00 24 */	b lbl_80B15888
lbl_80B15868:
/* 80B15868  7F A3 EB 78 */	mr r3, r29
/* 80B1586C  38 80 00 00 */	li r4, 0
/* 80B15870  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B15874  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80B15878  7D 89 03 A6 */	mtctr r12
/* 80B1587C  4E 80 04 21 */	bctrl 
/* 80B15880  48 00 00 08 */	b lbl_80B15888
lbl_80B15884:
/* 80B15884  3B 60 00 00 */	li r27, 0
lbl_80B15888:
/* 80B15888  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B1588C  40 82 00 0C */	bne lbl_80B15898
/* 80B15890  38 60 00 00 */	li r3, 0
/* 80B15894  48 00 00 60 */	b lbl_80B158F4
lbl_80B15898:
/* 80B15898  28 1B 00 00 */	cmplwi r27, 0
/* 80B1589C  40 82 00 0C */	bne lbl_80B158A8
/* 80B158A0  38 60 00 01 */	li r3, 1
/* 80B158A4  48 00 00 50 */	b lbl_80B158F4
lbl_80B158A8:
/* 80B158A8  7F A3 EB 78 */	mr r3, r29
/* 80B158AC  7F 64 DB 78 */	mr r4, r27
/* 80B158B0  3C A0 80 B2 */	lis r5, lit_4537@ha
/* 80B158B4  C0 25 DE 08 */	lfs f1, lit_4537@l(r5)
/* 80B158B8  7F 85 E3 78 */	mr r5, r28
/* 80B158BC  38 C0 00 00 */	li r6, 0
/* 80B158C0  38 E0 FF FF */	li r7, -1
/* 80B158C4  7F E8 FB 78 */	mr r8, r31
/* 80B158C8  4B 63 D3 B8 */	b setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80B158CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B158D0  41 82 00 20 */	beq lbl_80B158F0
/* 80B158D4  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B158D8  60 00 01 40 */	ori r0, r0, 0x140
/* 80B158DC  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80B158E0  38 00 00 00 */	li r0, 0
/* 80B158E4  B0 1D 09 E4 */	sth r0, 0x9e4(r29)
/* 80B158E8  38 60 00 01 */	li r3, 1
/* 80B158EC  48 00 00 08 */	b lbl_80B158F4
lbl_80B158F0:
/* 80B158F0  38 60 00 00 */	li r3, 0
lbl_80B158F4:
/* 80B158F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B158F8  4B 84 C9 28 */	b _restgpr_27
/* 80B158FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B15900  7C 08 03 A6 */	mtlr r0
/* 80B15904  38 21 00 20 */	addi r1, r1, 0x20
/* 80B15908  4E 80 00 20 */	blr 

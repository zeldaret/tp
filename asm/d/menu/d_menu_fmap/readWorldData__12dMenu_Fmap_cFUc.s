lbl_801CB770:
/* 801CB770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CB774  7C 08 02 A6 */	mflr r0
/* 801CB778  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CB77C  39 61 00 20 */	addi r11, r1, 0x20
/* 801CB780  48 19 6A 55 */	bl _savegpr_27
/* 801CB784  7C 7D 1B 78 */	mr r29, r3
/* 801CB788  7C 9C 23 78 */	mr r28, r4
/* 801CB78C  48 00 0E 91 */	bl removeAreaData__12dMenu_Fmap_cFv
/* 801CB790  3B E0 00 00 */	li r31, 0
/* 801CB794  3B C0 00 00 */	li r30, 0
/* 801CB798  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CB79C  88 03 12 2F */	lbz r0, 0x122f(r3)
/* 801CB7A0  28 00 00 00 */	cmplwi r0, 0
/* 801CB7A4  41 82 00 70 */	beq lbl_801CB814
/* 801CB7A8  3B 60 00 00 */	li r27, 0
/* 801CB7AC  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 801CB7B0  3B 83 FF FF */	addi r28, r3, -1
lbl_801CB7B4:
/* 801CB7B4  7C 1B E0 00 */	cmpw r27, r28
/* 801CB7B8  40 82 00 2C */	bne lbl_801CB7E4
/* 801CB7BC  7F A3 EB 78 */	mr r3, r29
/* 801CB7C0  38 1B 00 01 */	addi r0, r27, 1
/* 801CB7C4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801CB7C8  38 A0 00 01 */	li r5, 1
/* 801CB7CC  48 00 01 6D */	bl readAreaData__12dMenu_Fmap_cFUcb
/* 801CB7D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CB7D4  41 82 00 30 */	beq lbl_801CB804
/* 801CB7D8  3B E0 00 01 */	li r31, 1
/* 801CB7DC  3B C0 00 01 */	li r30, 1
/* 801CB7E0  48 00 00 24 */	b lbl_801CB804
lbl_801CB7E4:
/* 801CB7E4  7F A3 EB 78 */	mr r3, r29
/* 801CB7E8  38 1B 00 01 */	addi r0, r27, 1
/* 801CB7EC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801CB7F0  38 A0 00 00 */	li r5, 0
/* 801CB7F4  48 00 01 45 */	bl readAreaData__12dMenu_Fmap_cFUcb
/* 801CB7F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CB7FC  41 82 00 08 */	beq lbl_801CB804
/* 801CB800  3B C0 00 01 */	li r30, 1
lbl_801CB804:
/* 801CB804  3B 7B 00 01 */	addi r27, r27, 1
/* 801CB808  2C 1B 00 08 */	cmpwi r27, 8
/* 801CB80C  41 80 FF A8 */	blt lbl_801CB7B4
/* 801CB810  48 00 00 24 */	b lbl_801CB834
lbl_801CB814:
/* 801CB814  7F A3 EB 78 */	mr r3, r29
/* 801CB818  7F 84 E3 78 */	mr r4, r28
/* 801CB81C  38 A0 00 01 */	li r5, 1
/* 801CB820  48 00 01 19 */	bl readAreaData__12dMenu_Fmap_cFUcb
/* 801CB824  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CB828  41 82 00 0C */	beq lbl_801CB834
/* 801CB82C  3B E0 00 01 */	li r31, 1
/* 801CB830  3B C0 00 01 */	li r30, 1
lbl_801CB834:
/* 801CB834  38 E0 00 00 */	li r7, 0
/* 801CB838  3B 60 FF FF */	li r27, -1
/* 801CB83C  39 00 00 00 */	li r8, 0
/* 801CB840  38 60 00 00 */	li r3, 0
/* 801CB844  7C 65 1B 78 */	mr r5, r3
/* 801CB848  7C 64 1B 78 */	mr r4, r3
/* 801CB84C  38 00 00 08 */	li r0, 8
/* 801CB850  7C 09 03 A6 */	mtctr r0
lbl_801CB854:
/* 801CB854  38 03 00 24 */	addi r0, r3, 0x24
/* 801CB858  7C DD 00 2E */	lwzx r6, r29, r0
/* 801CB85C  28 06 00 00 */	cmplwi r6, 0
/* 801CB860  41 82 00 28 */	beq lbl_801CB888
/* 801CB864  28 07 00 00 */	cmplwi r7, 0
/* 801CB868  40 82 00 14 */	bne lbl_801CB87C
/* 801CB86C  7D 1B 43 78 */	mr r27, r8
/* 801CB870  7C C7 33 78 */	mr r7, r6
/* 801CB874  90 A6 00 04 */	stw r5, 4(r6)
/* 801CB878  48 00 00 10 */	b lbl_801CB888
lbl_801CB87C:
/* 801CB87C  90 C7 00 04 */	stw r6, 4(r7)
/* 801CB880  7C FD 00 2E */	lwzx r7, r29, r0
/* 801CB884  90 87 00 04 */	stw r4, 4(r7)
lbl_801CB888:
/* 801CB888  39 08 00 01 */	addi r8, r8, 1
/* 801CB88C  38 63 00 04 */	addi r3, r3, 4
/* 801CB890  42 00 FF C4 */	bdnz lbl_801CB854
/* 801CB894  2C 1B FF FF */	cmpwi r27, -1
/* 801CB898  41 82 00 5C */	beq lbl_801CB8F4
/* 801CB89C  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 801CB8A0  28 00 00 00 */	cmplwi r0, 0
/* 801CB8A4  40 82 00 50 */	bne lbl_801CB8F4
/* 801CB8A8  38 60 00 14 */	li r3, 0x14
/* 801CB8AC  48 10 33 A1 */	bl __nw__FUl
/* 801CB8B0  7C 7C 1B 79 */	or. r28, r3, r3
/* 801CB8B4  41 82 00 14 */	beq lbl_801CB8C8
/* 801CB8B8  57 60 10 3A */	slwi r0, r27, 2
/* 801CB8BC  7C 9D 02 14 */	add r4, r29, r0
/* 801CB8C0  80 84 00 24 */	lwz r4, 0x24(r4)
/* 801CB8C4  4B E7 27 65 */	bl create__23dMenu_Fmap_world_data_cFP24dMenu_Fmap_region_data_c
lbl_801CB8C8:
/* 801CB8C8  93 9D 00 20 */	stw r28, 0x20(r29)
/* 801CB8CC  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 801CB8D0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801CB8D4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 801CB8D8  C0 43 00 08 */	lfs f2, 8(r3)
/* 801CB8DC  C0 63 00 04 */	lfs f3, 4(r3)
/* 801CB8E0  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CB8E4  D0 63 0F F4 */	stfs f3, 0xff4(r3)
/* 801CB8E8  D0 43 0F F8 */	stfs f2, 0xff8(r3)
/* 801CB8EC  D0 23 0F FC */	stfs f1, 0xffc(r3)
/* 801CB8F0  D0 03 10 00 */	stfs f0, 0x1000(r3)
lbl_801CB8F4:
/* 801CB8F4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801CB8F8  41 82 00 24 */	beq lbl_801CB91C
/* 801CB8FC  80 7D 00 B8 */	lwz r3, 0xb8(r29)
/* 801CB900  80 83 00 BC */	lwz r4, 0xbc(r3)
/* 801CB904  28 04 00 00 */	cmplwi r4, 0
/* 801CB908  41 82 00 0C */	beq lbl_801CB914
/* 801CB90C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CB910  48 00 57 85 */	bl setSpotPane__18dMenu_Fmap2DBack_cFP7ResTIMG
lbl_801CB914:
/* 801CB914  38 00 00 01 */	li r0, 1
/* 801CB918  98 1D 03 05 */	stb r0, 0x305(r29)
lbl_801CB91C:
/* 801CB91C  7F E3 FB 78 */	mr r3, r31
/* 801CB920  39 61 00 20 */	addi r11, r1, 0x20
/* 801CB924  48 19 68 FD */	bl _restgpr_27
/* 801CB928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CB92C  7C 08 03 A6 */	mtlr r0
/* 801CB930  38 21 00 20 */	addi r1, r1, 0x20
/* 801CB934  4E 80 00 20 */	blr 

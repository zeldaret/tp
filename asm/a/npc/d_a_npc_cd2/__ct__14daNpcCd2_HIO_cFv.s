lbl_8015A4D8:
/* 8015A4D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015A4DC  7C 08 02 A6 */	mflr r0
/* 8015A4E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015A4E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8015A4E8  48 20 7C D9 */	bl _savegpr_22
/* 8015A4EC  7C 7E 1B 78 */	mr r30, r3
/* 8015A4F0  3C 60 80 3B */	lis r3, cNullVec__6Z2Calc@ha
/* 8015A4F4  3B E3 61 C0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8015A4F8  3C 60 80 3B */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 8015A4FC  38 03 61 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8015A500  90 1E 00 00 */	stw r0, 0(r30)
/* 8015A504  3C 60 80 3B */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 8015A508  38 03 61 A8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 8015A50C  90 1E 00 00 */	stw r0, 0(r30)
/* 8015A510  3C 60 80 3C */	lis r3, __vt__14daNpcCd2_HIO_c@ha
/* 8015A514  38 03 9D 78 */	addi r0, r3, __vt__14daNpcCd2_HIO_c@l
/* 8015A518  90 1E 00 00 */	stw r0, 0(r30)
/* 8015A51C  38 7E 00 04 */	addi r3, r30, 4
/* 8015A520  3C 80 80 16 */	lis r4, __ct__21daNpcCd2_HIO_MChild_cFv@ha
/* 8015A524  38 84 A8 08 */	addi r4, r4, __ct__21daNpcCd2_HIO_MChild_cFv@l
/* 8015A528  3C A0 80 16 */	lis r5, __dt__21daNpcCd2_HIO_MChild_cFv@ha
/* 8015A52C  38 A5 A7 98 */	addi r5, r5, __dt__21daNpcCd2_HIO_MChild_cFv@l
/* 8015A530  38 C0 02 0C */	li r6, 0x20c
/* 8015A534  38 E0 00 10 */	li r7, 0x10
/* 8015A538  48 20 78 29 */	bl __construct_array
/* 8015A53C  38 7E 20 C4 */	addi r3, r30, 0x20c4
/* 8015A540  3C 80 80 16 */	lis r4, __ct__21daNpcCd2_HIO_WChild_cFv@ha
/* 8015A544  38 84 A7 30 */	addi r4, r4, __ct__21daNpcCd2_HIO_WChild_cFv@l
/* 8015A548  3C A0 80 16 */	lis r5, __dt__21daNpcCd2_HIO_WChild_cFv@ha
/* 8015A54C  38 A5 A6 78 */	addi r5, r5, __dt__21daNpcCd2_HIO_WChild_cFv@l
/* 8015A550  38 C0 02 3C */	li r6, 0x23c
/* 8015A554  38 E0 00 0E */	li r7, 0xe
/* 8015A558  48 20 78 09 */	bl __construct_array
/* 8015A55C  3A E0 00 00 */	li r23, 0
/* 8015A560  3B 20 00 00 */	li r25, 0
/* 8015A564  3B 40 00 00 */	li r26, 0
/* 8015A568  3B 60 00 00 */	li r27, 0
lbl_8015A56C:
/* 8015A56C  3A C0 00 00 */	li r22, 0
/* 8015A570  3B 80 00 00 */	li r28, 0
/* 8015A574  3B A0 00 00 */	li r29, 0
/* 8015A578  3B 1F 04 44 */	addi r24, r31, 0x444
/* 8015A57C  7F 18 DA 14 */	add r24, r24, r27
lbl_8015A580:
/* 8015A580  7C 7A EA 14 */	add r3, r26, r29
/* 8015A584  38 63 00 0C */	addi r3, r3, 0xc
/* 8015A588  7C 7E 1A 14 */	add r3, r30, r3
/* 8015A58C  7C 98 E2 14 */	add r4, r24, r28
/* 8015A590  38 A0 00 14 */	li r5, 0x14
/* 8015A594  4B EA 8F AD */	bl memcpy
/* 8015A598  3A D6 00 01 */	addi r22, r22, 1
/* 8015A59C  2C 16 00 13 */	cmpwi r22, 0x13
/* 8015A5A0  3B 9C 00 14 */	addi r28, r28, 0x14
/* 8015A5A4  3B BD 00 18 */	addi r29, r29, 0x18
/* 8015A5A8  41 80 FF D8 */	blt lbl_8015A580
/* 8015A5AC  38 7A 01 D0 */	addi r3, r26, 0x1d0
/* 8015A5B0  7C 7E 1A 14 */	add r3, r30, r3
/* 8015A5B4  38 9F 1C 04 */	addi r4, r31, 0x1c04
/* 8015A5B8  7C 84 CA 14 */	add r4, r4, r25
/* 8015A5BC  38 A0 00 40 */	li r5, 0x40
/* 8015A5C0  4B EA 8F 81 */	bl memcpy
/* 8015A5C4  3A F7 00 01 */	addi r23, r23, 1
/* 8015A5C8  2C 17 00 10 */	cmpwi r23, 0x10
/* 8015A5CC  3B 39 00 40 */	addi r25, r25, 0x40
/* 8015A5D0  3B 5A 02 0C */	addi r26, r26, 0x20c
/* 8015A5D4  3B 7B 01 7C */	addi r27, r27, 0x17c
/* 8015A5D8  41 80 FF 94 */	blt lbl_8015A56C
/* 8015A5DC  3A C0 00 00 */	li r22, 0
/* 8015A5E0  3B A0 00 00 */	li r29, 0
/* 8015A5E4  3B 80 00 00 */	li r28, 0
/* 8015A5E8  3B 60 00 00 */	li r27, 0
lbl_8015A5EC:
/* 8015A5EC  3A E0 00 00 */	li r23, 0
/* 8015A5F0  3B 40 00 00 */	li r26, 0
/* 8015A5F4  3B 20 00 00 */	li r25, 0
/* 8015A5F8  3B 1F 20 04 */	addi r24, r31, 0x2004
/* 8015A5FC  7F 18 DA 14 */	add r24, r24, r27
lbl_8015A600:
/* 8015A600  7C 7C CA 14 */	add r3, r28, r25
/* 8015A604  38 63 20 CC */	addi r3, r3, 0x20cc
/* 8015A608  7C 7E 1A 14 */	add r3, r30, r3
/* 8015A60C  7C 98 D2 14 */	add r4, r24, r26
/* 8015A610  38 A0 00 14 */	li r5, 0x14
/* 8015A614  4B EA 8F 2D */	bl memcpy
/* 8015A618  3A F7 00 01 */	addi r23, r23, 1
/* 8015A61C  2C 17 00 15 */	cmpwi r23, 0x15
/* 8015A620  3B 5A 00 14 */	addi r26, r26, 0x14
/* 8015A624  3B 39 00 18 */	addi r25, r25, 0x18
/* 8015A628  41 80 FF D8 */	blt lbl_8015A600
/* 8015A62C  38 7C 22 C0 */	addi r3, r28, 0x22c0
/* 8015A630  7C 7E 1A 14 */	add r3, r30, r3
/* 8015A634  38 9F 36 FC */	addi r4, r31, 0x36fc
/* 8015A638  7C 84 EA 14 */	add r4, r4, r29
/* 8015A63C  38 A0 00 40 */	li r5, 0x40
/* 8015A640  4B EA 8F 01 */	bl memcpy
/* 8015A644  3A D6 00 01 */	addi r22, r22, 1
/* 8015A648  2C 16 00 0E */	cmpwi r22, 0xe
/* 8015A64C  3B BD 00 40 */	addi r29, r29, 0x40
/* 8015A650  3B 9C 02 3C */	addi r28, r28, 0x23c
/* 8015A654  3B 7B 01 A4 */	addi r27, r27, 0x1a4
/* 8015A658  41 80 FF 94 */	blt lbl_8015A5EC
/* 8015A65C  7F C3 F3 78 */	mr r3, r30
/* 8015A660  39 61 00 30 */	addi r11, r1, 0x30
/* 8015A664  48 20 7B A9 */	bl _restgpr_22
/* 8015A668  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015A66C  7C 08 03 A6 */	mtlr r0
/* 8015A670  38 21 00 30 */	addi r1, r1, 0x30
/* 8015A674  4E 80 00 20 */	blr 

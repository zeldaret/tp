lbl_8067D530:
/* 8067D530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067D534  7C 08 02 A6 */	mflr r0
/* 8067D538  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067D53C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067D540  7C 7F 1B 78 */	mr r31, r3
/* 8067D544  A8 03 05 C4 */	lha r0, 0x5c4(r3)
/* 8067D548  2C 00 00 01 */	cmpwi r0, 1
/* 8067D54C  41 82 00 58 */	beq lbl_8067D5A4
/* 8067D550  40 80 00 10 */	bge lbl_8067D560
/* 8067D554  2C 00 00 00 */	cmpwi r0, 0
/* 8067D558  40 80 00 14 */	bge lbl_8067D56C
/* 8067D55C  48 00 00 8C */	b lbl_8067D5E8
lbl_8067D560:
/* 8067D560  2C 00 00 03 */	cmpwi r0, 3
/* 8067D564  40 80 00 84 */	bge lbl_8067D5E8
/* 8067D568  48 00 00 48 */	b lbl_8067D5B0
lbl_8067D56C:
/* 8067D56C  38 00 00 19 */	li r0, 0x19
/* 8067D570  B0 1F 05 C6 */	sth r0, 0x5c6(r31)
/* 8067D574  3C 60 80 68 */	lis r3, lit_4367@ha /* 0x8067E8A0@ha */
/* 8067D578  C0 23 E8 A0 */	lfs f1, lit_4367@l(r3)  /* 0x8067E8A0@l */
/* 8067D57C  4B BE A3 D9 */	bl cM_rndF__Ff
/* 8067D580  3C 60 80 68 */	lis r3, lit_4548@ha /* 0x8067E8D4@ha */
/* 8067D584  C0 03 E8 D4 */	lfs f0, lit_4548@l(r3)  /* 0x8067E8D4@l */
/* 8067D588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067D58C  40 81 00 10 */	ble lbl_8067D59C
/* 8067D590  38 00 00 01 */	li r0, 1
/* 8067D594  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
/* 8067D598  48 00 00 0C */	b lbl_8067D5A4
lbl_8067D59C:
/* 8067D59C  38 00 00 02 */	li r0, 2
/* 8067D5A0  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
lbl_8067D5A4:
/* 8067D5A4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8067D5A8  38 03 FC 00 */	addi r0, r3, -1024
/* 8067D5AC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_8067D5B0:
/* 8067D5B0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8067D5B4  38 03 02 00 */	addi r0, r3, 0x200
/* 8067D5B8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8067D5BC  A8 7F 04 E4 */	lha r3, 0x4e4(r31)
/* 8067D5C0  38 03 EE 00 */	addi r0, r3, -4608
/* 8067D5C4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8067D5C8  A8 7F 04 DC */	lha r3, 0x4dc(r31)
/* 8067D5CC  38 03 02 BC */	addi r0, r3, 0x2bc
/* 8067D5D0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8067D5D4  A8 1F 05 C6 */	lha r0, 0x5c6(r31)
/* 8067D5D8  2C 00 00 00 */	cmpwi r0, 0
/* 8067D5DC  40 82 00 0C */	bne lbl_8067D5E8
/* 8067D5E0  7F E3 FB 78 */	mr r3, r31
/* 8067D5E4  4B 99 C6 99 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8067D5E8:
/* 8067D5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067D5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067D5F0  7C 08 03 A6 */	mtlr r0
/* 8067D5F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8067D5F8  4E 80 00 20 */	blr 

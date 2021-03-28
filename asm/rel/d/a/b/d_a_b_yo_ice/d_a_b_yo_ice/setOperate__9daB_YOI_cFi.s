lbl_8063A480:
/* 8063A480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063A484  7C 08 02 A6 */	mflr r0
/* 8063A488  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063A48C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8063A490  7C 7F 1B 78 */	mr r31, r3
/* 8063A494  28 04 00 0A */	cmplwi r4, 0xa
/* 8063A498  41 81 01 7C */	bgt lbl_8063A614
/* 8063A49C  3C A0 80 64 */	lis r5, lit_3891@ha
/* 8063A4A0  38 A5 DE 90 */	addi r5, r5, lit_3891@l
/* 8063A4A4  54 80 10 3A */	slwi r0, r4, 2
/* 8063A4A8  7C 05 00 2E */	lwzx r0, r5, r0
/* 8063A4AC  7C 09 03 A6 */	mtctr r0
/* 8063A4B0  4E 80 04 20 */	bctr 
lbl_8063A4B4:
/* 8063A4B4  38 80 00 03 */	li r4, 3
/* 8063A4B8  38 A0 00 00 */	li r5, 0
/* 8063A4BC  4B FF FE 1D */	bl setActionMode__9daB_YOI_cFii
/* 8063A4C0  48 00 01 54 */	b lbl_8063A614
lbl_8063A4C4:
/* 8063A4C4  38 80 00 01 */	li r4, 1
/* 8063A4C8  38 A0 00 00 */	li r5, 0
/* 8063A4CC  4B FF FE 0D */	bl setActionMode__9daB_YOI_cFii
/* 8063A4D0  48 00 01 44 */	b lbl_8063A614
lbl_8063A4D4:
/* 8063A4D4  38 80 00 01 */	li r4, 1
/* 8063A4D8  38 A0 00 01 */	li r5, 1
/* 8063A4DC  4B FF FD FD */	bl setActionMode__9daB_YOI_cFii
/* 8063A4E0  48 00 01 34 */	b lbl_8063A614
lbl_8063A4E4:
/* 8063A4E4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8063A4E8  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8063A4EC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8063A4F0  38 80 00 01 */	li r4, 1
/* 8063A4F4  38 A0 00 08 */	li r5, 8
/* 8063A4F8  4B FF FD E1 */	bl setActionMode__9daB_YOI_cFii
/* 8063A4FC  48 00 01 18 */	b lbl_8063A614
lbl_8063A500:
/* 8063A500  38 80 00 01 */	li r4, 1
/* 8063A504  38 A0 00 09 */	li r5, 9
/* 8063A508  4B FF FD D1 */	bl setActionMode__9daB_YOI_cFii
/* 8063A50C  48 00 01 08 */	b lbl_8063A614
lbl_8063A510:
/* 8063A510  38 80 00 04 */	li r4, 4
/* 8063A514  38 A0 00 00 */	li r5, 0
/* 8063A518  4B FF FD C1 */	bl setActionMode__9daB_YOI_cFii
/* 8063A51C  48 00 00 F8 */	b lbl_8063A614
lbl_8063A520:
/* 8063A520  38 80 00 05 */	li r4, 5
/* 8063A524  38 A0 00 00 */	li r5, 0
/* 8063A528  4B FF FD B1 */	bl setActionMode__9daB_YOI_cFii
/* 8063A52C  48 00 00 E8 */	b lbl_8063A614
lbl_8063A530:
/* 8063A530  48 00 01 09 */	bl setBreakIceEffect__9daB_YOI_cFv
/* 8063A534  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 8063A538  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8063A53C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8063A540  4B FF 56 AC */	b onIceBreak__8daB_YO_cFUs
/* 8063A544  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FC@ha */
/* 8063A548  38 03 02 FC */	addi r0, r3, 0x02FC /* 0x000702FC@l */
/* 8063A54C  90 01 00 08 */	stw r0, 8(r1)
/* 8063A550  38 7F 06 48 */	addi r3, r31, 0x648
/* 8063A554  38 81 00 08 */	addi r4, r1, 8
/* 8063A558  38 A0 00 00 */	li r5, 0
/* 8063A55C  38 C0 FF FF */	li r6, -1
/* 8063A560  81 9F 06 58 */	lwz r12, 0x658(r31)
/* 8063A564  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063A568  7D 89 03 A6 */	mtctr r12
/* 8063A56C  4E 80 04 21 */	bctrl 
/* 8063A570  7F E3 FB 78 */	mr r3, r31
/* 8063A574  4B 9D F7 08 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8063A578  4B C2 D2 F4 */	b cM_rnd__Fv
/* 8063A57C  3C 60 80 64 */	lis r3, lit_3859@ha
/* 8063A580  C0 03 DC 90 */	lfs f0, lit_3859@l(r3)
/* 8063A584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063A588  40 80 00 8C */	bge lbl_8063A614
/* 8063A58C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8063A590  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8063A594  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8063A598  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8063A59C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8063A5A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8063A5A4  3C 60 80 64 */	lis r3, lit_3860@ha
/* 8063A5A8  C0 03 DC 94 */	lfs f0, lit_3860@l(r3)
/* 8063A5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063A5B0  40 80 00 08 */	bge lbl_8063A5B8
/* 8063A5B4  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8063A5B8:
/* 8063A5B8  38 61 00 0C */	addi r3, r1, 0xc
/* 8063A5BC  38 80 00 00 */	li r4, 0
/* 8063A5C0  38 A0 FF FF */	li r5, -1
/* 8063A5C4  38 C0 FF FF */	li r6, -1
/* 8063A5C8  38 E0 00 00 */	li r7, 0
/* 8063A5CC  39 00 00 00 */	li r8, 0
/* 8063A5D0  39 20 00 00 */	li r9, 0
/* 8063A5D4  4B 9E 1C 6C */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 8063A5D8  48 00 00 3C */	b lbl_8063A614
lbl_8063A5DC:
/* 8063A5DC  38 80 00 02 */	li r4, 2
/* 8063A5E0  38 A0 00 00 */	li r5, 0
/* 8063A5E4  4B FF FC F5 */	bl setActionMode__9daB_YOI_cFii
/* 8063A5E8  48 00 00 2C */	b lbl_8063A614
lbl_8063A5EC:
/* 8063A5EC  38 80 00 06 */	li r4, 6
/* 8063A5F0  38 A0 00 00 */	li r5, 0
/* 8063A5F4  4B FF FC E5 */	bl setActionMode__9daB_YOI_cFii
/* 8063A5F8  48 00 00 1C */	b lbl_8063A614
lbl_8063A5FC:
/* 8063A5FC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8063A600  60 00 40 00 */	ori r0, r0, 0x4000
/* 8063A604  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8063A608  38 80 00 07 */	li r4, 7
/* 8063A60C  38 A0 00 00 */	li r5, 0
/* 8063A610  4B FF FC C9 */	bl setActionMode__9daB_YOI_cFii
lbl_8063A614:
/* 8063A614  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8063A618  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063A61C  7C 08 03 A6 */	mtlr r0
/* 8063A620  38 21 00 20 */	addi r1, r1, 0x20
/* 8063A624  4E 80 00 20 */	blr 

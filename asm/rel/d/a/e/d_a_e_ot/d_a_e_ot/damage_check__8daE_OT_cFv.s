lbl_8073A510:
/* 8073A510  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073A514  7C 08 02 A6 */	mflr r0
/* 8073A518  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073A51C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8073A520  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8073A524  7C 7E 1B 78 */	mr r30, r3
/* 8073A528  3C 60 80 74 */	lis r3, lit_3910@ha /* 0x8073CEA8@ha */
/* 8073A52C  3B E3 CE A8 */	addi r31, r3, lit_3910@l /* 0x8073CEA8@l */
/* 8073A530  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 8073A534  2C 00 00 04 */	cmpwi r0, 4
/* 8073A538  41 82 02 60 */	beq lbl_8073A798
/* 8073A53C  38 7E 08 CC */	addi r3, r30, 0x8cc
/* 8073A540  4B 94 92 F1 */	bl Move__10dCcD_GSttsFv
/* 8073A544  80 1E 0A 80 */	lwz r0, 0xa80(r30)
/* 8073A548  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8073A54C  41 82 00 20 */	beq lbl_8073A56C
/* 8073A550  80 1E 0A 80 */	lwz r0, 0xa80(r30)
/* 8073A554  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8073A558  90 1E 0A 80 */	stw r0, 0xa80(r30)
/* 8073A55C  7F C3 F3 78 */	mr r3, r30
/* 8073A560  38 80 00 03 */	li r4, 3
/* 8073A564  38 A0 00 01 */	li r5, 1
/* 8073A568  4B FF FF 91 */	bl setActionMode__8daE_OT_cFii
lbl_8073A56C:
/* 8073A56C  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 8073A570  4B 94 A0 E9 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8073A574  28 03 00 00 */	cmplwi r3, 0
/* 8073A578  41 82 00 3C */	beq lbl_8073A5B4
/* 8073A57C  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 8073A580  4B 94 A1 71 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 8073A584  4B B2 94 C5 */	bl GetAc__8cCcD_ObjFv
/* 8073A588  A8 03 00 08 */	lha r0, 8(r3)
/* 8073A58C  2C 00 02 00 */	cmpwi r0, 0x200
/* 8073A590  40 82 00 24 */	bne lbl_8073A5B4
/* 8073A594  88 03 07 76 */	lbz r0, 0x776(r3)
/* 8073A598  28 00 00 00 */	cmplwi r0, 0
/* 8073A59C  41 82 00 18 */	beq lbl_8073A5B4
/* 8073A5A0  7F C3 F3 78 */	mr r3, r30
/* 8073A5A4  38 80 00 04 */	li r4, 4
/* 8073A5A8  38 A0 00 0A */	li r5, 0xa
/* 8073A5AC  4B FF FF 4D */	bl setActionMode__8daE_OT_cFii
/* 8073A5B0  48 00 01 E8 */	b lbl_8073A798
lbl_8073A5B4:
/* 8073A5B4  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 8073A5B8  88 03 07 77 */	lbz r0, 0x777(r3)
/* 8073A5BC  28 00 00 00 */	cmplwi r0, 0
/* 8073A5C0  41 82 01 40 */	beq lbl_8073A700
/* 8073A5C4  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8073A5C8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8073A5CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073A5D0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073A5D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8073A5D8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8073A5DC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8073A5E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8073A5E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073A5E8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8073A5EC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8073A5F0  38 61 00 0C */	addi r3, r1, 0xc
/* 8073A5F4  38 81 00 18 */	addi r4, r1, 0x18
/* 8073A5F8  4B C0 CD A5 */	bl PSVECSquareDistance
/* 8073A5FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073A600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073A604  40 81 00 58 */	ble lbl_8073A65C
/* 8073A608  FC 00 08 34 */	frsqrte f0, f1
/* 8073A60C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8073A610  FC 44 00 32 */	fmul f2, f4, f0
/* 8073A614  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8073A618  FC 00 00 32 */	fmul f0, f0, f0
/* 8073A61C  FC 01 00 32 */	fmul f0, f1, f0
/* 8073A620  FC 03 00 28 */	fsub f0, f3, f0
/* 8073A624  FC 02 00 32 */	fmul f0, f2, f0
/* 8073A628  FC 44 00 32 */	fmul f2, f4, f0
/* 8073A62C  FC 00 00 32 */	fmul f0, f0, f0
/* 8073A630  FC 01 00 32 */	fmul f0, f1, f0
/* 8073A634  FC 03 00 28 */	fsub f0, f3, f0
/* 8073A638  FC 02 00 32 */	fmul f0, f2, f0
/* 8073A63C  FC 44 00 32 */	fmul f2, f4, f0
/* 8073A640  FC 00 00 32 */	fmul f0, f0, f0
/* 8073A644  FC 01 00 32 */	fmul f0, f1, f0
/* 8073A648  FC 03 00 28 */	fsub f0, f3, f0
/* 8073A64C  FC 02 00 32 */	fmul f0, f2, f0
/* 8073A650  FC 21 00 32 */	fmul f1, f1, f0
/* 8073A654  FC 20 08 18 */	frsp f1, f1
/* 8073A658  48 00 00 88 */	b lbl_8073A6E0
lbl_8073A65C:
/* 8073A65C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8073A660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073A664  40 80 00 10 */	bge lbl_8073A674
/* 8073A668  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073A66C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073A670  48 00 00 70 */	b lbl_8073A6E0
lbl_8073A674:
/* 8073A674  D0 21 00 08 */	stfs f1, 8(r1)
/* 8073A678  80 81 00 08 */	lwz r4, 8(r1)
/* 8073A67C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073A680  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073A684  7C 03 00 00 */	cmpw r3, r0
/* 8073A688  41 82 00 14 */	beq lbl_8073A69C
/* 8073A68C  40 80 00 40 */	bge lbl_8073A6CC
/* 8073A690  2C 03 00 00 */	cmpwi r3, 0
/* 8073A694  41 82 00 20 */	beq lbl_8073A6B4
/* 8073A698  48 00 00 34 */	b lbl_8073A6CC
lbl_8073A69C:
/* 8073A69C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073A6A0  41 82 00 0C */	beq lbl_8073A6AC
/* 8073A6A4  38 00 00 01 */	li r0, 1
/* 8073A6A8  48 00 00 28 */	b lbl_8073A6D0
lbl_8073A6AC:
/* 8073A6AC  38 00 00 02 */	li r0, 2
/* 8073A6B0  48 00 00 20 */	b lbl_8073A6D0
lbl_8073A6B4:
/* 8073A6B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073A6B8  41 82 00 0C */	beq lbl_8073A6C4
/* 8073A6BC  38 00 00 05 */	li r0, 5
/* 8073A6C0  48 00 00 10 */	b lbl_8073A6D0
lbl_8073A6C4:
/* 8073A6C4  38 00 00 03 */	li r0, 3
/* 8073A6C8  48 00 00 08 */	b lbl_8073A6D0
lbl_8073A6CC:
/* 8073A6CC  38 00 00 04 */	li r0, 4
lbl_8073A6D0:
/* 8073A6D0  2C 00 00 01 */	cmpwi r0, 1
/* 8073A6D4  40 82 00 0C */	bne lbl_8073A6E0
/* 8073A6D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073A6DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8073A6E0:
/* 8073A6E0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8073A6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073A6E8  40 80 00 18 */	bge lbl_8073A700
/* 8073A6EC  7F C3 F3 78 */	mr r3, r30
/* 8073A6F0  38 80 00 04 */	li r4, 4
/* 8073A6F4  38 A0 00 0A */	li r5, 0xa
/* 8073A6F8  4B FF FE 01 */	bl setActionMode__8daE_OT_cFii
/* 8073A6FC  48 00 00 9C */	b lbl_8073A798
lbl_8073A700:
/* 8073A700  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 8073A704  4B 94 9D 5D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8073A708  28 03 00 00 */	cmplwi r3, 0
/* 8073A70C  41 82 00 8C */	beq lbl_8073A798
/* 8073A710  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 8073A714  4B 94 9D E5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8073A718  90 7E 0B 5C */	stw r3, 0xb5c(r30)
/* 8073A71C  80 7E 0B 5C */	lwz r3, 0xb5c(r30)
/* 8073A720  4B B2 93 29 */	bl GetAc__8cCcD_ObjFv
/* 8073A724  7F C3 F3 78 */	mr r3, r30
/* 8073A728  38 9E 0B 5C */	addi r4, r30, 0xb5c
/* 8073A72C  4B 94 D4 D9 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8073A730  38 00 00 00 */	li r0, 0
/* 8073A734  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8073A738  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8073A73C  80 7E 0B 5C */	lwz r3, 0xb5c(r30)
/* 8073A740  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8073A744  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8073A748  41 82 00 18 */	beq lbl_8073A760
/* 8073A74C  7F C3 F3 78 */	mr r3, r30
/* 8073A750  38 80 00 03 */	li r4, 3
/* 8073A754  38 A0 00 00 */	li r5, 0
/* 8073A758  4B FF FD A1 */	bl setActionMode__8daE_OT_cFii
/* 8073A75C  48 00 00 3C */	b lbl_8073A798
lbl_8073A760:
/* 8073A760  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8073A764  41 82 00 24 */	beq lbl_8073A788
/* 8073A768  3C 60 D8 FB */	lis r3, 0xD8FB /* 0xD8FAFDFF@ha */
/* 8073A76C  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FAFDFF@l */
/* 8073A770  90 1E 09 14 */	stw r0, 0x914(r30)
/* 8073A774  7F C3 F3 78 */	mr r3, r30
/* 8073A778  38 80 00 03 */	li r4, 3
/* 8073A77C  38 A0 00 05 */	li r5, 5
/* 8073A780  4B FF FD 79 */	bl setActionMode__8daE_OT_cFii
/* 8073A784  48 00 00 14 */	b lbl_8073A798
lbl_8073A788:
/* 8073A788  7F C3 F3 78 */	mr r3, r30
/* 8073A78C  38 80 00 04 */	li r4, 4
/* 8073A790  38 A0 00 00 */	li r5, 0
/* 8073A794  4B FF FD 65 */	bl setActionMode__8daE_OT_cFii
lbl_8073A798:
/* 8073A798  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8073A79C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8073A7A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073A7A4  7C 08 03 A6 */	mtlr r0
/* 8073A7A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8073A7AC  4E 80 00 20 */	blr 

lbl_807C783C:
/* 807C783C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807C7840  7C 08 02 A6 */	mflr r0
/* 807C7844  90 01 00 44 */	stw r0, 0x44(r1)
/* 807C7848  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807C784C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807C7850  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807C7854  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807C7858  7C 7F 1B 78 */	mr r31, r3
/* 807C785C  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C7860  3B C3 EC A8 */	addi r30, r3, lit_3907@l
/* 807C7864  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807C7868  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 807C786C  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 807C7870  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C7874  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 807C7878  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 807C787C  C0 9E 00 08 */	lfs f4, 8(r30)
/* 807C7880  4B AA 80 FC */	b cLib_addCalc__FPfffff
/* 807C7884  80 1F 13 20 */	lwz r0, 0x1320(r31)
/* 807C7888  2C 00 00 01 */	cmpwi r0, 1
/* 807C788C  41 82 00 64 */	beq lbl_807C78F0
/* 807C7890  40 80 01 B4 */	bge lbl_807C7A44
/* 807C7894  2C 00 00 00 */	cmpwi r0, 0
/* 807C7898  40 80 00 08 */	bge lbl_807C78A0
/* 807C789C  48 00 01 A8 */	b lbl_807C7A44
lbl_807C78A0:
/* 807C78A0  7F E3 FB 78 */	mr r3, r31
/* 807C78A4  38 80 00 0D */	li r4, 0xd
/* 807C78A8  38 A0 00 00 */	li r5, 0
/* 807C78AC  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807C78B0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807C78B4  4B FF BF 65 */	bl setBck__8daE_VA_cFiUcff
/* 807C78B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033F@ha */
/* 807C78BC  38 03 03 3F */	addi r0, r3, 0x033F /* 0x0007033F@l */
/* 807C78C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C78C4  38 7F 12 54 */	addi r3, r31, 0x1254
/* 807C78C8  38 81 00 10 */	addi r4, r1, 0x10
/* 807C78CC  38 A0 00 00 */	li r5, 0
/* 807C78D0  38 C0 FF FF */	li r6, -1
/* 807C78D4  81 9F 12 54 */	lwz r12, 0x1254(r31)
/* 807C78D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C78DC  7D 89 03 A6 */	mtctr r12
/* 807C78E0  4E 80 04 21 */	bctrl 
/* 807C78E4  38 00 00 01 */	li r0, 1
/* 807C78E8  90 1F 13 20 */	stw r0, 0x1320(r31)
/* 807C78EC  48 00 01 80 */	b lbl_807C7A6C
lbl_807C78F0:
/* 807C78F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807C78F4  38 63 00 0C */	addi r3, r3, 0xc
/* 807C78F8  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 807C78FC  4B B6 0B 30 */	b checkPass__12J3DFrameCtrlFf
/* 807C7900  2C 03 00 00 */	cmpwi r3, 0
/* 807C7904  41 82 00 30 */	beq lbl_807C7934
/* 807C7908  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033B@ha */
/* 807C790C  38 03 03 3B */	addi r0, r3, 0x033B /* 0x0007033B@l */
/* 807C7910  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C7914  38 7F 12 54 */	addi r3, r31, 0x1254
/* 807C7918  38 81 00 0C */	addi r4, r1, 0xc
/* 807C791C  38 A0 00 00 */	li r5, 0
/* 807C7920  38 C0 FF FF */	li r6, -1
/* 807C7924  81 9F 12 54 */	lwz r12, 0x1254(r31)
/* 807C7928  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C792C  7D 89 03 A6 */	mtctr r12
/* 807C7930  4E 80 04 21 */	bctrl 
lbl_807C7934:
/* 807C7934  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807C7938  38 63 00 0C */	addi r3, r3, 0xc
/* 807C793C  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 807C7940  4B B6 0A EC */	b checkPass__12J3DFrameCtrlFf
/* 807C7944  2C 03 00 00 */	cmpwi r3, 0
/* 807C7948  41 82 00 68 */	beq lbl_807C79B0
/* 807C794C  7F E3 FB 78 */	mr r3, r31
/* 807C7950  4B FF D5 C1 */	bl setWeponLandEffect__8daE_VA_cFv
/* 807C7954  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007033A@ha */
/* 807C7958  38 03 03 3A */	addi r0, r3, 0x033A /* 0x0007033A@l */
/* 807C795C  90 01 00 08 */	stw r0, 8(r1)
/* 807C7960  38 7F 12 54 */	addi r3, r31, 0x1254
/* 807C7964  38 81 00 08 */	addi r4, r1, 8
/* 807C7968  38 A0 00 00 */	li r5, 0
/* 807C796C  38 C0 FF FF */	li r6, -1
/* 807C7970  81 9F 12 54 */	lwz r12, 0x1254(r31)
/* 807C7974  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C7978  7D 89 03 A6 */	mtctr r12
/* 807C797C  4E 80 04 21 */	bctrl 
/* 807C7980  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C7984  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807C7988  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807C798C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807C7990  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807C7994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C7998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C799C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C79A0  38 80 00 05 */	li r4, 5
/* 807C79A4  38 A0 00 1F */	li r5, 0x1f
/* 807C79A8  38 C1 00 14 */	addi r6, r1, 0x14
/* 807C79AC  4B 8A 80 78 */	b StartShock__12dVibration_cFii4cXyz
lbl_807C79B0:
/* 807C79B0  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807C79B4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 807C79B8  4C 40 13 82 */	cror 2, 0, 2
/* 807C79BC  40 82 00 20 */	bne lbl_807C79DC
/* 807C79C0  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 807C79C4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807C79C8  4C 40 13 82 */	cror 2, 0, 2
/* 807C79CC  40 82 00 10 */	bne lbl_807C79DC
/* 807C79D0  7F E3 FB 78 */	mr r3, r31
/* 807C79D4  4B FF C0 49 */	bl onSwordAtBit__8daE_VA_cFv
/* 807C79D8  48 00 00 24 */	b lbl_807C79FC
lbl_807C79DC:
/* 807C79DC  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 807C79E0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807C79E4  40 81 00 18 */	ble lbl_807C79FC
/* 807C79E8  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 807C79EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807C79F0  40 80 00 0C */	bge lbl_807C79FC
/* 807C79F4  7F E3 FB 78 */	mr r3, r31
/* 807C79F8  4B FF C0 59 */	bl offSwordShield__8daE_VA_cFv
lbl_807C79FC:
/* 807C79FC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807C7A00  38 80 00 01 */	li r4, 1
/* 807C7A04  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C7A08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C7A0C  40 82 00 18 */	bne lbl_807C7A24
/* 807C7A10  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C7A14  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C7A18  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C7A1C  41 82 00 08 */	beq lbl_807C7A24
/* 807C7A20  38 80 00 00 */	li r4, 0
lbl_807C7A24:
/* 807C7A24  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C7A28  41 82 00 1C */	beq lbl_807C7A44
/* 807C7A2C  7F E3 FB 78 */	mr r3, r31
/* 807C7A30  38 80 00 03 */	li r4, 3
/* 807C7A34  38 A0 00 00 */	li r5, 0
/* 807C7A38  4B FF BE E1 */	bl setActionMode__8daE_VA_cFii
/* 807C7A3C  38 00 00 96 */	li r0, 0x96
/* 807C7A40  90 1F 13 40 */	stw r0, 0x1340(r31)
lbl_807C7A44:
/* 807C7A44  4B 99 79 E0 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 807C7A48  2C 03 00 00 */	cmpwi r3, 0
/* 807C7A4C  41 82 00 20 */	beq lbl_807C7A6C
/* 807C7A50  80 1F 13 58 */	lwz r0, 0x1358(r31)
/* 807C7A54  2C 00 00 00 */	cmpwi r0, 0
/* 807C7A58  40 82 00 14 */	bne lbl_807C7A6C
/* 807C7A5C  7F E3 FB 78 */	mr r3, r31
/* 807C7A60  38 80 00 05 */	li r4, 5
/* 807C7A64  38 A0 00 00 */	li r5, 0
/* 807C7A68  4B FF BE B1 */	bl setActionMode__8daE_VA_cFii
lbl_807C7A6C:
/* 807C7A6C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807C7A70  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807C7A74  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807C7A78  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807C7A7C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807C7A80  7C 08 03 A6 */	mtlr r0
/* 807C7A84  38 21 00 40 */	addi r1, r1, 0x40
/* 807C7A88  4E 80 00 20 */	blr 

lbl_80C46AE4:
/* 80C46AE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C46AE8  7C 08 02 A6 */	mflr r0
/* 80C46AEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C46AF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C46AF4  4B 71 B6 E9 */	bl _savegpr_29
/* 80C46AF8  7C 7D 1B 78 */	mr r29, r3
/* 80C46AFC  7C 9E 23 78 */	mr r30, r4
/* 80C46B00  3C 60 80 C4 */	lis r3, lit_3715@ha /* 0x80C46F54@ha */
/* 80C46B04  3B E3 6F 54 */	addi r31, r3, lit_3715@l /* 0x80C46F54@l */
/* 80C46B08  80 7D 07 50 */	lwz r3, 0x750(r29)
/* 80C46B0C  38 03 00 01 */	addi r0, r3, 1
/* 80C46B10  90 1D 07 50 */	stw r0, 0x750(r29)
/* 80C46B14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C46B18  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C46B1C  A8 7D 07 4A */	lha r3, 0x74a(r29)
/* 80C46B20  38 63 03 E8 */	addi r3, r3, 0x3e8
/* 80C46B24  80 1D 07 50 */	lwz r0, 0x750(r29)
/* 80C46B28  7C 03 01 D6 */	mullw r0, r3, r0
/* 80C46B2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C46B30  7C 64 02 14 */	add r3, r4, r0
/* 80C46B34  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C46B38  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C46B3C  C0 1D 07 4C */	lfs f0, 0x74c(r29)
/* 80C46B40  EC 01 00 2A */	fadds f0, f1, f0
/* 80C46B44  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C46B48  FC 00 00 1E */	fctiwz f0, f0
/* 80C46B4C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C46B50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C46B54  B0 1D 07 46 */	sth r0, 0x746(r29)
/* 80C46B58  A8 7D 07 4A */	lha r3, 0x74a(r29)
/* 80C46B5C  38 63 03 E8 */	addi r3, r3, 0x3e8
/* 80C46B60  80 1D 07 50 */	lwz r0, 0x750(r29)
/* 80C46B64  7C 03 01 D6 */	mullw r0, r3, r0
/* 80C46B68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C46B6C  7C 44 04 2E */	lfsx f2, r4, r0
/* 80C46B70  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C46B74  C0 1D 07 4C */	lfs f0, 0x74c(r29)
/* 80C46B78  EC 01 00 2A */	fadds f0, f1, f0
/* 80C46B7C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C46B80  FC 00 00 1E */	fctiwz f0, f0
/* 80C46B84  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C46B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46B8C  B0 1D 07 48 */	sth r0, 0x748(r29)
/* 80C46B90  38 7D 07 4C */	addi r3, r29, 0x74c
/* 80C46B94  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C46B98  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80C46B9C  4B 62 8E E5 */	bl cLib_addCalc0__FPfff
/* 80C46BA0  38 7D 07 4A */	addi r3, r29, 0x74a
/* 80C46BA4  38 80 00 00 */	li r4, 0
/* 80C46BA8  38 A0 00 14 */	li r5, 0x14
/* 80C46BAC  38 C0 00 64 */	li r6, 0x64
/* 80C46BB0  4B 62 9A 59 */	bl cLib_addCalcAngleS2__FPssss
/* 80C46BB4  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80C46BB8  4B 43 D8 A9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C46BBC  28 03 00 00 */	cmplwi r3, 0
/* 80C46BC0  41 82 00 14 */	beq lbl_80C46BD4
/* 80C46BC4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C46BC8  D0 1D 07 4C */	stfs f0, 0x74c(r29)
/* 80C46BCC  38 00 00 00 */	li r0, 0
/* 80C46BD0  B0 1D 07 4A */	sth r0, 0x74a(r29)
lbl_80C46BD4:
/* 80C46BD4  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80C46BD8  90 1E 00 00 */	stw r0, 0(r30)
/* 80C46BDC  7F A3 EB 78 */	mr r3, r29
/* 80C46BE0  4B FF FB C5 */	bl setBaseMtx__14daObjKKanban_cFv
/* 80C46BE4  7F A3 EB 78 */	mr r3, r29
/* 80C46BE8  4B FF FD 41 */	bl setTG__14daObjKKanban_cFv
/* 80C46BEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C46BF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C46BF4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C46BF8  38 9D 05 E8 */	addi r4, r29, 0x5e8
/* 80C46BFC  4B 61 DF AD */	bl Set__4cCcSFP8cCcD_Obj
/* 80C46C00  38 60 00 01 */	li r3, 1
/* 80C46C04  39 61 00 30 */	addi r11, r1, 0x30
/* 80C46C08  4B 71 B6 21 */	bl _restgpr_29
/* 80C46C0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C46C10  7C 08 03 A6 */	mtlr r0
/* 80C46C14  38 21 00 30 */	addi r1, r1, 0x30
/* 80C46C18  4E 80 00 20 */	blr 

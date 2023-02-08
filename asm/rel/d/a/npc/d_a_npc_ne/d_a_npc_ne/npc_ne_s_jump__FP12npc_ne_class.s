lbl_80A8C748:
/* 80A8C748  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A8C74C  7C 08 02 A6 */	mflr r0
/* 80A8C750  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A8C754  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A8C758  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A8C75C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A8C760  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A8C764  39 61 00 20 */	addi r11, r1, 0x20
/* 80A8C768  4B 8D 5A 75 */	bl _savegpr_29
/* 80A8C76C  7C 7F 1B 78 */	mr r31, r3
/* 80A8C770  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8C774  3B C4 24 1C */	addi r30, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A8C778  80 83 05 E8 */	lwz r4, 0x5e8(r3)
/* 80A8C77C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A8C780  FC 00 00 1E */	fctiwz f0, f0
/* 80A8C784  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A8C788  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80A8C78C  C3 FE 00 10 */	lfs f31, 0x10(r30)
/* 80A8C790  C3 DE 00 74 */	lfs f30, 0x74(r30)
/* 80A8C794  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8C798  2C 00 00 02 */	cmpwi r0, 2
/* 80A8C79C  41 82 00 94 */	beq lbl_80A8C830
/* 80A8C7A0  40 80 00 14 */	bge lbl_80A8C7B4
/* 80A8C7A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A8C7A8  41 82 00 18 */	beq lbl_80A8C7C0
/* 80A8C7AC  40 80 00 40 */	bge lbl_80A8C7EC
/* 80A8C7B0  48 00 01 0C */	b lbl_80A8C8BC
lbl_80A8C7B4:
/* 80A8C7B4  2C 00 00 04 */	cmpwi r0, 4
/* 80A8C7B8  40 80 01 04 */	bge lbl_80A8C8BC
/* 80A8C7BC  48 00 00 CC */	b lbl_80A8C888
lbl_80A8C7C0:
/* 80A8C7C0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A8C7C4  D0 1F 06 38 */	stfs f0, 0x638(r31)
/* 80A8C7C8  38 80 00 15 */	li r4, 0x15
/* 80A8C7CC  FC 20 F0 90 */	fmr f1, f30
/* 80A8C7D0  38 A0 00 00 */	li r5, 0
/* 80A8C7D4  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80A8C7D8  4B FF C5 3D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C7DC  A8 7F 06 46 */	lha r3, 0x646(r31)
/* 80A8C7E0  38 03 00 01 */	addi r0, r3, 1
/* 80A8C7E4  B0 1F 06 46 */	sth r0, 0x646(r31)
/* 80A8C7E8  48 00 00 D4 */	b lbl_80A8C8BC
lbl_80A8C7EC:
/* 80A8C7EC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80A8C7F0  A8 9F 05 D0 */	lha r4, 0x5d0(r31)
/* 80A8C7F4  38 A0 00 02 */	li r5, 2
/* 80A8C7F8  38 C0 20 00 */	li r6, 0x2000
/* 80A8C7FC  4B 7E 3E 0D */	bl cLib_addCalcAngleS2__FPssss
/* 80A8C800  2C 1D 00 03 */	cmpwi r29, 3
/* 80A8C804  41 80 00 B8 */	blt lbl_80A8C8BC
/* 80A8C808  7F E3 FB 78 */	mr r3, r31
/* 80A8C80C  38 80 00 0E */	li r4, 0xe
/* 80A8C810  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80A8C814  38 A0 00 00 */	li r5, 0
/* 80A8C818  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A8C81C  4B FF C4 F9 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C820  A8 7F 06 46 */	lha r3, 0x646(r31)
/* 80A8C824  38 03 00 01 */	addi r0, r3, 1
/* 80A8C828  B0 1F 06 46 */	sth r0, 0x646(r31)
/* 80A8C82C  48 00 00 90 */	b lbl_80A8C8BC
lbl_80A8C830:
/* 80A8C830  2C 1D 00 01 */	cmpwi r29, 1
/* 80A8C834  41 80 00 10 */	blt lbl_80A8C844
/* 80A8C838  C3 FE 00 4C */	lfs f31, 0x4c(r30)
/* 80A8C83C  FF C0 F8 90 */	fmr f30, f31
/* 80A8C840  48 00 00 0C */	b lbl_80A8C84C
lbl_80A8C844:
/* 80A8C844  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 80A8C848  FF C0 F8 90 */	fmr f30, f31
lbl_80A8C84C:
/* 80A8C84C  2C 1D 00 03 */	cmpwi r29, 3
/* 80A8C850  41 80 00 6C */	blt lbl_80A8C8BC
/* 80A8C854  7F E3 FB 78 */	mr r3, r31
/* 80A8C858  38 80 00 0C */	li r4, 0xc
/* 80A8C85C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80A8C860  38 A0 00 00 */	li r5, 0
/* 80A8C864  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A8C868  4B FF C4 AD */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C86C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80A8C870  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A8C874  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80A8C878  A8 7F 06 46 */	lha r3, 0x646(r31)
/* 80A8C87C  38 03 00 01 */	addi r0, r3, 1
/* 80A8C880  B0 1F 06 46 */	sth r0, 0x646(r31)
/* 80A8C884  48 00 00 38 */	b lbl_80A8C8BC
lbl_80A8C888:
/* 80A8C888  38 60 00 01 */	li r3, 1
/* 80A8C88C  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A8C890  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8C894  40 82 00 14 */	bne lbl_80A8C8A8
/* 80A8C898  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A8C89C  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80A8C8A0  41 82 00 08 */	beq lbl_80A8C8A8
/* 80A8C8A4  38 60 00 00 */	li r3, 0
lbl_80A8C8A8:
/* 80A8C8A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8C8AC  41 82 00 10 */	beq lbl_80A8C8BC
/* 80A8C8B0  38 00 00 00 */	li r0, 0
/* 80A8C8B4  B0 1F 06 42 */	sth r0, 0x642(r31)
/* 80A8C8B8  B0 1F 06 46 */	sth r0, 0x646(r31)
lbl_80A8C8BC:
/* 80A8C8BC  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80A8C8C0  FC 20 F8 90 */	fmr f1, f31
/* 80A8C8C4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A8C8C8  FC 60 F0 90 */	fmr f3, f30
/* 80A8C8CC  4B 7E 31 71 */	bl cLib_addCalc2__FPffff
/* 80A8C8D0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A8C8D4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A8C8D8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A8C8DC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A8C8E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A8C8E4  4B 8D 59 45 */	bl _restgpr_29
/* 80A8C8E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A8C8EC  7C 08 03 A6 */	mtlr r0
/* 80A8C8F0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A8C8F4  4E 80 00 20 */	blr 

lbl_80A8C508:
/* 80A8C508  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A8C50C  7C 08 02 A6 */	mflr r0
/* 80A8C510  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A8C514  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A8C518  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A8C51C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A8C520  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A8C524  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A8C528  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A8C52C  7C 7E 1B 78 */	mr r30, r3
/* 80A8C530  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8C534  3B E4 24 1C */	addi r31, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A8C538  80 83 05 E8 */	lwz r4, 0x5e8(r3)
/* 80A8C53C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80A8C540  FC 00 00 1E */	fctiwz f0, f0
/* 80A8C544  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8C548  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80A8C54C  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80A8C550  C3 DF 00 74 */	lfs f30, 0x74(r31)
/* 80A8C554  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8C558  2C 00 00 02 */	cmpwi r0, 2
/* 80A8C55C  41 82 00 E4 */	beq lbl_80A8C640
/* 80A8C560  40 80 00 14 */	bge lbl_80A8C574
/* 80A8C564  2C 00 00 00 */	cmpwi r0, 0
/* 80A8C568  41 82 00 18 */	beq lbl_80A8C580
/* 80A8C56C  40 80 00 3C */	bge lbl_80A8C5A8
/* 80A8C570  48 00 01 9C */	b lbl_80A8C70C
lbl_80A8C574:
/* 80A8C574  2C 00 00 04 */	cmpwi r0, 4
/* 80A8C578  40 80 01 94 */	bge lbl_80A8C70C
/* 80A8C57C  48 00 01 5C */	b lbl_80A8C6D8
lbl_80A8C580:
/* 80A8C580  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C584  D0 5E 06 38 */	stfs f2, 0x638(r30)
/* 80A8C588  38 80 00 15 */	li r4, 0x15
/* 80A8C58C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8C590  38 A0 00 00 */	li r5, 0
/* 80A8C594  4B FF C7 81 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C598  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8C59C  38 03 00 01 */	addi r0, r3, 1
/* 80A8C5A0  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8C5A4  48 00 01 68 */	b lbl_80A8C70C
lbl_80A8C5A8:
/* 80A8C5A8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A8C5AC  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80A8C5B0  38 A0 00 04 */	li r5, 4
/* 80A8C5B4  38 C0 10 00 */	li r6, 0x1000
/* 80A8C5B8  4B 7E 40 51 */	bl cLib_addCalcAngleS2__FPssss
/* 80A8C5BC  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8C5C0  38 80 00 01 */	li r4, 1
/* 80A8C5C4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A8C5C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8C5CC  40 82 00 18 */	bne lbl_80A8C5E4
/* 80A8C5D0  FC 20 F8 90 */	fmr f1, f31
/* 80A8C5D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A8C5D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A8C5DC  41 82 00 08 */	beq lbl_80A8C5E4
/* 80A8C5E0  38 80 00 00 */	li r4, 0
lbl_80A8C5E4:
/* 80A8C5E4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A8C5E8  41 82 01 24 */	beq lbl_80A8C70C
/* 80A8C5EC  7F C3 F3 78 */	mr r3, r30
/* 80A8C5F0  38 80 00 0D */	li r4, 0xd
/* 80A8C5F4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8C5F8  38 A0 00 00 */	li r5, 0
/* 80A8C5FC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C600  4B FF C7 15 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C604  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8C608  38 03 00 01 */	addi r0, r3, 1
/* 80A8C60C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8C610  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050005@ha */
/* 80A8C614  38 03 00 05 */	addi r0, r3, 0x0005 /* 0x00050005@l */
/* 80A8C618  90 01 00 08 */	stw r0, 8(r1)
/* 80A8C61C  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A8C620  38 81 00 08 */	addi r4, r1, 8
/* 80A8C624  38 A0 00 00 */	li r5, 0
/* 80A8C628  38 C0 FF FF */	li r6, -1
/* 80A8C62C  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A8C630  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8C634  7D 89 03 A6 */	mtctr r12
/* 80A8C638  4E 80 04 21 */	bctrl 
/* 80A8C63C  48 00 00 D0 */	b lbl_80A8C70C
lbl_80A8C640:
/* 80A8C640  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 80A8C644  FF C0 F8 90 */	fmr f30, f31
/* 80A8C648  2C 05 00 01 */	cmpwi r5, 1
/* 80A8C64C  41 80 00 34 */	blt lbl_80A8C680
/* 80A8C650  2C 05 00 0A */	cmpwi r5, 0xa
/* 80A8C654  40 80 00 24 */	bge lbl_80A8C678
/* 80A8C658  C3 FF 00 3C */	lfs f31, 0x3c(r31)
/* 80A8C65C  FF C0 F8 90 */	fmr f30, f31
/* 80A8C660  38 00 00 01 */	li r0, 1
/* 80A8C664  98 1E 0B CC */	stb r0, 0xbcc(r30)
/* 80A8C668  80 1E 0A 94 */	lwz r0, 0xa94(r30)
/* 80A8C66C  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80A8C670  90 1E 0A 94 */	stw r0, 0xa94(r30)
/* 80A8C674  48 00 00 0C */	b lbl_80A8C680
lbl_80A8C678:
/* 80A8C678  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80A8C67C  C3 DF 00 B0 */	lfs f30, 0xb0(r31)
lbl_80A8C680:
/* 80A8C680  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8C684  38 80 00 01 */	li r4, 1
/* 80A8C688  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A8C68C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8C690  40 82 00 18 */	bne lbl_80A8C6A8
/* 80A8C694  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A8C698  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A8C69C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A8C6A0  41 82 00 08 */	beq lbl_80A8C6A8
/* 80A8C6A4  38 80 00 00 */	li r4, 0
lbl_80A8C6A8:
/* 80A8C6A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A8C6AC  41 82 00 60 */	beq lbl_80A8C70C
/* 80A8C6B0  7F C3 F3 78 */	mr r3, r30
/* 80A8C6B4  38 80 00 16 */	li r4, 0x16
/* 80A8C6B8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8C6BC  38 A0 00 00 */	li r5, 0
/* 80A8C6C0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C6C4  4B FF C6 51 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C6C8  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8C6CC  38 03 00 01 */	addi r0, r3, 1
/* 80A8C6D0  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8C6D4  48 00 00 38 */	b lbl_80A8C70C
lbl_80A8C6D8:
/* 80A8C6D8  38 60 00 01 */	li r3, 1
/* 80A8C6DC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80A8C6E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8C6E4  40 82 00 14 */	bne lbl_80A8C6F8
/* 80A8C6E8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80A8C6EC  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80A8C6F0  41 82 00 08 */	beq lbl_80A8C6F8
/* 80A8C6F4  38 60 00 00 */	li r3, 0
lbl_80A8C6F8:
/* 80A8C6F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8C6FC  41 82 00 10 */	beq lbl_80A8C70C
/* 80A8C700  38 00 00 00 */	li r0, 0
/* 80A8C704  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8C708  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8C70C:
/* 80A8C70C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8C710  FC 20 F8 90 */	fmr f1, f31
/* 80A8C714  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C718  FC 60 F0 90 */	fmr f3, f30
/* 80A8C71C  4B 7E 33 21 */	bl cLib_addCalc2__FPffff
/* 80A8C720  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A8C724  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A8C728  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A8C72C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A8C730  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A8C734  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A8C738  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A8C73C  7C 08 03 A6 */	mtlr r0
/* 80A8C740  38 21 00 40 */	addi r1, r1, 0x40
/* 80A8C744  4E 80 00 20 */	blr 

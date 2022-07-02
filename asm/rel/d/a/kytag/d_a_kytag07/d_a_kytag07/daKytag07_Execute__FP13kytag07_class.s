lbl_8085A280:
/* 8085A280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085A284  7C 08 02 A6 */	mflr r0
/* 8085A288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085A28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8085A290  93 C1 00 08 */	stw r30, 8(r1)
/* 8085A294  7C 7E 1B 78 */	mr r30, r3
/* 8085A298  3C 60 80 86 */	lis r3, lit_3754@ha /* 0x8085A484@ha */
/* 8085A29C  3B E3 A4 84 */	addi r31, r3, lit_3754@l /* 0x8085A484@l */
/* 8085A2A0  88 1E 05 8C */	lbz r0, 0x58c(r30)
/* 8085A2A4  28 00 00 63 */	cmplwi r0, 0x63
/* 8085A2A8  41 82 00 20 */	beq lbl_8085A2C8
/* 8085A2AC  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8085A2B0  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 8085A2B4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8085A2B8  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8085A2BC  C0 9F 00 08 */	lfs f4, 8(r31)
/* 8085A2C0  4B A1 56 BD */	bl cLib_addCalc__FPfffff
/* 8085A2C4  48 00 00 54 */	b lbl_8085A318
lbl_8085A2C8:
/* 8085A2C8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8085A2CC  7C 04 07 74 */	extsb r4, r0
/* 8085A2D0  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8085A2D4  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8085A2D8  7C 00 07 74 */	extsb r0, r0
/* 8085A2DC  7C 04 00 00 */	cmpw r4, r0
/* 8085A2E0  41 82 00 1C */	beq lbl_8085A2FC
/* 8085A2E4  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8085A2E8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8085A2EC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8085A2F0  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8085A2F4  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 8085A2F8  4B A1 56 85 */	bl cLib_addCalc__FPfffff
lbl_8085A2FC:
/* 8085A2FC  C0 3E 05 7C */	lfs f1, 0x57c(r30)
/* 8085A300  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8085A304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085A308  4C 40 13 82 */	cror 2, 0, 2
/* 8085A30C  40 82 00 0C */	bne lbl_8085A318
/* 8085A310  7F C3 F3 78 */	mr r3, r30
/* 8085A314  4B 7B F9 69 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8085A318:
/* 8085A318  38 60 00 01 */	li r3, 1
/* 8085A31C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8085A320  83 C1 00 08 */	lwz r30, 8(r1)
/* 8085A324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085A328  7C 08 03 A6 */	mtlr r0
/* 8085A32C  38 21 00 10 */	addi r1, r1, 0x10
/* 8085A330  4E 80 00 20 */	blr 

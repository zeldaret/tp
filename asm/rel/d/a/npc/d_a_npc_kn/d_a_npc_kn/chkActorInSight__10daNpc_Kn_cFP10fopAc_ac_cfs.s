lbl_80A3AB18:
/* 80A3AB18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A3AB1C  7C 08 02 A6 */	mflr r0
/* 80A3AB20  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A3AB24  39 61 00 60 */	addi r11, r1, 0x60
/* 80A3AB28  4B 92 76 B5 */	bl _savegpr_29
/* 80A3AB2C  7C 7D 1B 78 */	mr r29, r3
/* 80A3AB30  7C 80 23 78 */	mr r0, r4
/* 80A3AB34  7C BE 2B 78 */	mr r30, r5
/* 80A3AB38  3C 60 80 A4 */	lis r3, lit_5255@ha /* 0x80A4091C@ha */
/* 80A3AB3C  C0 03 09 1C */	lfs f0, lit_5255@l(r3)  /* 0x80A4091C@l */
/* 80A3AB40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3AB44  40 80 00 C4 */	bge lbl_80A3AC08
/* 80A3AB48  3C 60 80 A4 */	lis r3, lit_5256@ha /* 0x80A40920@ha */
/* 80A3AB4C  C0 03 09 20 */	lfs f0, lit_5256@l(r3)  /* 0x80A40920@l */
/* 80A3AB50  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A3AB54  FC 00 00 1E */	fctiwz f0, f0
/* 80A3AB58  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A3AB5C  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 80A3AB60  38 61 00 28 */	addi r3, r1, 0x28
/* 80A3AB64  7F A4 EB 78 */	mr r4, r29
/* 80A3AB68  7C 05 03 78 */	mr r5, r0
/* 80A3AB6C  48 00 04 95 */	bl getAttnPos__10daNpc_Kn_cFP10fopAc_ac_c
/* 80A3AB70  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A3AB74  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A3AB78  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A3AB7C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A3AB80  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A3AB84  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A3AB88  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A3AB8C  38 9D 05 50 */	addi r4, r29, 0x550
/* 80A3AB90  38 A1 00 34 */	addi r5, r1, 0x34
/* 80A3AB94  4B 82 BF A1 */	bl __mi__4cXyzCFRC3Vec
/* 80A3AB98  38 61 00 14 */	addi r3, r1, 0x14
/* 80A3AB9C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A3ABA0  4B 83 6C E1 */	bl __ct__7cSGlobeFRC4cXyz
/* 80A3ABA4  38 61 00 1A */	addi r3, r1, 0x1a
/* 80A3ABA8  4B 83 65 41 */	bl Inv__7cSAngleCFv
/* 80A3ABAC  7C 64 1B 78 */	mr r4, r3
/* 80A3ABB0  38 61 00 0C */	addi r3, r1, 0xc
/* 80A3ABB4  4B 83 63 E5 */	bl __ct__7cSAngleFs
/* 80A3ABB8  38 61 00 08 */	addi r3, r1, 8
/* 80A3ABBC  38 81 00 0C */	addi r4, r1, 0xc
/* 80A3ABC0  7F C5 07 34 */	extsh r5, r30
/* 80A3ABC4  4B 83 66 65 */	bl __mi__7cSAngleCFs
/* 80A3ABC8  38 61 00 10 */	addi r3, r1, 0x10
/* 80A3ABCC  38 81 00 08 */	addi r4, r1, 8
/* 80A3ABD0  4B 83 63 99 */	bl __ct__7cSAngleFRC7cSAngle
/* 80A3ABD4  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80A3ABD8  7C 00 07 35 */	extsh. r0, r0
/* 80A3ABDC  40 80 00 0C */	bge lbl_80A3ABE8
/* 80A3ABE0  7C 00 00 D0 */	neg r0, r0
/* 80A3ABE4  7C 00 07 34 */	extsh r0, r0
lbl_80A3ABE8:
/* 80A3ABE8  7C 05 07 34 */	extsh r5, r0
/* 80A3ABEC  7F E0 07 34 */	extsh r0, r31
/* 80A3ABF0  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 80A3ABF4  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 80A3ABF8  7C 05 00 10 */	subfc r0, r5, r0
/* 80A3ABFC  7C 04 19 14 */	adde r0, r4, r3
/* 80A3AC00  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80A3AC04  48 00 00 08 */	b lbl_80A3AC0C
lbl_80A3AC08:
/* 80A3AC08  38 60 00 01 */	li r3, 1
lbl_80A3AC0C:
/* 80A3AC0C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A3AC10  4B 92 76 19 */	bl _restgpr_29
/* 80A3AC14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A3AC18  7C 08 03 A6 */	mtlr r0
/* 80A3AC1C  38 21 00 60 */	addi r1, r1, 0x60
/* 80A3AC20  4E 80 00 20 */	blr 

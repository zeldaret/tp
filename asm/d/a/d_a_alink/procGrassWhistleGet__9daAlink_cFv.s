lbl_801119D8:
/* 801119D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801119DC  7C 08 02 A6 */	mflr r0
/* 801119E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801119E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801119E8  93 C1 00 08 */	stw r30, 8(r1)
/* 801119EC  7C 7E 1B 78 */	mr r30, r3
/* 801119F0  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 801119F4  7F E3 FB 78 */	mr r3, r31
/* 801119F8  48 04 CA D5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801119FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80111A00  41 82 00 24 */	beq lbl_80111A24
/* 80111A04  7F C3 F3 78 */	mr r3, r30
/* 80111A08  A8 9E 30 0C */	lha r4, 0x300c(r30)
/* 80111A0C  A8 BE 30 0E */	lha r5, 0x300e(r30)
/* 80111A10  A8 DE 30 10 */	lha r6, 0x3010(r30)
/* 80111A14  A8 FE 30 12 */	lha r7, 0x3012(r30)
/* 80111A18  39 1E 37 C8 */	addi r8, r30, 0x37c8
/* 80111A1C  48 00 00 81 */	bl procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz
/* 80111A20  48 00 00 60 */	b lbl_80111A80
lbl_80111A24:
/* 80111A24  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 80111A28  28 00 00 FF */	cmplwi r0, 0xff
/* 80111A2C  40 82 00 54 */	bne lbl_80111A80
/* 80111A30  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80111A34  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 80111A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80111A3C  4C 41 13 82 */	cror 2, 1, 2
/* 80111A40  40 82 00 40 */	bne lbl_80111A80
/* 80111A44  7F C3 F3 78 */	mr r3, r30
/* 80111A48  A8 9E 30 0C */	lha r4, 0x300c(r30)
/* 80111A4C  4B FF FD 39 */	bl setGrassWhistleModel__9daAlink_cFi
/* 80111A50  80 7E 28 10 */	lwz r3, 0x2810(r30)
/* 80111A54  28 03 00 00 */	cmplwi r3, 0
/* 80111A58  41 82 00 28 */	beq lbl_80111A80
/* 80111A5C  38 80 00 00 */	li r4, 0
/* 80111A60  4B F0 B0 E9 */	bl fopAcM_setCarryNow__FP10fopAc_ac_ci
/* 80111A64  7F C3 F3 78 */	mr r3, r30
/* 80111A68  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020056@ha */
/* 80111A6C  38 84 00 56 */	addi r4, r4, 0x0056 /* 0x00020056@l */
/* 80111A70  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80111A74  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80111A78  7D 89 03 A6 */	mtctr r12
/* 80111A7C  4E 80 04 21 */	bctrl 
lbl_80111A80:
/* 80111A80  38 60 00 01 */	li r3, 1
/* 80111A84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80111A88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80111A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80111A90  7C 08 03 A6 */	mtlr r0
/* 80111A94  38 21 00 10 */	addi r1, r1, 0x10
/* 80111A98  4E 80 00 20 */	blr 

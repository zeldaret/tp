lbl_8013AAC4:
/* 8013AAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013AAC8  7C 08 02 A6 */	mflr r0
/* 8013AACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013AAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013AAD4  93 C1 00 08 */	stw r30, 8(r1)
/* 8013AAD8  7C 7E 1B 78 */	mr r30, r3
/* 8013AADC  4B FE EF A5 */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013AAE0  2C 03 00 00 */	cmpwi r3, 0
/* 8013AAE4  41 82 00 0C */	beq lbl_8013AAF0
/* 8013AAE8  38 60 00 01 */	li r3, 1
/* 8013AAEC  48 00 01 40 */	b lbl_8013AC2C
lbl_8013AAF0:
/* 8013AAF0  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013AAF4  38 00 00 04 */	li r0, 4
/* 8013AAF8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013AAFC  38 7E 33 98 */	addi r3, r30, 0x3398
/* 8013AB00  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013AB04  C0 42 94 A8 */	lfs f2, lit_16570(r2)
/* 8013AB08  3C 80 80 39 */	lis r4, m__22daAlinkHIO_wlAtLand_c0@ha /* 0x8038F618@ha */
/* 8013AB0C  38 84 F6 18 */	addi r4, r4, m__22daAlinkHIO_wlAtLand_c0@l /* 0x8038F618@l */
/* 8013AB10  C0 64 00 3C */	lfs f3, 0x3c(r4)
/* 8013AB14  C0 82 92 98 */	lfs f4, lit_5943(r2)
/* 8013AB18  48 13 4E 65 */	bl cLib_addCalc__FPfffff
/* 8013AB1C  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 8013AB20  2C 00 00 00 */	cmpwi r0, 0
/* 8013AB24  41 82 00 10 */	beq lbl_8013AB34
/* 8013AB28  7F C3 F3 78 */	mr r3, r30
/* 8013AB2C  38 80 00 00 */	li r4, 0
/* 8013AB30  4B F7 8C 05 */	bl setShapeAngleToAtnActor__9daAlink_cFi
lbl_8013AB34:
/* 8013AB34  7F C3 F3 78 */	mr r3, r30
/* 8013AB38  4B F9 75 C5 */	bl setComboReserb__9daAlink_cFv
/* 8013AB3C  7F C3 F3 78 */	mr r3, r30
/* 8013AB40  4B F9 7B 45 */	bl checkCutTurnCharge__9daAlink_cFv
/* 8013AB44  7F E3 FB 78 */	mr r3, r31
/* 8013AB48  48 02 39 85 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013AB4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013AB50  41 82 00 48 */	beq lbl_8013AB98
/* 8013AB54  7F C3 F3 78 */	mr r3, r30
/* 8013AB58  4B F7 8D AD */	bl checkZeroSpeedF__9daAlink_cCFv
/* 8013AB5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013AB60  41 82 00 C8 */	beq lbl_8013AC28
/* 8013AB64  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013AB68  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8013AB6C  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 8013AB70  2C 00 00 00 */	cmpwi r0, 0
/* 8013AB74  41 82 00 14 */	beq lbl_8013AB88
/* 8013AB78  7F C3 F3 78 */	mr r3, r30
/* 8013AB7C  38 80 00 03 */	li r4, 3
/* 8013AB80  4B FF F2 61 */	bl procWolfJumpAttackInit__9daAlink_cFi
/* 8013AB84  48 00 00 A4 */	b lbl_8013AC28
lbl_8013AB88:
/* 8013AB88  7F C3 F3 78 */	mr r3, r30
/* 8013AB8C  38 80 00 00 */	li r4, 0
/* 8013AB90  4B FE EF B5 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013AB94  48 00 00 94 */	b lbl_8013AC28
lbl_8013AB98:
/* 8013AB98  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013AB9C  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 8013ABA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013ABA4  40 81 00 5C */	ble lbl_8013AC00
/* 8013ABA8  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 8013ABAC  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8013ABB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013ABB4  4C 40 13 82 */	cror 2, 0, 2
/* 8013ABB8  40 82 00 48 */	bne lbl_8013AC00
/* 8013ABBC  AB FE 04 DE */	lha r31, 0x4de(r30)
/* 8013ABC0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013ABC4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8013ABC8  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 8013ABCC  2C 00 00 00 */	cmpwi r0, 0
/* 8013ABD0  41 82 00 14 */	beq lbl_8013ABE4
/* 8013ABD4  7F C3 F3 78 */	mr r3, r30
/* 8013ABD8  38 80 00 03 */	li r4, 3
/* 8013ABDC  4B FF F2 05 */	bl procWolfJumpAttackInit__9daAlink_cFi
/* 8013ABE0  48 00 00 48 */	b lbl_8013AC28
lbl_8013ABE4:
/* 8013ABE4  7F C3 F3 78 */	mr r3, r30
/* 8013ABE8  38 80 00 01 */	li r4, 1
/* 8013ABEC  4B FE EF 59 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013ABF0  2C 03 00 00 */	cmpwi r3, 0
/* 8013ABF4  40 82 00 34 */	bne lbl_8013AC28
/* 8013ABF8  B3 FE 04 DE */	sth r31, 0x4de(r30)
/* 8013ABFC  48 00 00 2C */	b lbl_8013AC28
lbl_8013AC00:
/* 8013AC00  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 8013AC04  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8013AC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013AC0C  40 81 00 1C */	ble lbl_8013AC28
/* 8013AC10  38 00 00 04 */	li r0, 4
/* 8013AC14  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 8013AC18  7F C3 F3 78 */	mr r3, r30
/* 8013AC1C  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030018@ha */
/* 8013AC20  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00030018@l */
/* 8013AC24  4B F8 45 A9 */	bl seStartMapInfoLevel__9daAlink_cFUl
lbl_8013AC28:
/* 8013AC28  38 60 00 01 */	li r3, 1
lbl_8013AC2C:
/* 8013AC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013AC30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013AC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013AC38  7C 08 03 A6 */	mtlr r0
/* 8013AC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013AC40  4E 80 00 20 */	blr 

lbl_8013D86C:
/* 8013D86C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013D870  7C 08 02 A6 */	mflr r0
/* 8013D874  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013D878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013D87C  93 C1 00 08 */	stw r30, 8(r1)
/* 8013D880  7C 7E 1B 78 */	mr r30, r3
/* 8013D884  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013D888  38 7E 33 98 */	addi r3, r30, 0x3398
/* 8013D88C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013D890  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 8013D894  38 84 EF 28 */	addi r4, r4, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 8013D898  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8013D89C  48 13 2E A5 */	bl cLib_chaseF__FPfff
/* 8013D8A0  7F C3 F3 78 */	mr r3, r30
/* 8013D8A4  38 80 00 00 */	li r4, 0
/* 8013D8A8  4B F7 5E 8D */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 8013D8AC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013D8B0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8013D8B4  7F E3 FB 78 */	mr r3, r31
/* 8013D8B8  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 8013D8BC  48 1E AB 71 */	bl checkPass__12J3DFrameCtrlFf
/* 8013D8C0  2C 03 00 00 */	cmpwi r3, 0
/* 8013D8C4  41 82 00 0C */	beq lbl_8013D8D0
/* 8013D8C8  7F C3 F3 78 */	mr r3, r30
/* 8013D8CC  4B FA 7B 2D */	bl setGrabItemThrow__9daAlink_cFv
lbl_8013D8D0:
/* 8013D8D0  7F E3 FB 78 */	mr r3, r31
/* 8013D8D4  48 02 0B F9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013D8D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013D8DC  41 82 00 14 */	beq lbl_8013D8F0
/* 8013D8E0  7F C3 F3 78 */	mr r3, r30
/* 8013D8E4  38 80 00 00 */	li r4, 0
/* 8013D8E8  4B FE C2 5D */	bl checkNextActionWolf__9daAlink_cFi
/* 8013D8EC  48 00 00 28 */	b lbl_8013D914
lbl_8013D8F0:
/* 8013D8F0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013D8F4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlGrab_c0@ha /* 0x8038F95C@ha */
/* 8013D8F8  38 63 F9 5C */	addi r3, r3, m__20daAlinkHIO_wlGrab_c0@l /* 0x8038F95C@l */
/* 8013D8FC  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 8013D900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013D904  40 81 00 10 */	ble lbl_8013D914
/* 8013D908  7F C3 F3 78 */	mr r3, r30
/* 8013D90C  38 80 00 01 */	li r4, 1
/* 8013D910  4B FE C2 35 */	bl checkNextActionWolf__9daAlink_cFi
lbl_8013D914:
/* 8013D914  38 60 00 01 */	li r3, 1
/* 8013D918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013D91C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013D920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013D924  7C 08 03 A6 */	mtlr r0
/* 8013D928  38 21 00 10 */	addi r1, r1, 0x10
/* 8013D92C  4E 80 00 20 */	blr 

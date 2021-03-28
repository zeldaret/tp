lbl_801304D4:
/* 801304D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801304D8  7C 08 02 A6 */	mflr r0
/* 801304DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801304E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801304E4  93 C1 00 08 */	stw r30, 8(r1)
/* 801304E8  7C 7E 1B 78 */	mr r30, r3
/* 801304EC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 801304F0  7F E3 FB 78 */	mr r3, r31
/* 801304F4  48 02 DF D9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801304F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801304FC  41 82 00 14 */	beq lbl_80130510
/* 80130500  7F C3 F3 78 */	mr r3, r30
/* 80130504  38 80 00 00 */	li r4, 0
/* 80130508  4B FF 96 3D */	bl checkNextActionWolf__9daAlink_cFi
/* 8013050C  48 00 00 44 */	b lbl_80130550
lbl_80130510:
/* 80130510  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80130514  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlSlide_c0@ha
/* 80130518  38 63 F3 F0 */	addi r3, r3, m__21daAlinkHIO_wlSlide_c0@l
/* 8013051C  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80130520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130524  40 81 00 24 */	ble lbl_80130548
/* 80130528  7F C3 F3 78 */	mr r3, r30
/* 8013052C  38 80 00 01 */	li r4, 1
/* 80130530  4B FF 96 15 */	bl checkNextActionWolf__9daAlink_cFi
/* 80130534  2C 03 00 00 */	cmpwi r3, 0
/* 80130538  40 82 00 18 */	bne lbl_80130550
/* 8013053C  38 00 00 05 */	li r0, 5
/* 80130540  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 80130544  48 00 00 0C */	b lbl_80130550
lbl_80130548:
/* 80130548  38 00 00 05 */	li r0, 5
/* 8013054C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_80130550:
/* 80130550  38 60 00 01 */	li r3, 1
/* 80130554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130558  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013055C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130560  7C 08 03 A6 */	mtlr r0
/* 80130564  38 21 00 10 */	addi r1, r1, 0x10
/* 80130568  4E 80 00 20 */	blr 

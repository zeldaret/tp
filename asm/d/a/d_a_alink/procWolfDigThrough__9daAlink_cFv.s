lbl_8013F7C4:
/* 8013F7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F7C8  7C 08 02 A6 */	mflr r0
/* 8013F7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F7D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8013F7D8  7C 7E 1B 78 */	mr r30, r3
/* 8013F7DC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013F7E0  38 00 00 04 */	li r0, 4
/* 8013F7E4  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 8013F7E8  A8 03 30 0E */	lha r0, 0x300e(r3)
/* 8013F7EC  2C 00 00 00 */	cmpwi r0, 0
/* 8013F7F0  41 82 00 28 */	beq lbl_8013F818
/* 8013F7F4  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 8013F7F8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8013F7FC  38 A0 00 FF */	li r5, 0xff
/* 8013F800  38 C0 00 00 */	li r6, 0
/* 8013F804  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8013F808  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8013F80C  7D 89 03 A6 */	mtctr r12
/* 8013F810  4E 80 04 21 */	bctrl 
/* 8013F814  48 00 00 AC */	b lbl_8013F8C0
lbl_8013F818:
/* 8013F818  7F E3 FB 78 */	mr r3, r31
/* 8013F81C  48 01 EC B1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013F820  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013F824  41 82 00 74 */	beq lbl_8013F898
/* 8013F828  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 8013F82C  2C 00 00 00 */	cmpwi r0, 0
/* 8013F830  41 82 00 24 */	beq lbl_8013F854
/* 8013F834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F83C  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 8013F840  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8013F844  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 8013F848  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8013F84C  54 06 06 BE */	clrlwi r6, r0, 0x1a
/* 8013F850  4B EF 57 31 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
lbl_8013F854:
/* 8013F854  7F C3 F3 78 */	mr r3, r30
/* 8013F858  4B FD 84 39 */	bl resetSpecialEvent__9daAlink_cFv
/* 8013F85C  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 8013F860  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8013F864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013F868  40 81 00 14 */	ble lbl_8013F87C
/* 8013F86C  7F C3 F3 78 */	mr r3, r30
/* 8013F870  38 80 00 00 */	li r4, 0
/* 8013F874  4B FE A2 D1 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013F878  48 00 00 18 */	b lbl_8013F890
lbl_8013F87C:
/* 8013F87C  38 00 00 04 */	li r0, 4
/* 8013F880  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013F884  7F C3 F3 78 */	mr r3, r30
/* 8013F888  38 80 00 01 */	li r4, 1
/* 8013F88C  4B FF 90 81 */	bl procWolfSwimEndWaitInit__9daAlink_cFi
lbl_8013F890:
/* 8013F890  38 60 00 01 */	li r3, 1
/* 8013F894  48 00 00 60 */	b lbl_8013F8F4
lbl_8013F898:
/* 8013F898  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 8013F89C  2C 00 00 00 */	cmpwi r0, 0
/* 8013F8A0  41 80 00 20 */	blt lbl_8013F8C0
/* 8013F8A4  7F E3 FB 78 */	mr r3, r31
/* 8013F8A8  C0 22 93 F0 */	lfs f1, lit_13382(r2)
/* 8013F8AC  48 1E 8B 81 */	bl checkPass__12J3DFrameCtrlFf
/* 8013F8B0  2C 03 00 00 */	cmpwi r3, 0
/* 8013F8B4  41 82 00 0C */	beq lbl_8013F8C0
/* 8013F8B8  38 00 00 01 */	li r0, 1
/* 8013F8BC  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_8013F8C0:
/* 8013F8C0  7F E3 FB 78 */	mr r3, r31
/* 8013F8C4  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 8013F8C8  48 1E 8B 65 */	bl checkPass__12J3DFrameCtrlFf
/* 8013F8CC  2C 03 00 00 */	cmpwi r3, 0
/* 8013F8D0  41 82 00 20 */	beq lbl_8013F8F0
/* 8013F8D4  7F C3 F3 78 */	mr r3, r30
/* 8013F8D8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010032@ha */
/* 8013F8DC  38 84 00 32 */	addi r4, r4, 0x0032 /* 0x00010032@l */
/* 8013F8E0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8013F8E4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013F8E8  7D 89 03 A6 */	mtctr r12
/* 8013F8EC  4E 80 04 21 */	bctrl 
lbl_8013F8F0:
/* 8013F8F0  38 60 00 01 */	li r3, 1
lbl_8013F8F4:
/* 8013F8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F8F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013F8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F900  7C 08 03 A6 */	mtlr r0
/* 8013F904  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F908  4E 80 00 20 */	blr 

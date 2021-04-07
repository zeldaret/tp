lbl_8012FBB4:
/* 8012FBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012FBB8  7C 08 02 A6 */	mflr r0
/* 8012FBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012FBC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012FBC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8012FBC8  7C 7E 1B 78 */	mr r30, r3
/* 8012FBCC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012FBD0  38 00 00 05 */	li r0, 5
/* 8012FBD4  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 8012FBD8  7F E3 FB 78 */	mr r3, r31
/* 8012FBDC  48 02 E8 F1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012FBE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012FBE4  41 82 00 14 */	beq lbl_8012FBF8
/* 8012FBE8  7F C3 F3 78 */	mr r3, r30
/* 8012FBEC  38 80 00 00 */	li r4, 0
/* 8012FBF0  4B FF 9F 55 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012FBF4  48 00 00 28 */	b lbl_8012FC1C
lbl_8012FBF8:
/* 8012FBF8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012FBFC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8012FC00  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 8012FC04  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8012FC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012FC0C  40 81 00 10 */	ble lbl_8012FC1C
/* 8012FC10  7F C3 F3 78 */	mr r3, r30
/* 8012FC14  38 80 00 01 */	li r4, 1
/* 8012FC18  4B FF 9F 2D */	bl checkNextActionWolf__9daAlink_cFi
lbl_8012FC1C:
/* 8012FC1C  38 60 00 01 */	li r3, 1
/* 8012FC20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012FC24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012FC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012FC2C  7C 08 03 A6 */	mtlr r0
/* 8012FC30  38 21 00 10 */	addi r1, r1, 0x10
/* 8012FC34  4E 80 00 20 */	blr 

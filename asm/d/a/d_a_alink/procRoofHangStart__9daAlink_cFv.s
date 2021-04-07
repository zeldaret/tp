lbl_80100AE4:
/* 80100AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80100AE8  7C 08 02 A6 */	mflr r0
/* 80100AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80100AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80100AF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80100AF8  7C 7E 1B 78 */	mr r30, r3
/* 80100AFC  4B FF FC 75 */	bl commonRoofHangProc__9daAlink_cFv
/* 80100B00  2C 03 00 00 */	cmpwi r3, 0
/* 80100B04  41 82 00 0C */	beq lbl_80100B10
/* 80100B08  38 60 00 01 */	li r3, 1
/* 80100B0C  48 00 00 90 */	b lbl_80100B9C
lbl_80100B10:
/* 80100B10  C0 3E 33 A8 */	lfs f1, 0x33a8(r30)
/* 80100B14  C0 02 93 F8 */	lfs f0, lit_13700(r2)
/* 80100B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80100B1C  40 80 00 0C */	bge lbl_80100B28
/* 80100B20  38 00 00 00 */	li r0, 0
/* 80100B24  B0 1E 30 08 */	sth r0, 0x3008(r30)
lbl_80100B28:
/* 80100B28  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80100B2C  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 80100B30  2C 00 00 00 */	cmpwi r0, 0
/* 80100B34  40 82 00 48 */	bne lbl_80100B7C
/* 80100B38  7F E3 FB 78 */	mr r3, r31
/* 80100B3C  48 05 D9 91 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80100B40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80100B44  40 82 00 2C */	bne lbl_80100B70
/* 80100B48  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 80100B4C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80100B50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80100B54  40 81 00 28 */	ble lbl_80100B7C
/* 80100B58  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80100B5C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_roofHang_c0@ha /* 0x8038EBFC@ha */
/* 80100B60  38 63 EB FC */	addi r3, r3, m__22daAlinkHIO_roofHang_c0@l /* 0x8038EBFC@l */
/* 80100B64  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80100B68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80100B6C  40 81 00 10 */	ble lbl_80100B7C
lbl_80100B70:
/* 80100B70  7F C3 F3 78 */	mr r3, r30
/* 80100B74  4B FF FD 79 */	bl checkNextActionRoofHang__9daAlink_cFv
/* 80100B78  48 00 00 20 */	b lbl_80100B98
lbl_80100B7C:
/* 80100B7C  7F E3 FB 78 */	mr r3, r31
/* 80100B80  48 05 D9 4D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80100B84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80100B88  41 82 00 10 */	beq lbl_80100B98
/* 80100B8C  7F C3 F3 78 */	mr r3, r30
/* 80100B90  38 80 00 01 */	li r4, 1
/* 80100B94  48 00 00 21 */	bl procRoofHangWaitInit__9daAlink_cFi
lbl_80100B98:
/* 80100B98  38 60 00 01 */	li r3, 1
lbl_80100B9C:
/* 80100B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80100BA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80100BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80100BA8  7C 08 03 A6 */	mtlr r0
/* 80100BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80100BB0  4E 80 00 20 */	blr 

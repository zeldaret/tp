lbl_809B1B0C:
/* 809B1B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B1B10  7C 08 02 A6 */	mflr r0
/* 809B1B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B1B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B1B1C  7C 7F 1B 78 */	mr r31, r3
/* 809B1B20  48 00 00 A1 */	bl loadModel__16_Fairy_Feather_cFv
/* 809B1B24  2C 03 00 00 */	cmpwi r3, 0
/* 809B1B28  40 82 00 0C */	bne lbl_809B1B34
/* 809B1B2C  38 60 00 00 */	li r3, 0
/* 809B1B30  48 00 00 7C */	b lbl_809B1BAC
lbl_809B1B34:
/* 809B1B34  7F E3 FB 78 */	mr r3, r31
/* 809B1B38  38 80 00 03 */	li r4, 3
/* 809B1B3C  48 00 01 A9 */	bl setAnm__16_Fairy_Feather_cFi
/* 809B1B40  2C 03 00 00 */	cmpwi r3, 0
/* 809B1B44  40 82 00 0C */	bne lbl_809B1B50
/* 809B1B48  38 60 00 00 */	li r3, 0
/* 809B1B4C  48 00 00 60 */	b lbl_809B1BAC
lbl_809B1B50:
/* 809B1B50  7F E3 FB 78 */	mr r3, r31
/* 809B1B54  38 80 00 00 */	li r4, 0
/* 809B1B58  48 00 02 95 */	bl setBrk__16_Fairy_Feather_cFi
/* 809B1B5C  2C 03 00 00 */	cmpwi r3, 0
/* 809B1B60  40 82 00 0C */	bne lbl_809B1B6C
/* 809B1B64  38 60 00 00 */	li r3, 0
/* 809B1B68  48 00 00 44 */	b lbl_809B1BAC
lbl_809B1B6C:
/* 809B1B6C  7F E3 FB 78 */	mr r3, r31
/* 809B1B70  38 80 00 00 */	li r4, 0
/* 809B1B74  48 00 03 35 */	bl setBtk__16_Fairy_Feather_cFi
/* 809B1B78  2C 03 00 00 */	cmpwi r3, 0
/* 809B1B7C  40 82 00 0C */	bne lbl_809B1B88
/* 809B1B80  38 60 00 00 */	li r3, 0
/* 809B1B84  48 00 00 28 */	b lbl_809B1BAC
lbl_809B1B88:
/* 809B1B88  38 7F 00 0C */	addi r3, r31, 0xc
/* 809B1B8C  4B 65 B8 9D */	bl play__14mDoExt_baseAnmFv
/* 809B1B90  38 7F 00 24 */	addi r3, r31, 0x24
/* 809B1B94  4B 65 B8 95 */	bl play__14mDoExt_baseAnmFv
/* 809B1B98  80 7F 00 00 */	lwz r3, 0(r31)
/* 809B1B9C  38 80 00 00 */	li r4, 0
/* 809B1BA0  38 A0 00 00 */	li r5, 0
/* 809B1BA4  4B 65 F5 0D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 809B1BA8  38 60 00 01 */	li r3, 1
lbl_809B1BAC:
/* 809B1BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B1BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1BB4  7C 08 03 A6 */	mtlr r0
/* 809B1BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 809B1BBC  4E 80 00 20 */	blr 

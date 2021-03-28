lbl_801017AC:
/* 801017AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801017B0  7C 08 02 A6 */	mflr r0
/* 801017B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801017B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801017BC  7C 7F 1B 78 */	mr r31, r3
/* 801017C0  80 03 28 10 */	lwz r0, 0x2810(r3)
/* 801017C4  28 00 00 00 */	cmplwi r0, 0
/* 801017C8  40 82 00 1C */	bne lbl_801017E4
/* 801017CC  38 80 00 01 */	li r4, 1
/* 801017D0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 801017D4  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 801017D8  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 801017DC  4B FC 52 6D */	bl procFallInit__9daAlink_cFif
/* 801017E0  48 00 00 80 */	b lbl_80101860
lbl_801017E4:
/* 801017E4  4B FF FE 59 */	bl setRoofHangSwitch__9daAlink_cFv
/* 801017E8  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 801017EC  48 05 CC E1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801017F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801017F4  41 82 00 2C */	beq lbl_80101820
/* 801017F8  7F E3 FB 78 */	mr r3, r31
/* 801017FC  38 80 00 A9 */	li r4, 0xa9
/* 80101800  3C A0 80 39 */	lis r5, m__22daAlinkHIO_roofHang_c0@ha
/* 80101804  38 A5 EB FC */	addi r5, r5, m__22daAlinkHIO_roofHang_c0@l
/* 80101808  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8010180C  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 80101810  4B FA B7 D1 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 80101814  38 00 00 01 */	li r0, 1
/* 80101818  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8010181C  48 00 00 40 */	b lbl_8010185C
lbl_80101820:
/* 80101820  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80101824  2C 00 00 00 */	cmpwi r0, 0
/* 80101828  41 82 00 34 */	beq lbl_8010185C
/* 8010182C  7F E3 FB 78 */	mr r3, r31
/* 80101830  38 80 00 33 */	li r4, 0x33
/* 80101834  4B FB 1A 1D */	bl setDoStatus__9daAlink_cFUc
/* 80101838  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 8010183C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80101840  41 82 00 1C */	beq lbl_8010185C
/* 80101844  7F E3 FB 78 */	mr r3, r31
/* 80101848  38 80 00 01 */	li r4, 1
/* 8010184C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 80101850  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 80101854  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 80101858  4B FC 51 F1 */	bl procFallInit__9daAlink_cFif
lbl_8010185C:
/* 8010185C  38 60 00 01 */	li r3, 1
lbl_80101860:
/* 80101860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80101864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80101868  7C 08 03 A6 */	mtlr r0
/* 8010186C  38 21 00 10 */	addi r1, r1, 0x10
/* 80101870  4E 80 00 20 */	blr 

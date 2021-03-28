lbl_800FF9A8:
/* 800FF9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FF9AC  7C 08 02 A6 */	mflr r0
/* 800FF9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FF9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FF9B8  93 C1 00 08 */	stw r30, 8(r1)
/* 800FF9BC  7C 7E 1B 78 */	mr r30, r3
/* 800FF9C0  4B FF EE A9 */	bl setMoveBGClimbCorrect__9daAlink_cFv
/* 800FF9C4  2C 03 00 00 */	cmpwi r3, 0
/* 800FF9C8  41 82 00 0C */	beq lbl_800FF9D4
/* 800FF9CC  38 60 00 01 */	li r3, 1
/* 800FF9D0  48 00 00 C8 */	b lbl_800FFA98
lbl_800FF9D4:
/* 800FF9D4  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FF9D8  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800FF9DC  2C 00 00 00 */	cmpwi r0, 0
/* 800FF9E0  41 82 00 10 */	beq lbl_800FF9F0
/* 800FF9E4  38 00 00 02 */	li r0, 2
/* 800FF9E8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FF9EC  48 00 00 14 */	b lbl_800FFA00
lbl_800FF9F0:
/* 800FF9F0  38 00 00 50 */	li r0, 0x50
/* 800FF9F4  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FF9F8  38 00 00 01 */	li r0, 1
/* 800FF9FC  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800FFA00:
/* 800FFA00  C0 3E 33 A8 */	lfs f1, 0x33a8(r30)
/* 800FFA04  C0 02 93 F8 */	lfs f0, lit_13700(r2)
/* 800FFA08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FFA0C  40 80 00 0C */	bge lbl_800FFA18
/* 800FFA10  38 00 00 00 */	li r0, 0
/* 800FFA14  B0 1E 30 08 */	sth r0, 0x3008(r30)
lbl_800FFA18:
/* 800FFA18  7F C3 F3 78 */	mr r3, r30
/* 800FFA1C  4B FF DB C9 */	bl checkLadderFall__9daAlink_cFv
/* 800FFA20  2C 03 00 00 */	cmpwi r3, 0
/* 800FFA24  40 82 00 70 */	bne lbl_800FFA94
/* 800FFA28  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800FFA2C  2C 00 00 00 */	cmpwi r0, 0
/* 800FFA30  40 82 00 48 */	bne lbl_800FFA78
/* 800FFA34  7F E3 FB 78 */	mr r3, r31
/* 800FFA38  48 05 EA 95 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FFA3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FFA40  40 82 00 24 */	bne lbl_800FFA64
/* 800FFA44  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800FFA48  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FFA4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FFA50  40 81 00 28 */	ble lbl_800FFA78
/* 800FFA54  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FFA58  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800FFA5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FFA60  40 81 00 18 */	ble lbl_800FFA78
lbl_800FFA64:
/* 800FFA64  7F C3 F3 78 */	mr r3, r30
/* 800FFA68  38 80 00 00 */	li r4, 0
/* 800FFA6C  38 A0 00 00 */	li r5, 0
/* 800FFA70  48 00 06 89 */	bl procClimbWaitInit__9daAlink_cFii
/* 800FFA74  48 00 00 20 */	b lbl_800FFA94
lbl_800FFA78:
/* 800FFA78  7F C3 F3 78 */	mr r3, r30
/* 800FFA7C  38 80 00 04 */	li r4, 4
/* 800FFA80  4B FF F4 41 */	bl checkBgClimbMove__9daAlink_cFi
/* 800FFA84  2C 03 00 00 */	cmpwi r3, 0
/* 800FFA88  40 82 00 0C */	bne lbl_800FFA94
/* 800FFA8C  7F C3 F3 78 */	mr r3, r30
/* 800FFA90  4B FF E6 E5 */	bl setClimbShapeOffset__9daAlink_cFv
lbl_800FFA94:
/* 800FFA94  38 60 00 01 */	li r3, 1
lbl_800FFA98:
/* 800FFA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FFA9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FFAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FFAA4  7C 08 03 A6 */	mtlr r0
/* 800FFAA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800FFAAC  4E 80 00 20 */	blr 

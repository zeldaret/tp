lbl_80164B64:
/* 80164B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80164B68  7C 08 02 A6 */	mflr r0
/* 80164B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80164B70  39 61 00 20 */	addi r11, r1, 0x20
/* 80164B74  48 1F D6 65 */	bl _savegpr_28
/* 80164B78  7C 7C 1B 78 */	mr r28, r3
/* 80164B7C  7C 9D 23 78 */	mr r29, r4
/* 80164B80  7F A3 EB 78 */	mr r3, r29
/* 80164B84  80 9C 06 84 */	lwz r4, 0x684(r28)
/* 80164B88  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 80164B8C  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80164B90  7C 84 02 14 */	add r4, r4, r0
/* 80164B94  48 20 3E 01 */	bl strcmp
/* 80164B98  2C 03 00 00 */	cmpwi r3, 0
/* 80164B9C  40 82 00 0C */	bne lbl_80164BA8
/* 80164BA0  80 7C 06 8C */	lwz r3, 0x68c(r28)
/* 80164BA4  48 00 00 54 */	b lbl_80164BF8
lbl_80164BA8:
/* 80164BA8  3B C0 00 00 */	li r30, 0
/* 80164BAC  3B E0 00 00 */	li r31, 0
/* 80164BB0  48 00 00 24 */	b lbl_80164BD4
lbl_80164BB4:
/* 80164BB4  7F A3 EB 78 */	mr r3, r29
/* 80164BB8  80 1C 06 84 */	lwz r0, 0x684(r28)
/* 80164BBC  7C 80 FA 14 */	add r4, r0, r31
/* 80164BC0  48 20 3D D5 */	bl strcmp
/* 80164BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80164BC8  41 82 00 18 */	beq lbl_80164BE0
/* 80164BCC  3B DE 00 01 */	addi r30, r30, 1
/* 80164BD0  3B FF 00 44 */	addi r31, r31, 0x44
lbl_80164BD4:
/* 80164BD4  80 1C 06 88 */	lwz r0, 0x688(r28)
/* 80164BD8  7C 1E 00 00 */	cmpw r30, r0
/* 80164BDC  41 80 FF D8 */	blt lbl_80164BB4
lbl_80164BE0:
/* 80164BE0  80 1C 06 88 */	lwz r0, 0x688(r28)
/* 80164BE4  7C 1E 00 00 */	cmpw r30, r0
/* 80164BE8  40 82 00 0C */	bne lbl_80164BF4
/* 80164BEC  38 60 00 FF */	li r3, 0xff
/* 80164BF0  48 00 00 08 */	b lbl_80164BF8
lbl_80164BF4:
/* 80164BF4  7F C3 F3 78 */	mr r3, r30
lbl_80164BF8:
/* 80164BF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80164BFC  48 1F D6 29 */	bl _restgpr_28
/* 80164C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80164C04  7C 08 03 A6 */	mtlr r0
/* 80164C08  38 21 00 20 */	addi r1, r1, 0x20
/* 80164C0C  4E 80 00 20 */	blr 

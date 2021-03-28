lbl_8012F1F0:
/* 8012F1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F1F4  7C 08 02 A6 */	mflr r0
/* 8012F1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F200  93 C1 00 08 */	stw r30, 8(r1)
/* 8012F204  7C 7E 1B 78 */	mr r30, r3
/* 8012F208  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012F20C  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8012F210  2C 00 00 00 */	cmpwi r0, 0
/* 8012F214  41 82 00 0C */	beq lbl_8012F220
/* 8012F218  38 00 00 04 */	li r0, 4
/* 8012F21C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_8012F220:
/* 8012F220  7F E3 FB 78 */	mr r3, r31
/* 8012F224  48 02 F2 A9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012F228  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012F22C  41 82 00 14 */	beq lbl_8012F240
/* 8012F230  7F C3 F3 78 */	mr r3, r30
/* 8012F234  38 80 00 00 */	li r4, 0
/* 8012F238  4B FF A9 0D */	bl checkNextActionWolf__9daAlink_cFi
/* 8012F23C  48 00 00 20 */	b lbl_8012F25C
lbl_8012F240:
/* 8012F240  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012F244  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 8012F248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012F24C  40 81 00 10 */	ble lbl_8012F25C
/* 8012F250  7F C3 F3 78 */	mr r3, r30
/* 8012F254  38 80 00 01 */	li r4, 1
/* 8012F258  4B FF A8 ED */	bl checkNextActionWolf__9daAlink_cFi
lbl_8012F25C:
/* 8012F25C  38 60 00 01 */	li r3, 1
/* 8012F260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F264  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012F268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F26C  7C 08 03 A6 */	mtlr r0
/* 8012F270  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F274  4E 80 00 20 */	blr 

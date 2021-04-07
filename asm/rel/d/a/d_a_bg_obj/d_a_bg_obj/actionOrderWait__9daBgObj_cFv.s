lbl_8045BB38:
/* 8045BB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045BB3C  7C 08 02 A6 */	mflr r0
/* 8045BB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045BB44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045BB48  7C 7F 1B 78 */	mr r31, r3
/* 8045BB4C  4B FF F9 01 */	bl checkDestroy__9daBgObj_cFv
/* 8045BB50  2C 03 00 00 */	cmpwi r3, 0
/* 8045BB54  41 82 00 40 */	beq lbl_8045BB94
/* 8045BB58  88 1F 0C D2 */	lbz r0, 0xcd2(r31)
/* 8045BB5C  2C 00 00 02 */	cmpwi r0, 2
/* 8045BB60  41 82 00 28 */	beq lbl_8045BB88
/* 8045BB64  40 80 00 10 */	bge lbl_8045BB74
/* 8045BB68  2C 00 00 00 */	cmpwi r0, 0
/* 8045BB6C  40 80 00 10 */	bge lbl_8045BB7C
/* 8045BB70  48 00 00 58 */	b lbl_8045BBC8
lbl_8045BB74:
/* 8045BB74  2C 00 00 05 */	cmpwi r0, 5
/* 8045BB78  40 80 00 50 */	bge lbl_8045BBC8
lbl_8045BB7C:
/* 8045BB7C  7F E3 FB 78 */	mr r3, r31
/* 8045BB80  4B FF FA 61 */	bl orderWait_tri__9daBgObj_cFv
/* 8045BB84  48 00 00 44 */	b lbl_8045BBC8
lbl_8045BB88:
/* 8045BB88  7F E3 FB 78 */	mr r3, r31
/* 8045BB8C  4B FF FC 71 */	bl orderWait_cyl__9daBgObj_cFv
/* 8045BB90  48 00 00 38 */	b lbl_8045BBC8
lbl_8045BB94:
/* 8045BB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045BB98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045BB9C  A0 1F 0C CC */	lhz r0, 0xccc(r31)
/* 8045BBA0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8045BBA4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045BBA8  7C 05 07 74 */	extsb r5, r0
/* 8045BBAC  4B BD 97 B5 */	bl isSwitch__10dSv_info_cCFii
/* 8045BBB0  2C 03 00 00 */	cmpwi r3, 0
/* 8045BBB4  41 82 00 14 */	beq lbl_8045BBC8
/* 8045BBB8  7F E3 FB 78 */	mr r3, r31
/* 8045BBBC  4B FF FE 09 */	bl orderWait_spec__9daBgObj_cFv
/* 8045BBC0  38 00 00 01 */	li r0, 1
/* 8045BBC4  98 1F 0D 00 */	stb r0, 0xd00(r31)
lbl_8045BBC8:
/* 8045BBC8  38 60 00 01 */	li r3, 1
/* 8045BBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045BBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045BBD4  7C 08 03 A6 */	mtlr r0
/* 8045BBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045BBDC  4E 80 00 20 */	blr 

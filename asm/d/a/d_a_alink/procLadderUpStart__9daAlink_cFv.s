lbl_800FD7B0:
/* 800FD7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FD7B4  7C 08 02 A6 */	mflr r0
/* 800FD7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FD7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FD7C0  7C 7F 1B 78 */	mr r31, r3
/* 800FD7C4  4B FF FC E5 */	bl setMoveBGLadderCorrect__9daAlink_cFv
/* 800FD7C8  2C 03 00 00 */	cmpwi r3, 0
/* 800FD7CC  41 82 00 0C */	beq lbl_800FD7D8
/* 800FD7D0  38 60 00 01 */	li r3, 1
/* 800FD7D4  48 00 00 3C */	b lbl_800FD810
lbl_800FD7D8:
/* 800FD7D8  38 00 00 06 */	li r0, 6
/* 800FD7DC  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800FD7E0  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800FD7E4  48 06 0C E9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FD7E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FD7EC  41 82 00 20 */	beq lbl_800FD80C
/* 800FD7F0  7F E3 FB 78 */	mr r3, r31
/* 800FD7F4  4B FF FD F1 */	bl checkLadderFall__9daAlink_cFv
/* 800FD7F8  2C 03 00 00 */	cmpwi r3, 0
/* 800FD7FC  40 82 00 10 */	bne lbl_800FD80C
/* 800FD800  7F E3 FB 78 */	mr r3, r31
/* 800FD804  38 80 00 01 */	li r4, 1
/* 800FD808  4B FF FA A5 */	bl changeLadderMoveProc__9daAlink_cFi
lbl_800FD80C:
/* 800FD80C  38 60 00 01 */	li r3, 1
lbl_800FD810:
/* 800FD810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FD814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FD818  7C 08 03 A6 */	mtlr r0
/* 800FD81C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FD820  4E 80 00 20 */	blr 

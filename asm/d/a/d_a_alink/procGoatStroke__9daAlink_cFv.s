lbl_800EA3AC:
/* 800EA3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA3B0  7C 08 02 A6 */	mflr r0
/* 800EA3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA3B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA3BC  7C 7F 1B 78 */	mr r31, r3
/* 800EA3C0  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800EA3C4  48 07 41 09 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EA3C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EA3CC  41 82 00 10 */	beq lbl_800EA3DC
/* 800EA3D0  7F E3 FB 78 */	mr r3, r31
/* 800EA3D4  38 80 00 00 */	li r4, 0
/* 800EA3D8  4B FC FC F9 */	bl checkNextAction__9daAlink_cFi
lbl_800EA3DC:
/* 800EA3DC  38 60 00 01 */	li r3, 1
/* 800EA3E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EA3E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA3E8  7C 08 03 A6 */	mtlr r0
/* 800EA3EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA3F0  4E 80 00 20 */	blr 

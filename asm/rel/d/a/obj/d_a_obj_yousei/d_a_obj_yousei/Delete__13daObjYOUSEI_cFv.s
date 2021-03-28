lbl_804D0F98:
/* 804D0F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D0F9C  7C 08 02 A6 */	mflr r0
/* 804D0FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D0FA4  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 804D0FA8  28 00 00 00 */	cmplwi r0, 0
/* 804D0FAC  41 82 00 0C */	beq lbl_804D0FB8
/* 804D0FB0  80 63 06 B0 */	lwz r3, 0x6b0(r3)
/* 804D0FB4  4B B4 03 5C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_804D0FB8:
/* 804D0FB8  38 60 00 01 */	li r3, 1
/* 804D0FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D0FC0  7C 08 03 A6 */	mtlr r0
/* 804D0FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D0FC8  4E 80 00 20 */	blr 

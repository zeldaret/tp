lbl_800F3894:
/* 800F3894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F3898  7C 08 02 A6 */	mflr r0
/* 800F389C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F38A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F38A4  7C 7F 1B 78 */	mr r31, r3
/* 800F38A8  4B FF A1 7D */	bl setSyncRidePos__9daAlink_cFv
/* 800F38AC  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800F38B0  48 06 AC 1D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F38B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F38B8  41 82 00 18 */	beq lbl_800F38D0
/* 800F38BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F38C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F38C4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800F38C8  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 800F38CC  4B F5 48 B1 */	bl cutEnd__16dEvent_manager_cFi
lbl_800F38D0:
/* 800F38D0  38 60 00 01 */	li r3, 1
/* 800F38D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F38D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F38DC  7C 08 03 A6 */	mtlr r0
/* 800F38E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F38E4  4E 80 00 20 */	blr 

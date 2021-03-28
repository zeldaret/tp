lbl_802A4F68:
/* 802A4F68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A4F6C  7C 08 02 A6 */	mflr r0
/* 802A4F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A4F74  39 61 00 20 */	addi r11, r1, 0x20
/* 802A4F78  48 0B D2 61 */	bl _savegpr_28
/* 802A4F7C  7C 7C 1B 78 */	mr r28, r3
/* 802A4F80  3B A0 00 00 */	li r29, 0
/* 802A4F84  3C 60 80 3D */	lis r3, __files@ha
/* 802A4F88  38 63 29 B0 */	addi r3, r3, __files@l
/* 802A4F8C  3B C3 00 A0 */	addi r30, r3, 0xa0
/* 802A4F90  3C 60 80 3A */	lis r3, JAUSectionHeap__stringBase0@ha
/* 802A4F94  3B E3 B9 50 */	addi r31, r3, JAUSectionHeap__stringBase0@l
lbl_802A4F98:
/* 802A4F98  28 1D 00 FF */	cmplwi r29, 0xff
/* 802A4F9C  41 80 00 18 */	blt lbl_802A4FB4
/* 802A4FA0  7F C3 F3 78 */	mr r3, r30
/* 802A4FA4  7F E4 FB 78 */	mr r4, r31
/* 802A4FA8  4C C6 31 82 */	crclr 6
/* 802A4FAC  48 0C 17 F1 */	bl fprintf
/* 802A4FB0  48 0B DB 0D */	bl abort
lbl_802A4FB4:
/* 802A4FB4  38 7C 00 54 */	addi r3, r28, 0x54
/* 802A4FB8  7F A4 EB 78 */	mr r4, r29
/* 802A4FBC  48 00 16 59 */	bl func_802A6614
/* 802A4FC0  3B BD 00 01 */	addi r29, r29, 1
/* 802A4FC4  28 1D 00 FF */	cmplwi r29, 0xff
/* 802A4FC8  41 80 FF D0 */	blt lbl_802A4F98
/* 802A4FCC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A4FD0  48 0B D2 55 */	bl _restgpr_28
/* 802A4FD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A4FD8  7C 08 03 A6 */	mtlr r0
/* 802A4FDC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A4FE0  4E 80 00 20 */	blr 

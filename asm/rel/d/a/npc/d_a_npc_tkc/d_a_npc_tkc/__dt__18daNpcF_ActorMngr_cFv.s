lbl_80B0FFDC:
/* 80B0FFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0FFE0  7C 08 02 A6 */	mflr r0
/* 80B0FFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0FFE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0FFEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0FFF0  41 82 00 1C */	beq lbl_80B1000C
/* 80B0FFF4  3C A0 80 B1 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80B0FFF8  38 05 0C B4 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80B0FFFC  90 1F 00 04 */	stw r0, 4(r31)
/* 80B10000  7C 80 07 35 */	extsh. r0, r4
/* 80B10004  40 81 00 08 */	ble lbl_80B1000C
/* 80B10008  4B 7B ED 34 */	b __dl__FPv
lbl_80B1000C:
/* 80B1000C  7F E3 FB 78 */	mr r3, r31
/* 80B10010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B10014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B10018  7C 08 03 A6 */	mtlr r0
/* 80B1001C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B10020  4E 80 00 20 */	blr 

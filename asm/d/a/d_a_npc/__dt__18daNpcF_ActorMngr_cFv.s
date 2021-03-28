lbl_80155E40:
/* 80155E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155E44  7C 08 02 A6 */	mflr r0
/* 80155E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155E50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80155E54  41 82 00 1C */	beq lbl_80155E70
/* 80155E58  3C A0 80 3B */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80155E5C  38 05 38 64 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80155E60  90 1F 00 04 */	stw r0, 4(r31)
/* 80155E64  7C 80 07 35 */	extsh. r0, r4
/* 80155E68  40 81 00 08 */	ble lbl_80155E70
/* 80155E6C  48 17 8E D1 */	bl __dl__FPv
lbl_80155E70:
/* 80155E70  7F E3 FB 78 */	mr r3, r31
/* 80155E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80155E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155E7C  7C 08 03 A6 */	mtlr r0
/* 80155E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80155E84  4E 80 00 20 */	blr 

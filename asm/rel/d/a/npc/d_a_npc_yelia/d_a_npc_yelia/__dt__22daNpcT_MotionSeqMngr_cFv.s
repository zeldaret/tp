lbl_80B51A44:
/* 80B51A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B51A48  7C 08 02 A6 */	mflr r0
/* 80B51A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51A54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B51A58  41 82 00 1C */	beq lbl_80B51A74
/* 80B51A5C  3C A0 80 B5 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B532D0@ha */
/* 80B51A60  38 05 32 D0 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B532D0@l */
/* 80B51A64  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B51A68  7C 80 07 35 */	extsh. r0, r4
/* 80B51A6C  40 81 00 08 */	ble lbl_80B51A74
/* 80B51A70  4B 77 D2 CD */	bl __dl__FPv
lbl_80B51A74:
/* 80B51A74  7F E3 FB 78 */	mr r3, r31
/* 80B51A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51A80  7C 08 03 A6 */	mtlr r0
/* 80B51A84  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51A88  4E 80 00 20 */	blr 

lbl_80B2418C:
/* 80B2418C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B24190  7C 08 02 A6 */	mflr r0
/* 80B24194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B24198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2419C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B241A0  41 82 00 1C */	beq lbl_80B241BC
/* 80B241A4  3C A0 80 B2 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B25720@ha */
/* 80B241A8  38 05 57 20 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B25720@l */
/* 80B241AC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B241B0  7C 80 07 35 */	extsh. r0, r4
/* 80B241B4  40 81 00 08 */	ble lbl_80B241BC
/* 80B241B8  4B 7A AB 85 */	bl __dl__FPv
lbl_80B241BC:
/* 80B241BC  7F E3 FB 78 */	mr r3, r31
/* 80B241C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B241C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B241C8  7C 08 03 A6 */	mtlr r0
/* 80B241CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B241D0  4E 80 00 20 */	blr 

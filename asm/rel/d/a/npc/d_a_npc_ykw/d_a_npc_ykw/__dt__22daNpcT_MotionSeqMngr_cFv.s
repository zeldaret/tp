lbl_80B672D8:
/* 80B672D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B672DC  7C 08 02 A6 */	mflr r0
/* 80B672E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B672E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B672E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B672EC  41 82 00 1C */	beq lbl_80B67308
/* 80B672F0  3C A0 80 B7 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B672F4  38 05 8C 48 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B672F8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B672FC  7C 80 07 35 */	extsh. r0, r4
/* 80B67300  40 81 00 08 */	ble lbl_80B67308
/* 80B67304  4B 76 7A 38 */	b __dl__FPv
lbl_80B67308:
/* 80B67308  7F E3 FB 78 */	mr r3, r31
/* 80B6730C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B67310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B67314  7C 08 03 A6 */	mtlr r0
/* 80B67318  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6731C  4E 80 00 20 */	blr 

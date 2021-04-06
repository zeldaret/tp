lbl_80AB86A4:
/* 80AB86A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB86A8  7C 08 02 A6 */	mflr r0
/* 80AB86AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB86B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB86B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB86B8  41 82 00 1C */	beq lbl_80AB86D4
/* 80AB86BC  3C A0 80 AC */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AB940C@ha */
/* 80AB86C0  38 05 94 0C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AB940C@l */
/* 80AB86C4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AB86C8  7C 80 07 35 */	extsh. r0, r4
/* 80AB86CC  40 81 00 08 */	ble lbl_80AB86D4
/* 80AB86D0  4B 81 66 6D */	bl __dl__FPv
lbl_80AB86D4:
/* 80AB86D4  7F E3 FB 78 */	mr r3, r31
/* 80AB86D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB86DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB86E0  7C 08 03 A6 */	mtlr r0
/* 80AB86E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB86E8  4E 80 00 20 */	blr 

lbl_80A4511C:
/* 80A4511C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A45120  7C 08 02 A6 */	mflr r0
/* 80A45124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A45128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4512C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A45130  41 82 00 1C */	beq lbl_80A4514C
/* 80A45134  3C A0 80 A4 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A45794@ha */
/* 80A45138  38 05 57 94 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A45794@l */
/* 80A4513C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A45140  7C 80 07 35 */	extsh. r0, r4
/* 80A45144  40 81 00 08 */	ble lbl_80A4514C
/* 80A45148  4B 88 9B F5 */	bl __dl__FPv
lbl_80A4514C:
/* 80A4514C  7F E3 FB 78 */	mr r3, r31
/* 80A45150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A45154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A45158  7C 08 03 A6 */	mtlr r0
/* 80A4515C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A45160  4E 80 00 20 */	blr 

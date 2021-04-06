lbl_80B75864:
/* 80B75864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B75868  7C 08 02 A6 */	mflr r0
/* 80B7586C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B75870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B75874  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B75878  41 82 00 1C */	beq lbl_80B75894
/* 80B7587C  3C A0 80 B8 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B78290@ha */
/* 80B75880  38 05 82 90 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B78290@l */
/* 80B75884  90 1F 00 00 */	stw r0, 0(r31)
/* 80B75888  7C 80 07 35 */	extsh. r0, r4
/* 80B7588C  40 81 00 08 */	ble lbl_80B75894
/* 80B75890  4B 75 94 AD */	bl __dl__FPv
lbl_80B75894:
/* 80B75894  7F E3 FB 78 */	mr r3, r31
/* 80B75898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7589C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B758A0  7C 08 03 A6 */	mtlr r0
/* 80B758A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B758A8  4E 80 00 20 */	blr 

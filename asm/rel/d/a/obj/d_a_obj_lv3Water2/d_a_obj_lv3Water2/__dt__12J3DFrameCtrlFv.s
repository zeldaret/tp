lbl_80C5A7FC:
/* 80C5A7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5A800  7C 08 02 A6 */	mflr r0
/* 80C5A804  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5A808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5A80C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5A810  41 82 00 1C */	beq lbl_80C5A82C
/* 80C5A814  3C A0 80 C6 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C5A818  38 05 B4 48 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C5A81C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5A820  7C 80 07 35 */	extsh. r0, r4
/* 80C5A824  40 81 00 08 */	ble lbl_80C5A82C
/* 80C5A828  4B 67 45 14 */	b __dl__FPv
lbl_80C5A82C:
/* 80C5A82C  7F E3 FB 78 */	mr r3, r31
/* 80C5A830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5A834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5A838  7C 08 03 A6 */	mtlr r0
/* 80C5A83C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5A840  4E 80 00 20 */	blr 

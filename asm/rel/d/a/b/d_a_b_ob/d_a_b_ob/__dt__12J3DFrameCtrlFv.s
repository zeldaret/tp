lbl_80619C14:
/* 80619C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80619C18  7C 08 02 A6 */	mflr r0
/* 80619C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80619C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80619C24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80619C28  41 82 00 1C */	beq lbl_80619C44
/* 80619C2C  3C A0 80 62 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80619C30  38 05 B4 A0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80619C34  90 1F 00 00 */	stw r0, 0(r31)
/* 80619C38  7C 80 07 35 */	extsh. r0, r4
/* 80619C3C  40 81 00 08 */	ble lbl_80619C44
/* 80619C40  4B CB 50 FC */	b __dl__FPv
lbl_80619C44:
/* 80619C44  7F E3 FB 78 */	mr r3, r31
/* 80619C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80619C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80619C50  7C 08 03 A6 */	mtlr r0
/* 80619C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80619C58  4E 80 00 20 */	blr 

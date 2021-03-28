lbl_80CC19E0:
/* 80CC19E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC19E4  7C 08 02 A6 */	mflr r0
/* 80CC19E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC19EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC19F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC19F4  41 82 00 1C */	beq lbl_80CC1A10
/* 80CC19F8  3C A0 80 CC */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80CC19FC  38 05 28 4C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80CC1A00  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC1A04  7C 80 07 35 */	extsh. r0, r4
/* 80CC1A08  40 81 00 08 */	ble lbl_80CC1A10
/* 80CC1A0C  4B 60 D3 30 */	b __dl__FPv
lbl_80CC1A10:
/* 80CC1A10  7F E3 FB 78 */	mr r3, r31
/* 80CC1A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC1A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1A1C  7C 08 03 A6 */	mtlr r0
/* 80CC1A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1A24  4E 80 00 20 */	blr 

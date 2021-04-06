lbl_80D375EC:
/* 80D375EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D375F0  7C 08 02 A6 */	mflr r0
/* 80D375F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D375F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D375FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D37600  41 82 00 1C */	beq lbl_80D3761C
/* 80D37604  3C A0 80 D3 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D37968@ha */
/* 80D37608  38 05 79 68 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D37968@l */
/* 80D3760C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D37610  7C 80 07 35 */	extsh. r0, r4
/* 80D37614  40 81 00 08 */	ble lbl_80D3761C
/* 80D37618  4B 59 77 25 */	bl __dl__FPv
lbl_80D3761C:
/* 80D3761C  7F E3 FB 78 */	mr r3, r31
/* 80D37620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D37624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37628  7C 08 03 A6 */	mtlr r0
/* 80D3762C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37630  4E 80 00 20 */	blr 

lbl_80D3EA38:
/* 80D3EA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3EA3C  7C 08 02 A6 */	mflr r0
/* 80D3EA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3EA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3EA48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3EA4C  41 82 00 1C */	beq lbl_80D3EA68
/* 80D3EA50  3C A0 80 D4 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D3ED7C@ha */
/* 80D3EA54  38 05 ED 7C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D3ED7C@l */
/* 80D3EA58  90 1F 00 00 */	stw r0, 0(r31)
/* 80D3EA5C  7C 80 07 35 */	extsh. r0, r4
/* 80D3EA60  40 81 00 08 */	ble lbl_80D3EA68
/* 80D3EA64  4B 59 02 D9 */	bl __dl__FPv
lbl_80D3EA68:
/* 80D3EA68  7F E3 FB 78 */	mr r3, r31
/* 80D3EA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3EA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3EA74  7C 08 03 A6 */	mtlr r0
/* 80D3EA78  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3EA7C  4E 80 00 20 */	blr 

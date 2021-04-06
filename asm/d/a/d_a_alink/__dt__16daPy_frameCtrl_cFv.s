lbl_80140D24:
/* 80140D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140D28  7C 08 02 A6 */	mflr r0
/* 80140D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140D34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80140D38  41 82 00 30 */	beq lbl_80140D68
/* 80140D3C  3C 60 80 3B */	lis r3, __vt__16daPy_frameCtrl_c@ha /* 0x803B2E20@ha */
/* 80140D40  38 03 2E 20 */	addi r0, r3, __vt__16daPy_frameCtrl_c@l /* 0x803B2E20@l */
/* 80140D44  90 1F 00 00 */	stw r0, 0(r31)
/* 80140D48  41 82 00 10 */	beq lbl_80140D58
/* 80140D4C  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 80140D50  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 80140D54  90 1F 00 00 */	stw r0, 0(r31)
lbl_80140D58:
/* 80140D58  7C 80 07 35 */	extsh. r0, r4
/* 80140D5C  40 81 00 0C */	ble lbl_80140D68
/* 80140D60  7F E3 FB 78 */	mr r3, r31
/* 80140D64  48 18 DF D9 */	bl __dl__FPv
lbl_80140D68:
/* 80140D68  7F E3 FB 78 */	mr r3, r31
/* 80140D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140D74  7C 08 03 A6 */	mtlr r0
/* 80140D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80140D7C  4E 80 00 20 */	blr 

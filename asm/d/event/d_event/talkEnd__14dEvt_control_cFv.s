lbl_80041D34:
/* 80041D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80041D38  7C 08 02 A6 */	mflr r0
/* 80041D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80041D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80041D44  7C 7F 1B 78 */	mr r31, r3
/* 80041D48  80 83 00 C4 */	lwz r4, 0xc4(r3)
/* 80041D4C  48 00 15 A1 */	bl convPId__14dEvt_control_cFUi
/* 80041D50  28 03 00 00 */	cmplwi r3, 0
/* 80041D54  41 82 00 0C */	beq lbl_80041D60
/* 80041D58  38 00 00 00 */	li r0, 0
/* 80041D5C  B0 03 00 F8 */	sth r0, 0xf8(r3)
lbl_80041D60:
/* 80041D60  7F E3 FB 78 */	mr r3, r31
/* 80041D64  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80041D68  48 00 15 85 */	bl convPId__14dEvt_control_cFUi
/* 80041D6C  28 03 00 00 */	cmplwi r3, 0
/* 80041D70  41 82 00 0C */	beq lbl_80041D7C
/* 80041D74  38 00 00 00 */	li r0, 0
/* 80041D78  B0 03 00 F8 */	sth r0, 0xf8(r3)
lbl_80041D7C:
/* 80041D7C  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 80041D80  2C 04 FF FF */	cmpwi r4, -1
/* 80041D84  41 82 00 20 */	beq lbl_80041DA4
/* 80041D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80041D8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80041D90  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80041D94  38 A0 00 01 */	li r5, 1
/* 80041D98  48 00 50 15 */	bl endProc__16dEvent_manager_cFsi
/* 80041D9C  38 00 FF FF */	li r0, -1
/* 80041DA0  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_80041DA4:
/* 80041DA4  38 60 00 00 */	li r3, 0
/* 80041DA8  4B FD 9D 9D */	bl fopAcM_getItemEventPartner__FPC10fopAc_ac_c
/* 80041DAC  28 03 00 00 */	cmplwi r3, 0
/* 80041DB0  41 82 00 14 */	beq lbl_80041DC4
/* 80041DB4  A8 03 00 08 */	lha r0, 8(r3)
/* 80041DB8  2C 00 02 18 */	cmpwi r0, 0x218
/* 80041DBC  40 82 00 08 */	bne lbl_80041DC4
/* 80041DC0  4B FF 5D 25 */	bl dead__12daItemBase_cFv
lbl_80041DC4:
/* 80041DC4  38 60 00 01 */	li r3, 1
/* 80041DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80041DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80041DD0  7C 08 03 A6 */	mtlr r0
/* 80041DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80041DD8  4E 80 00 20 */	blr 

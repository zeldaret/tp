lbl_80C01C18:
/* 80C01C18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C01C1C  7C 08 02 A6 */	mflr r0
/* 80C01C20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C01C24  39 61 00 30 */	addi r11, r1, 0x30
/* 80C01C28  4B 76 05 B5 */	bl _savegpr_29
/* 80C01C2C  7C 7E 1B 78 */	mr r30, r3
/* 80C01C30  3B E0 00 01 */	li r31, 1
/* 80C01C34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C01C38  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C01C3C  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80C01C40  28 00 00 00 */	cmplwi r0, 0
/* 80C01C44  41 82 01 1C */	beq lbl_80C01D60
/* 80C01C48  3B E0 00 00 */	li r31, 0
/* 80C01C4C  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80C01C50  28 00 00 01 */	cmplwi r0, 1
/* 80C01C54  40 82 00 BC */	bne lbl_80C01D10
/* 80C01C58  3C 80 80 C1 */	lis r4, lit_4933@ha /* 0x80C10130@ha */
/* 80C01C5C  38 A4 01 30 */	addi r5, r4, lit_4933@l /* 0x80C10130@l */
/* 80C01C60  80 85 00 00 */	lwz r4, 0(r5)
/* 80C01C64  80 05 00 04 */	lwz r0, 4(r5)
/* 80C01C68  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C01C6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C01C70  80 05 00 08 */	lwz r0, 8(r5)
/* 80C01C74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C01C78  38 81 00 14 */	addi r4, r1, 0x14
/* 80C01C7C  4B FF FC 45 */	bl checkProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C01C80  2C 03 00 00 */	cmpwi r3, 0
/* 80C01C84  41 82 00 20 */	beq lbl_80C01CA4
/* 80C01C88  7F C3 F3 78 */	mr r3, r30
/* 80C01C8C  38 80 00 00 */	li r4, 0
/* 80C01C90  39 9E 0A 50 */	addi r12, r30, 0xa50
/* 80C01C94  4B 76 03 F1 */	bl __ptmf_scall
/* 80C01C98  60 00 00 00 */	nop 
/* 80C01C9C  7C 7F 1B 78 */	mr r31, r3
/* 80C01CA0  48 00 00 C0 */	b lbl_80C01D60
lbl_80C01CA4:
/* 80C01CA4  38 00 00 00 */	li r0, 0
/* 80C01CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C01CAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C01CB0  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80C01CB4  28 03 00 01 */	cmplwi r3, 1
/* 80C01CB8  41 82 00 0C */	beq lbl_80C01CC4
/* 80C01CBC  28 03 00 02 */	cmplwi r3, 2
/* 80C01CC0  40 82 00 08 */	bne lbl_80C01CC8
lbl_80C01CC4:
/* 80C01CC4  38 00 00 01 */	li r0, 1
lbl_80C01CC8:
/* 80C01CC8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80C01CCC  41 82 00 14 */	beq lbl_80C01CE0
/* 80C01CD0  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80C01CD4  4B 44 6B 1D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80C01CD8  2C 03 00 00 */	cmpwi r3, 0
/* 80C01CDC  41 82 00 84 */	beq lbl_80C01D60
lbl_80C01CE0:
/* 80C01CE0  3C 60 80 C1 */	lis r3, lit_4941@ha /* 0x80C1013C@ha */
/* 80C01CE4  38 83 01 3C */	addi r4, r3, lit_4941@l /* 0x80C1013C@l */
/* 80C01CE8  80 64 00 00 */	lwz r3, 0(r4)
/* 80C01CEC  80 04 00 04 */	lwz r0, 4(r4)
/* 80C01CF0  90 61 00 08 */	stw r3, 8(r1)
/* 80C01CF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C01CF8  80 04 00 08 */	lwz r0, 8(r4)
/* 80C01CFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C01D00  7F C3 F3 78 */	mr r3, r30
/* 80C01D04  38 81 00 08 */	addi r4, r1, 8
/* 80C01D08  4B FF FB ED */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C01D0C  48 00 00 54 */	b lbl_80C01D60
lbl_80C01D10:
/* 80C01D10  28 00 00 02 */	cmplwi r0, 2
/* 80C01D14  40 82 00 48 */	bne lbl_80C01D5C
/* 80C01D18  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80C01D1C  A8 9E 08 9A */	lha r4, 0x89a(r30)
/* 80C01D20  4B 44 5D 59 */	bl endCheck__16dEvent_manager_cFs
/* 80C01D24  2C 03 00 00 */	cmpwi r3, 0
/* 80C01D28  41 82 00 20 */	beq lbl_80C01D48
/* 80C01D2C  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80C01D30  4B 44 07 39 */	bl reset__14dEvt_control_cFv
/* 80C01D34  38 00 00 00 */	li r0, 0
/* 80C01D38  90 1E 15 20 */	stw r0, 0x1520(r30)
/* 80C01D3C  38 00 FF FF */	li r0, -1
/* 80C01D40  B0 1E 08 9A */	sth r0, 0x89a(r30)
/* 80C01D44  3B E0 00 01 */	li r31, 1
lbl_80C01D48:
/* 80C01D48  80 1E 20 9C */	lwz r0, 0x209c(r30)
/* 80C01D4C  2C 00 00 01 */	cmpwi r0, 1
/* 80C01D50  40 82 00 10 */	bne lbl_80C01D60
/* 80C01D54  3B E0 00 01 */	li r31, 1
/* 80C01D58  48 00 00 08 */	b lbl_80C01D60
lbl_80C01D5C:
/* 80C01D5C  3B E0 00 01 */	li r31, 1
lbl_80C01D60:
/* 80C01D60  7F E3 FB 78 */	mr r3, r31
/* 80C01D64  39 61 00 30 */	addi r11, r1, 0x30
/* 80C01D68  4B 76 04 C1 */	bl _restgpr_29
/* 80C01D6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C01D70  7C 08 03 A6 */	mtlr r0
/* 80C01D74  38 21 00 30 */	addi r1, r1, 0x30
/* 80C01D78  4E 80 00 20 */	blr 

lbl_80B43E28:
/* 80B43E28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B43E2C  7C 08 02 A6 */	mflr r0
/* 80B43E30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B43E34  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B43E38  7C 7F 1B 78 */	mr r31, r3
/* 80B43E3C  3C 80 80 B4 */	lis r4, lit_4588@ha /* 0x80B4627C@ha */
/* 80B43E40  38 A4 62 7C */	addi r5, r4, lit_4588@l /* 0x80B4627C@l */
/* 80B43E44  80 85 00 00 */	lwz r4, 0(r5)
/* 80B43E48  80 05 00 04 */	lwz r0, 4(r5)
/* 80B43E4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B43E50  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B43E54  80 05 00 08 */	lwz r0, 8(r5)
/* 80B43E58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B43E5C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B43E60  48 00 06 F5 */	bl chkAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i
/* 80B43E64  2C 03 00 00 */	cmpwi r3, 0
/* 80B43E68  41 82 00 1C */	beq lbl_80B43E84
/* 80B43E6C  7F E3 FB 78 */	mr r3, r31
/* 80B43E70  38 80 00 00 */	li r4, 0
/* 80B43E74  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B43E78  4B 81 E2 0D */	bl __ptmf_scall
/* 80B43E7C  60 00 00 00 */	nop 
/* 80B43E80  48 00 00 74 */	b lbl_80B43EF4
lbl_80B43E84:
/* 80B43E84  38 00 00 00 */	li r0, 0
/* 80B43E88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B43E8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B43E90  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80B43E94  28 03 00 01 */	cmplwi r3, 1
/* 80B43E98  41 82 00 0C */	beq lbl_80B43EA4
/* 80B43E9C  28 03 00 02 */	cmplwi r3, 2
/* 80B43EA0  40 82 00 08 */	bne lbl_80B43EA8
lbl_80B43EA4:
/* 80B43EA4  38 00 00 01 */	li r0, 1
lbl_80B43EA8:
/* 80B43EA8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B43EAC  41 82 00 1C */	beq lbl_80B43EC8
/* 80B43EB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B43EB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B43EB8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B43EBC  4B 50 49 35 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B43EC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B43EC4  41 82 00 30 */	beq lbl_80B43EF4
lbl_80B43EC8:
/* 80B43EC8  3C 60 80 B4 */	lis r3, lit_4596@ha /* 0x80B46288@ha */
/* 80B43ECC  38 83 62 88 */	addi r4, r3, lit_4596@l /* 0x80B46288@l */
/* 80B43ED0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B43ED4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B43ED8  90 61 00 08 */	stw r3, 8(r1)
/* 80B43EDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B43EE0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B43EE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B43EE8  7F E3 FB 78 */	mr r3, r31
/* 80B43EEC  38 81 00 08 */	addi r4, r1, 8
/* 80B43EF0  48 00 06 91 */	bl setAction__13daNpc_yamiD_cFM13daNpc_yamiD_cFPCvPvPv_i
lbl_80B43EF4:
/* 80B43EF4  38 60 00 01 */	li r3, 1
/* 80B43EF8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B43EFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B43F00  7C 08 03 A6 */	mtlr r0
/* 80B43F04  38 21 00 30 */	addi r1, r1, 0x30
/* 80B43F08  4E 80 00 20 */	blr 

lbl_80A6DCE8:
/* 80A6DCE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6DCEC  7C 08 02 A6 */	mflr r0
/* 80A6DCF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6DCF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6DCF8  4B 8F 44 DC */	b _savegpr_27
/* 80A6DCFC  7C 7F 1B 78 */	mr r31, r3
/* 80A6DD00  7C 9B 23 78 */	mr r27, r4
/* 80A6DD04  3B A0 00 00 */	li r29, 0
/* 80A6DD08  3B 80 FF FF */	li r28, -1
/* 80A6DD0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6DD10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6DD14  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A6DD18  7F C3 F3 78 */	mr r3, r30
/* 80A6DD1C  3C A0 80 A7 */	lis r5, struct_80A6FECC+0x0@ha
/* 80A6DD20  38 A5 FE CC */	addi r5, r5, struct_80A6FECC+0x0@l
/* 80A6DD24  38 A5 00 A5 */	addi r5, r5, 0xa5
/* 80A6DD28  38 C0 00 03 */	li r6, 3
/* 80A6DD2C  4B 5D A3 C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6DD30  28 03 00 00 */	cmplwi r3, 0
/* 80A6DD34  41 82 00 08 */	beq lbl_80A6DD3C
/* 80A6DD38  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A6DD3C:
/* 80A6DD3C  7F C3 F3 78 */	mr r3, r30
/* 80A6DD40  7F 64 DB 78 */	mr r4, r27
/* 80A6DD44  4B 5D A0 08 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A6DD48  2C 03 00 00 */	cmpwi r3, 0
/* 80A6DD4C  41 82 00 74 */	beq lbl_80A6DDC0
/* 80A6DD50  2C 1C 00 01 */	cmpwi r28, 1
/* 80A6DD54  41 82 00 0C */	beq lbl_80A6DD60
/* 80A6DD58  40 80 00 68 */	bge lbl_80A6DDC0
/* 80A6DD5C  48 00 00 64 */	b lbl_80A6DDC0
lbl_80A6DD60:
/* 80A6DD60  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6DD64  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A6DD68  41 82 00 28 */	beq lbl_80A6DD90
/* 80A6DD6C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6DD70  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6DD74  4B 6D 7B 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DD78  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6DD7C  38 00 00 11 */	li r0, 0x11
/* 80A6DD80  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6DD84  3C 60 80 A7 */	lis r3, lit_4218@ha
/* 80A6DD88  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)
/* 80A6DD8C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6DD90:
/* 80A6DD90  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6DD94  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A6DD98  41 82 00 28 */	beq lbl_80A6DDC0
/* 80A6DD9C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6DDA0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6DDA4  4B 6D 7A F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6DDA8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6DDAC  38 00 00 13 */	li r0, 0x13
/* 80A6DDB0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6DDB4  3C 60 80 A7 */	lis r3, lit_4218@ha
/* 80A6DDB8  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)
/* 80A6DDBC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6DDC0:
/* 80A6DDC0  2C 1C 00 01 */	cmpwi r28, 1
/* 80A6DDC4  41 82 00 30 */	beq lbl_80A6DDF4
/* 80A6DDC8  40 80 00 30 */	bge lbl_80A6DDF8
/* 80A6DDCC  2C 1C 00 00 */	cmpwi r28, 0
/* 80A6DDD0  40 80 00 08 */	bge lbl_80A6DDD8
/* 80A6DDD4  48 00 00 24 */	b lbl_80A6DDF8
lbl_80A6DDD8:
/* 80A6DDD8  7F E3 FB 78 */	mr r3, r31
/* 80A6DDDC  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A6DDE0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A6DDE4  7D 89 03 A6 */	mtctr r12
/* 80A6DDE8  4E 80 04 21 */	bctrl 
/* 80A6DDEC  3B A0 00 01 */	li r29, 1
/* 80A6DDF0  48 00 00 08 */	b lbl_80A6DDF8
lbl_80A6DDF4:
/* 80A6DDF4  3B A0 00 01 */	li r29, 1
lbl_80A6DDF8:
/* 80A6DDF8  7F A3 EB 78 */	mr r3, r29
/* 80A6DDFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6DE00  4B 8F 44 20 */	b _restgpr_27
/* 80A6DE04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6DE08  7C 08 03 A6 */	mtlr r0
/* 80A6DE0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6DE10  4E 80 00 20 */	blr 

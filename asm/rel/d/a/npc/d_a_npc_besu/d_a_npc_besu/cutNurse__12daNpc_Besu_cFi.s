lbl_8053BD18:
/* 8053BD18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053BD1C  7C 08 02 A6 */	mflr r0
/* 8053BD20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053BD24  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BD28  4B E2 64 AC */	b _savegpr_27
/* 8053BD2C  7C 7D 1B 78 */	mr r29, r3
/* 8053BD30  7C 9B 23 78 */	mr r27, r4
/* 8053BD34  3B E0 00 00 */	li r31, 0
/* 8053BD38  3B C0 FF FF */	li r30, -1
/* 8053BD3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053BD40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053BD44  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8053BD48  7F 83 E3 78 */	mr r3, r28
/* 8053BD4C  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053BD50  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053BD54  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053BD58  38 C0 00 03 */	li r6, 3
/* 8053BD5C  4B B0 C3 90 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053BD60  28 03 00 00 */	cmplwi r3, 0
/* 8053BD64  41 82 00 08 */	beq lbl_8053BD6C
/* 8053BD68  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8053BD6C:
/* 8053BD6C  7F 83 E3 78 */	mr r3, r28
/* 8053BD70  7F 64 DB 78 */	mr r4, r27
/* 8053BD74  4B B0 BF D8 */	b getIsAddvance__16dEvent_manager_cFi
/* 8053BD78  2C 03 00 00 */	cmpwi r3, 0
/* 8053BD7C  41 82 00 CC */	beq lbl_8053BE48
/* 8053BD80  2C 1E 00 01 */	cmpwi r30, 1
/* 8053BD84  41 82 00 18 */	beq lbl_8053BD9C
/* 8053BD88  40 80 00 08 */	bge lbl_8053BD90
/* 8053BD8C  48 00 00 BC */	b lbl_8053BE48
lbl_8053BD90:
/* 8053BD90  2C 1E 00 03 */	cmpwi r30, 3
/* 8053BD94  40 80 00 B4 */	bge lbl_8053BE48
/* 8053BD98  48 00 00 68 */	b lbl_8053BE00
lbl_8053BD9C:
/* 8053BD9C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8053BDA0  2C 00 00 16 */	cmpwi r0, 0x16
/* 8053BDA4  41 82 00 28 */	beq lbl_8053BDCC
/* 8053BDA8  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053BDAC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053BDB0  4B C0 9A E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BDB4  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053BDB8  38 00 00 16 */	li r0, 0x16
/* 8053BDBC  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053BDC0  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053BDC4  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053BDC8  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8053BDCC:
/* 8053BDCC  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8053BDD0  2C 00 00 18 */	cmpwi r0, 0x18
/* 8053BDD4  41 82 00 74 */	beq lbl_8053BE48
/* 8053BDD8  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053BDDC  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053BDE0  4B C0 9A B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BDE4  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053BDE8  38 00 00 18 */	li r0, 0x18
/* 8053BDEC  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053BDF0  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053BDF4  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053BDF8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8053BDFC  48 00 00 4C */	b lbl_8053BE48
lbl_8053BE00:
/* 8053BE00  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053BE04  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053BE08  4B C0 9A 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BE0C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053BE10  38 00 00 09 */	li r0, 9
/* 8053BE14  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053BE18  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053BE1C  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053BE20  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
/* 8053BE24  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053BE28  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053BE2C  4B C0 9A 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053BE30  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053BE34  38 00 00 05 */	li r0, 5
/* 8053BE38  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053BE3C  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053BE40  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053BE44  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8053BE48:
/* 8053BE48  2C 1E 00 03 */	cmpwi r30, 3
/* 8053BE4C  40 80 00 1C */	bge lbl_8053BE68
/* 8053BE50  2C 1E 00 00 */	cmpwi r30, 0
/* 8053BE54  40 80 00 08 */	bge lbl_8053BE5C
/* 8053BE58  48 00 00 10 */	b lbl_8053BE68
lbl_8053BE5C:
/* 8053BE5C  38 00 00 00 */	li r0, 0
/* 8053BE60  98 1D 0E 26 */	stb r0, 0xe26(r29)
/* 8053BE64  3B E0 00 01 */	li r31, 1
lbl_8053BE68:
/* 8053BE68  7F E3 FB 78 */	mr r3, r31
/* 8053BE6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BE70  4B E2 63 B0 */	b _restgpr_27
/* 8053BE74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053BE78  7C 08 03 A6 */	mtlr r0
/* 8053BE7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8053BE80  4E 80 00 20 */	blr 

lbl_80A6BD44:
/* 80A6BD44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6BD48  7C 08 02 A6 */	mflr r0
/* 80A6BD4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6BD50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A6BD54  7C 7F 1B 78 */	mr r31, r3
/* 80A6BD58  3C 80 80 A7 */	lis r4, lit_4639@ha
/* 80A6BD5C  38 A4 08 94 */	addi r5, r4, lit_4639@l
/* 80A6BD60  80 85 00 00 */	lwz r4, 0(r5)
/* 80A6BD64  80 05 00 04 */	lwz r0, 4(r5)
/* 80A6BD68  90 81 00 08 */	stw r4, 8(r1)
/* 80A6BD6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A6BD70  80 05 00 08 */	lwz r0, 8(r5)
/* 80A6BD74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A6BD78  38 81 00 08 */	addi r4, r1, 8
/* 80A6BD7C  48 00 10 79 */	bl chkAction__11daNpc_Lud_cFM11daNpc_Lud_cFPCvPvPv_i
/* 80A6BD80  2C 03 00 00 */	cmpwi r3, 0
/* 80A6BD84  40 82 00 D0 */	bne lbl_80A6BE54
/* 80A6BD88  38 00 00 00 */	li r0, 0
/* 80A6BD8C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A6BD90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6BD94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6BD98  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A6BD9C  28 04 00 01 */	cmplwi r4, 1
/* 80A6BDA0  41 82 00 0C */	beq lbl_80A6BDAC
/* 80A6BDA4  28 04 00 02 */	cmplwi r4, 2
/* 80A6BDA8  40 82 00 08 */	bne lbl_80A6BDB0
lbl_80A6BDAC:
/* 80A6BDAC  38 00 00 01 */	li r0, 1
lbl_80A6BDB0:
/* 80A6BDB0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A6BDB4  41 82 00 2C */	beq lbl_80A6BDE0
/* 80A6BDB8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A6BDBC  4B 5D CA 34 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A6BDC0  2C 03 00 00 */	cmpwi r3, 0
/* 80A6BDC4  41 82 00 14 */	beq lbl_80A6BDD8
/* 80A6BDC8  38 00 00 01 */	li r0, 1
/* 80A6BDCC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A6BDD0  7F E3 FB 78 */	mr r3, r31
/* 80A6BDD4  4B 6D E4 50 */	b evtChange__8daNpcT_cFv
lbl_80A6BDD8:
/* 80A6BDD8  38 60 00 01 */	li r3, 1
/* 80A6BDDC  48 00 00 7C */	b lbl_80A6BE58
lbl_80A6BDE0:
/* 80A6BDE0  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6BDE4  2C 00 00 05 */	cmpwi r0, 5
/* 80A6BDE8  41 82 00 3C */	beq lbl_80A6BE24
/* 80A6BDEC  40 80 00 10 */	bge lbl_80A6BDFC
/* 80A6BDF0  2C 00 00 04 */	cmpwi r0, 4
/* 80A6BDF4  40 80 00 18 */	bge lbl_80A6BE0C
/* 80A6BDF8  48 00 00 5C */	b lbl_80A6BE54
lbl_80A6BDFC:
/* 80A6BDFC  2C 00 00 07 */	cmpwi r0, 7
/* 80A6BE00  41 82 00 54 */	beq lbl_80A6BE54
/* 80A6BE04  40 80 00 50 */	bge lbl_80A6BE54
/* 80A6BE08  48 00 00 34 */	b lbl_80A6BE3C
lbl_80A6BE0C:
/* 80A6BE0C  38 00 00 03 */	li r0, 3
/* 80A6BE10  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A6BE14  7F E3 FB 78 */	mr r3, r31
/* 80A6BE18  4B 6D E4 0C */	b evtChange__8daNpcT_cFv
/* 80A6BE1C  38 60 00 01 */	li r3, 1
/* 80A6BE20  48 00 00 38 */	b lbl_80A6BE58
lbl_80A6BE24:
/* 80A6BE24  38 00 00 04 */	li r0, 4
/* 80A6BE28  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A6BE2C  7F E3 FB 78 */	mr r3, r31
/* 80A6BE30  4B 6D E3 F4 */	b evtChange__8daNpcT_cFv
/* 80A6BE34  38 60 00 01 */	li r3, 1
/* 80A6BE38  48 00 00 20 */	b lbl_80A6BE58
lbl_80A6BE3C:
/* 80A6BE3C  38 00 00 05 */	li r0, 5
/* 80A6BE40  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A6BE44  7F E3 FB 78 */	mr r3, r31
/* 80A6BE48  4B 6D E3 DC */	b evtChange__8daNpcT_cFv
/* 80A6BE4C  38 60 00 01 */	li r3, 1
/* 80A6BE50  48 00 00 08 */	b lbl_80A6BE58
lbl_80A6BE54:
/* 80A6BE54  38 60 00 00 */	li r3, 0
lbl_80A6BE58:
/* 80A6BE58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A6BE5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6BE60  7C 08 03 A6 */	mtlr r0
/* 80A6BE64  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6BE68  4E 80 00 20 */	blr 

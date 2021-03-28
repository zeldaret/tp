lbl_8066DD48:
/* 8066DD48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066DD4C  7C 08 02 A6 */	mflr r0
/* 8066DD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066DD54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066DD58  7C 7F 1B 78 */	mr r31, r3
/* 8066DD5C  A8 03 0C 06 */	lha r0, 0xc06(r3)
/* 8066DD60  2C 00 00 00 */	cmpwi r0, 0
/* 8066DD64  41 82 00 44 */	beq lbl_8066DDA8
/* 8066DD68  38 00 00 0A */	li r0, 0xa
/* 8066DD6C  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 8066DD70  38 7F 0C 0C */	addi r3, r31, 0xc0c
/* 8066DD74  7F E4 FB 78 */	mr r4, r31
/* 8066DD78  38 A0 00 00 */	li r5, 0
/* 8066DD7C  38 C0 00 00 */	li r6, 0
/* 8066DD80  4B BD C5 58 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8066DD84  2C 03 00 00 */	cmpwi r3, 0
/* 8066DD88  41 82 00 C8 */	beq lbl_8066DE50
/* 8066DD8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066DD90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066DD94  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8066DD98  4B 9D 46 D0 */	b reset__14dEvt_control_cFv
/* 8066DD9C  38 00 00 00 */	li r0, 0
/* 8066DDA0  B0 1F 0C 06 */	sth r0, 0xc06(r31)
/* 8066DDA4  48 00 00 AC */	b lbl_8066DE50
lbl_8066DDA8:
/* 8066DDA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066DDAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066DDB0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8066DDB4  28 00 00 00 */	cmplwi r0, 0
/* 8066DDB8  41 82 00 30 */	beq lbl_8066DDE8
/* 8066DDBC  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8066DDC0  28 00 00 01 */	cmplwi r0, 1
/* 8066DDC4  40 82 00 24 */	bne lbl_8066DDE8
/* 8066DDC8  38 7F 0C 0C */	addi r3, r31, 0xc0c
/* 8066DDCC  7F E4 FB 78 */	mr r4, r31
/* 8066DDD0  A8 BF 0C 08 */	lha r5, 0xc08(r31)
/* 8066DDD4  38 C0 00 00 */	li r6, 0
/* 8066DDD8  38 E0 00 00 */	li r7, 0
/* 8066DDDC  4B BD C1 B4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8066DDE0  38 00 00 01 */	li r0, 1
/* 8066DDE4  B0 1F 0C 06 */	sth r0, 0xc06(r31)
lbl_8066DDE8:
/* 8066DDE8  88 1F 0C 05 */	lbz r0, 0xc05(r31)
/* 8066DDEC  2C 00 00 02 */	cmpwi r0, 2
/* 8066DDF0  40 82 00 44 */	bne lbl_8066DE34
/* 8066DDF4  A8 1F 0C 08 */	lha r0, 0xc08(r31)
/* 8066DDF8  2C 00 FF FF */	cmpwi r0, -1
/* 8066DDFC  41 82 00 38 */	beq lbl_8066DE34
/* 8066DE00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066DE04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066DE08  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8066DE0C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8066DE10  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8066DE14  41 82 00 20 */	beq lbl_8066DE34
/* 8066DE18  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8066DE1C  60 00 00 0A */	ori r0, r0, 0xa
/* 8066DE20  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8066DE24  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8066DE28  60 00 00 01 */	ori r0, r0, 1
/* 8066DE2C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8066DE30  48 00 00 20 */	b lbl_8066DE50
lbl_8066DE34:
/* 8066DE34  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8066DE38  54 00 00 3E */	slwi r0, r0, 0
/* 8066DE3C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8066DE40  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 8066DE44  38 00 FF F5 */	li r0, -11
/* 8066DE48  7C 60 00 38 */	and r0, r3, r0
/* 8066DE4C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8066DE50:
/* 8066DE50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066DE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066DE58  7C 08 03 A6 */	mtlr r0
/* 8066DE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8066DE60  4E 80 00 20 */	blr 

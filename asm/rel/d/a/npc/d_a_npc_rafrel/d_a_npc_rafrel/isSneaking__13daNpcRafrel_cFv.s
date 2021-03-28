lbl_80ABAFBC:
/* 80ABAFBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABAFC0  7C 08 02 A6 */	mflr r0
/* 80ABAFC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABAFC8  88 03 0E 17 */	lbz r0, 0xe17(r3)
/* 80ABAFCC  28 00 00 00 */	cmplwi r0, 0
/* 80ABAFD0  40 82 00 30 */	bne lbl_80ABB000
/* 80ABAFD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABAFD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABAFDC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80ABAFE0  2C 00 00 05 */	cmpwi r0, 5
/* 80ABAFE4  40 82 00 1C */	bne lbl_80ABB000
/* 80ABAFE8  38 60 00 00 */	li r3, 0
/* 80ABAFEC  4B 57 19 90 */	b getLayerNo__14dComIfG_play_cFi
/* 80ABAFF0  2C 03 00 02 */	cmpwi r3, 2
/* 80ABAFF4  40 82 00 0C */	bne lbl_80ABB000
/* 80ABAFF8  38 60 00 01 */	li r3, 1
/* 80ABAFFC  48 00 00 08 */	b lbl_80ABB004
lbl_80ABB000:
/* 80ABB000  38 60 00 00 */	li r3, 0
lbl_80ABB004:
/* 80ABB004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABB008  7C 08 03 A6 */	mtlr r0
/* 80ABB00C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABB010  4E 80 00 20 */	blr 

lbl_80079DF0:
/* 80079DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80079DF4  7C 08 02 A6 */	mflr r0
/* 80079DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80079DFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80079E00  48 2E 83 DD */	bl _savegpr_29
/* 80079E04  7C 7F 1B 78 */	mr r31, r3
/* 80079E08  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80079E0C  28 00 00 00 */	cmplwi r0, 0
/* 80079E10  40 82 00 4C */	bne lbl_80079E5C
/* 80079E14  38 C0 00 00 */	li r6, 0
/* 80079E18  38 60 00 00 */	li r3, 0
/* 80079E1C  80 BF 00 A0 */	lwz r5, 0xa0(r31)
/* 80079E20  80 05 00 20 */	lwz r0, 0x20(r5)
/* 80079E24  7C 09 03 A6 */	mtctr r0
/* 80079E28  2C 00 00 00 */	cmpwi r0, 0
/* 80079E2C  40 81 00 A8 */	ble lbl_80079ED4
lbl_80079E30:
/* 80079E30  80 85 00 24 */	lwz r4, 0x24(r5)
/* 80079E34  38 03 00 24 */	addi r0, r3, 0x24
/* 80079E38  7C 04 02 2E */	lhzx r0, r4, r0
/* 80079E3C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80079E40  40 82 00 0C */	bne lbl_80079E4C
/* 80079E44  B0 DF 00 92 */	sth r6, 0x92(r31)
/* 80079E48  48 00 00 8C */	b lbl_80079ED4
lbl_80079E4C:
/* 80079E4C  38 C6 00 01 */	addi r6, r6, 1
/* 80079E50  38 63 00 34 */	addi r3, r3, 0x34
/* 80079E54  42 00 FF DC */	bdnz lbl_80079E30
/* 80079E58  48 00 00 7C */	b lbl_80079ED4
lbl_80079E5C:
/* 80079E5C  3B A0 00 00 */	li r29, 0
/* 80079E60  3B C0 00 00 */	li r30, 0
/* 80079E64  48 00 00 1C */	b lbl_80079E80
lbl_80079E68:
/* 80079E68  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80079E6C  38 7E 00 04 */	addi r3, r30, 4
/* 80079E70  7C 60 1A 14 */	add r3, r0, r3
/* 80079E74  48 1F 4E 85 */	bl ClearForMinMax__8cM3dGAabFv
/* 80079E78  3B BD 00 01 */	addi r29, r29, 1
/* 80079E7C  3B DE 00 20 */	addi r30, r30, 0x20
lbl_80079E80:
/* 80079E80  80 DF 00 A0 */	lwz r6, 0xa0(r31)
/* 80079E84  80 06 00 20 */	lwz r0, 0x20(r6)
/* 80079E88  7C 1D 00 00 */	cmpw r29, r0
/* 80079E8C  41 80 FF DC */	blt lbl_80079E68
/* 80079E90  38 80 00 00 */	li r4, 0
/* 80079E94  38 60 00 00 */	li r3, 0
/* 80079E98  7C 09 03 A6 */	mtctr r0
/* 80079E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80079EA0  40 81 00 34 */	ble lbl_80079ED4
lbl_80079EA4:
/* 80079EA4  80 A6 00 24 */	lwz r5, 0x24(r6)
/* 80079EA8  38 03 00 24 */	addi r0, r3, 0x24
/* 80079EAC  7C 05 02 2E */	lhzx r0, r5, r0
/* 80079EB0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80079EB4  40 82 00 14 */	bne lbl_80079EC8
/* 80079EB8  B0 9F 00 92 */	sth r4, 0x92(r31)
/* 80079EBC  7F E3 FB 78 */	mr r3, r31
/* 80079EC0  4B FF FE 05 */	bl MakeNodeTreeGrpRp__4cBgWFi
/* 80079EC4  48 00 00 10 */	b lbl_80079ED4
lbl_80079EC8:
/* 80079EC8  38 84 00 01 */	addi r4, r4, 1
/* 80079ECC  38 63 00 34 */	addi r3, r3, 0x34
/* 80079ED0  42 00 FF D4 */	bdnz lbl_80079EA4
lbl_80079ED4:
/* 80079ED4  39 61 00 20 */	addi r11, r1, 0x20
/* 80079ED8  48 2E 83 51 */	bl _restgpr_29
/* 80079EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80079EE0  7C 08 03 A6 */	mtlr r0
/* 80079EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80079EE8  4E 80 00 20 */	blr 

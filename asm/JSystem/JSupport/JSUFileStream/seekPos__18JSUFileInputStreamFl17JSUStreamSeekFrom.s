lbl_802DC74C:
/* 802DC74C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC750  7C 08 02 A6 */	mflr r0
/* 802DC754  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC758  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC75C  48 08 5A 81 */	bl _savegpr_29
/* 802DC760  7C 7D 1B 78 */	mr r29, r3
/* 802DC764  7C 9E 23 78 */	mr r30, r4
/* 802DC768  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802DC76C  2C 05 00 01 */	cmpwi r5, 1
/* 802DC770  41 82 00 48 */	beq lbl_802DC7B8
/* 802DC774  40 80 00 10 */	bge lbl_802DC784
/* 802DC778  2C 05 00 00 */	cmpwi r5, 0
/* 802DC77C  40 80 00 14 */	bge lbl_802DC790
/* 802DC780  48 00 00 40 */	b lbl_802DC7C0
lbl_802DC784:
/* 802DC784  2C 05 00 03 */	cmpwi r5, 3
/* 802DC788  40 80 00 38 */	bge lbl_802DC7C0
/* 802DC78C  48 00 00 0C */	b lbl_802DC798
lbl_802DC790:
/* 802DC790  93 DD 00 0C */	stw r30, 0xc(r29)
/* 802DC794  48 00 00 2C */	b lbl_802DC7C0
lbl_802DC798:
/* 802DC798  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC79C  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC7A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC7A4  7D 89 03 A6 */	mtctr r12
/* 802DC7A8  4E 80 04 21 */	bctrl 
/* 802DC7AC  7C 1E 18 50 */	subf r0, r30, r3
/* 802DC7B0  90 1D 00 0C */	stw r0, 0xc(r29)
/* 802DC7B4  48 00 00 0C */	b lbl_802DC7C0
lbl_802DC7B8:
/* 802DC7B8  7C 1F F2 14 */	add r0, r31, r30
/* 802DC7BC  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_802DC7C0:
/* 802DC7C0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DC7C4  2C 00 00 00 */	cmpwi r0, 0
/* 802DC7C8  40 80 00 0C */	bge lbl_802DC7D4
/* 802DC7CC  38 00 00 00 */	li r0, 0
/* 802DC7D0  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_802DC7D4:
/* 802DC7D4  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC7D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC7DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC7E0  7D 89 03 A6 */	mtctr r12
/* 802DC7E4  4E 80 04 21 */	bctrl 
/* 802DC7E8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DC7EC  7C 00 18 00 */	cmpw r0, r3
/* 802DC7F0  40 81 00 1C */	ble lbl_802DC80C
/* 802DC7F4  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC7F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC7FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC800  7D 89 03 A6 */	mtctr r12
/* 802DC804  4E 80 04 21 */	bctrl 
/* 802DC808  90 7D 00 0C */	stw r3, 0xc(r29)
lbl_802DC80C:
/* 802DC80C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DC810  7C 7F 00 50 */	subf r3, r31, r0
/* 802DC814  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC818  48 08 5A 11 */	bl _restgpr_29
/* 802DC81C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC820  7C 08 03 A6 */	mtlr r0
/* 802DC824  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC828  4E 80 00 20 */	blr 

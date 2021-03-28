lbl_802DC5AC:
/* 802DC5AC  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 802DC5B0  2C 05 00 01 */	cmpwi r5, 1
/* 802DC5B4  41 82 00 38 */	beq lbl_802DC5EC
/* 802DC5B8  40 80 00 10 */	bge lbl_802DC5C8
/* 802DC5BC  2C 05 00 00 */	cmpwi r5, 0
/* 802DC5C0  40 80 00 14 */	bge lbl_802DC5D4
/* 802DC5C4  48 00 00 30 */	b lbl_802DC5F4
lbl_802DC5C8:
/* 802DC5C8  2C 05 00 03 */	cmpwi r5, 3
/* 802DC5CC  40 80 00 28 */	bge lbl_802DC5F4
/* 802DC5D0  48 00 00 0C */	b lbl_802DC5DC
lbl_802DC5D4:
/* 802DC5D4  90 83 00 10 */	stw r4, 0x10(r3)
/* 802DC5D8  48 00 00 1C */	b lbl_802DC5F4
lbl_802DC5DC:
/* 802DC5DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802DC5E0  7C 04 00 50 */	subf r0, r4, r0
/* 802DC5E4  90 03 00 10 */	stw r0, 0x10(r3)
/* 802DC5E8  48 00 00 0C */	b lbl_802DC5F4
lbl_802DC5EC:
/* 802DC5EC  7C 06 22 14 */	add r0, r6, r4
/* 802DC5F0  90 03 00 10 */	stw r0, 0x10(r3)
lbl_802DC5F4:
/* 802DC5F4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802DC5F8  2C 00 00 00 */	cmpwi r0, 0
/* 802DC5FC  40 80 00 0C */	bge lbl_802DC608
/* 802DC600  38 00 00 00 */	li r0, 0
/* 802DC604  90 03 00 10 */	stw r0, 0x10(r3)
lbl_802DC608:
/* 802DC608  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802DC60C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802DC610  7C 00 20 00 */	cmpw r0, r4
/* 802DC614  40 81 00 08 */	ble lbl_802DC61C
/* 802DC618  90 83 00 10 */	stw r4, 0x10(r3)
lbl_802DC61C:
/* 802DC61C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802DC620  7C 66 00 50 */	subf r3, r6, r0
/* 802DC624  4E 80 00 20 */	blr 

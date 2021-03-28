lbl_8010DDCC:
/* 8010DDCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010DDD0  7C 08 02 A6 */	mflr r0
/* 8010DDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010DDD8  80 C3 28 18 */	lwz r6, 0x2818(r3)
/* 8010DDDC  28 06 00 00 */	cmplwi r6, 0
/* 8010DDE0  40 82 00 10 */	bne lbl_8010DDF0
/* 8010DDE4  38 80 00 00 */	li r4, 0
/* 8010DDE8  4B FA C2 E9 */	bl checkNextAction__9daAlink_cFi
/* 8010DDEC  48 00 00 68 */	b lbl_8010DE54
lbl_8010DDF0:
/* 8010DDF0  C0 06 04 D0 */	lfs f0, 0x4d0(r6)
/* 8010DDF4  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8010DDF8  C0 06 04 D8 */	lfs f0, 0x4d8(r6)
/* 8010DDFC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8010DE00  A8 83 30 0C */	lha r4, 0x300c(r3)
/* 8010DE04  38 04 FF FF */	addi r0, r4, -1
/* 8010DE08  B0 03 30 0C */	sth r0, 0x300c(r3)
/* 8010DE0C  38 00 00 0F */	li r0, 0xf
/* 8010DE10  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 8010DE14  A8 A3 30 0C */	lha r5, 0x300c(r3)
/* 8010DE18  7C A0 07 35 */	extsh. r0, r5
/* 8010DE1C  40 80 00 1C */	bge lbl_8010DE38
/* 8010DE20  80 86 05 68 */	lwz r4, 0x568(r6)
/* 8010DE24  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8010DE28  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8010DE2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010DE30  4C 40 13 82 */	cror 2, 0, 2
/* 8010DE34  41 82 00 0C */	beq lbl_8010DE40
lbl_8010DE38:
/* 8010DE38  2C 05 FF E2 */	cmpwi r5, -30
/* 8010DE3C  40 80 00 14 */	bge lbl_8010DE50
lbl_8010DE40:
/* 8010DE40  80 86 05 68 */	lwz r4, 0x568(r6)
/* 8010DE44  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8010DE48  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8010DE4C  48 00 00 2D */	bl procSpinnerWaitInit__9daAlink_cFv
lbl_8010DE50:
/* 8010DE50  38 60 00 01 */	li r3, 1
lbl_8010DE54:
/* 8010DE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010DE58  7C 08 03 A6 */	mtlr r0
/* 8010DE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8010DE60  4E 80 00 20 */	blr 

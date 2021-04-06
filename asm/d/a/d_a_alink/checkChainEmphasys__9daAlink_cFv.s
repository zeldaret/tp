lbl_800E7994:
/* 800E7994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7998  7C 08 02 A6 */	mflr r0
/* 800E799C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E79A0  80 A3 28 48 */	lwz r5, 0x2848(r3)
/* 800E79A4  28 05 00 00 */	cmplwi r5, 0
/* 800E79A8  41 82 00 3C */	beq lbl_800E79E4
/* 800E79AC  A8 05 00 08 */	lha r0, 8(r5)
/* 800E79B0  2C 00 01 6F */	cmpwi r0, 0x16f
/* 800E79B4  40 82 00 30 */	bne lbl_800E79E4
/* 800E79B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E79BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E79C0  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 800E79C4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800E79C8  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 800E79CC  7C 05 07 74 */	extsb r5, r0
/* 800E79D0  4B F4 D9 91 */	bl isSwitch__10dSv_info_cCFii
/* 800E79D4  2C 03 00 00 */	cmpwi r3, 0
/* 800E79D8  41 82 00 0C */	beq lbl_800E79E4
/* 800E79DC  38 60 00 00 */	li r3, 0
/* 800E79E0  48 00 00 08 */	b lbl_800E79E8
lbl_800E79E4:
/* 800E79E4  38 60 00 02 */	li r3, 2
lbl_800E79E8:
/* 800E79E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E79EC  7C 08 03 A6 */	mtlr r0
/* 800E79F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E79F4  4E 80 00 20 */	blr 

lbl_8001FD34:
/* 8001FD34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001FD38  7C 08 02 A6 */	mflr r0
/* 8001FD3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001FD40  39 61 00 30 */	addi r11, r1, 0x30
/* 8001FD44  48 34 24 95 */	bl _savegpr_28
/* 8001FD48  7C 7C 1B 78 */	mr r28, r3
/* 8001FD4C  7C 9D 23 78 */	mr r29, r4
/* 8001FD50  7C BE 2B 78 */	mr r30, r5
/* 8001FD54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001FD58  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8001FD5C  88 1F 5E 8F */	lbz r0, 0x5e8f(r31)
/* 8001FD60  28 00 00 08 */	cmplwi r0, 8
/* 8001FD64  40 82 00 14 */	bne lbl_8001FD78
/* 8001FD68  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8001FD6C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8001FD70  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8001FD74  48 1F F9 79 */	bl emphasisButtonDelete__9dMeter2_cFv
lbl_8001FD78:
/* 8001FD78  88 1F 5E 8F */	lbz r0, 0x5e8f(r31)
/* 8001FD7C  28 00 00 00 */	cmplwi r0, 0
/* 8001FD80  41 82 00 2C */	beq lbl_8001FDAC
/* 8001FD84  28 00 00 05 */	cmplwi r0, 5
/* 8001FD88  41 82 00 24 */	beq lbl_8001FDAC
/* 8001FD8C  28 00 00 02 */	cmplwi r0, 2
/* 8001FD90  41 82 00 1C */	beq lbl_8001FDAC
/* 8001FD94  28 00 00 03 */	cmplwi r0, 3
/* 8001FD98  41 82 00 14 */	beq lbl_8001FDAC
/* 8001FD9C  28 00 00 01 */	cmplwi r0, 1
/* 8001FDA0  41 82 00 0C */	beq lbl_8001FDAC
/* 8001FDA4  38 60 FF FF */	li r3, -1
/* 8001FDA8  48 00 00 C4 */	b lbl_8001FE6C
lbl_8001FDAC:
/* 8001FDAC  38 00 00 FF */	li r0, 0xff
/* 8001FDB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001FDB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001FDB8  98 03 5E 7C */	stb r0, 0x5e7c(r3)
/* 8001FDBC  38 00 FF FF */	li r0, -1
/* 8001FDC0  90 03 5E E8 */	stw r0, 0x5ee8(r3)
/* 8001FDC4  28 1D 00 00 */	cmplwi r29, 0
/* 8001FDC8  41 82 00 20 */	beq lbl_8001FDE8
/* 8001FDCC  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8001FDD0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001FDD4  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8001FDD8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001FDDC  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8001FDE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001FDE4  48 00 00 14 */	b lbl_8001FDF8
lbl_8001FDE8:
/* 8001FDE8  C0 02 82 70 */	lfs f0, lit_3902(r2)
/* 8001FDEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001FDF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001FDF4  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_8001FDF8:
/* 8001FDF8  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8001FDFC  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8001FE00  88 03 03 1F */	lbz r0, 0x31f(r3)
/* 8001FE04  28 00 00 01 */	cmplwi r0, 1
/* 8001FE08  40 82 00 08 */	bne lbl_8001FE10
/* 8001FE0C  AB 83 02 F4 */	lha r28, 0x2f4(r3)
lbl_8001FE10:
/* 8001FE10  80 6D 80 48 */	lwz r3, i_msgID(r13)
/* 8001FE14  4B FF FC 11 */	bl fopMsgM_SearchByID__FUi
/* 8001FE18  28 03 00 00 */	cmplwi r3, 0
/* 8001FE1C  41 82 00 4C */	beq lbl_8001FE68
/* 8001FE20  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8001FE24  28 00 00 01 */	cmplwi r0, 1
/* 8001FE28  40 82 00 40 */	bne lbl_8001FE68
/* 8001FE2C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8001FE30  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 8001FE34  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8001FE38  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 8001FE3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8001FE40  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 8001FE44  93 83 00 EC */	stw r28, 0xec(r3)
/* 8001FE48  93 C3 00 F0 */	stw r30, 0xf0(r3)
/* 8001FE4C  93 A3 00 DC */	stw r29, 0xdc(r3)
/* 8001FE50  7F 84 E3 78 */	mr r4, r28
/* 8001FE54  7F C5 F3 78 */	mr r5, r30
/* 8001FE58  38 C0 00 00 */	li r6, 0
/* 8001FE5C  48 21 3E A9 */	bl setMessageIndex__12dMsgObject_cFUlUlb
/* 8001FE60  80 6D 80 48 */	lwz r3, i_msgID(r13)
/* 8001FE64  48 00 00 08 */	b lbl_8001FE6C
lbl_8001FE68:
/* 8001FE68  38 60 00 00 */	li r3, 0
lbl_8001FE6C:
/* 8001FE6C  39 61 00 30 */	addi r11, r1, 0x30
/* 8001FE70  48 34 23 B5 */	bl _restgpr_28
/* 8001FE74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001FE78  7C 08 03 A6 */	mtlr r0
/* 8001FE7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8001FE80  4E 80 00 20 */	blr 

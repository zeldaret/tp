lbl_8001FFC4:
/* 8001FFC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001FFC8  7C 08 02 A6 */	mflr r0
/* 8001FFCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001FFD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001FFD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001FFD8  7C 7E 1B 78 */	mr r30, r3
/* 8001FFDC  48 21 80 BD */	bl endFlowGroup__12dMsgObject_cFv
/* 8001FFE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001FFE4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8001FFE8  88 1F 5E 8F */	lbz r0, 0x5e8f(r31)
/* 8001FFEC  28 00 00 08 */	cmplwi r0, 8
/* 8001FFF0  40 82 00 14 */	bne lbl_80020004
/* 8001FFF4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8001FFF8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8001FFFC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80020000  48 1F F6 ED */	bl emphasisButtonDelete__9dMeter2_cFv
lbl_80020004:
/* 80020004  88 1F 5E 8F */	lbz r0, 0x5e8f(r31)
/* 80020008  28 00 00 00 */	cmplwi r0, 0
/* 8002000C  41 82 00 2C */	beq lbl_80020038
/* 80020010  28 00 00 05 */	cmplwi r0, 5
/* 80020014  41 82 00 24 */	beq lbl_80020038
/* 80020018  28 00 00 02 */	cmplwi r0, 2
/* 8002001C  41 82 00 1C */	beq lbl_80020038
/* 80020020  28 00 00 03 */	cmplwi r0, 3
/* 80020024  41 82 00 14 */	beq lbl_80020038
/* 80020028  28 00 00 01 */	cmplwi r0, 1
/* 8002002C  41 82 00 0C */	beq lbl_80020038
/* 80020030  38 60 FF FF */	li r3, -1
/* 80020034  48 00 00 74 */	b lbl_800200A8
lbl_80020038:
/* 80020038  C0 02 82 70 */	lfs f0, lit_3902(r2)
/* 8002003C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80020040  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80020044  D0 01 00 08 */	stfs f0, 8(r1)
/* 80020048  80 6D 80 48 */	lwz r3, i_msgID(r13)
/* 8002004C  4B FF F9 D9 */	bl fopMsgM_SearchByID__FUi
/* 80020050  28 03 00 00 */	cmplwi r3, 0
/* 80020054  41 82 00 50 */	beq lbl_800200A4
/* 80020058  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8002005C  28 00 00 01 */	cmplwi r0, 1
/* 80020060  40 82 00 44 */	bne lbl_800200A4
/* 80020064  C0 01 00 08 */	lfs f0, 8(r1)
/* 80020068  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 8002006C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80020070  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 80020074  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80020078  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 8002007C  93 C3 00 EC */	stw r30, 0xec(r3)
/* 80020080  38 00 03 E8 */	li r0, 0x3e8
/* 80020084  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 80020088  38 00 00 00 */	li r0, 0
/* 8002008C  90 03 00 DC */	stw r0, 0xdc(r3)
/* 80020090  7F C4 F3 78 */	mr r4, r30
/* 80020094  38 A0 00 00 */	li r5, 0
/* 80020098  48 21 3D D9 */	bl setMessageIndexDemo__12dMsgObject_cFUlb
/* 8002009C  80 6D 80 48 */	lwz r3, i_msgID(r13)
/* 800200A0  48 00 00 08 */	b lbl_800200A8
lbl_800200A4:
/* 800200A4  38 60 00 00 */	li r3, 0
lbl_800200A8:
/* 800200A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800200AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800200B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800200B4  7C 08 03 A6 */	mtlr r0
/* 800200B8  38 21 00 20 */	addi r1, r1, 0x20
/* 800200BC  4E 80 00 20 */	blr 

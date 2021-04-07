lbl_80051CF0:
/* 80051CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80051CF4  7C 08 02 A6 */	mflr r0
/* 80051CF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80051CFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80051D00  7C 7F 1B 78 */	mr r31, r3
/* 80051D04  48 30 98 89 */	bl GXClearVtxDesc
/* 80051D08  38 60 00 09 */	li r3, 9
/* 80051D0C  38 80 00 01 */	li r4, 1
/* 80051D10  48 30 91 A9 */	bl GXSetVtxDesc
/* 80051D14  38 60 00 00 */	li r3, 0
/* 80051D18  38 80 00 09 */	li r4, 9
/* 80051D1C  38 A0 00 01 */	li r5, 1
/* 80051D20  38 C0 00 03 */	li r6, 3
/* 80051D24  38 E0 00 00 */	li r7, 0
/* 80051D28  48 30 98 9D */	bl GXSetVtxAttrFmt
/* 80051D2C  38 60 00 01 */	li r3, 1
/* 80051D30  48 30 BE 01 */	bl GXSetNumChans
/* 80051D34  38 60 00 04 */	li r3, 4
/* 80051D38  38 80 00 00 */	li r4, 0
/* 80051D3C  38 A0 00 00 */	li r5, 0
/* 80051D40  38 C0 00 00 */	li r6, 0
/* 80051D44  38 E0 00 00 */	li r7, 0
/* 80051D48  39 00 00 00 */	li r8, 0
/* 80051D4C  39 20 00 02 */	li r9, 2
/* 80051D50  48 30 BE 1D */	bl GXSetChanCtrl
/* 80051D54  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80051D58  90 01 00 08 */	stw r0, 8(r1)
/* 80051D5C  38 60 00 04 */	li r3, 4
/* 80051D60  38 81 00 08 */	addi r4, r1, 8
/* 80051D64  48 30 BC E5 */	bl GXSetChanMatColor
/* 80051D68  38 60 00 00 */	li r3, 0
/* 80051D6C  48 30 A0 91 */	bl GXSetNumTexGens
/* 80051D70  38 60 00 01 */	li r3, 1
/* 80051D74  48 30 DB 1D */	bl GXSetNumTevStages
/* 80051D78  38 60 00 00 */	li r3, 0
/* 80051D7C  38 80 00 FF */	li r4, 0xff
/* 80051D80  38 A0 00 FF */	li r5, 0xff
/* 80051D84  38 C0 00 04 */	li r6, 4
/* 80051D88  48 30 D9 6D */	bl GXSetTevOrder
/* 80051D8C  38 60 00 00 */	li r3, 0
/* 80051D90  38 80 00 04 */	li r4, 4
/* 80051D94  48 30 D4 05 */	bl GXSetTevOp
/* 80051D98  38 60 00 01 */	li r3, 1
/* 80051D9C  38 80 00 04 */	li r4, 4
/* 80051DA0  38 A0 00 05 */	li r5, 5
/* 80051DA4  38 C0 00 0F */	li r6, 0xf
/* 80051DA8  48 30 DE 49 */	bl GXSetBlendMode
/* 80051DAC  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 80051DB0  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 80051DB4  38 80 00 00 */	li r4, 0
/* 80051DB8  48 30 E4 95 */	bl GXLoadPosMtxImm
/* 80051DBC  38 60 00 00 */	li r3, 0
/* 80051DC0  48 30 E5 2D */	bl GXSetCurrentMtx
/* 80051DC4  38 60 00 80 */	li r3, 0x80
/* 80051DC8  38 80 00 00 */	li r4, 0
/* 80051DCC  38 A0 00 04 */	li r5, 4
/* 80051DD0  48 30 A9 95 */	bl GXBegin
/* 80051DD4  A8 7F 00 06 */	lha r3, 6(r31)
/* 80051DD8  A8 1F 00 04 */	lha r0, 4(r31)
/* 80051DDC  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80051DE0  B0 05 80 00 */	sth r0, 0x8000(r5)  /* 0xCC008000@l */
/* 80051DE4  B0 65 80 00 */	sth r3, -0x8000(r5)
/* 80051DE8  38 80 00 00 */	li r4, 0
/* 80051DEC  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80051DF0  A8 7F 00 06 */	lha r3, 6(r31)
/* 80051DF4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80051DF8  B0 05 80 00 */	sth r0, -0x8000(r5)
/* 80051DFC  B0 65 80 00 */	sth r3, -0x8000(r5)
/* 80051E00  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80051E04  A8 7F 00 0A */	lha r3, 0xa(r31)
/* 80051E08  A8 1F 00 08 */	lha r0, 8(r31)
/* 80051E0C  B0 05 80 00 */	sth r0, -0x8000(r5)
/* 80051E10  B0 65 80 00 */	sth r3, -0x8000(r5)
/* 80051E14  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80051E18  A8 7F 00 0A */	lha r3, 0xa(r31)
/* 80051E1C  A8 1F 00 04 */	lha r0, 4(r31)
/* 80051E20  B0 05 80 00 */	sth r0, -0x8000(r5)
/* 80051E24  B0 65 80 00 */	sth r3, -0x8000(r5)
/* 80051E28  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80051E2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80051E30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80051E34  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80051E38  81 83 00 00 */	lwz r12, 0(r3)
/* 80051E3C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80051E40  7D 89 03 A6 */	mtctr r12
/* 80051E44  4E 80 04 21 */	bctrl 
/* 80051E48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80051E4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80051E50  7C 08 03 A6 */	mtlr r0
/* 80051E54  38 21 00 20 */	addi r1, r1, 0x20
/* 80051E58  4E 80 00 20 */	blr 

lbl_80051E5C:
/* 80051E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80051E60  7C 08 02 A6 */	mflr r0
/* 80051E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80051E68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80051E6C  7C 7F 1B 78 */	mr r31, r3
/* 80051E70  48 30 97 1D */	bl GXClearVtxDesc
/* 80051E74  38 60 00 09 */	li r3, 9
/* 80051E78  38 80 00 01 */	li r4, 1
/* 80051E7C  48 30 90 3D */	bl GXSetVtxDesc
/* 80051E80  38 60 00 00 */	li r3, 0
/* 80051E84  38 80 00 09 */	li r4, 9
/* 80051E88  38 A0 00 01 */	li r5, 1
/* 80051E8C  38 C0 00 03 */	li r6, 3
/* 80051E90  38 E0 00 00 */	li r7, 0
/* 80051E94  48 30 97 31 */	bl GXSetVtxAttrFmt
/* 80051E98  38 60 00 01 */	li r3, 1
/* 80051E9C  48 30 BC 95 */	bl GXSetNumChans
/* 80051EA0  38 60 00 04 */	li r3, 4
/* 80051EA4  38 80 00 00 */	li r4, 0
/* 80051EA8  38 A0 00 00 */	li r5, 0
/* 80051EAC  38 C0 00 00 */	li r6, 0
/* 80051EB0  38 E0 00 00 */	li r7, 0
/* 80051EB4  39 00 00 00 */	li r8, 0
/* 80051EB8  39 20 00 02 */	li r9, 2
/* 80051EBC  48 30 BC B1 */	bl GXSetChanCtrl
/* 80051EC0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80051EC4  90 01 00 08 */	stw r0, 8(r1)
/* 80051EC8  38 60 00 04 */	li r3, 4
/* 80051ECC  38 81 00 08 */	addi r4, r1, 8
/* 80051ED0  48 30 BB 79 */	bl GXSetChanMatColor
/* 80051ED4  38 60 00 00 */	li r3, 0
/* 80051ED8  48 30 9F 25 */	bl GXSetNumTexGens
/* 80051EDC  38 60 00 01 */	li r3, 1
/* 80051EE0  48 30 D9 B1 */	bl GXSetNumTevStages
/* 80051EE4  38 60 00 00 */	li r3, 0
/* 80051EE8  38 80 00 FF */	li r4, 0xff
/* 80051EEC  38 A0 00 FF */	li r5, 0xff
/* 80051EF0  38 C0 00 04 */	li r6, 4
/* 80051EF4  48 30 D8 01 */	bl GXSetTevOrder
/* 80051EF8  38 60 00 00 */	li r3, 0
/* 80051EFC  38 80 00 04 */	li r4, 4
/* 80051F00  48 30 D2 99 */	bl GXSetTevOp
/* 80051F04  38 60 00 01 */	li r3, 1
/* 80051F08  38 80 00 04 */	li r4, 4
/* 80051F0C  38 A0 00 05 */	li r5, 5
/* 80051F10  38 C0 00 0F */	li r6, 0xf
/* 80051F14  48 30 DC DD */	bl GXSetBlendMode
/* 80051F18  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 80051F1C  38 80 00 00 */	li r4, 0
/* 80051F20  48 30 A9 DD */	bl GXSetPointSize
/* 80051F24  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 80051F28  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 80051F2C  38 80 00 00 */	li r4, 0
/* 80051F30  48 30 E3 1D */	bl GXLoadPosMtxImm
/* 80051F34  38 60 00 00 */	li r3, 0
/* 80051F38  48 30 E3 B5 */	bl GXSetCurrentMtx
/* 80051F3C  38 60 00 B8 */	li r3, 0xb8
/* 80051F40  38 80 00 00 */	li r4, 0
/* 80051F44  38 A0 00 01 */	li r5, 1
/* 80051F48  48 30 A8 1D */	bl GXBegin
/* 80051F4C  A8 9F 00 06 */	lha r4, 6(r31)
/* 80051F50  A8 1F 00 04 */	lha r0, 4(r31)
/* 80051F54  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 80051F58  B0 03 80 00 */	sth r0, 0x8000(r3)  /* 0xCC008000@l */
/* 80051F5C  B0 83 80 00 */	sth r4, -0x8000(r3)
/* 80051F60  38 00 00 00 */	li r0, 0
/* 80051F64  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 80051F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80051F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80051F70  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80051F74  81 83 00 00 */	lwz r12, 0(r3)
/* 80051F78  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80051F7C  7D 89 03 A6 */	mtctr r12
/* 80051F80  4E 80 04 21 */	bctrl 
/* 80051F84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80051F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80051F8C  7C 08 03 A6 */	mtlr r0
/* 80051F90  38 21 00 20 */	addi r1, r1, 0x20
/* 80051F94  4E 80 00 20 */	blr 

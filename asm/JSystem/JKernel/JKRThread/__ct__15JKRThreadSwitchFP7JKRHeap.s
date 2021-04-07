lbl_802D199C:
/* 802D199C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D19A0  7C 08 02 A6 */	mflr r0
/* 802D19A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D19A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D19AC  7C 7F 1B 78 */	mr r31, r3
/* 802D19B0  3C 60 80 3D */	lis r3, __vt__15JKRThreadSwitch@ha /* 0x803CC100@ha */
/* 802D19B4  38 03 C1 00 */	addi r0, r3, __vt__15JKRThreadSwitch@l /* 0x803CC100@l */
/* 802D19B8  90 1F 00 00 */	stw r0, 0(r31)
/* 802D19BC  90 9F 00 04 */	stw r4, 4(r31)
/* 802D19C0  3C 60 80 2D */	lis r3, callback__15JKRThreadSwitchFP8OSThreadP8OSThread@ha /* 0x802D1AE4@ha */
/* 802D19C4  38 63 1A E4 */	addi r3, r3, callback__15JKRThreadSwitchFP8OSThreadP8OSThread@l /* 0x802D1AE4@l */
/* 802D19C8  48 06 F0 E1 */	bl OSSetSwitchThreadCallback
/* 802D19CC  38 60 00 00 */	li r3, 0
/* 802D19D0  90 7F 00 0C */	stw r3, 0xc(r31)
/* 802D19D4  38 00 00 01 */	li r0, 1
/* 802D19D8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802D19DC  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 802D19E0  90 7F 00 18 */	stw r3, 0x18(r31)
/* 802D19E4  90 6D 8E 34 */	stw r3, sTotalCount__15JKRThreadSwitch(r13)
/* 802D19E8  90 6D 8E 3C */	stw r3, data_804513BC(r13)
/* 802D19EC  90 6D 8E 38 */	stw r3, sTotalStart__15JKRThreadSwitch(r13)
/* 802D19F0  90 7F 00 20 */	stw r3, 0x20(r31)
/* 802D19F4  90 7F 00 24 */	stw r3, 0x24(r31)
/* 802D19F8  98 1F 00 08 */	stb r0, 8(r31)
/* 802D19FC  7F E3 FB 78 */	mr r3, r31
/* 802D1A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1A04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1A08  7C 08 03 A6 */	mtlr r0
/* 802D1A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1A10  4E 80 00 20 */	blr 

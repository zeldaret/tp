lbl_80AB16DC:
/* 80AB16DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB16E0  7C 08 02 A6 */	mflr r0
/* 80AB16E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB16E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB16EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB16F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB16F4  7C 9E 23 78 */	mr r30, r4
/* 80AB16F8  41 82 00 C4 */	beq lbl_80AB17BC
/* 80AB16FC  3C 60 80 AB */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AB2BE4@ha */
/* 80AB1700  38 03 2B E4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AB2BE4@l */
/* 80AB1704  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AB1708  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AB170C  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB1184@ha */
/* 80AB1710  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB1184@l */
/* 80AB1714  38 A0 00 0C */	li r5, 0xc
/* 80AB1718  38 C0 00 03 */	li r6, 3
/* 80AB171C  4B 8B 05 CD */	bl __destroy_arr
/* 80AB1720  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AB1724  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB1184@ha */
/* 80AB1728  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB1184@l */
/* 80AB172C  38 A0 00 0C */	li r5, 0xc
/* 80AB1730  38 C0 00 03 */	li r6, 3
/* 80AB1734  4B 8B 05 B5 */	bl __destroy_arr
/* 80AB1738  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AB173C  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB1184@ha */
/* 80AB1740  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB1184@l */
/* 80AB1744  38 A0 00 0C */	li r5, 0xc
/* 80AB1748  38 C0 00 03 */	li r6, 3
/* 80AB174C  4B 8B 05 9D */	bl __destroy_arr
/* 80AB1750  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AB1754  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB1184@ha */
/* 80AB1758  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB1184@l */
/* 80AB175C  38 A0 00 0C */	li r5, 0xc
/* 80AB1760  38 C0 00 03 */	li r6, 3
/* 80AB1764  4B 8B 05 85 */	bl __destroy_arr
/* 80AB1768  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AB176C  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB1184@ha */
/* 80AB1770  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB1184@l */
/* 80AB1774  38 A0 00 0C */	li r5, 0xc
/* 80AB1778  38 C0 00 03 */	li r6, 3
/* 80AB177C  4B 8B 05 6D */	bl __destroy_arr
/* 80AB1780  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AB1784  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AB1184@ha */
/* 80AB1788  38 84 11 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AB1184@l */
/* 80AB178C  38 A0 00 0C */	li r5, 0xc
/* 80AB1790  38 C0 00 03 */	li r6, 3
/* 80AB1794  4B 8B 05 55 */	bl __destroy_arr
/* 80AB1798  28 1F 00 00 */	cmplwi r31, 0
/* 80AB179C  41 82 00 10 */	beq lbl_80AB17AC
/* 80AB17A0  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AB2BD8@ha */
/* 80AB17A4  38 03 2B D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AB2BD8@l */
/* 80AB17A8  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AB17AC:
/* 80AB17AC  7F C0 07 35 */	extsh. r0, r30
/* 80AB17B0  40 81 00 0C */	ble lbl_80AB17BC
/* 80AB17B4  7F E3 FB 78 */	mr r3, r31
/* 80AB17B8  4B 81 D5 85 */	bl __dl__FPv
lbl_80AB17BC:
/* 80AB17BC  7F E3 FB 78 */	mr r3, r31
/* 80AB17C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB17C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB17C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB17CC  7C 08 03 A6 */	mtlr r0
/* 80AB17D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB17D4  4E 80 00 20 */	blr 

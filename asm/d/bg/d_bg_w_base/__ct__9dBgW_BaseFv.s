lbl_8007E5A8:
/* 8007E5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E5AC  7C 08 02 A6 */	mflr r0
/* 8007E5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007E5B8  7C 7F 1B 78 */	mr r31, r3
/* 8007E5BC  3C 80 80 3B */	lis r4, __vt__9cBgW_BgId@ha /* 0x803ABDB8@ha */
/* 8007E5C0  38 04 BD B8 */	addi r0, r4, __vt__9cBgW_BgId@l /* 0x803ABDB8@l */
/* 8007E5C4  90 03 00 04 */	stw r0, 4(r3)
/* 8007E5C8  38 00 01 00 */	li r0, 0x100
/* 8007E5CC  B0 03 00 00 */	sth r0, 0(r3)
/* 8007E5D0  3C 80 80 3B */	lis r4, __vt__9dBgW_Base@ha /* 0x803ABCC8@ha */
/* 8007E5D4  38 04 BC C8 */	addi r0, r4, __vt__9dBgW_Base@l /* 0x803ABCC8@l */
/* 8007E5D8  90 03 00 04 */	stw r0, 4(r3)
/* 8007E5DC  48 00 00 C1 */	bl ClrDBgWBase__9dBgW_BaseFv
/* 8007E5E0  7F E3 FB 78 */	mr r3, r31
/* 8007E5E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007E5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E5EC  7C 08 03 A6 */	mtlr r0
/* 8007E5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E5F4  4E 80 00 20 */	blr 

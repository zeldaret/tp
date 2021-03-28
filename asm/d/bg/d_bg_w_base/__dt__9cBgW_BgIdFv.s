lbl_8007E5F8:
/* 8007E5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E5FC  7C 08 02 A6 */	mflr r0
/* 8007E600  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007E608  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007E60C  41 82 00 1C */	beq lbl_8007E628
/* 8007E610  3C A0 80 3B */	lis r5, __vt__9cBgW_BgId@ha
/* 8007E614  38 05 BD B8 */	addi r0, r5, __vt__9cBgW_BgId@l
/* 8007E618  90 1F 00 04 */	stw r0, 4(r31)
/* 8007E61C  7C 80 07 35 */	extsh. r0, r4
/* 8007E620  40 81 00 08 */	ble lbl_8007E628
/* 8007E624  48 25 07 19 */	bl __dl__FPv
lbl_8007E628:
/* 8007E628  7F E3 FB 78 */	mr r3, r31
/* 8007E62C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007E630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E634  7C 08 03 A6 */	mtlr r0
/* 8007E638  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E63C  4E 80 00 20 */	blr 

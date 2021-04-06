lbl_802816A0:
/* 802816A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802816A4  7C 08 02 A6 */	mflr r0
/* 802816A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802816AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802816B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802816B4  41 82 00 1C */	beq lbl_802816D0
/* 802816B8  3C A0 80 3C */	lis r5, __vt__Q27JStudio14TFunctionValue@ha /* 0x803C49A0@ha */
/* 802816BC  38 05 49 A0 */	addi r0, r5, __vt__Q27JStudio14TFunctionValue@l /* 0x803C49A0@l */
/* 802816C0  90 1F 00 00 */	stw r0, 0(r31)
/* 802816C4  7C 80 07 35 */	extsh. r0, r4
/* 802816C8  40 81 00 08 */	ble lbl_802816D0
/* 802816CC  48 04 D6 71 */	bl __dl__FPv
lbl_802816D0:
/* 802816D0  7F E3 FB 78 */	mr r3, r31
/* 802816D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802816D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802816DC  7C 08 03 A6 */	mtlr r0
/* 802816E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802816E4  4E 80 00 20 */	blr 
